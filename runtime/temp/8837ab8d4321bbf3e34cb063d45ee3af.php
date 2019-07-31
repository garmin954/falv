<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:54:"F:\WWW\qiye1/./application/admin\view\advert\edit.html";i:1548161668;s:58:"F:\WWW\qiye1\application\admin\view\template\template.html";i:1549977998;s:55:"F:\WWW\qiye1\application\admin\view\template\style.html";i:1547206380;s:57:"F:\WWW\qiye1\application\admin\view\template\publish.html";i:1547206380;}*/ ?>
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
                <!--<li class="">描述SEO</li>-->
                <!--<li class="">内容</li>-->
            </ul>
            <div class="layui-tab-content " >
                <div class="layui-tab-item layui-show">

                    <div class="layui-form-item">
                        <label   class="layui-form-label">
                            <span class="x-red">*</span>广告名称
                        </label>
                        <div class="layui-input-inline">
                            <input type="text" id="cname" name="title" required="" lay-verify="required" value="<?php echo $lists['title']; ?>"
                                   autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-form-mid layui-word-aux">
                            <span class="x-red">*</span>必填
                        </div>
                    </div>


                    <div class="layui-form-item">
                        <label  class="layui-form-label">
                            <span class="x-red">*</span>所属栏目
                        </label>
                        <div class="layui-input-inline">
                            <select name="cate_id" >

                                <?php $_result=cateTree('cate');if(is_array($_result) || $_result instanceof \think\Collection || $_result instanceof \think\Paginator): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$cl): $mod = ($i % 2 );++$i;?>
                                <option <?php if($lists['cate_id'] == $cl['id']): ?> selected<?php endif; ?>value="<?php echo $cl['id']; ?>"><?php echo $cl['cate_name']; ?></option>
                                <?php endforeach; endif; else: echo "" ;endif; ?>
                                <option value="0" selected>首页</option>
                            </select>
                        </div>
                        <div class="layui-form-mid layui-word-aux">
                            <span class="x-red">*</span>
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label   class="layui-form-label">
                            <span class="x-red">*</span>广告链接
                        </label>
                        <div class="layui-input-inline">
                            <input type="text" id="link" name="link" required="" lay-verify="required" value="<?php echo $lists['link']; ?>"
                                   autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-form-mid layui-word-aux">
                            <span class="x-red">*</span>必填
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label   class="layui-form-label">
                            <span class="x-red">*</span>广告分类
                        </label>
                        <div class="layui-input-inline">
                            <input type="text"   name="type" required="" lay-verify="required" value="<?php echo $lists['type']; ?>"
                                   autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-form-mid layui-word-aux">
                            <span class="x-red">*</span>必填
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label   class="layui-form-label">
                            <span class="x-red">*</span>栏目描述
                        </label>
                        <div class="layui-input-inline">

                            <textarea name="desc"   id="" cols="60" rows="5" style="border:1px solid #e6e6e6;padding: 10px">  <?php echo $lists['desc']; ?></textarea>
                        </div>
                        <div class="layui-form-mid layui-word-aux">

                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">主图 </label>
                        <div class="layui-input-block">

                            <div class="layui-upload" >
                                <div id="queue"></div>
                                <button  id="file_upload" type="button" class="layui-btn" ><i class="layui-icon"></i>上传文件</button>
                                <button id="back_out"  type="button" class="layui-btn layui-btn-danger">撤销上传</button>
                                <br><img id="show_img" height="120px" src="/public/<?php echo $lists['thumb']; ?>"  alt="上传的图片" style=" margin-top: 5px" >
                                <input type="hidden" name="thumb" value="<?php echo $lists['thumb']; ?>">
                            </div>

                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">副图 </label>
                        <div class="layui-input-block">

                            <div class="layui-upload" >
                                <div id="queues"></div>
                                <button  id="file_uploads" type="button" class="layui-btn" ><i class="layui-icon"></i>上传文件</button>
                                <button id="back_outs"  type="button" class="layui-btn layui-btn-danger">撤销上传</button>
                                <br><img id="show_imgs" height="120px" src="/public/<?php echo $lists['thumb2']; ?>"  alt="上传的图片" style=" margin-top: 5px" >
                                <input type="hidden" name="thumb2" value="<?php echo $lists['thumb']; ?>">
                            </div>

                        </div>
                    </div>


                    <div class="layui-form-item">
                        <label class="layui-form-label">是否开启：</label>
                        <div class="layui-input-block" style="width: 50px">
                            <input type="checkbox"  name="status" lay-skin="switch" value="<?php echo $lists['status']; ?>" lay-text="开启|关闭"   <?php if($lists['status'] == 1): ?>checked<?php endif; ?>>

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

    $(function() {
        $('#file_uploads').uploadifive({
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
                    $("#show_imgs").show(400);
                    $("#show_imgs").attr('src','/public/'+data.website_logo);
                    $("input[name='thumb2']").val(data.website_logo);
                }

            }
        });
    });

    //图片撤销
    $("#back_out").on('click',function(){
        //获取图片路径
        var path = $("input[name='thumb']").val();
        $.post("<?php echo url('admin/cate/backOut'); ?>",{'path':path},function (data) {
            if(data.status == 1){
                $("#show_img").hide()
            }
        })
    })

    //图片撤销
    $("#back_outs").on('click',function(){
        //获取图片路径
        var path = $("input[name='thumb2']").val();
        $.post("<?php echo url('admin/cate/backOut'); ?>",{'path':path},function (data) {
            if(data.status == 1){
                $("#show_imgs").hide()
            }
        })
    })
</script>


</body>
</html>