<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:56:"F:\WWW\qiye1/./application/admin\view\index\welcome.html";i:1552038930;s:58:"F:\WWW\qiye1\application\admin\view\template\layer-js.html";i:1547206380;}*/ ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>欢迎页面-YuanLu</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="/public/static/admin/css/font.css">
    <!--<link rel="stylesheet" href="/public/static/admin/css/yuanlu.css">-->
    <link rel="stylesheet" href="/public/static/admin/lib/layui/css/layui.css">
    <link rel="stylesheet" href="/public/static/admin/lib/layui/css/admin.css">
    <script src="/public/static/admin/js/jquery.min.js"></script>
    <script type="text/javascript" src="/public/static/admin/lib/layui/layui.all.js" charset="utf-8"></script>
    <script type="text/javascript" src="/public/static/admin/lib/layui/layui.js" charset="utf-8"></script>


    <script type="text/javascript" src="/public/static/admin/js/yuanlu.js"></script>
    <style>
        .page {
            margin-top: 20px;
            text-align: center;
        }
        .page a {
            display: inline-block;
            background: #fff url() 0 0 no-repeat;
            color: #888;
            padding: 10px;
            margin: 2px;
            min-width: 15px;
            border: 1px solid #E2E2E2;
        }
        .page li{
            display: inline-block;
        }
        a {
            text-decoration: none;
        }
        .page  .active {

            background: #009688 url() 0 0 no-repeat;
            color: #fff;
        }
        .page span {
            display: inline-block;
            padding: 10px;
            min-width: 15px;
            border: 1px solid #E2E2E2;
        }
    </style>

</head>
<body layadmin-themealias="default">

