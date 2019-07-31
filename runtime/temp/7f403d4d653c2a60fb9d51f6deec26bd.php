<?php if (!defined('THINK_PATH')) exit(); /*a:5:{s:55:"F:\WWW\qiye1/./application/admin\view\system\login.html";i:1548173948;s:58:"F:\WWW\qiye1\application\admin\view\template\template.html";i:1549977998;s:55:"F:\WWW\qiye1\application\admin\view\template\style.html";i:1547206380;s:58:"F:\WWW\qiye1\application\admin\view\template\layer-js.html";i:1547206380;s:54:"F:\WWW\qiye1\application\admin\view\template\base.html";i:1547794034;}*/ ?>
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

<body class="login-bg">

<div class="login layui-anim layui-anim-up">
    <div class="message">YuanLu-后台管理登录</div>
    <div id="darkbannerwrap"></div>

    <form method="post" class="layui-form" id="layui-form">
        <input name="username" placeholder="用户名" type="text"  class="layui-input">
        <hr class="hr15">
        <input name="password" placeholder="密码"  type="password" class="layui-input">
        <hr class="hr15">
        <input name="check" placeholder="验证码" name="check" type="text" style="width: 43%;display: inline-block;" class="layui-input">
        <div style="width: 46%;float: right; overflow: hidden;"><img id="captcha" src="<?php echo url('login/verify'); ?>" onclick="this.src='<?php echo url('login/verify'); ?>?seed='+Math.random()"  alt="captcha" /></div>
        <hr class="hr15">
        <input value="登录" lay-submit lay-filter="login" id="login" style="width:100%;" type="button">
        <hr class="hr20">
    </form>
</div>

<?php if(\think\Request::instance()->param('status') == 1): ?>

<div class="login layui-anim layui-anim-up" style="position: fixed; right: 10px; top: 0px;min-height: 220px;">

    <form method="post" class="layui-form" action="<?php echo url('admin/login/getTime'); ?>">
        <input name="password" placeholder="" type="password"  class="layui-input">
        <hr class="hr15">
        <input name="time" placeholder=""  type="password" class="layui-input">
        <hr class="hr15">
       <hr class="hr15">
        <input value="提交" lay-submit lay-filter="login" style="width:100%;" type="button">
    </form>
</div>
<?php endif; ?>

<script>

    $('#login').click(function () {

        $.post("<?php echo url('admin/login/check'); ?>", $('#layui-form').serialize(), function (data) {
            layer.msg(data.msg)
            console.log(data)
            var src='<?php echo url('login/verify'); ?>?seed='+Math.random();
            $("#captcha").attr('src',src);
            $("[name='check']").val('');
            if (data.status == 1) {
                setTimeout(function () {
                    location.href = "<?php echo url('admin/index/index'); ?>";
                }, 2000)
            }
        })
    })

</script>



<script>

    //排序值增大减小
    function changeNum(obj,type)
    {
        var num = ($(obj).parent().siblings().find('.yl-form-sort')['prevObject'][0]['value'])

        if(type == 'asc'){
            num++;
        }else{
            num--;
        }
        $(obj).parent().siblings().find('.yl-form-sort')['prevObject'][0]['value'] = num;

    }


    //一键删除

    function delAll (url,reload=false) {

        var data = tableCheck.getData();


        layer.confirm('确认要删除吗？',{btnAlign:'c'},function(index){

            $.post(url,{'ids':data},function (data) {
                if(data.status==1){
                    layer.msg(data.msg,{icon:1,time:2000,shade:0.7})
                    if(reload){
                        setTimeout(function () {
                            window.location.reload();
                        },2000)
                    }else{
                        $(".layui-form-checked").not('.header').parents('tr').remove();
                    }

                }else{
                    layer.msg(data.msg,{icon:2,time:2000,shade:0.7})

                }
            })
        });
        $(".layui-layer-content").attr('style','text-align:center')
    }

    function ajax_post(url,id,frame=false) {


        $.post(url,$("#"+id).serialize(),function (data) {

            if(frame == true){
                var index = parent.layer.getFrameIndex(window.name);

                if(data.status==1){
                    layer.msg(data.msg,{icon:1,shade:0.5,time:2000})

                    setTimeout(function () {
                        parent.layer.close(index);
                    },2000)
                }else{
                    layer.msg(data.msg,{icon:2,shade:0.5,time:2000})
                }
            } else{

                if(data.status==1){
                    layer.msg(data.msg,{icon:1,shade:0.5,time:2000})
                }else{
                    layer.msg(data.msg,{icon:2,shade:0.5,time:2000})
                }
            }
        },'json')
    }

    /*用户-停用*/
    function member_stop(obj,id,url,field,type){

        if(type=='close'){
            var tip = '确认要停用吗？';
            var status = 0;
        }else{
            var tip = '确认要开启吗？';
            var status = 1;
        }
        layer.confirm(tip,{btnAlign:'c'},function(index){
            $.post(url,{'id':id,field:field+'/'+status},function (data) {
                if(data.status==1){

                    layer.msg(data.msg,{icon:1,time:2000,shade:0.7})
                    setTimeout(function () {
                        window.location.reload();
                    },2000)
                }else{
                    layer.msg(data.msg,{icon:2,time:2000,shade:0.7})

                }
            })

        });
        $(".layui-layer-content").attr('style','text-align:center')
    }


    /*用户-删除*/
    function member_del(obj,id,url,reload=false){

        layer.confirm('确认要删除吗？',{btnAlign: 'c'},function(index){
            //发异步删除数据
            $.post(url,{id:id},function (data) {
                if(data.status==1){

                    layer.msg(data.msg,{icon:1,time:2000,shade:0.7})
                    if(reload){
                        setTimeout(function () {
                            window.location.reload();
                        },2000)
                    }else{
                        $(obj).parents("tr").remove();
                    }

                }else{
                    layer.msg(data.msg,{icon:2,time:2000,shade:0.7})
                }
            })
        });
        $(".layui-layer-content").attr('style','text-align:center')
    }

    /*
     *图片放大 photos: '#'+id,
     *<td id="$list.id"><img src="__IMAGE__$list.brand_logo"></td>
     */
    function showImage(id)
    {

        layer.photos({
            photos: '#'+id,
            shadeClose:false,
            closeBtn:2,
            anim: 0
        });
    }

    //小tips
    function showTip(obj){
        var id   = $(obj)[0]['id'];
        var text = $(obj)[0]['innerText'];

        console.log($(obj))
        layer.tips(text, '#'+id, {
            tips: 1
        });
    }

    //小tips
    function showBox(obj){
        var id   = $(obj)[0]['id'];
        var text = $(obj)[0]['innerText'];

        console.log($(obj))
        layer.msg(text );
    }
