<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:71:"/www/wwwroot/www.jisitech.com/./application/admin/view/index/index.html";i:1554996532;s:71:"/www/wwwroot/www.jisitech.com/application/admin/view/template/head.html";i:1551345758;s:71:"/www/wwwroot/www.jisitech.com/application/admin/view/template/left.html";i:1551345316;}*/ ?>
<!DOCTYPE html>
<html><head>
    <meta charset="UTF-8">
	<title>YUANLU OS后台</title>
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="/public/static/admin/css/font.css">
	  <link rel="stylesheet" href="/public/static/admin/css/yuanlu.css">
    <script type="text/javascript" src="/public/static/admin/js/vendor/jquery.min.js"></script>
    <script src="/public/static/admin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="/public/static/admin/js/yuanlu.js"></script>

</head>

<body>
   

    
    <div class="container">
        <div class="logo"><a href="./index.html">YuanLu</a></div>
        <div class="left_open">
            <i title="展开左侧栏" class="iconfont">&#xe667;</i>
        </div>
        <ul class="layui-nav left fast-add" lay-filter="">

          <!--<li class="layui-nav-item">-->
            <!--<a href="javascript:;">+新增</a>-->
            <!--<dl class="layui-nav-child"> &lt;!&ndash; 二级菜单 &ndash;&gt;-->
              <!--<dd><a onclick="x_admin_show('资讯','http://www.baidu.com')"><i class="iconfont">&#xe6a2;</i>资讯</a></dd>-->
              <!--<dd><a onclick="x_admin_show('图片','http://www.baidu.com')"><i class="iconfont">&#xe6a8;</i>图片</a></dd>-->
               <!--<dd><a onclick="x_admin_show('用户','http://www.baidu.com')"><i class="iconfont">&#xe6b8;</i>用户</a></dd>-->
            <!--</dl>-->
          <!--</li>-->
            <?php if(is_array($left_nav) || $left_nav instanceof \think\Collection || $left_nav instanceof \think\Paginator): $i = 0; $__LIST__ = $left_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$nav_top): $mod = ($i % 2 );++$i;if($nav_top['types'] == 1): ?>
            <li class="layui-nav-item">
                <a href="javascript:;" onclick="navShow('nav-id-<?php echo $nav_top['id']; ?>')" ><i class="iconfont"><?php echo $nav_top['icon']; ?>  <?php echo $nav_top['title']; ?></i></a>
            </li>
            <?php endif; endforeach; endif; else: echo "" ;endif; ?>
        </ul>


        <ul class="layui-nav right" lay-filter="">


          <li class="layui-nav-item" lay-unselect="">
                <a href="javascript:;"><img src="http://t.cn/RCzsdCq" class="layui-nav-img"><?php echo \think\Session::get('user_info.username'); ?><span class="layui-nav-more"></span></a>
                <dl class="layui-nav-child layui-anim layui-anim-upbit">
                  <dd><a href="javascript:;">修改信息</a></dd>
                  <dd><a href="javascript:;">安全管理</a></dd>
                  <dd><a href="<?php echo url('admin/login/outLogin'); ?>">退了</a></dd>
                </dl>
          </li>

          
          <li class="layui-nav-item to-index"><a target="_blank" href="/"><i class="iconfont" style="margin-right: 5px;">&#xe67f;</i><cite>前台首页</cite></a></li>
        </ul>
        
    </div>
    <!--<link href="https://cdn.bootcss.com/layer/2.3/skin/layer.css" rel="stylesheet">-->
    <!--<script src="https://cdn.bootcss.com/layer/2.3/layer.js"></script>-->
    <!--<script>layer.msg("没有权限操作！",{icon:5,shade:0.5,time:2000})</script>-->


<div class="left-nav">
    <div id="side-nav">


        <?php if(is_array($left_nav) || $left_nav instanceof \think\Collection || $left_nav instanceof \think\Paginator): $i = 0; $__LIST__ = $left_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$nav_top): $mod = ($i % 2 );++$i;?>
        <div id="nav-id-<?php echo $nav_top['id']; ?>" style="display: block">
            <ul id="nav">

                <?php if($nav_top['level'] == 0): if(is_array($left_nav) || $left_nav instanceof \think\Collection || $left_nav instanceof \think\Paginator): $i = 0; $__LIST__ = $left_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$nav_er): $mod = ($i % 2 );++$i;if($nav_er['pid'] == $nav_top['id']): if($nav_er['types'] == 2): ?>
                <li class="">
                    <a href="javascript:;">
                        <i class="iconfont"><?php echo $nav_er['icon']; ?></i>
                        <cite><?php echo $nav_er['title']; ?></cite>
                        <i class="iconfont nav_right">&#xe6d7;</i>
                    </a>
                    <ul class="sub-menu" style="display: none;">
                        <?php if(is_array($left_nav) || $left_nav instanceof \think\Collection || $left_nav instanceof \think\Paginator): $i = 0; $__LIST__ = $left_nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$nav_san): $mod = ($i % 2 );++$i;if($nav_san['types'] == 3): if($nav_er['id'] == $nav_san['pid']): ?>

                        <li>
                            <a _href='<?php echo url("$nav_san[name]"); ?>'>
                                <i class="iconfont">&#xe67e;</i>
                                <cite><?php echo $nav_san['title']; ?></cite>
                            </a>
                        </li>
                        <?php endif; endif; endforeach; endif; else: echo "" ;endif; ?>
                    </ul>
                </li>
                <?php endif; endif; endforeach; endif; else: echo "" ;endif; endif; ?>

            </ul>

        </div>


        <?php endforeach; endif; else: echo "" ;endif; ?>


    </div>
</div>
<script>
    function navShow(id) {
        $("#" + id).show();
        $("#" + id).siblings().hide();
    }
</script>
    <!-- <div class="x-slide_left"></div> -->
    <!-- 左侧菜单结束 -->
    <!-- 右侧主体开始 -->
    <div class="page-content">
        <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
          <ul class="layui-tab-title" style="width: 90%;float: left">
              <li class="home"><i class="layui-icon">&#xe68e;</i>我的桌面</li>

          </ul>
            <ul style="width: 10%;float: left">
                <li style="float:right"><a class="layui-btn layui-btn-small iconfont"  href="javascript:location.replace(location.href);" title="刷新">&#xe64d;</a></li>
            </ul>

            <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <iframe src="<?php echo url('index/welcome'); ?>" frameborder="0" scrolling="yes" class="x-iframe"></iframe>
            </div>
          </div>
        </div>
    </div>
    <div class="page-content-bg"></div>
    <!-- 右侧主体结束 -->
    <!-- 中部结束 -->
    <!-- 底部开始 -->
    <div class="footer">
        <div class="copyright">iyuanlu.com</div>
    </div>
    <!-- 底部结束 -->

</body>
</html>