<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md8">
            <div class="layui-row layui-col-space15">

                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-header">待办事项</div>
                        <div class="layui-card-body">

                            <div class="layui-carousel layadmin-carousel layadmin-backlog" lay-anim=""
                                 lay-indicator="inside" lay-arrow="none" style="width: 100%;  height: 92.5px!important;">
                                <div carousel-item="">
                                    <ul class="layui-row layui-col-space10 layui-this">
                                        <?php if(is_array($with) || $with instanceof \think\Collection || $with instanceof \think\Paginator): $i = 0; $__LIST__ = $with;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$withs): $mod = ($i % 2 );++$i;?>
                                        <li class="layui-col-xs3">
                                            <a lay-href="app/content/comment.html" class="layadmin-backlog-body">
                                                <h3><?php echo $key; ?></h3>
                                                <p><cite><?php echo $withs; ?></cite></p>
                                            </a>
                                        </li>
                                        <?php endforeach; endif; else: echo "" ;endif; ?>

                                    </ul>

                                </div>

                                <button class="layui-icon layui-carousel-arrow" lay-type="sub"></button>
                                <button class="layui-icon layui-carousel-arrow" lay-type="add"></button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="layui-col-md12" >
                    <div class="layui-card">
                    <div class="layui-card-header">网站近七日访客折线图</div>
                    <div class="layui-card-body"  id="container" style="height:350px;">
                    </div>
                    </div>
                    </div>


                <div class="layui-col-md12">

                    <div class="layui-card">
                        <div class="layui-tab layui-tab-brief layadmin-latestData">
                            <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                                <ul class="layui-tab-title">
                                    <li class="layui-this">管理员操作日志</li>

                                    <li class="">最新文章发</li>
                                    <li>最新留言</li>

                                </ul>
                                <div class="layui-tab-content"      >
                                    <div class="layui-tab-item layui-show">
                                        <table class="layui-table">
                                            <thead>
                                            <tr>

                                                <th>管理员</th>

                                                <th>登录地点</th>

                                                <th>操作事件</th>
                                                <th>操作时间</th>
                                                <th>操作</th></tr>
                                            </thead>
                                            <tbody>
                                            <?php if(is_array($art_list['admin_log']) || $art_list['admin_log'] instanceof \think\Collection || $art_list['admin_log'] instanceof \think\Paginator): $i = 0; $__LIST__ = $art_list['admin_log'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$log): $mod = ($i % 2 );++$i;?>

                                            <tr>

                                                <td><?php echo $log['uname']; ?></td>
                                                <td><?php echo $log['location']; ?></td>
                                                <td><?php echo $log['desc']; ?></td>
                                                <td><?php echo date("Y-m-d H:i:s",$log['time']); ?></td>
                                                <td class="td-manage">
                                                <a title="恢复" onclick="member_del(this,'要删除的id')" href="javascript:;">
                                                    <i class="layui-icon"></i>
                                                </a>

                                            </td>
                                            </tr>
                                            <?php endforeach; endif; else: echo "" ;endif; ?>

                                            </tbody>
                                        </table>

                                        <div class="page">
                                        <?php echo $art_list['admin_log']->render(); ?>
                                        </div>

                                    </div>
                                    <div class="layui-tab-item  ">
                                        <ul class="layuiadmin-card-status layuiadmin-home2-usernote">
                                            <?php if(is_array($art_list['article']) || $art_list['article'] instanceof \think\Collection || $art_list['article'] instanceof \think\Paginator): $i = 0; $__LIST__ = $art_list['article'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$article): $mod = ($i % 2 );++$i;?>
                                            <li>
                                                <p><?php echo $article['title']; ?></p><span><?php echo date("Y-m-d",$article['add_time']); ?></span>
                                            </li>
                                            <?php endforeach; endif; else: echo "" ;endif; ?>


                                        </ul>
                                    </div>
                                    <div class="layui-tab-item">
                                        <ul class="layuiadmin-card-status layuiadmin-home2-usernote">

                                        <?php if(is_array($art_list['message']) || $art_list['message'] instanceof \think\Collection || $art_list['message'] instanceof \think\Paginator): $i = 0; $__LIST__ = $art_list['message'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$message): $mod = ($i % 2 );++$i;?>
                                        <li>
                                            <!--<h3></h3>-->
                                            <p><?php echo $message['message']; ?></p>
                                            <span></span>
                                            <!--<a href="javascript:;" layadmin-event="replyNote" data-id="5" class="layui-btn layui-btn-xs layuiadmin-reply">回复</a>-->
                                        </li>
                                        <?php endforeach; endif; else: echo "" ;endif; ?>
                                        </ul>

                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <div class="layui-col-md4">

            <!--<div class="layui-card">-->
                <!--<div class="layui-card-header">留言</div>-->
                <!--<div class="layui-fluid layadmin-message-fluid">-->
                    <!--<div class="layui-row">-->
                        <!--<div class="layui-col-md12">-->
                            <!--<form action="" id="message">-->
                                <!--<div class="layui-form">-->
                                    <!--<div class="layui-form-item layui-form-text">-->
                                        <!--<div class="layui-input-block" style="    margin-left: 0px;">-->
                                            <!--<textarea name="desc" placeholder="请输入留言" class="layui-textarea"></textarea>-->
                                        <!--</div>-->
                                    <!--</div>-->

                                    <!--<div class="layui-form-item" style="overflow: hidden;">-->
                                        <!--<div class="layui-input-block layui-input-right" style="    margin-left: 0px;">-->
                                            <!--<button class="layui-btn" type="button" onclick="ajax_post('<?php echo url('message/add'); ?>','message')" lay-filter="formDemo">发表</button>-->
                                        <!--</div>-->
                                    <!--</div>-->
                                <!--</div>-->
                            <!--</form>-->
                        <!--</div>-->
                        <!--<div class="layui-col-md12 layadmin-homepage-list-imgtxt message-content">-->
                            <!--<?php if(is_array($admin_message) || $admin_message instanceof \think\Collection || $admin_message instanceof \think\Paginator): if( count($admin_message)==0 ) : echo "" ;else: foreach($admin_message as $key=>$msgs): ?>-->
                            <!--<div class="media-body" style="margin:  15px 0px;">-->
                                <!--<div class="pad-btm">-->
                                    <!--<p class="fontColor" style="    margin-bottom: 3px;">-->
                                        <!--<?php if($msgs['top'] == 1): ?>-->
                                        <!--<span class="layui-badge layui-bg-orange">顶置</span> &nbsp;-->
                                        <!--<?php endif; ?>-->
                                        <!--<a href="javascript:;"><?php echo $msgs['location']; if($msgs['location'] == '远路'): else: ?>的网友<?php endif; ?>：</a></p>-->
                                    <!--<p class="message-text" style="color: red; margin-bottom: 3px;line-height: 20px"><?php echo $msgs['desc']; ?></p>-->
                                    <!--<p class="min-font">-->
                                      <!--<span class="layui-breadcrumb" lay-separator="-">-->
                                        <!--&lt;!&ndash;<a href="javascript:;" class="layui-icon layui-icon-cellphone"></a>&ndash;&gt;-->
                                        <!--<a href="javascript:;"><?php echo $msgs['type']; ?></a>-->

                                        <!--<a href="javascript:;"><?php echo date("m月d日 H时i分",$msgs['time']); ?></a>-->
                                      <!--</span>-->
                                    <!--</p>-->
                                <!--</div>-->

                                <!--<hr>-->
                            <!--</div>-->
                            <!--<?php endforeach; endif; else: echo "" ;endif; ?>-->

                            <!--<div class="layui-row message-content-btn">-->
                                <!--<a href="javascript:;" class="layui-btn">更多</a>-->
                            <!--</div>-->
                        <!--</div>-->

                    <!--</div>-->
                <!--</div>-->
            <!--</div>-->

            <div class="layui-card">
                <div class="layui-card-header">系统信息</div>
                <div class="layui-card-body layui-text">
                    <table class="layui-table">
                        <colgroup>
                            <col width="100">
                            <col>
                        </colgroup>
                        <tbody>
                        <?php if(is_array($OS_info) || $OS_info instanceof \think\Collection || $OS_info instanceof \think\Paginator): $i = 0; $__LIST__ = $OS_info;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$os): $mod = ($i % 2 );++$i;?>
                        <tr>
                            <td><?php echo $key; ?></td>
                            <td><?php echo $os; ?></td>
                        </tr>
                        <?php endforeach; endif; else: echo "" ;endif; ?>


                        </tbody>
                    </table>
                </div>
            </div>



            <div class="layui-card">
                <div class="layui-card-header">
                   YUANLU OS 公告
                    <i class="layui-icon layui-icon-tips" lay-tips="要支持的噢" lay-offset="5"></i>
                </div>
                <div class="layui-card-body  ">
                    <!--<iframe src="http://www.yuanluphp.top/" frameborder="0" scrolling="yes"  style="width: 100%;height: 500px"></iframe>-->
                </div>
            </div>
        </div>

    </div>
