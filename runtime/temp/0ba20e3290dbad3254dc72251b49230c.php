<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:57:"F:\WWW\qiye1/./application/index\view\index\category.html";i:1560527314;s:54:"F:\WWW\qiye1\application\index\view\template\base.html";i:1560527656;s:56:"F:\WWW\qiye1\application\index\view\template\header.html";i:1560008374;s:56:"F:\WWW\qiye1\application\index\view\template\footer.html";i:1560008065;}*/ ?>
<!DOCTYPE html>
<html lang="zh-CN">
<html>
<head>
    <meta charset="utf-8">
    <title><?php echo $config['web_name']; ?></title>
    <meta name="keywords" content="<?php echo $config['keywords']; ?>">
    <meta name="description" content=" <?php echo $config['description']; ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <link rel="stylesheet" href="/public/static/index/css/index.css">
    <link rel="stylesheet" href="/public/static/index/css/22.css">
    <link rel="stylesheet" href="/public/static/index/css/23.css">
    <link rel="stylesheet" href="/public/static/index/css/24.css">
    <link rel="stylesheet" href="/public/static/index/css/25.css">
    <link rel="stylesheet" href="/public/static/index/css/app.css">
    <link rel="stylesheet" href="/public/static/index/css/class.css">
    <link rel="stylesheet" href="/public/static/index/css/detail.css">
    <link rel="stylesheet" href="/public/static/index/css/guide.css">
    <link rel="stylesheet" href="/public/static/index/css/htmlsta.css">
    <link rel="stylesheet" href="/public/static/index/css/leftnav.css">
    <link rel="stylesheet" href="/public/static/index/css/leftnavf.css">
    <link rel="stylesheet" href="/public/static/index/css/mainindex.css">
    <link rel="stylesheet" href="/public/static/index/css/page.css">
    <link rel="stylesheet" href="/public/static/index/css/pay.css">
    <link rel="stylesheet" href="/public/static/index/css/vip.css">
    <script src=".//public/static/index/js/jquery-1.10.2.js"></script>
    <script type="text/javascript">

        $(function () {
            var mobileAgent = new Array("iphone", "ipod", "ipad", "android", "mobile", "blackberry", "webos", "incognito", "webmate", "bada", "nokia", "lg", "ucweb", "skyfire");

            var browser = navigator.userAgent.toLowerCase();

            var isMobile = false;

            for (var i=0; i<mobileAgent.length; i++){ if (browser.indexOf(mobileAgent[i])!=-1){ isMobile = true;

                location.href = '/wap';

                break; } }
        })

    </script>
    
<!--<link rel="stylesheet" href="/public/static/index/layui/css/layui.css"  media="all">-->
<link type="text/css" rel="stylesheet" href="/public/static/index/css/all.css">
<script src="/public/static/index/layui/layui.js" defer></script>

<style>
   /*.realBorder{width: 100px!important;left: 100px!important;}*/
   /* .kinerNav >li{border-bottom:  1px solid springgreen;margin: 0px 10px!important;}*/
</style>



    <style>
        * {
            padding: 0;
            margin: 0;
        }

        body {
            background: #FFFFFF;
            margin: 0px;
            padding: 0px;
        }

        .rightBanner .box, .box1 {
            overflow: hidden;
            position: relative;
            width: 100%;
            margin: 0 auto 5% auto;
        }

        .rightBanner .box {
            max-width: 1000px; /***   这里的max-width值就是图片的宽度，暂不支持百分比   ***/
            max-height: 480px;
        }

        .rightBanner .box1 {
            max-width: 1000px; /***   这里的max-width值就是图片的宽度，暂不支持百分比   ***/
            max-height: 480px;

        }

        .rightBanner li {
            float: left;
            list-style: none;
        }

        .rightBanner ol {
            width: 100%;
            height: 20px;
            position: absolute;
            bottom: 0;
        }

        .rightBanner ol li {
            cursor: pointer;
            position: relative;
            margin-left: 15px;
            display: inline;
            width: 15px;
            height: 15px;
            border-radius: 50%;
            background-color: gainsboro;
        }

        .rightBanner ol .action {
            background-color: #de6e6a;
        }

        .rightBannerol li:hover {
            background-color: #DE6E6A;
        }

        .rightBanner ul {
            position: relative;
            left: 0;
        }

        .rightBanner .next {
            cursor: pointer;
            opacity: 0;
            position: absolute;
            right: 0;
            background: url("/public/static/index/images/next.png");
            width: 50px;
            height: 45px;
            display: block;
            line-height: 80px;
        }

        .rightBanner .prev {
            cursor: pointer;
            opacity: 0;
            background: url("/public/static/index/images/prev.png");
            display: block;
            position: absolute;
            width: 50px;
            height: 45px;
            text-align: center;
            line-height: 80px;
        }

        .rightBanner .prev, .next {
            transition: all 0.5s;
        }

        .rightBanner .next:hover, .prev:hover {
            -webkit-transform: scale(1.2, 1.2);
            -moz-transform: scale(1.2, 1.2);
            -ms-transform: scale(1.2, 1.2);
            -o-transform: scale(1.2, 1.2);
            transform: scale(1.2, 1.2);
            opacity: 1 !important;
            transition: all 0.3s;
        }
        .isleftBanner[data-v-452e9b93]{
            display: block;!important;
        }
    </style>

