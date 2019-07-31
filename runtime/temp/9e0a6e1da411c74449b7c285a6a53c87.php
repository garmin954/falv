<?php if (!defined('THINK_PATH')) exit(); /*a:5:{s:55:"F:\WWW\qiye1/./application/admin\view\article\edit.html";i:1560267333;s:58:"F:\WWW\qiye1\application\admin\view\template\template.html";i:1549977998;s:55:"F:\WWW\qiye1\application\admin\view\template\style.html";i:1547206380;s:58:"F:\WWW\qiye1\application\admin\view\template\layer-js.html";i:1547206380;s:54:"F:\WWW\qiye1\application\admin\view\template\base.html";i:1547794034;}*/ ?>
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

        <input type="hidden" name="id" value="<?php echo $lists['id']; ?>">
        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
            <ul class="layui-tab-title" style="margin-bottom: 20px">
                <li class="layui-this">基本设置</li>

<!--                <li class="">内容</li>-->
<!--                &lt;!&ndash;<li class="">相册</li>&ndash;&gt;-->
<!--                <li class="">描述SEO</li>-->
            </ul>
            <div class="layui-tab-content " >
                <div class="layui-tab-item layui-show">

                    <div class="layui-form-item">
                        <label   class="layui-form-label">
                            <span class="x-red">*</span>标题
                        </label>
                        <div class="layui-input-inline">
                            <input type="text" id="cname" name="sort_title" required="" lay-verify="required" value="<?php echo $lists['sort_title']; ?>"
                                   autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-form-mid layui-word-aux">
                            <span class="x-red">*</span>必填
                        </div>
                    </div>


                    <div class="layui-form-item">
                        <label   class="layui-form-label">
                            <span class="x-red">*</span>内容标题
                        </label>
                        <div class="layui-input-inline">
                            <input type="text"  name="title" required="" lay-verify="required" value="<?php echo $lists['title']; ?>"
                                   autocomplete="off" class="layui-input">
                        </div>
                    </div>
