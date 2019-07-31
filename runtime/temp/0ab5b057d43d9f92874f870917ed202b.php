<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:52:"F:\WWW\qiye1/./application/index\view\wap\index.html";i:1560526539;}*/ ?>
<!DOCTYPE html>
<html lang="zh-CN" style="font-size: 40px;">
<head>
    <meta charset="utf-8">
    <title>小微律政-公司注册|公司变更|商标注册|代理记账</title>
    <meta name="keywords" content="小微律政,公司注册,公司注册代办,公司变更,商标注册,代理记账">
    <meta name="description" content="注册公司">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no"/>

    <!-- uc强制竖屏 -->
    <meta name="screen-orientation" content="portrait">
    <!-- UC应用模式 -->
    <meta name="browsermode" content="application">
    <!-- QQ强制竖屏 -->
    <meta name="x5-orientation" content="portrait">
    <!-- QQ应用模式 -->
    <meta name="x5-page-mode" content="app">

    <meta name="baidu-site-verification" content="i59Md7ihDX"/>
    <meta name="sogou_site_verification" content="Pe9SOUzMpQ"/>
    <meta name="360-site-verification" content="c473a1932ddc3c26ec756d8e6aaa92f7"/>

    <link rel="icon" href="./favicon.ico">

    <link rel="stylesheet" href="/public/static/wap/css/app.8dfd7e291924f1923fee.css">
    <link rel="stylesheet" href="/public/static/wap/css/backgroundorder.26b79e2b3dba9fecabb6.css">
    <link rel="stylesheet" href="/public/static/wap/css/class.d7410f9adcc57a178541.css">
    <link rel="stylesheet" href="/public/static/wap/css/detail.191e7be954f8f52b7450.css">
    <link rel="stylesheet" href="/public/static/wap/css/mainindex.a702f1c4cd17b1bbac5b.css">
    <link rel="stylesheet" href="/public/static/wap/css/styles.f702d947a4392eb2ccc5.css">
    <link rel="stylesheet" href="/public/static/wap/css/vendor.2be86f0617f7cd527277.css">
    <link rel="stylesheet" href="/public/static/wap/css/vip.c87a6c9cd2e430243254.css">
    <link type="text/css" rel="stylesheet" href="/public/static/wap/layui/css/layui.css">
    <link href="https://cdn.bootcss.com/Swiper/4.5.0/css/swiper.min.css" rel="stylesheet">
</head>
<script src="/public/static/wap/js/0a7dc45a2cb4458c992da33a11ffdf16.js"></script>
<!--<script type="text/javascript" src="/public/static/wap/js/jweixin-1.3.2.js"></script>-->
<body>
<div id="app" data-server-rendered="true" data-v-ed68ccda>
    <div id="main" data-v-1d310530 data-v-ed68ccda>


        <header class="topFixed mint-header is-fixed" data-v-f16aae54 data-v-1d310530>
            <h3 style="text-align: center;width: 100%">小微律政-公司注册</h3>
        </header>


        <main class="mainDiv" data-v-1d310530>
            <div class="mint-swipe swipe" data-v-1d310530>
<!--                <div class="rightBanner" data-v-6aefcbd1>-->
<!--                        <div class="box1" id="box1">-->
<!--                            <ul id="list1" class="list">-->
<!--                                <?php if(is_array($banner_list) || $banner_list instanceof \think\Collection || $banner_list instanceof \think\Paginator): $i = 0; $__LIST__ = $banner_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$advert): $mod = ($i % 2 );++$i;?>-->
<!--                                <li class="li"><img src="/public/<?php echo $advert['thumb']; ?>" alt=""></li>-->
<!--                                <?php endforeach; endif; else: echo "" ;endif; ?>-->
<!--                            </ul>-->
<!--                        </div>-->