</head>
<body>
<div id="app" data-server-rendered="true" data-v-3e67e07a>
    <div class="tempBox container" style="padding: 0px"  >

        <div class="logoAreaInner" style="padding: 20px" data-v-6aefcbd1>
    <a href="/" class="router-link-exact-active router-link-active" data-v-6aefcbd1>
        <img src="/public/static/index/picture/logo.svg" alt="logo" class="logoImg" data-v-6aefcbd1>
    </a>
    <img src="/public/static/index/picture/solon_116.svg" alt="solonImg" class="solonImg" data-v-6aefcbd1>
</div>
        
<div class="classifyList container" data-v-c912f7ee="" data-v-3e67e07a="">
    <div class="guide" id="guide" data-v-c912f7ee="">
        <div class="clear addresss left" data-v-452e9b93="" data-v-c912f7ee="">
                <span id="wholeClass" class="wholeClass" data-v-452e9b93=""> 全部分类
                    <img src="/public/static/index/images/down_14.svg" alt="" data-v-452e9b93="">
                </span>
            <div aria-label="Breadcrumb" role="navigation" replace="" class="el-breadcrumb bread" data-v-452e9b93="">
                <span class="el-breadcrumb__item" data-v-452e9b93="">
                    <span role="link"  class="el-breadcrumb__inner is-link">首页</span>
                    <i  class="el-breadcrumb__separator el-icon-arrow-right"></i></span>
                <span class="el-breadcrumb__item" data-v-452e9b93="">
                    <span role="link" class="el-breadcrumb__inner is-link">
                      <?php echo $pinfo['cate_name']; ?>
                    </span>
                    <i class="el-breadcrumb__separator el-icon-arrow-right"></i></span> <!---->
                <span class="el-breadcrumb__item" data-v-452e9b93="" aria-current="page"><span
                    role="link" class="el-breadcrumb__inner"> <?php echo $current['cate_name']; ?></span><i
                    class="el-breadcrumb__separator el-icon-arrow-right"></i></span></div>


            <div id="leftBannerFrame" class="leftBannerFrame clear" data-v-452e9b93="">
                <div class="leftBanner leftBanner2" data-v-51af3139="" data-v-452e9b93="">
                    <ul class="leftUl leftUl2" data-v-51af3139="">
                        <li class="classfyOne" data-v-51af3139="">
                        </li>
                        <?php if(is_array($category_art) || $category_art instanceof \think\Collection || $category_art instanceof \think\Paginator): $i = 0; $__LIST__ = $category_art;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$top_cate): $mod = ($i % 2 );++$i;?>
                        <li class="classfyOne" data-v-51af3139="">
                            <span data-v-51af3139=""><?php echo $top_cate['cate_name']; ?></span>
                            <i  data-v-51af3139=""><?php echo $top_cate['sort_name']; ?></i>
                            <div class="showCase showCase2" data-v-51af3139="">
                                <?php if(is_array($top_cate['son']) || $top_cate['son'] instanceof \think\Collection || $top_cate['son'] instanceof \think\Paginator): $i = 0; $__LIST__ = $top_cate['son'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$son_cate): $mod = ($i % 2 );++$i;?>
                                <div class="showCaseList clear" data-v-51af3139="">
                                    <a href="<?php echo url('/category/'.$son_cate['id']); ?>" style="line-height: 50px;" target="" class="txtline router-link-exact-active router-link-active" data-v-51af3139="">
                                        <?php echo $son_cate['cate_name']; ?>
                                    </a>
                                    <div class="showCaseListDetail clear showCaseListDetail2" data-v-51af3139="">
                                        <?php if(is_array($son_cate['article']) || $son_cate['article'] instanceof \think\Collection || $son_cate['article'] instanceof \think\Paginator): $i = 0; $__LIST__ = $son_cate['article'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$article): $mod = ($i % 2 );++$i;?>
                                        <a href="<?php echo url('/info/'.$article['id']); ?>" target="" data-v-51af3139="" style="display: contents;line-height: 35px">
                                            <i data-v-51af3139=""><?php echo $article['sort_title']; ?></i>
                                        </a>
                                        <?php endforeach; endif; else: echo "" ;endif; ?>
                                    </div>
                                </div>
                                <?php endforeach; endif; else: echo "" ;endif; ?>
                            </div>
                        </li>
                        <?php endforeach; endif; else: echo "" ;endif; ?>

                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="el-card box-card is-always-shadow" data-v-c912f7ee=""><!---->
        <div class="el-card__body">
            <div class="classifyArea" data-v-c912f7ee="">
                <div data-v-c912f7ee="">
                    <span class="name" data-v-c912f7ee="">一级分类：</span>
                    <span data-v-c912f7ee=""  class="">
                         <a href="<?php echo url('/category/0'); ?>">全部</a>
                        </span>

                    <?php if(is_array($top_cates) || $top_cates instanceof \think\Collection || $top_cates instanceof \think\Paginator): $i = 0; $__LIST__ = $top_cates;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$topc): $mod = ($i % 2 );++$i;?>
                    <span class="active"  data-v-c912f7ee="">
                        <a href="<?php echo url('/category/'.$topc['id']); ?>"><?php echo $topc['cate_name']; ?></a>
                    </span>
                    <?php endforeach; endif; else: echo "" ;endif; ?>

                </div>
                <div data-v-c912f7ee="">
                    <span class="name" data-v-c912f7ee="">二级分类：</span>
                    <span data-v-c912f7ee=""  class="">
                         <a href="<?php echo url('/category/'.$pinfo['id']); ?>">全部</a>
                    </span>
                    <?php if(is_array($son_cates) || $son_cates instanceof \think\Collection || $son_cates instanceof \think\Paginator): $i = 0; $__LIST__ = $son_cates;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$sonc): $mod = ($i % 2 );++$i;?>
                    <span class="active"  data-v-c912f7ee="">
                        <a href="<?php echo url('/category/'.$sonc['id']); ?>"><?php echo $sonc['cate_name']; ?></a>
                    </span>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                </div>
            </div>
            <div class="listResult" data-v-c912f7ee="">