<!--                    <div class="layui-form-item">-->
<!--                        <label   class="layui-form-label">-->
<!--                            <span class="x-red">*</span>作者-->
<!--                        </label>-->
<!--                        <div class="layui-input-inline">-->
<!--                            <input type="text"  name="author" required="" lay-verify="required" value="<?php echo $lists['title']; ?>"-->
<!--                                   autocomplete="off" class="layui-input">-->
<!--                        </div>-->
<!--                    </div>-->


                    <div class="layui-form-item">
                        <label  class="layui-form-label">
                            所属栏目
                        </label>
                        <div class="layui-input-inline">
                            <select name="cate_id" >

                                <?php $_result=cateTree('cate');if(is_array($_result) || $_result instanceof \think\Collection || $_result instanceof \think\Paginator): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$cl): $mod = ($i % 2 );++$i;?>
                                <?php echo str_repeat("-----|",$cl['level']); ?>
                                <option <?php if($cl['id'] == $lists['cate_id']): ?>selected<?php endif; ?> value="<?php echo $cl['id']; ?>"><?php echo $cl['cate_name']; ?></option>
                                <?php endforeach; endif; else: echo "" ;endif; ?>
                            </select>

                        </div>
                        <div class="layui-form-mid layui-word-aux">
                            <span class="x-red">*</span>
                        </div>
                    </div>


                    <!--<div class="layui-form-item">-->
                    <!--<label class="layui-form-label">栏目类型</label>-->
                    <!--<div class="layui-input-block">-->
                    <!--<input type="radio" name="type" value="0" title="列表页" checked=""><div class="layui-unselect layui-form-radio"><i class="layui-anim layui-icon"></i><div>列表页</div></div>-->
                    <!--<input type="radio" name="type" value="1" title="内容页"><div class="layui-unselect layui-form-radio layui-form-radioed"><i class="layui-anim layui-icon"></i><div>内容页</div></div>-->
                    <!--</div>-->
                    <!--</div>-->


                    <div class="layui-form-item">
                        <label class="layui-form-label">图片 </label>
                        <div class="layui-input-block">

                            <div class="layui-upload" >
                                <div id="queue"></div>
                                <button  id="file_upload" type="button" class="layui-btn" ><i class="layui-icon"></i>上传文件</button>
                                <button id="back_out"  type="button" class="layui-btn layui-btn-danger">撤销上传</button>
                                <br><img id="show_img" height="120px" src="/public/<?php echo $lists['thumb']; ?>"  alt="上传的图片" style="margin-top: 5px" >
                                <input type="hidden" name="thumb" value="<?php echo $lists['thumb']; ?>">
                            </div>

                        </div>
                    </div>
                    <!--<div class="layui-form-item" pane="">-->
                        <!--<label class="layui-form-label">选项</label>-->
                        <!--<div class="layui-input-block">-->
                            <!--<input  value='1' type="checkbox" name="top"  title="推荐"  <?php if($lists['top'] == 1): ?>checked<?php endif; ?>>-->

                        <!--</div>-->
                    <!--</div>-->

                    <div class="layui-form-item">
                        <label class="layui-form-label">状态：</label>
                        <div class="layui-input-block" style="width: 50px">
                            <input type="checkbox"  name="status" lay-skin="switch" value="<?php echo $lists['status']; ?>" lay-text="开启|关闭"   <?php if($lists['status'] == 1): ?>checked<?php endif; ?>>

                        </div>
                    </div>


                </div>


                <div class="layui-tab-item">

                    <textarea name="content" id="container"  type="text/plain" ><?php echo htmlspecialchars_decode($lists['content']); ?></textarea>

                </div>
                <div class="layui-tab-item">






                    <div class="layui-form-item">
                        <label   class="layui-form-label">
                            <span class="x-red">*</span>栏目描述
                        </label>
                        <div class="layui-input-inline">

                            <textarea name="desc"   id="" cols="60" rows="5" style="border:1px solid #e6e6e6;padding: 10px"><?php echo $lists['desc']; ?></textarea>
                        </div>
                        <div class="layui-form-mid layui-word-aux">

                        </div>
                    </div>

                    <!--<div class="layui-form-item">-->
                    <!--<label   class="layui-form-label">-->
                    <!--<span class="x-red">*</span>栏目SEO-->
                    <!--</label>-->
                    <!--<div class="layui-input-inline">-->

                    <!--<textarea name="cate_seo"  cols="60" rows="5" style="border:1px solid #e6e6e6;padding: 10px"></textarea>-->
                    <!--</div>-->
                    <!--<div class="layui-form-mid layui-word-aux">-->

                    <!--</div>-->
                    <!--</div>-->

                </div>

                <!-----商品相册----->
                <div class="layui-tab-item">
                    <div class="layui-form-item" id="yl-show">
                        <label   class="layui-form-label">
                            <span class="x-red">*</span>压缩图
                        </label>
                        <div class="layui-input-inline" style="width: 100%;">
                            <input type="file"     id="file_uploads" style="width: 30%; ">
                            <input type="hidden"  name="thumb_list"  value="<?php echo $lists['thumb_list']; ?>">
                        </div>

                        <div id="thumb_list" style="margin:10px 110px;">

                            <?php $_5cffcdea6751f=cutImg($lists['thumb_list']); if(is_array($_5cffcdea6751f) || $_5cffcdea6751f instanceof \think\Collection || $_5cffcdea6751f instanceof \think\Paginator): if( count($_5cffcdea6751f)==0 ) : echo "" ;else: foreach($_5cffcdea6751f as $key=>$img): ?>
                            <div class='boximg'><a href='javascript:;' onclick="delImg(this,'<?php echo $img; ?>')">删除</a>
                                <img src="/public//<?php echo $img; ?>" class=\"yl-show_img\" alt=\"1\"></div>
                            <?php endforeach; endif; else: echo "" ;endif; ?>
                        </div>
                        <style>
                            #thumb_list img{
                                width: 100px;
                            }
                            .boximg{
                                position: relative;
                                width: 100px;
                                display: inline-block;
                                margin: 5px;
                            }
                            .boximg a{
                                position: absolute;
                                bottom: 0px;
                                height: 20px;
                                width: 100px;
                                text-align: center;
                                background: red;
                                cursor: pointer;
                            }
                        </style>
                    </div>
                </div>

            </div>
        </div>


        <div class="layui-form-item">
            <label   class="layui-form-label">
            </label>
            <button id="btn"  type="button" class="layui-btn" lay-filter="add"  >
                修改
            </button>
        </div>
    </form>