<!--                </div>-->

                <div style="    height: 190px;" class="swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-android">
                    <div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(-800px, 0px, 0px);">
                        <?php if(is_array($banner_list) || $banner_list instanceof \think\Collection || $banner_list instanceof \think\Paginator): $i = 0; $__LIST__ = $banner_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$advert): $mod = ($i % 2 );++$i;?>
                        <div class="swiper-slide" style="width: 400px;"><img style="width: 100%" src="/public/<?php echo $advert['thumb']; ?>" alt=""> s</div>
                        <?php endforeach; endif; else: echo "" ;endif; ?>
                    </div>

                    <div class="swiper-pagination swiper-pagination-bullets"><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span></div>
                    <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span></div>

            </div>


            <div class="mint-swipe nav" style="height: 90px" data-v-1d310530>
                <div class="mint-swipe-items-wrap">
                    <div class="mint-swipe-item is-active" data-v-1d310530>


                        <?php if(is_array($category_art) || $category_art instanceof \think\Collection || $category_art instanceof \think\Paginator): $i = 0; $__LIST__ = $category_art;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$category): $mod = ($i % 2 );++$i;?>
                        <a href="<?php echo url('/wcategory/'.$category['id']); ?>" class="item" data-v-1d310530>
                            <img src="/public/<?php echo $category['thumb']; ?>" data-v-1d310530>
                            <div data-v-1d310530><?php echo $category['cate_name']; ?></div>
                        </a>
                        <?php endforeach; endif; else: echo "" ;endif; ?>


                    </div>
                </div>
                <div class="mint-swipe-indicators"></div>
            </div>

            <section data-v-1d310530>
                <h2 data-v-1d310530>不同行业</h2>
                <section class="commodity" style="width: 100%" data-v-1d310530>

                    <?php if(is_array($article) || $article instanceof \think\Collection || $article instanceof \think\Paginator): $i = 0; $__LIST__ = $article;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$article1): $mod = ($i % 2 );++$i;?>
                    <div data-v-1d310530>
                        <a href="<?php echo url('/warticle/'.$article1['id']); ?>" class="top" data-v-1d310530>
                            <img src="/public/<?php echo $article1['thumb']; ?>" alt="" data-v-1d310530>
<!--                            <span class="tag" data-v-1d310530>餐饮服务</span>-->
                            <span class="price" data-v-1d310530>
                                <i data-v-1d310530> </i>面议
                            </span>
                        </a>
                        <div class="bottom" data-v-1d310530>
                            <p class="name" data-v-1d310530><?php echo $article1['sort_title']; ?></p>
<!--                            <p class="dec" data-v-1d310530>饮品店必备</p>-->
                            <div data-v-1d310530>
<!--                                <a class="buy" data-v-1d310530>购买</a>-->
                                <a style="width: 100%;" href="<?php echo url('/warticle/'.$article1['id']); ?>" class="consult"
                                   data-v-1d310530>
                                    咨询
                                </a>
                            </div>
                        </div>
                    </div>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                </section>
            </section>
            <section data-v-1d310530>
                <h2 data-v-1d310530>不同阶段</h2>
                <section class="commodity" data-v-1d310530>
                    <?php if(is_array($articles) || $articles instanceof \think\Collection || $articles instanceof \think\Paginator): $i = 0; $__LIST__ = $articles;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$article2): $mod = ($i % 2 );++$i;?>
                    <div data-v-1d310530>
                        <a href="<?php echo url('/warticle/'.$article2['id']); ?>" class="top" data-v-1d310530>
                            <img src="/public/<?php echo $article2['thumb']; ?>" alt="" data-v-1d310530>
                            <!--                            <span class="tag" data-v-1d310530>餐饮服务</span>-->
                            <span class="price" data-v-1d310530>
                                <i data-v-1d310530> </i>面议
                            </span>
                        </a>
                        <div class="bottom" data-v-1d310530>
                            <p class="name" data-v-1d310530><?php echo $article1['sort_title']; ?></p>
                            <!--                            <p class="dec" data-v-1d310530>饮品店必备</p>-->
                            <div data-v-1d310530>
                                <!--                                <a class="buy" data-v-1d310530>购买</a>-->
                                <a style="width: 100%;" href="<?php echo url('/warticle/'.$article1['id']); ?>" class="consult"
                                   data-v-1d310530>
                                    咨询
                                </a>
                            </div>
                        </div>
                    </div>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                </section>
            </section>
        </main>

    </div>
</div>

<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
<script  src="/public/static/wap/js/swiperdemo.js" ></script>
<script src="/public/static/wap/layui/layui.js" ></script>
<script src="https://cdn.bootcss.com/Swiper/4.5.0/js/swiper.min.js"></script>
<script>
    layui.use('carousel', function(){
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#test1'
            ,width: '100%' //设置容器宽度
            ,arrow: 'always' //始终显示箭头
            //,anim: 'updown' //切换动画方式
        });
    });
</script>

<script>
    var swiper = new Swiper('.swiper-container', {
        pagination: {
            el: '.swiper-pagination',
        },
    });
</script>
</body>

</html>