<!--                <div class="sortButton" data-v-c912f7ee=""><span class="borderBtn" data-v-c912f7ee="">最新商品-->
          <b class="icoImg" data-v-c912f7ee=""><i class="blue" data-v-c912f7ee=""></i>
              <i class="gray"  data-v-c912f7ee=""></i></b></span>
                    </div>
                <div class="goodsArea clear" data-v-c912f7ee="">


                    <?php if(is_array($articles) || $articles instanceof \think\Collection || $articles instanceof \think\Paginator): $i = 0; $__LIST__ = $articles;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$articless): $mod = ($i % 2 );++$i;?>
                    <div data-v-c912f7ee="">
                        <a href="<?php echo url('/info/'.$article['id']); ?>"  target="_blank" data-v-c912f7ee="">
                            <img  src="/public/<?php echo $articless['thumb']; ?>" data-v-c912f7ee="">
                        <p data-v-c912f7ee="" style="  margin-top: 0px;  margin-bottom: 0px;  "><?php echo $articless['sort_title']; ?></p></a>
                        <div data-v-c912f7ee=""><span data-v-c912f7ee="">

              <i style="font-size:17px;" data-v-c912f7ee="">面议</i> <em data-v-c912f7ee="">&nbsp; </em></span>
                            <!----></div>
                    </div>
                    <?php endforeach; endif; else: echo "" ;endif; ?>

                </div>
                <div class="pageBox" data-v-c912f7ee="">
                    <?php echo $articles->render(); ?>
                </div>
            </div>
        </div>
    </div>
    <div class="el-card box-card is-always-shadow" data-v-c912f7ee=""><!---->
        <div class="el-card__body">
            <ul class="kinerNav">
                <li class="active">办理条件</li>
                <li>办理资料</li>

            </ul>

            <div class="box">
                <div class="kinerContent">
                    <div class="wrapper">
                        <div class="kinerItem">
                            <?php echo $current['content']; ?>
                        </div>
                        <div class="kinerItem">
                            <?php echo $current['content1']; ?>
                        </div>

                    </div>
                </div>

        </div>
    </div>

</div>




    </div>
</div>

<footer class="footer" data-v-45a014ea="" data-v-3e67e07a="">
    <div class="contact clear" data-v-45a014ea="">
        <div class="contactInfo" style="margin: 0 auto; float: none; display: table; padding-top: 38px;" data-v-45a014ea="">

            <div class="copyRight" style="margin: 0 auto" data-v-45a014ea="">
                <?php echo $config['webinfo']; ?>
            </div>
        </div>

    </div>
</footer>
<script src="/public/static/index/js/714972bdfdaed9df48923e4e9ec69dea.js" defer></script>
<script src="/public/static/index/js/manifest.js" defer></script>
<script src="/public/static/index/js/mainindex.js" defer></script>
<script src="/public/static/index/js/vendor.js" defer></script>
<script src="/public/static/index/js/babel-polyfill.js" defer></script>


<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="/public/static/index/js/kiner-swiper-panel.min.js"></script>
<script type="text/javascript">

</script>

<script type="text/javascript">

    $("#wholeClass").mouseover(function () {
        $(".wholeClass").addClass('allHover');
        $(".leftBannerFrame").addClass('isleftBanner');
    });
    var target ='';
    $(document).bind('mouseover', function (e) {
        target = $(e.target);

        if(target.closest("#leftBannerFrame").length == 0 && target.closest("#wholeClass").length == 0)
        {
            $(".leftBannerFrame").removeClass('isleftBanner');
        }
    })


</script>


</body>


</html>
