<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:75:"/www/wwwroot/www.jisitech.com/./application/admin/view/system_type/add.html";i:1548163704;s:75:"/www/wwwroot/www.jisitech.com/application/admin/view/template/template.html";i:1549977998;s:72:"/www/wwwroot/www.jisitech.com/application/admin/view/template/style.html";i:1547206380;s:74:"/www/wwwroot/www.jisitech.com/application/admin/view/template/publish.html";i:1547206380;}*/ ?>
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

<div class="x-body" style="padding-top: 0px">
        <form class="layui-form">


            <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                <ul class="layui-tab-title" style="margin-bottom: 20px">
                    <li class="layui-this">基本设置</li>
                    <!--<li class="">描述SEO</li>-->
                    <!--<li class="">内容</li>-->
                </ul>
                <div class="layui-tab-content " >
                    <div class="layui-tab-item layui-show">

                        <div class="layui-form-item">
                            <label   class="layui-form-label">
                                <span class="x-red">*</span>分类名称
                            </label>
                            <div class="layui-input-inline">
                                <input type="text" id="cname" name="type_name"  value=""
                                        class="layui-input">
                            </div>
                            <div class="layui-form-mid layui-word-aux">
                                <span class="x-red">*</span>必填
                            </div>
                        </div>



                        <div class="layui-form-item">
                            <label class="layui-form-label">是否开启：</label>
                            <div class="layui-input-block" style="width: 50px">
                                <input type="checkbox"  name="status" lay-skin="switch" value="1" lay-text="开启|关闭" checked="checked">
                            </div>
                        </div>


                    </div>
                    <div class="layui-tab-item">

                    </div>




                </div>
            </div>


          <div class="layui-form-item">
              <label   class="layui-form-label">
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