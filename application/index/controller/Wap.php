<?php
/**
 * Created by ";Storm.
 * User: 15490
 * Date: 2019/1/21
 * Time: 19:29
 */
namespace app\index\controller;
use \app\index\controller;
use think\Db;
use think\migration\db\Column;

class Wap extends controller\Base
{
    public function index()
    {

        $anli_list = db('article') -> where('cate_id',7)->limit('6')->order('id desc')->select();
        $news_list = db('article') -> where('cate_id',8)->limit('5')->order('id desc')->select();

        //轮播
        $banner_list = db('advert')->where('type','banner')->limit('8')->select();
        foreach ($banner_list as &$val)
        {
            $val = str_replace('\\','/',$val);
        }

        //广告
        $advert_list = db('advert')->where('type','advert')->limit('5')->select();
        foreach ($banner_list as &$val)
        {
            $val = str_replace('\\','/',$val);
        }
        $article = db('article') -> limit('1,5')   -> field('thumb,sort_title,id') -> where('status',1) -> select(5);
        $articles = db('article') -> limit('5,5')   ->field('thumb,sort_title,id') -> where('status',1) -> select(5);

        $this->assign([
            'advert_list' =>$advert_list,
            'banner_list' =>$banner_list,
            'articles'  => $articles,
            'article'  => $article,
            'anli_list'=> $anli_list,
              'news_list'=> $news_list,

            'current'   => '999',

        ]);
        return view();
    }

    public function category()
    {
        $id = request()->param('id',0);
        $info = db('cate')->where('id',$id)->where('status',1)->find();
        $this -> assign('info',$info);

        if($info['pid'] == 0){
            $current = $id;
        }else{
            $current = $info['pid'];
        }
        $pinfo = db('cate')->where('id',$current)->where('status',1)->find();
        $current = db('cate')->where('id',$id)->where('status',1)->find();
        $this -> assign('pinfo',$pinfo);
        $this -> assign('current',$current);

        $top_cate = db('cate')-> field('id,cate_name') -> where('pid', 0)->select();
        $son_cate = db('cate')-> field('id,cate_name') -> where('pid', $pinfo['id'])->select();
        $this -> assign('top_cates',$top_cate);
        $this -> assign('son_cates',$son_cate);

        if($info['pid'] == 0){
            $id = db('cate') -> where('pid', $info['id']) ->column('id');
        }
        $article = db('article') -> field('thumb,sort_title,id') -> where('cate_id','in', $id) -> select();
        $this -> assign('articles',$article);

        return view();
    }


    public function support()
    {

        $info = db('cate')->where('id',6)->where('status',1)->find();
        $this -> assign('info',$info);
        $support_list = db('article') -> where('cate_id',6)->paginate();
        $this -> assign('support_list',$support_list);

        $this -> assign('current',6);
        return view();
    }


    public function cases()
    {

        $info = db('cate')->where('id',7)->where('status',1)->find();
        $this -> assign('info',$info);
        $support_list = db('article') -> where('cate_id',7)->paginate();
        $this -> assign('support_list',$support_list);

        $this -> assign('current',7);
        return view();
    }


    public function news()
    {

        $info = db('cate')->where('id',8)->where('status',1)->find();
        $this -> assign('info',$info);
        $support_list = db('article') -> where('cate_id',8)->paginate();
        $this -> assign('support_list',$support_list);

        $this -> assign('current',8);
        return view();
    }

    public function contact()
    {


        $info = db('cate')->where('id',10)->find();

        $this->assign([
            'info'=>$info,
        ]);
        $this -> assign('current',10);
        return view();
    }

    public function info()
    {
        $info = db('article')->where('id',input('id'))->find();

        $this->assign('info',$info);
        $this->assign('current',0);
        return view();
    }

    public function lang()
    {

        Lang::setAllowLangList(['zh-cn','zh-hk']);
        switch ($_GET['lang']) {
            case 'cn';
                cookie('think_var', 'zh-cn');
                break;
            case 'hk';
                cookie('think_var', 'zh-hk');
                break;
        }
    }



    public function message()
    {
        $data = request()->post();
        $data['add_time']=time();
        if( empty($data['title']) || empty($data['name']) || empty($data['fix']) || empty($data['message'])){
            return json(array('status'=>-1));
        }
        if(request()->isPost()){
            $res = Db::table('tp_message')->insert($data);
            if($res){
                return json(array('status'=>1));
            }else{
                return json(array('status'=>0));
            }
        }
    }

}