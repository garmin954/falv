<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:79:"/www/wwwroot/www.jisitech.com/public/../application/index/view/index/index.html";i:1555978690;s:71:"/www/wwwroot/www.jisitech.com/application/index/view/template/base.html";i:1555978892;s:73:"/www/wwwroot/www.jisitech.com/application/index/view/template/header.html";i:1555950358;s:73:"/www/wwwroot/www.jisitech.com/application/index/view/template/footer.html";i:1555979044;}*/ ?>
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

<div class="container-fluid mini"></div>
<section id="main">
    <!-- 幻灯片 -->
    <div id="slider">
        <div class="swiper-container">
            <div class="swiper-wrapper">

                <?php if(is_array($banner_list) || $banner_list instanceof \think\Collection || $banner_list instanceof \think\Paginator): $i = 0; $__LIST__ = $banner_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$banner_lists): $mod = ($i % 2 );++$i;?>
                <div class="swiper-slide">
                    <a> <img style="height: 326px" src="/public/<?php echo $banner_lists['thumb']; ?>" alt="幻灯">
                    </a>
                </div>
                <?php endforeach; endif; else: echo "" ;endif; ?>


            </div>
            <!-- Add Pagination -->
            <div class="swiper-pagination big-p1"></div>
            <!-- Add Navigation -->
            <div class="icon-arrows-left icon"></div>
            <div class="icon-arrows-right icon"></div>
        </div>
    </div>
    <!-- 幻灯片结束 -->
    <!-- 主体内容开始 -->
    <div id="main-con">
        <div class="us container">
            <div class="row">
                <div class="us-con">
                    <div class="us-img col-md-4 col-sm-7 col-xs-12">
                        <img src="/public/<?php echo $config['gsjsimg']; ?>">
                    </div>
                    <div class="us-des col-md-8 col-sm-5 col-xs-12">

                        <p>

                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                            <?php echo $config['gsjs']; ?>

                        </p>
                        <a class="more" style="font-weight: bold;" rel="nofollow" href="hntjx.html">了解详情 >> </a>
                    </div>
                </div>
            </div>
        </div>
        <!--<div class="cp container">-->
        <!--<div class="title-con">-->
        <!--<h3>-->
        <!--产品中心 <span> PRODUCTS CENTER </span>-->
        <!--</h3>-->
        <!--</div>-->
        <!--<div class="row">-->
        <!--<div class="cp-cat col-md-3">-->

        <!--<aside class="cp-cat">-->
        <!--<h3>服务项目</h3>-->
        <!--<ul id="accoradion01" class="accoradion">-->
        <!--<li class="cat-item"><a href="chanpin_xq1.html" ​> PCB抄板-->
        <!--</a>-->
        <!--<ul>-->

        <!--<li><a target="blank"-->
        <!--href="chanpin_xq1.html">PCB抄板</a>-->

        <!--</li>-->


        <!--<li><a target="blank"-->
        <!--href="chanpin_xq2.html">PCB设计</a>-->

        <!--</li>-->


        <!--</ul>-->
        <!--</li>-->

        <!--<li class="cat-item"><a href="chanpin_xq5.html" ​> 芯片解密-->
        <!--</a>-->
        <!--<ul>-->


        <!--<li><a target="blank"-->
        <!--href="chanpin_xq5.html">芯片解密</a>-->

        <!--</li>-->


        <!--</ul>-->
        <!--</li>-->
        <!--<li class="cat-item"><a href="chanpin_xq3.html" ​> PCB生产-->
        <!--</a>-->
        <!--<ul>-->

        <!--<li><a target="blank"-->
        <!--href="chanpin_xq3.html">电路板生产</a>-->

        <!--</li>-->


        <!--</ul>-->
        <!--</li>-->


        <!--<li class="cat-item"><a href="chanpin_xq6.html" ​> 样机制作-->
        <!--</a>-->
        <!--<ul>-->


        <!--<li><a target="blank"-->
        <!--href="chanpin_xq6.html">样机调试</a>-->

        <!--</li>-->


        <!--</ul>-->
        <!--</li>-->

        <!--</ul>-->
        <!--</aside>-->

        <!--</div>-->
        <!--<div class="col-md-9">-->
        <!--<div class="cp-hot">-->
        <!--<div class="swiper-container">-->
        <!--<div class="swiper-wrapper">-->


        <!--<div class="swiper-slide">-->
        <!--<a href="anli.html" ​ title="电路板抄板案例"> <img-->
        <!--class="thumbnail"-->
        <!--src="http://www.ykmpcb.com/Fengyuncx.html?ttt=newsimg&img=%2Fnews%2F1550123252202.jpg"-->
        <!--style="width: 425px; "/>-->
        <!--</a>-->
        <!--</div>-->


        <!--<div class="swiper-slide">-->
        <!--<a href="anli.html" ​ title="电路板抄板案例"> <img-->
        <!--class="thumbnail"-->
        <!--src="http://www.ykmpcb.com/Fengyuncx.html?ttt=newsimg&img=%2Fnews%2F1550109775342.jpg"-->
        <!--style="width: 425px; "/>-->
        <!--</a>-->
        <!--</div>-->


        <!--<div class="swiper-slide">-->
        <!--<a href="anli.html" ​ title="电路板抄板案例"> <img-->
        <!--class="thumbnail"-->
        <!--src="http://www.ykmpcb.com/Fengyuncx.html?ttt=newsimg&img=%2Fnews%2F1550109793287.jpg"-->
        <!--style="width: 425px; "/>-->
        <!--</a>-->
        <!--</div>-->


        <!--</div>-->
        <!--&lt;!&ndash; Add Pagination &ndash;&gt;-->
        <!--<div class="swiper-pagination big-p1"></div>-->
        <!--&lt;!&ndash; Add Navigation &ndash;&gt;-->
        <!--<div class="icon-arrows-left icon"></div>-->
        <!--<div class="icon-arrows-right icon"></div>-->
        <!--</div>-->
        <!--</div>-->
        <!--</div>-->
        <!--</div>-->
        <!--</div>-->
        <div class="youshi">
            <div class="container">
                <div class="title-con">
                    <h3>
                        核心价值 <span> Core value </span>
                    </h3>
                </div>
                <div class="row">
                    <ul class="ys-con">
                        <li class="item">
                            <div class="ys-left col-md-6 col-sm-6 col-xs-12">
                                <h3>1:1还原 100%成功</h3>

                                <p class="hidden-sm">
                                <p><strong><span style="font-size: 16px;">在PCB抄板行业，亿科迈作为行业的领跑者，我们一直被模仿，从未被超越。我们的技术成熟，无论是单面板，双面板，多层板（最高为38层），我们都保证1:1还原，100%成功。</span></strong>
                                </p>
                                <p>
                                <p><strong><span style="font-size: 16px;"></span></strong></p>
                                <p><strong><span style="font-size: 16px;"></span></strong></p><strong><span
                                    style="font-family: arial, helvetica,sans-serif; font-size: 16px; mso-spacerun: &quot;yes&quot;; mso-font-kerning: 0.0000pt;"><br/></span></strong></p>
                                <p><strong><span style="font-size: 16px;"><br/></span></strong></p>
                                </p>

                            </div>
                            <div class="ys-img col-md-6 col-sm-6 col-xs-12">
                                <img src="http://www.ykmpcb.com/Fengyuncx.html?ttt=newsimg&img=%2Fnews%2F1550110105193.jpg"/>

                            </div>
                        </li>
                        <li class="item">
                            <div class="ys-left col-md-6 col-sm-6 col-xs-12">
                                <h3>品质源于对细节的一丝不苟</h3>
                                <p class="hidden-sm">
                                <p><strong><span
                                        style="font-size: 16px;">亿科迈科技有限公司向来注重细节，对产品精益求精。为了保证产品质量，亿科迈科技只任用拥有多年<strong><span
                                        style="font-size: 16px;">行业经验的资深工程师，在PCB抄板的过程中，我们会通过客户提供的样品，仔细分析，多番论证，以确<strong><span
                                        style="font-size: 16px;">保逆向设计的PCB文件与样品的源文件100%相同。</span></strong></span></strong></span></strong>
                                </p>
                                <p>&nbsp;</p>
                                </p>

                            </div>
                            <div class="ys-img col-md-6 col-sm-6 col-xs-12">
                                <img src="http://www.ykmpcb.com/Fengyuncx.html?ttt=newsimg&img=%2Fnews%2F1550110115453.jpg"/>

                            </div>
                        </li>
                        <li class="item">
                            <div class="ys-left col-md-6 col-sm-6 col-xs-12">
                                <h3>专业来自对流程的层层把控</h3>
                                <p class="hidden-sm">
                                <p><strong><span style="font-size: 16px;">亿科迈科技拥有专业的QC团队，为保证质量，不管是简单的单面板还是复杂的多层板，亿科迈科技都要求必须通过公司流程层层审核，以确保逆向设计出的PCB生产资料零误差。</span></strong>
                                </p>
                                <p>&nbsp;</p>
                                </p>

                            </div>
                            <div class="ys-img col-md-6 col-sm-6 col-xs-12">
                                <img src="http://www.ykmpcb.com/Fengyuncx.html?ttt=newsimg&img=%2Fnews%2F1550110124074.jpg"/>

                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="news container">
            <!-- <div class="title-con">
                <h3>新闻资讯</h3>
            </div> -->
            <div class="row">
                <div class="baike-con col-md-6">
                    <h3>
                        <a href="#" ​>最新案例 </a>
                    </h3>
                    <ul class="baike-list">

                        <?php if(is_array($anli_list) || $anli_list instanceof \think\Collection || $anli_list instanceof \think\Paginator): $i = 0; $__LIST__ = $anli_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$anlis): $mod = ($i % 2 );++$i;?>
                        <li class="baike-btm"><span> <b> <?php echo date("d",$anlis['add_time']); ?>
								</b> <?php echo date("Y-m",$anlis['add_time']); ?>
							</span>
                            <h2>
                                <a target="blank" href="<?php echo url('/article/'.$anlis['id']); ?>"
                                   rel="bookmark" title="<?php echo $anlis['title']; ?>"> <?php echo $anlis['title']; ?>
                                </a>
                            </h2>
                            <p>
                                <?php echo $anlis['desc']; ?>
                            </p>
                        </li>
                        <?php endforeach; endif; else: echo "" ;endif; ?>



                    </ul>
                </div>
                <div class="baike-con col-md-6">
                    <h3>
                        <a href="#" ​> 新闻动态 </a>
                    </h3>


                    <ul class="baike-list">
                        <?php if(is_array($news_list) || $news_list instanceof \think\Collection || $news_list instanceof \think\Paginator): $i = 0; $__LIST__ = $news_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$news): $mod = ($i % 2 );++$i;if($i == 1): ?>
                        <li class="baike-top">
                            <h2>
                                <a href="<?php echo url('/article/'.$news['id']); ?>" title="<?php echo $news['title']; ?>">

                                    <?php echo $news['title']; ?>
                                </a>
                            </h2>
                            <p>

                                <?php echo $news['desc']; ?>

                            </p>
                        </li>

                        <?php else: ?>
                        <li class="baike-btm"><span> <b> <?php echo date("d",$news['add_time']); ?>
								</b> <?php echo date("Y-m",$news['add_time']); ?>
							</span>
                            <h2>
                                <a target="blank" href="<?php echo url('/article/'.$news['id']); ?>"
                                   rel="bookmark" title="<?php echo $news['title']; ?>"> <?php echo $news['title']; ?>
                                </a>
                            </h2>
                            <p>
                                <?php echo $news['desc']; ?>
                            </p>
                        </li>
                        <?php endif; endforeach; endif; else: echo "" ;endif; ?>



                    </ul>
                </div>
            </div>
        </div>


        <!-- 友情链接start-->
        <!--<div class="title-con title-conLast">-->
        <!--<h3 style="font-size: 16px;">-->
        <!--友情链接-->
        <!--</h3>-->
        <!--</div>-->
        <!--<ul class="linkItems container">-->

        <!--<li><a href="http://www.fany-eda.com">PCB设计</a>|</li>-->


        <!--<li><a href="https://www.jia.com/gaoan/">高安装修</a>|</li>-->


        <!--<li><a href="http://www.zxdrhj.com">电炉丝</a>|</li>-->


        <!--<li><a href="http://www.kbwmw.com">阳光板</a>|</li>-->


        <!--<li><a href="http://www.zswjzp.com">晾衣架</a>|</li>-->


        <!--<li><a href="http://www.ykmpcbic.com">芯片解密</a>|</li>-->


        <!--</ul>-->
        <!-- 友情链接end-->


        <!-- 主体内容结束 -->
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