</div>




<!-- 配置文件 -->
<script type="text/javascript" src="/public/static/vendor/ueditor/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="/public/static/vendor/ueditor/ueditor.all.js"></script>
<!-- 实例化编辑器 -->
<script type="text/javascript">
    var ue = UE.getEditor('container',{
        initialFrameHeight:'400',
        initialFrameWidth:'100%',
        toolbars: [
            ['anchor', //锚点
                'undo', //撤销
                'redo', //重做
                'bold', //加粗
                'indent', //首行缩进
                'snapscreen', //截图
                'italic', //斜体
                'underline', //下划线
                'strikethrough', //删除线
                'subscript', //下标
                'fontborder', //字符边框
                'superscript', //上标
                'formatmatch', //格式刷
                'source', //源代码
                'blockquote', //引用
                'pasteplain', //纯文本粘贴模式
                'selectall', //全选
                'print', //打印
                'preview', //预览
                'horizontal', //分隔线
                'removeformat', //清除格式
                'time', //时间
                'date', //日期

                'insertcode', //代码语言
                'fontfamily', //字体
                'fontsize', //字号
                'paragraph', //段落格式
                'simpleupload', //单图上传
                'insertimage', //多图上传
                'edittable', //表格属性
                'edittd', //单元格属性
                'link', //超链接
                'emotion', //表情
                'spechars', //特殊字符
                'searchreplace', //查询替换
            ]
        ]
    });

</script>

