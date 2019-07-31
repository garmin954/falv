<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:53:"F:\WWW\qiye1/./application/admin\view\system\add.html";i:1551352054;s:58:"F:\WWW\qiye1\application\admin\view\template\template.html";i:1549977998;s:55:"F:\WWW\qiye1\application\admin\view\template\style.html";i:1547206380;s:57:"F:\WWW\qiye1\application\admin\view\template\publish.html";i:1547206380;}*/ ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet"href="/public/static/admin/css/font.css">
    <link rel="stylesheet"href="/public/static/admin/css/yuanlu.css">
    <script src="/public/static/admin/js/jquery.min.js"></script>
    

    <script type="text/javascript" src="/public/static/admin/lib/layui/layui.all.js" charset="utf-8"></script>

    <script type="text/javascript" src="/public/static/admin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/public/static/admin/js/yuanlu.js"></script>
     
    

</head>
<style>#off,#on{
    cursor: pointer;
}
.uploadifive-queue-item{display: none}
</style>

<body>

    <div class="x-body">
        <form class="layui-form">
          <div class="layui-form-item">
              <label for="ename" class="layui-form-label">
                  <span class="x-red">*</span>中文配置名
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="cname" name="cname" required="" lay-verify="required" value=""
                  autocomplete="off" class="layui-input">
              </div>
              <div class="layui-form-mid layui-word-aux">
                  <span class="x-red">*</span>必填
              </div>
          </div>
          <div class="layui-form-item">
              <label for="phone" class="layui-form-label">
                  <span class="x-red">*</span>英文配置名
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="phone" name="ename" required=""  value=""
                  autocomplete="off" class="layui-input">
              </div>
              <div class="layui-form-mid layui-word-aux">
                  <span class="x-red">*</span>必填
              </div>
          </div>




         <div class="layui-form-item">
              <label  class="layui-form-label">
                  <span class="x-red">*</span>配置类型
              </label>
              <div class="layui-input-inline">
              <select name="type" >
                
                <option value="1">输入框</option>
                <option value="2">下拉选择框</option>
                <option value="3">复选框</option>

                <option value="5">单选框</option>
                <option value="6">文本框</option>
                <option value="7">附件</option>
              </select>

              </div>
              <div class="layui-form-mid layui-word-aux">
                  <span class="x-red">*</span>
              </div>
          </div>




          <div class="layui-form-item">
              <label  class="layui-form-label">
                  <span class="x-red">*</span>所属类型
              </label>
              <div class="layui-input-inline">
              <select name="type_id" >
                <?php if(is_array($type_list) || $type_list instanceof \think\Collection || $type_list instanceof \think\Paginator): $i = 0; $__LIST__ = $type_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$type_lists): $mod = ($i % 2 );++$i;?>
                <option value="<?php echo $type_lists['id']; ?>"><?php echo $type_lists['type_name']; ?></option>
                <?php endforeach; endif; else: echo "" ;endif; ?>
                
              </select>
              </div>
              <div class="layui-form-mid layui-word-aux">
                  <span class="x-red">*</span>
              </div>
          </div>
          


          <div class="layui-form-item">
              <label for="L_email" class="layui-form-label">
                  <span class="x-red">*</span>配置值
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="L_email" name="value"  value=""
                  autocomplete="off" class="layui-input">
              </div>
              <div class="layui-form-mid layui-word-aux">
                  <span class="x-red">*</span>
              </div>
          </div>

          <div class="layui-form-item">
              <label for="L_email" class="layui-form-label">
                  <span class="x-red">*</span>多值配置
              </label>
              <div class="layui-input-inline">
                
                  <textarea name="values"   id="" cols="60" rows="5" style="border:1px solid #e6e6e6;padding: 10px"></textarea>
              </div>
              <div class="layui-form-mid layui-word-aux">
                  
              </div>
          </div>

          <div class="layui-form-item">
              <label class="layui-form-label">是否开启：</label>
              <div class="layui-input-block" style="width: 50px">
                <input type="checkbox"  name="status" lay-skin="switch" value="1" lay-text="开启|关闭" checked="checked">
                <div id="checks" class="layui-unselect layui-form-switch layui-form-onswitch" lay-skin="_switch"><em>开启</em><i></i></div>
              </div>
            </div>
          
         
          <div class="layui-form-item">
              <label for="L_repass" class="layui-form-label">
              </label>
              <button id="btn"  type="button" class="layui-btn" lay-filter="add"  >
                  增加
              </button>
          </div>
      </form>
    </div>





<script>

    var url = ("<?php echo \think\Request::instance()->action(); ?>");

    $("#btn").on('click',function(){
        $.ajax({
            type:"post",
            url:"<?php echo url('"+url+"'); ?>",
            data:$(".layui-form").serialize(),
            dataType:"json",
            success:function(data){
                if(data.status == 1){
                    layer.msg(data.msg,{time:2000,icon:1,shade:0.6});
                    setTimeout(function(){
                        window.parent.location.reload();
                    },2000);
                }else{
                    layer.msg(data.msg,{icon:5,shade:0.6,time:2000});
                }
            }
        })
    })


        $(".layui-input-block").on('click',function(){
            if($(".layui-input-block em").html() == "开启"){
                $("input[name='status']").val(1);
            }
            if($(".layui-input-block em").html() == "关闭") {
                $("input[name='status']").val(0);
            }
        })

</script>

</body>
</html>