<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:54:"F:\WWW\qiye1/./application/index\view\index\index.html";i:1560518971;s:54:"F:\WWW\qiye1\application\index\view\template\base.html";i:1560527656;s:56:"F:\WWW\qiye1\application\index\view\template\header.html";i:1560008374;s:56:"F:\WWW\qiye1\application\index\view\template\footer.html";i:1560008065;}*/ ?>
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
        

<div class="mainView" data-v-6aefcbd1>
    <div class="bannerArea clear" data-v-6aefcbd1>
        <div class="leftBanner" data-v-51af3139 data-v-6aefcbd1>
            <ul class="leftUl" data-v-51af3139>
                <li class="classfyOne" data-v-51af3139>
                </li>
                <?php if(is_array($category_art) || $category_art instanceof \think\Collection || $category_art instanceof \think\Paginator): $i = 0; $__LIST__ = $category_art;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$top_cate): $mod = ($i % 2 );++$i;?>
                <li class="classfyOne" data-v-51af3139>
                    <span data-v-51af3139><?php echo $top_cate['cate_name']; ?></span>
                    <i data-v-51af3139><?php echo $top_cate['sort_name']; ?></i>
                    <div class="showCase" data-v-51af3139>
                        <?php if(is_array($top_cate['son']) || $top_cate['son'] instanceof \think\Collection || $top_cate['son'] instanceof \think\Paginator): $i = 0; $__LIST__ = $top_cate['son'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$son_cate): $mod = ($i % 2 );++$i;?>
                        <div class="showCaseList clear" data-v-51af3139>
                            <a href="<?php echo url('/category/'.$son_cate['id']); ?>" target="_blank" class="txtline" data-v-51af3139>
                                <?php echo $son_cate['cate_name']; ?>
                            </a>
                            <div class="showCaseListDetail  clear" data-v-51af3139>

                            <?php if(is_array($son_cate['article']) || $son_cate['article'] instanceof \think\Collection || $son_cate['article'] instanceof \think\Paginator): $i = 0; $__LIST__ = $son_cate['article'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$article): $mod = ($i % 2 );++$i;?>
                                <a href="<?php echo url('/info/'.$article['id']); ?>" target="_blank" data-v-51af3139><i>
                                    <?php echo $article['sort_title']; ?>
                                </i></a>
                            <?php endforeach; endif; else: echo "" ;endif; ?>
                            </div>

                        </div>
                        <?php endforeach; endif; else: echo "" ;endif; ?>
                    </div>
                </li>
                <?php endforeach; endif; else: echo "" ;endif; ?>

            </ul>
        </div>


        <div class="rightBanner" data-v-6aefcbd1>
            <div id="scoll" class="scoll">
                <div class="box1" id="box1">
                    <ul id="list1" class="list">
                        <?php if(is_array($banner_list) || $banner_list instanceof \think\Collection || $banner_list instanceof \think\Paginator): $i = 0; $__LIST__ = $banner_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$advert): $mod = ($i % 2 );++$i;?>
                        <li class="li"><img src="/public/<?php echo $advert['thumb']; ?>" alt=""></li>
                        <?php endforeach; endif; else: echo "" ;endif; ?>
                    </ul>
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


<script type="text/javascript" src=".//public/static/index/js/swiperdemo.js"></script>
<script type="text/javascript">
    window.onload = function () {
        $("#box1").swiper({ratio: 8 / 5, time: 4000, stop: true, direction: "left"});
        $("#box").swiper({time: 2000, base: false, ratio: 290 / 163});
    };
</script>

</body>


</html>