<script type="text/javascript" src="/public/static/vendor/uploadifive/jquery.uploadifive.min.js"></script>
<script>

    $(function() {

        $('#file_uploadt').uploadifive({

            'auto' : true,//是否自动上传
            //显示文件上传进度的元素id
            'queueID' : 'queue',
            //服务器端处理文件上传的文件访问路径
            'uploadScript' : "<?php echo url('admin/cate/upimg'); ?>",
            //设定name
            'fileObjName'      : 'website_logo',
            //发送方法
            'method'       : 'post',
            'height'        : '38',
            //绑定class
            'buttonClass'  : 'layui-btn',
            'buttonText'   : '图片上传',
            //上传完成之后的回调函数
            'onUploadComplete' : function(file, data) {

                //json转成对象
                data  = $.parseJSON(data)
                if(data){
                    $("#show_imgt").show(400);
                    $("#show_imgt").attr('src','/public/'+data.website_logo);
                    $("input[name='file_link']").val(data.website_logo);
                }

            }
        });
        //图片撤销
        $("#back_outt").on('click',function(){

            //获取图片路径
            var path = $("#show_imgt").attr('src');

            $.post("<?php echo url('admin/article/backOut'); ?>",{'path':path},function (data) {

                if(data.status == 1){
                    $("[name='file_link']").val('');
                    $("#show_imgt").hide()
                }
            })
        })
        $('#file_uploadv').uploadifive({

            'auto' : true,//是否自动上传
            //显示文件上传进度的元素id
            'queueID' : 'queue',
            //服务器端处理文件上传的文件访问路径
            'uploadScript' : "<?php echo url('admin/cate/upimg'); ?>",
            //设定name
            'fileObjName'      : 'website_logo',
            //发送方法
            'method'       : 'post',
            'height'        : '38',
            //绑定class
            'buttonClass'  : 'layui-btn',
            'buttonText'   : '视频上传',
            //上传完成之后的回调函数
            'onUploadComplete' : function(file, data) {

                //json转成对象
                data  = $.parseJSON(data)
                if(data){
                    $("input[name='file_link']").val(data.website_logo);
                }

            }
        });
        //图片撤销
        $("#back_outv").on('click',function(){

            //获取图片路径
            var path = $("[name='file_link']").val();

            $.post("<?php echo url('admin/article/backOut'); ?>",{'path':path},function (data) {

                if(data.status == 1){
                    $("[name='file_link']").val('');

                }
            })
        })
        $('#file_uploads').uploadifive({
            'auto' : true,//是否自动上传
            //显示文件上传进度的元素id

            //服务器端处理文件上传的文件访问路径
            'uploadScript' : "<?php echo url(request()->controller().'/uploadList').'?id='.input('id'); ?>",
            //设定name
            'fileObjName'      : 'images',
            uploadLimit:9,
            //发送方法
            'method'       : 'post',
            'height'        : '38',
            //绑定class
            'buttonClass'  : 'layui-btn',
            'buttonText'   : '图片上传',
            //上传完成之后的回调函数
            'onUploadComplete' : function(file, data) {

                $("#uploadifive-file_uploads-queue").attr('style','display:none');
                //json转成对象

                if(data){
                    // var image =data.split('=min$');
                    var image =data.split('=min$');
                    var html ="<div class='boximg'><a href='javascript:;' onclick=\"delImg(this,"+"'"+image[0]+"'"+")\">删除</a><img src=\""+'/public/'+image[0]+"\" class=\"yl-show_img\" alt=\"1\"></div>";
                    var val = $("[name='thumb_list']").val();
                    if(val == ''){
                        $("[name='thumb_list']").val(image[0]);
                    }else{
                        $("[name='thumb_list']").val(val+'yl'+image[0]);
                    }
                    $("#thumb_list").append(html);
                }

            }
        });
    });

    function delImg(obj,img){
        $.post("<?php echo url('admin/article/delImg'); ?>",{'img':img},function (data) {
            $(obj).parent().remove();
            var val = $("[name='thumb_list']").val();
            val= val.replace(img+'yl','');
            val= val.replace(img,'');
            $("[name='thumb_list']").val(val);
        })
    }
    $(function() {
        $('#file_upload').uploadifive({
            'auto' : true,//是否自动上传
            //显示文件上传进度的元素id
            'queueID' : 'queue',
            //服务器端处理文件上传的文件访问路径
            'uploadScript' : "<?php echo url('admin/cate/upimg'); ?>",
            //设定name
            'fileObjName'      : 'website_logo',
            //发送方法
            'method'       : 'post',
            'height'        : '38',
            //绑定class
            'buttonClass'  : 'layui-btn',
            'buttonText'   : '图片上传',
            //上传完成之后的回调函数
            'onUploadComplete' : function(file, data) {
                $("#uploadifive-file_uploads-queue").attr('style','display:none');
                //json转成对象
                data  = $.parseJSON(data)
                if(data){
                    $("#show_img").show(400);
                    $("#show_img").attr('src','/public/'+data.website_logo);
                    $("input[name='thumb']").val(data.website_logo);
                }

            }
        });
    });

    //图片撤销
    $("#back_out").on('click',function(){

        //获取图片路径
        var path = $("#show_img").attr('src');
        path= path.replace('/public/','')
        console.log(path)
        $.post("<?php echo url('admin/cate/backOut'); ?>",{'path':path},function (data) {

            if(data.status == 1){
                $("#show_img").hide()
            }
        })

    })

    $("#btn").on('click',function(){

        $.ajax({
            type:"post",
            url:"<?php echo url('admin/article/edit'); ?>",
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