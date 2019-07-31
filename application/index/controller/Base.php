<?php
/**
 * Created by PhpStorm.
 * User: 15490
 * Date: 2019/1/21
 * Time: 19:29
 */

namespace app\index\controller;

use \app\common\controller;
use think\Lang;

class Base extends controller\Base
{
    protected $config = array();

    public function _initialize()
    {

        $this->getHeaderNav();
        $this->getFooterNav();
        $this->getConfig();
        $base = new controller\Base();
        $base->visitCount();
        $this->get_lang();
        $this -> getCategoryArticle();
        $top_new = db('article')->where('cate_id',8)->limit(5)->where('status',1)->select();
        $this -> assign('top_new',$top_new);
    }

    /**
     * 多语言
     */
    public function get_lang()
    {

        Lang::setAllowLangList(['zh-cn','en-us']);
        $_GET['lang'] =isset($_GET['lang'])?$_GET['lang']:'hk';
        switch ($_GET['lang']) {
            case 'cn';
                Lang::load(APP_PATH . 'index\lang\zh-cn.php');
                cookie('think_var', 'zh-cn');
                break;
            case 'hk';
                Lang::load(APP_PATH . 'index\lang\zh-hk.php');
                cookie('think_var', 'zh-hk');
                break;
        }
    }

    //获取系统参数
    public function getConfig()
    {
        $config = db('system')->select();
        $result = array();
        foreach ($config as $key => $val) {
            if ($val['status'] == 0) {
                $val['value'] = '';
            }
            $result[$val['ename']] = str_replace('\\', '/', $val['value']);
        }
        $this->config = $result;
//        dump($result);
        $this->assign('config', $result);
//        return $result;
    }


    //获取导航nav
    public function getHeaderNav()
    {
        $list = db('cate')->where('pid', 0)->where('status', 1)->select();
        $this->assign([
            'cate_list' => $list
        ]);
    }

    //获取导航nav
    public function getFooterNav()
    {
        $list = db('cate')->where('pid', 75)->where('status', 1)->select();
        $this->assign([
            'sys_cate_list' => $list
        ]);
    }


    public function getCategoryArticle()
    {

        $cate_top = db('cate') ->field('thumb,sort_name,id, cate_name') -> where('pid', 0) ->select();

        $list = [];
        foreach ($cate_top as $val){

            $list[$val['id']] = $val;
            $son_cate  = db('cate') ->field('id, cate_name') -> where('pid', $val['id']) -> select();

            foreach ($son_cate as $v){
                $list[$val['id']]['son'][$v['id']] = $v;
                $list[$val['id']]['son'][$v['id']]['article'] = db('article') -> field('id,sort_title') -> where('cate_id', $v['id'])-> select();
            }
        }


        $this->assign([
            'category_art' => $list
        ]);
    }

}