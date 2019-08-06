<?php
namespace app\admin\Controller;
use think\Controller;
use think\Loader;
use app\admin\controller\Base;
/**
*
*/
class Advisory extends Base
{

    public function newCate()
    {
        //获取列表
        $lists = cateTree('advisory_cate');


        $nums = db('advisory_cate')-> count();
        $cate_list = db('advisory_cate') -> order('sort asc')-> select();

        $this->assign([
            'lists'  =>  $lists,
            'nums'   =>  $nums,
            'cate_list'  =>  $cate_list,
        ]);
        return view();
    }

    public function addCate()
    {
        if(request()->isAjax()){

            $param = request() ->param();

            $data = [
                'cate_name' => $param['cate_name'],
                'pid' => $param['pid'],
                'status' => $param['status'],
            ];

            $res =  db('advisory_cate') -> insert($data);

           if($res){
               return json(['status' => 1,'msg' => '操作成功！']);
           }else{
               return json(['status' => 0,'msg' => '操作失败！']);
           }
        }


        return view();
    }


    public function newArticle()
    {
        //获取列表
        $lists = cateTree('advisory_article');

        $son = cateTree('advisory_cate', request()->param('cate_id'));

        $sonId = [request()->param('cate_id')];

        foreach ($son as $val){
            array_push($sonId, $val['id']);
        }
        $where = [
            'pid'   => ['in', $sonId]
        ];

        $nums = db('advisory_article') -> where($where)-> count();
        $cate_list = db('advisory_article') -> where($where)-> select();

        $this->assign([
            'lists'  =>  $lists,
            'nums'   =>  $nums,
            'advisory_article'  =>  $cate_list,
        ]);

        return view();
    }

    public function addArticle()
    {
        if(request()->isAjax()){

            $param = request() ->param();

            $data = [
                'title' => $param['sort_title'],
                'desc' => $param['desc'],
                'content' => $param['content'],
                'author' => $param['author'],
                'create_time' => time(),
                'look' => $param['look'],
                'pid' => $param['pid'],
            ];

            $res =  db('advisory_article') -> insert($data);

            if($res){
                return json(['status' => 1,'msg' => '操作成功！']);
            }else{
                return json(['status' => 0,'msg' => '操作失败！']);
            }
        }

        return view();

    }

    public function deladvisoryCate()
    {

        if(db('advisory_article')->where('id',input('id'))->delete()){
            return json(array("status"=>1,'msg'=>"删除成功!"));
        }else{
            return json(array("status"=>0,'msg'=>"删除失败!"));

        }
    }

    public function deladvisory()
    {

        if(db('advisory_article')->where('id',input('id'))->delete()){
            return json(array("status"=>1,'msg'=>"删除成功!"));
        }else{
            return json(array("status"=>0,'msg'=>"删除失败!"));

        }
    }

    public function sortAll()
    {
        $data = input('post.');

        foreach ($data['sort'] as $key=>$val){
//            var_dump($key);
            db('advisory_cate')->where('id',$key)->update(['sort'=>$val]);
        }
        return json(array("status"=>1,'msg'=>"排序成功!"));

    }
}