</div>




<style id="LAY_layadmin_theme">.layui-side-menu, .layadmin-pagetabs .layui-tab-title li:after, .layadmin-pagetabs .layui-tab-title li.layui-this:after, .layui-layer-admin .layui-layer-title, .layadmin-side-shrink .layui-side-menu .layui-nav > .layui-nav-item > .layui-nav-child {
    background-color: #20222A !important;
}

.layui-nav-tree .layui-this, .layui-nav-tree .layui-this > a, .layui-nav-tree .layui-nav-child dd.layui-this, .layui-nav-tree .layui-nav-child dd.layui-this a {
    background-color: #009688 !important;
}

.layui-layout-admin .layui-logo {
    background-color: #20222A !important;
}</style>

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
<script type="text/javascript" src="/public/static/admin/js/echarts.min.js"></script>
<script type="text/javascript">
    var dom = document.getElementById("container");
    var myChart = echarts.init(dom);
    var app = {};
    option = null;
    option = {

        tooltip : {
            trigger: 'axis',
            axisPointer: {
                type: 'cross',
                label: {
                    backgroundColor: 'red'
                }
            }
        },
        legend: {
            data:['总人数','PC访问人数','Mobile访问人数']
        },
        toolbox: {
            feature: {
                saveAsImage: {}
            }
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
        },
        xAxis : [
            {
                type : 'category',
                boundaryGap : false,
                data : [<?php if(is_array($visit['day']) || $visit['day'] instanceof \think\Collection || $visit['day'] instanceof \think\Paginator): $i = 0; $__LIST__ = $visit['day'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$day): $mod = ($i % 2 );++$i;?>"<?php echo $day; ?>",<?php endforeach; endif; else: echo "" ;endif; ?>]
            }
        ],
        yAxis : [
            {
                type : 'value'
            }
        ],
        series : [

            {
                name:'总人数',
                type:'line',
                // stack: '总量',
                areaStyle: {color: 'rgba(46, 139, 87, 0)',},
                lineStyle: {color: 'red',},

                label: {
                    normal: {
                        show: true,
                        position: 'top'
                    }
                },
                data:[<?php echo implode(",",$visit['count']); ?>]
    // data:[1140, 1252, 1201, 2333, 1680, 1630, 1640]
    },
    {
        name:'PC访问人数',
            type:'line',
        // stack: '总量',
        areaStyle: {color: 'rgba(46, 139, 87, 0.5)',},
        lineStyle: {color: 'rgba(46,139,87, 1)',},

        label: {
            normal: {
                show: true,
                    position: 'top'
            }
        },
        data:[<?php echo implode(',',$visit['pc']); ?>]
        // data:[320, 332, 301, 1934, 390, 330, 320]
    },
    {
        name:'Mobile访问人数',
            type:'line',
        // stack: '总量',
        label: {
        normal: {
            show: true,
                position: 'top'
        }
    },
        areaStyle: {color: 'rgba(70, 130, 187, 0.8)',},
        lineStyle: {color: 'rgba(70, 130, 187, 1)',},
        data:[<?php echo implode(',',$visit['mobile']); ?>]
        // data:[820, 932, 901, 934, 1290, 1330, 1320]
    }
    ]
    };
    ;
    if (option && typeof option === "object") {
        myChart.setOption(option, true);
    }
</script>
</body>
</html>