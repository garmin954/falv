<?php if (!defined('THINK_PATH')) exit(); /*a:5:{s:73:"/www/wwwroot/www.jisitech.com/./application/index/view/index/contact.html";i:1555948604;s:71:"/www/wwwroot/www.jisitech.com/application/index/view/template/base.html";i:1555978892;s:73:"/www/wwwroot/www.jisitech.com/application/index/view/template/header.html";i:1555950358;s:72:"/www/wwwroot/www.jisitech.com/application/index/view/template/right.html";i:1555952464;s:73:"/www/wwwroot/www.jisitech.com/application/index/view/template/footer.html";i:1555979044;}*/ ?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Cache-Control" content="no-transform"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta name="applicable-device" content="pc,mobile">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <title><?php echo $config['web_name']; ?></title>
    <meta name="Description"
          content="<?php echo $config['description']; ?> ">
    <meta name="keywords"
          content="<?php echo $config['keywords']; ?>">
    
    <link rel="stylesheet" href="css/language-selector.css" type="text/css"
          media="all"/>
    <link rel='stylesheet' id='contact-form-7-css' href='/public/static/index/css/styles.css'
          type='text/css' media='all'/>
    <link rel='stylesheet' id='wphy-style-css' href='/public/static/index/css/style.css'
          type='text/css' media='all'/>
    <link rel='stylesheet' id='jquery.fancybox-css'
          href='/public/static/index/css/jquery.fancybox.css' type='text/css' media='all'/>
    <link rel='stylesheet' id='swiper-css' href='/public/static/index/css/swiper.css'
          type='text/css' media='all'/>
    <link rel='stylesheet' id='geshi-css' href='/public/static/index/css/slicknav.min.css'
          type='text/css' media='all'/>
    <link rel='stylesheet' id='font-awesome-css'
          href='/public/static/index/css/font-awesome.min.css' type='text/css' media='all'/>

    

    
    <script type='text/javascript' src='/public/static/index/js/jquery.js'>
    </script>
    <script type='text/javascript' src='/public/static/index/js/jquery-1.11.0.min.js'>
    </script>
    <script type='text/javascript' src='/public/static/index/js/jquery.hoveraccordion.js'>
    </script>
    <script type='text/javascript' src='/public/static/index/js/jquery-migrate.min.js'>
    </script>
    <script type='text/javascript' src='/public/static/index/js/pro.js'>
    </script>


    <script type="text/javascript">

        $(document).ready(function () {
            $('#accoradion01').hoverAccordion({
                activateItem: 1,	     //默认下设置第4个滑动门展开
                onClickOnly: false,   //点击或悬停触发"false"、"true"
                speed: 'fast'         //滑动门切换过渡效果"fast"、"slow"、"normal"
            });

            $('#city').click(function () {
                $('#citys').show();
            });
            $(".cityul li").click(function () {
                $("#citystr").text($(this).text());
            })
            $('.citys .close').click(function () {
                $('#citys').hide();
            })
        });
    </script>

    <style type="text/css">
        ul.pagination {display: inline-block;padding: 0;margin: 0;}
        .pagination a{text-decoration: none;margin-right: 0px!important; }
        ul.pagination li {display: inline;}
        .disabled ,.pagination  .active, .pagination li a {color: black; float: left;padding: 8px 16px;text-decoration: none;transition: background-color .3s;border: 1px solid #ddd; margin: 0 4px;}
        .pagination .active{background-color: #4CAF50;color: white;border: 1px solid #4CAF50;}
        .disabled{background-color: rgba(236, 236, 236, 0.78);}
        ul.pagination  a.active {background-color: #4CAF50;color: white;border: 1px solid #4CAF50;}
        ul.pagination li a:hover:not(.active) {background-color: #ddd;}
        .city {
            padding-left: 10px;
            color: #000;
            font-size: 16px;
            position: absolute;
            right: -120px;
            top: -105px;
            cursor: pointer;
            height: 50px;
            line-height: 50px;
            text-align: center;
        }

        .city span {
            width: 15px;
            height: 15px;
            overflow: hidden;
            background: url(images/arrow_down.png) no-repeat;
            display: inline-block;
            position: relative;
            top: 7px;
        }

        .citys {
            background: #fff;
            position: absolute;
            right: -300px;
            top: -62px;
            width: 500px;
            height: 45px;
            clear: both;
            z-index: 9999;
            display: none;
            border: 1px solid #ccc;
        }

        .citys .cityul li {
            height: 55px !important;
            line-height: 45px;
            margin: 2px 10px;
            display: inline-block;
        }

        .citys .cityul li:hover {
            cursor: pointer;
            background: none !important;
            color: #f00;
        }

        .citys .close {
            width: 20px;
            height: 20px;
            background: url(/public/static/index/picture/cha.png) no-repeat right top;
            position: absolute;
            right: 0;
        }
    </style>

</head>


<body class="home blog">

<header id="header">
    <div class="btm-header container">
        <div class="header-logo fl">
            <a class="logo" href="/" title="<?php echo $config['web_name']; ?>"> <img
                    src="/public/<?php echo $config['logo']; ?>" alt="<?php echo $config['web_name']; ?>" />
            </a>
            <h2 class="hidden-xs">
                <b> </b>
            </h2>
        </div>
        <div class="contact fr hidden-xs">
            <i class="fa fa-volume-control-phone fa4"> </i>
            <p>
                服务热线： <a href="tel:0755-82920849"​> <?php echo $config['tell']; ?> </a>
            </p>
        </div>
    </div>
    <div class="header-nav">
        <div class="container">
            <ul id="menu-header" class="header-menu-con"
                style="position: relative;">
                <li class="menu-item menu-item-type-custom menu-item-object-custom  menu-item-home <?php if($current == 999): ?>current-menu-item<?php endif; ?>">
                    <a href="/"​> 首页 </a>
                </li>

                <?php if(is_array($cate_list) || $cate_list instanceof \think\Collection || $cate_list instanceof \think\Paginator): $i = 0; $__LIST__ = $cate_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$cate_lists): $mod = ($i % 2 );++$i;if(empty($cate_lists['link']) || (($cate_lists['link'] instanceof \think\Collection || $cate_lists['link'] instanceof \think\Paginator ) && $cate_lists['link']->isEmpty())): ?>
                  <li class="menu-item menu-item-type-taxonomy menu-item-object-products <?php if($current == $cate_lists['id']): ?>current-menu-item<?php endif; ?>">
                    <a href="javascript:;"​> <?php echo $cate_lists['cate_name']; ?></a>
                    <ul class="sub-menu">
                        <?php $_result=getSon('cate',$cate_lists['id']);if(is_array($_result) || $_result instanceof \think\Collection || $_result instanceof \think\Paginator): $i = 0; $__LIST__ = $_result;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$cate_son): $mod = ($i % 2 );++$i;?>
                        <li
                            class="menu-item menu-item-type-taxonomy menu-item-object-products">
                            <a href="<?php echo url('/category/'.$cate_son['id']); ?>"​> <?php echo $cate_son['cate_name']; ?> </a>
                        </li>
                        <?php endforeach; endif; else: echo "" ;endif; ?>

                    </ul>
                    </li>
                <?php else: ?>

                <li class="menu-item menu-item-type-taxonomy menu-item-object-products <?php if($current == $cate_lists['id']): ?>current-menu-item<?php endif; ?> ">
                    <a href="<?php echo $cate_lists['link']; ?>"​> <?php echo $cate_lists['cate_name']; ?> </a>
                </li>
                <?php endif; endforeach; endif; else: echo "" ;endif; ?>

            </ul>
        </div>
    </div>
</header>


<div class="container-fluid mini">
</div>
<section id="main">
    <div id="slider">
        <div class="sliders">
            <div class="item">
                <img src="/public/static/index/picture/111.jpg">
            </div>
        </div>
    </div>
    <nav class="crumbs">
        <div class="container">
            <div class="con">
                当前位置:
                <a href='/'>
                    主页
                </a>
                >
                <a href='javacript:;'>
                    <?php echo $info['cate_name']; ?>
                </a>

            </div>
        </div>
    </nav>
    <style>
        .newslist li {
            height: 45px;
            line-height: 45px;
            border-bottom: 1px dotted lightgray;
        }

        .newslist li span {
            float: right;
        }
    </style>
    <div class="single-con container">
        <div class="row">
            <div class="col-md-9">

                <div class="col-md-9 content p-text">
                   <?php echo $info['content']; ?>
                </div>

            </div>
            <div class="col-md-3 sidebar hidden-xs hidden-sm">

    <aside class="sidebar-hot">
        <div class="widget-title">
            <h2>
                推荐新闻
            </h2>
        </div>
        <ul>

            <?php if(is_array($top_new) || $top_new instanceof \think\Collection || $top_new instanceof \think\Paginator): $i = 0; $__LIST__ = $top_new;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$top_news): $mod = ($i % 2 );++$i;?>
            <li>

                <a  target="blank" href="<?php echo url('/article/'.$top_news['id']); ?>"><?php echo $top_news['title']; ?></a>

            </li>
            <?php endforeach; endif; else: echo "" ;endif; ?>





        </ul>
    </aside>
    <aside class="s400">
        <div class="kf">
            <div class="kf-con">
                <img src="/public/static/index/picture/kf.png">
                <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;本公司专业提供各类高精尖电子产品的逆向设计，PCB抄板，BOM清单制作，原理图反推设计，芯片解密，PCB加工生产，样机调试制作，成品代加工，一站式服务！

                </p>

            </div>
        </div>
        <h3>
            <a href="women.html"​>
                <?php echo $config['tell']; ?>
            </a>
            <span>
                                    全国服务热线
                                </span>
        </h3>
    </aside>
</div>
        </div>
    </div>

</section>



<style>
    * {
        margin: 0;
        padding: 0;
    }

    .qq_box {
        width: 110px;
        position: fixed;
        top: 220px;
        right: 10px;
        z-index: 99;
    }

    .qq_top {
        height: 48px;
        position: relative;
        top: 0;
        left: 0;
    }

    .qq_top img {
        width: 100%;
    }

    .cha {
        width: 30px;
        height: 30px;
        position: absolute;
        right: 0;
        top: 0;
        z-index: 999;
    }

    .qq_content {
        padding: 10px;
        background: #fff;
        border-left: solid 1px #357ebc;
        border-right: solid 1px #357ebc;
    }

    .qq_liao {
        overflow: hidden;
        margin-bottom: 10px;
    }

    .qq_liao img {
        float: left;
        width: 20px;
        margin-right: 6px;
    }

    .qq_liao p {
        float: left;
        line-height: 20px;
        font-size: 12px;
        color: #323232;
    }
</style>


<section id="footer">
    <div class="container">
        <div class="row">
            <div class="footer-top clearfix">
                <div class="col-md-2 col-sm-2 hidden-xs">
                    <h3>
                        关于公司
                    </h3>
                    <ul id="menu-nav" class="company-menu-con">
                        <li class="menu-item menu-item-type-post_type menu-item-object-page">
                            <a href="#" ​>
                                公司简介
                            </a>
                        </li>
                        <li class="menu-item menu-item-type-post_type menu-item-object-page">
                            <a href="#" ​>
                                企业文化
                            </a>
                        </li>
                        <li class="menu-item menu-item-type-post_type menu-item-object-page">
                            <a href="#" ​>
                                售后服务
                            </a>
                        </li>
                        <li class="menu-item menu-item-type-post_type menu-item-object-page">
                            <a href="/contact" ​>
                                联系我们
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-2 col-sm-2 hidden-xs">
                    <h3>
                        服务支持
                    </h3>
                    <ul class="help-menu-con">
                        <li class="menu-item menu-item-type-post_type menu-item-object-page">
                            <a href="#" ​>
                                服务项目
                            </a>
                        </li>
                        <li class="menu-item menu-item-type-post_type menu-item-object-page">
                            <a href="/support" ​>
                                技术支持
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-2 col-sm-2 hidden-xs">
                    <h3>
                        新闻活动
                    </h3>
                    <ul class="news-menu-con">
                        <li class="menu-item menu-item-type-post_type menu-item-object-page">
                            <a href="/case" ​>
                                经典案例
                            </a>
                        </li>
                        <li class="menu-item menu-item-type-post_type menu-item-object-page">
                            <a href="/news" ​>
                                行业动态
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-6">
                    <h3>
                        关注我们
                    </h3>
                    <img src="/public/<?php echo $config['erwm']; ?>">
                </div>
                <div class="col-md-3 col-sm-3 col-xs-6">
                    <h3>
                        联系我们
                    </h3>
                    <div class="tel">
                        <p>
                            24小时为您服务
                            <br/>
                            （周一至周五9:00~18:00）
                            <br/>
                            <strong>
                                <?php echo $config['tell']; ?>
                            </strong>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="copyr">
                    <p>

                        Copyright 版权所有@<?php echo $config['web_name']; ?>
                        <a href="http://www.miitbeian.gov.cn" class="beian"><?php echo $config['beian']; ?></a>
                    </p>
                    <p>公司地址：<?php echo $config['address']; ?></p>
                    <?php echo $config['contact']; ?>
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>
<script type='text/javascript' src='/public/static/index/js/pro.js'></script>

<script type='text/javascript' src='/public/static/index/js/scripts.js'>
</script>
<script type='text/javascript' src='/public/static/index/js/script.min.js'>
</script>
<script type='text/javascript' src='/public/static/index/js/wphy.js'>
</script>
<script type='text/javascript' src='/public/static/index/js/wp-embed.min.js'>
</script>
<script>
    window.onload = function () {
        var hide = document.getElementById("hide");
        var cha = document.getElementById("cha");
        cha.onclick = function () {
            hide.style.display = "none";
        }
    }
</script>

<!--<div class="qq_box" id="hide">-->
    <!--<div class="qq_top">-->
        <!--<img src="/img/top.gif">-->
        <!--<div class="cha" id="cha"></div>-->
    <!--</div>-->
    <!--<div class="qq_content">-->
        <!--<div class="qq_liao">-->
            <!--<img src="/img/qq.png">-->
            <!--<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=404082360&site=qq&menu=yes">PCB抄板</a>-->
        <!--</div>-->
        <!--<div class="qq_liao">-->
            <!--<img src="/img/qq.png">-->
            <!--<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=403373367&site=qq&menu=yes">PCB抄板</a>-->
        <!--</div>-->
        <!--<div class="qq_liao">-->
            <!--<img src="/img/qq.png">-->
            <!--<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=404082360&site=qq&menu=yes">芯片解密</a>-->
        <!--</div>-->
        <!--<div class="qq_liao">-->
            <!--<img src="/img/qq.png">-->
            <!--<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=403373367&site=qq&menu=yes">芯片解密</a>-->
        <!--</div>-->
        <!--<div class="qq_liao">-->
            <!--<img src="/img/qq.png">-->
            <!--<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=404082360&site=qq&menu=yes">PCB生产</a>-->
        <!--</div>-->
        <!--<div class="qq_liao" style="margin-bottom: 0;">-->
            <!--<img src="/img/qq.png">-->
            <!--<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=403373367&site=qq&menu=yes">样机制作</a>-->
        <!--</div>-->
    <!--</div>-->
    <!--<img src="/img/bottom.gif">-->
<!--</div>-->

<!--  <ul id="side-bar" class="side-pannel side-bar hidden-xs">

     <a class="qq" target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=404082360&site=qq&menu=yes">
      <i class="f_top fa fa-qq ">
         </i>
     </a>

     <span class="dh">
         <i class="f_top fa fa-volume-control-phone">
         </i>
         <div class="hide">
             <div class="hied_con">
                 <dl>
                     <dt>
                         咨询电话
                     </dt>
                     <dt>
                         <a href="#"​>
                             0755-82920849
                         </a>
                     </dt>
                 </dl>
                 <dl>
                     <dt>
                         微信号
                     </dt>
                     <dt>
                         <a href="#"​>
                             13715300335
                         </a>
                     </dt>
                 </dl>
             </div>
         </div>
     </span>
     <a title="回到顶部" href="javascript:;" class="gotop" style="display: block;">
         <i class="f_top fa fa-chevron-up">
         </i>
     </a>
 </ul> -->


</body>

</html>