<?php
/**
 * Created by ";Storm.
 * User: 15490
 * Date: 2019/1/21
 * Time: 19:29
 */
namespace app\index\controller;
use think\Controller;
use think\Db;
use think\migration\db\Column;
use think\Request;



class Advisory extends Controller
{

    public function _initialize()
    {
        $topNav = db('advisory_cate') -> where(['status'=> 1, 'pid'=>0]) ->select();
        $this ->assign('topNav',$topNav);

        $hotArticle = db('advisory_article') -> order('look desc') -> limit(10)-> select();
        $this ->assign('hotArticle',$hotArticle);

    }

    public function categoryNews()
    {
        $active = request() ->param('id', 1);
//        halt($active);
        $info = db('advisory_cate') -> where('pid', $active)->find();
        $this ->assign('info', $info);

        $pinfo = db('advisory_cate') -> where('id', $info['pid']) -> find();
        $this -> assign('pinfo', $pinfo);

        $son = cateTree('advisory_cate', $active);

//        halt($son);
        foreach ($son as &$val){
            $val['article'] = db('advisory_article') -> where('pid', $val['id']) ->order('create_time desc') -> limit(10) ->select();

        }
        $this ->assign('cateSon', $son);


        $article = db('advisory_article') -> where('pid', $active) ->order('create_time desc') -> limit(10) ->select();
        $this ->assign('articleList', $article);

        $this ->assign('active', $active);
        return view();
    }

    public function articleInfo()
    {

        $id = request() -> param('id');

        db('advisory_article') ->where('id', $id)  ->setInc('look', 1);
        $info = db('advisory_article') ->where('id', $id) -> find();
        $this -> assign('info', $info);

        $pinfo = db('advisory_cate') -> where('id', $info['pid']) -> find();
        $this -> assign('pinfo', $pinfo);

        $pson = cateTree('advisory_cate', $pinfo['pid']);
        $this -> assign('pson', $pson);

        $topinfo = db('advisory_cate') -> where('id', $pinfo['pid']) -> find();
        $this -> assign('topinfo', $topinfo);

        $active = $topinfo['id'];
        $this ->assign('active', $active);

        // 相关文章
            $related = db('advisory_article')->orderRaw('rand()') -> where('pid', $pinfo['id'])   -> limit(10) -> select();
        $this ->assign('related', $related);

        // 上一篇 下一篇
        $prev = db('advisory_article') -> where('id', '<', $id) ->order('id desc') -> limit('1') ->find();
        $last = db('advisory_article') -> where('id', '>', $id) ->order('id desc') -> limit('1') ->find();
        $this ->assign('prev', $prev);
        $this ->assign('last', $last);

        return view('news_info');
    }

    public function cateSon()
    {

        $id = request() -> param('id');


        $pinfo = db('advisory_cate') -> where('id', $id) -> find();
        $this -> assign('pinfo', $pinfo);

        $pson = cateTree('advisory_cate', $pinfo['pid']);
        $this -> assign('pson', $pson);

        $topinfo = db('advisory_cate') -> where('id', $pinfo['pid']) -> find();
        $this -> assign('topinfo', $topinfo);

        $active = $topinfo['id'];
        $this ->assign('active', $active);

        // 相关文章
        $list = db('advisory_article') ->order('create_time desc') -> where('pid', $id)   -> paginate(10);
        $this ->assign('list', $list);


        return view();
    }
}
