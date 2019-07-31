<?php if (!defined('THINK_PATH')) exit(); /*a:6:{s:71:"/www/wwwroot/www.jisitech.com/./application/admin/view/system/page.html";i:1551351408;s:75:"/www/wwwroot/www.jisitech.com/application/admin/view/template/template.html";i:1549977998;s:72:"/www/wwwroot/www.jisitech.com/application/admin/view/template/style.html";i:1547206380;s:74:"/www/wwwroot/www.jisitech.com/application/admin/view/template/uploads.html";i:1549982928;s:75:"/www/wwwroot/www.jisitech.com/application/admin/view/template/layer-js.html";i:1547206380;s:71:"/www/wwwroot/www.jisitech.com/application/admin/view/template/base.html";i:1547794034;}*/ ?>
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

<style>
    .layui-input, .layui-textarea {width: 80%;}
    .layui-form-label {width: 100px}
    .layui-form-item {margin-bottom: 0px;clear: both;}

  </style>

    <div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="">首页</a>
        <a href="">系统设置</a>
        <a>
          <cite>配置页</cite></a>
      </span>
      <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
    </div>
    <div class="x-body">


      <xblock>

        <button class="layui-btn" onclick="x_admin_show('添加系统配置','<?php echo url('admin/System/add'); ?>',850,500)"><i class="layui-icon"></i>添加</button>

      </xblock>
      <form class="layui-form" action="" lay-filter="component-form-element">
          <div class="layui-card-body" style="padding: 0px;">
            <div class="layui-tab layui-tab-brief" lay-filter="component-tabs-brief">
              <ul class="layui-tab-title">

                <?php if(is_array($type_list) || $type_list instanceof \think\Collection || $type_list instanceof \think\Paginator): $i = 0; $__LIST__ = $type_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$type): $mod = ($i % 2 );++$i;?>
                  <li class=" "><?php echo $type['type_name']; ?></li>
                <?php endforeach; endif; else: echo "" ;endif; ?>

              </ul>
              <div class="layui-tab-content">



                <?php if(is_array($type_list) || $type_list instanceof \think\Collection || $type_list instanceof \think\Paginator): $i = 0; $__LIST__ = $type_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$type): $mod = ($i % 2 );++$i;?>
                  <div class="layui-tab-item <?php if($i == 1): ?>layui-show<?php endif; ?>" >

                  <?php if(is_array($type['disploy']) || $type['disploy'] instanceof \think\Collection || $type['disploy'] instanceof \think\Paginator): $i = 0; $__LIST__ = $type['disploy'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$disploy): $mod = ($i % 2 );++$i;?>


                    <div class="layui-card-body">

              <div class="layui-row layui-col-space10 layui-form-item">

                <?php if($disploy['type'] == 1): ?>
                <div class="layui-col-lg6">
                  <label class="layui-form-label"><?php echo $disploy['cname']; ?>：<br><code><?php echo $disploy['ename']; ?></code></label>
                  <div class="layui-input-block">
                    <input type="text" name="<?php echo $disploy['ename']; ?>" lay-verify="required" value="<?php echo $disploy['value']; ?>" autocomplete="off" class="layui-input">
                  </div>
                </div>
                <?php endif; if($disploy['type'] == 2): ?>
                <div class="layui-col-lg4" style="width: 420px;">
                  <label class="layui-form-label"><?php echo $disploy['cname']; ?>：<br><code><?php echo $disploy['ename']; ?></code></label>
                  <div class="layui-input-block" >
                    <select name="<?php echo $disploy['ename']; ?>"  >
                      <option value=""></option>
                      <?php $values =explode(',',$disploy['values']);  if(is_array($values) || $values instanceof \think\Collection || $values instanceof \think\Paginator): $i = 0; $__LIST__ = $values;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vs): $mod = ($i % 2 );++$i;?>
                      <option <?php if($vs == $disploy['value']): ?>selected="selected"<?php endif; ?> value="<?php echo $vs; ?>"><?php echo $vs; ?> </option>
                      <?php endforeach; endif; else: echo "" ;endif; ?>
                    </select>
                  </div>
                </div>
                <?php endif; ?>

              </div>

              <?php if($disploy['type'] == 3): ?>
              <div class="layui-form-item">
                <label class="layui-form-label"><?php echo $disploy['cname']; ?>：<br><code><?php echo $disploy['ename']; ?></code></label>
                <div class="layui-input-block">

                <?php $_result=explode('/',$disploy['values']);if(is_array($_result) || $_result instanceof \think\Collection || $_result instanceof \think\Paginator): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$values): $mod = ($i % 2 );++$i;?>
                  <input <?php if(in_array(($values), is_array(str_replace('/',',',$disploy['value']))?str_replace('/',',',$disploy['value']):explode(',',str_replace('/',',',$disploy['value'])))): ?> checked  <?php endif; ?> type="checkbox" name="<?php echo $disploy['ename']; ?>[]" title="<?php echo $values; ?>" value="<?php echo $values; ?>" lay-skin="primary">
                <?php endforeach; endif; else: echo "" ;endif; ?>
                 </div>
              </div>
              <?php endif; if($disploy['type'] == 4): ?>
              <!--<div class="layui-form-item">-->
                <!--<label class="layui-form-label"><?php echo $disploy['cname']; ?>：</label>-->
                <!--<div class="layui-input-block" id="changes" >-->
                  <!--<input type="checkbox" <?php if($disploy['value'] == 1): ?>checked="checked" value="1" <?php else: ?>value="0"<?php endif; ?>   name="<?php echo $disploy['ename']; ?>" lay-skin="switch" lay-text="是|否">-->
                  <!--<div class="layui-unselect layui-form-switch " ><em><?php if($disploy['value'] == 1): ?>是<?php else: ?>否<?php endif; ?></em><i></i></div>-->
                <!--</div>-->
              <!--</div>-->


                      <div class="layui-form-item">
                        <label class="layui-form-label"><?php echo $disploy['cname']; ?>：<br><code><?php echo $disploy['ename']; ?></code></label>
                        <div class="layui-input-block" >

                          <div id="<?php echo $disploy['ename']; ?>" onclick="changes(this)" class="layui-unselect layui-form-switch <?php if($disploy['value'] == 1): ?>layui-form-onswitch<?php endif; ?> " lay-skin="_switch"><em><?php if($disploy['value'] == 1): ?>开启<?php else: ?>关闭<?php endif; ?> </em><i></i></div>

                        </div>
                      </div>
              <?php endif; if($disploy['type'] == 5): ?>
              <div class="layui-form-item">
                <label class="layui-form-label"><?php echo $disploy['cname']; ?>：<br><code><?php echo $disploy['ename']; ?></code></label>
                <div class="layui-input-block">

                    <?php $_result=explode('/',$disploy['values']);if(is_array($_result) || $_result instanceof \think\Collection || $_result instanceof \think\Paginator): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$values): $mod = ($i % 2 );++$i;?>
                    <input <?php if(trim($values) == trim($disploy['value'])): ?> checked  <?php endif; ?> type="radio" name="<?php echo $disploy['ename']; ?>" title="<?php echo $values; ?>" value="<?php echo $values; ?>" lay-skin="primary">
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                </div>
              </div>
              <?php endif; if($disploy['type'] == 6): ?>
              <div class="layui-form-item">
                <label class="layui-form-label"><?php echo $disploy['cname']; ?>：<br><code><?php echo $disploy['ename']; ?></code></label>
                <div class="layui-input-block">
                  <textarea name="<?php echo $disploy['ename']; ?>" placeholder="" class="layui-textarea"><?php echo $disploy['value']; ?></textarea>
                </div>
              </div>
              <?php endif; if($disploy['type'] == 7): ?>

              <div class="layui-form-item">
                <label class="layui-form-label"><?php echo $disploy['cname']; ?>：<br><code><?php echo $disploy['ename']; ?></code></label>
                <div class="layui-input-block">

                 <div class="layui-upload" style="    margin-left: 20px;">
                        <form>
                          <div id="queue"></div>
                          <button  id="file_upload<?php echo $disploy['id']; ?>" type="button" class="layui-btn" ><i class="layui-icon"></i>上传文件</button>
                          <button id="back_out<?php echo $disploy['id']; ?>"  type="button" class="layui-btn layui-btn-danger">撤销上传</button>
                          <br>
                          <a href="javascript:;" id="<?php echo $disploy['id']; ?>"  onclick="showImage(<?php echo $disploy['id']; ?>)" >
                          <img id="show_img<?php echo $disploy['id']; ?>" width="100px" src="/public//<?php echo $disploy['value']; ?>"  alt="上传的图片" style="display:<?php if($disploy['value'] != null): ?>block<?php else: ?>none<?php endif; ?>;margin-top: 5px" >
                          </a>
                        </form>
                   <input type="hidden" name="<?php echo $disploy['ename']; ?>" value="<?php echo $disploy['value']; ?>">
                </div>
                </div>
              </div>

                      <script>
                        $(function() {
                          $("#file_upload<?php echo $disploy['id']; ?>").uploadifive({
                            'auto' : true,'queueID' : 'queue','uploadScript' : "<?php echo url('admin/system/upimg'); ?>", 'fileObjName'      : 'website_logo',
                            //发送方法
                            'method'       : 'post','height'        : '38','buttonClass'  : 'layui-btn','buttonText'   : '图片上传','onUploadComplete' : function(file, data) {
                              //json转成对象
                              data  = $.parseJSON(data)
                              if(data){
                                $("#show_img<?php echo $disploy['id']; ?>").show(400);
                                $("#show_img<?php echo $disploy['id']; ?>").attr('src','/public/'+data.website_logo);
                                $("input[name='<?php echo $disploy['ename']; ?>']").val(data.website_logo);
                              }}}); });
                        //图片撤销
                        $("#back_out<?php echo $disploy['id']; ?>").on('click',function(){
                          //获取图片路径
                          var path = $("#show_img<?php echo $disploy['id']; ?>").attr('src');
                          path = path.replace('/public/','');
                          $.post("<?php echo url('admin/cate/backOut'); ?>",{'path':path},function (data) {
                            if(data.status == 1){$("#show_img<?php echo $disploy['id']; ?>").hide() }}) })

                      </script>
              <?php endif; ?>

                </div>
                  <?php endforeach; endif; else: echo "" ;endif; ?>
                  </div>
                <?php endforeach; endif; else: echo "" ;endif; ?>
                <div class="layui-form-item">
                <div class="layui-input-block">
                  <button class="layui-btn" id="btn"  type="button" lay-filter="component-form-element">立即提交</button>
                  <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
              </div>
              </div>
            </div>
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

        initialFrameWidth:'100%',

    });

    var ue = UE.getEditor('containers',{

        initialFrameWidth:'100%',

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
        var path = $("#show_img").attr('src');

        $.post("<?php echo url('admin/cate/backOut'); ?>",{'path':path},function (data) {

            if(data.status == 1){
                $("#show_img").hide()
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
    <script type="text/javascript" src="/public/static/vendor/uploadifive/jquery.uploadifive.min.js"></script>

    <!--<link rel="stylesheet" type="text/css" href="/public/static/vendor/uploadifive/uploadifive.css" />-->

    <script type="text/javascript">

        // $("#changes").on('click',function () {
        //
        //     alert("开启提交")
        // })

        function changes(vals){
            console.log(vals);
            var zhi = $("#"+vals.id+" em").html();
            if(zhi == "开启"){

                $("#"+vals.id).removeClass('layui-form-onswitch');
                $.post("<?php echo url('admin/system/changeState'); ?>",{'id':vals.id,'status':0},function(data){
                    $("#"+vals.id+" em").html('关闭');
                })
            }else{
                $("#"+vals.id+" em").html('开启');
                $("#"+vals.id).addClass('layui-form-onswitch');
                $.post("<?php echo url('admin/system/changeState'); ?>",{'id':vals.id,'status':1},function(data){

                })
            }
        }


        $("#btn").on('click',function () {

            $.ajax({
                type:'post',
                url:"<?php echo url('admin/system/page'); ?>",
                data: $(".layui-form").serialize(),
                dataType:'json',
                success:function(data){
                  if(data){
                      layer.msg("更新成功",{icon:6,shade:0.6,time:2000});
                      setTimeout(function () {
                        location.reload();
                      },2000)
                  }
                }
            })
        })

    </script>




    <script>

      layui.use('laydate', function(){
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
      function member_stop(obj,id){
          layer.confirm('确认要停用吗？',function(index){

              if($(obj).attr('title')=='启用'){

                //发异步把用户状态进行更改
                $(obj).attr('title','停用')
                $(obj).find('i').html('&#xe62f;');

                $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').html('已停用');
                layer.msg('已停用!',{icon: 5,time:1000});

              }else{
                $(obj).attr('title','启用')
                $(obj).find('i').html('&#xe601;');

                $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').html('已启用');
                layer.msg('已启用!',{icon: 5,time:1000});
              }

          });
      }

      /*用户-删除*/
      function member_del(obj,id){
          layer.confirm('确认要删除吗？',function(index){
              //发异步删除数据
              $(obj).parents("tr").remove();
              layer.msg('已删除!',{icon:1,time:1000});
          });
      }



      function delAll (argument) {

        var data = tableCheck.getData();

        layer.confirm('确认要删除吗？'+data,function(index){
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
      }
    </script>


      <script>
layui.use('upload', function(){
  var upload = layui.upload;

  //执行实例
  var uploadInst = upload.render({
    elem: '#test1' //绑定元素
    ,url: '/upload/' //上传接口
    ,done: function(res){
      //上传完毕回调
    }
    ,error: function(){
      //请求异常回调
    }
  });
});
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