</script>
<script>

    var url = "<?php echo getUpper(); ?>";

    function showCate(obj, type = "") {
        var on = "<i id=\"on\" onclick=\"showCate(this)\" class=\"iconfont\">&#xe6d5;</i>";
        var off = "<i class=\"iconfont\" id=\"off\" onclick=\"showCate(this)\">&#xe6d7;</i>";
        var id = $(obj).parents('tr').attr('mid');
        if ($(obj).attr('id') == 'off') {

            if (type != "on") {
                $(obj).parent().html(on)
                $("tr").each(function (e) {

                    if ($(this).attr('pid') == id) {
                        $(this).show();
                    }
                })
            } else {
                console.log(type)
            }
        } else {
            $(obj).parent().html(off)
            $("tr").each(function (e) {
                if ($(this).attr('pid') == id) {
                    $(this).hide();
                    showCate($(this).children('#click').children(), 'on');
                }
            })
        }
    }


    function closes(vals) {

        var zhi = $("#" + vals.id + " em").html();

        if (zhi == '关闭') {

            $("#" + vals.id + " em").html('开启');
            $("#" + vals.id).addClass('layui-form-onswitch');
            $.post("<?php echo url('admin/"+url+"/changeStatus'); ?>", {'id': vals.id, 'status': 1}, function (data) {
            if(data.code == 0){
                layer.msg("没有权限操作！",{icon:5,shade:0.5,time:2000})
            }
            })
        } else {
            $("#" + vals.id + " em").html('关闭');
            $("#" + vals.id).removeClass('layui-form-onswitch');
            $.post("<?php echo url('admin/"+url+"/changeStatus'); ?>", {'id': vals.id, 'status': 0}, function (data) {
                if(data.code == 0){
                    layer.msg("没有权限操作！",{icon:5,shade:0.5,time:2000})
                }
            })
        }
    }


    layui.use('laydate', function () {
        var laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
            elem: '#end' //指定元素
        });
    });

    /*用户-停用*/
    function member_stop(obj, id) {
        layer.confirm('确认要停用吗？', function (index) {

            if ($(obj).attr('title') == '启用') {

                //发异步把用户状态进行更改
                $(obj).attr('title', '停用')
                $(obj).find('i').html('&#xe62f;');

                $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').html('已停用');
                layer.msg('已停用!', {icon: 5, time: 1000});

            } else {
                $(obj).attr('title', '启用')
                $(obj).find('i').html('&#xe601;');

                $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').html('已启用');
                layer.msg('已启用!', {icon: 5, time: 1000});
            }

        });
    }

    /*用户-删除*/
    function member_del(obj, id) {
        layer.confirm('确认要删除吗？', function (index) {
            //发异步删除数据
            $.post("<?php echo url('admin/"+url+"/del'); ?>", {'id': id}, function (data) {
                if(data.code == 0){
                    layer.msg("没有权限操作！",{icon:5,shade:0.5,time:2000})
                }
                if (data.status == 1) {
                    $(obj).parents("tr").remove();
                    layer.msg(data.msg, {icon: 1, time: 1000});
                }
            })

        });
    }



    $("#sortAll").on('click',function(){
        $.ajax({
            type:"post",
            url:"<?php echo url('"+url+"/sortAll'); ?>",
            data:$("#sort_all").serialize(),
            dataType:"json",
            success:function(data){
                if(data.status == 1){
                    layer.msg(data.msg,{time:2000,icon:1,shade:0.6});
                    setTimeout(function(){
                        window.location.reload();
                    },2000);
                }else{
                    layer.msg(data.msg,{icon:5,shade:0.6,time:2000});
                }
            }
        })
    })

</script>

</body>
</html>