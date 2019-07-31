<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:55:"F:\WWW\qiye1/./application/index\view\wap\category.html";i:1560527076;}*/ ?>
<!DOCTYPE html>
<html lang="zh-CN" style="font-size: 40px;">
<head>
    <meta charset="utf-8">
    <title>公司变更-代办工商变更流程和费用-小微律政</title>
    <meta name="keywords" content="公司变更,代办工商变更,公司变更流程和费用">
    <meta name="description" content="小微律政:专业的公司变更服务代理公司.专注为创业公司及中小微企业提供代办工商变更服务.想了解公司变更流程和费用,就上小微律政!">

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


    <link rel="stylesheet" href="/public/static/wap/css/app.8dfd7e291924f1923fee.css">
    <link rel="stylesheet" href="/public/static/wap/css/backgroundorder.26b79e2b3dba9fecabb6.css">
    <link rel="stylesheet" href="/public/static/wap/css/class.d7410f9adcc57a178541.css">
    <link rel="stylesheet" href="/public/static/wap/css/detail.191e7be954f8f52b7450.css">
    <link rel="stylesheet" href="/public/static/wap/css/mainindex.a702f1c4cd17b1bbac5b.css">
    <link rel="stylesheet" href="/public/static/wap/css/styles.f702d947a4392eb2ccc5.css">
    <link rel="stylesheet" href="/public/static/wap/css/vendor.2be86f0617f7cd527277.css">
    <link rel="stylesheet" href="/public/static/wap/css/vip.c87a6c9cd2e430243254.css">
</head>
<script src="/public/static/wap/js/0a7dc45a2cb4458c992da33a11ffdf16.js"></script>
<script type="text/javascript" src="/public/static/wap/js/jweixin-1.3.2.js"></script>
<body>
<div id="app" data-server-rendered="true" data-v-ed68ccda>
    <div class="box" data-v-ac89827c data-v-ed68ccda>
        <div data-v-67f09934 data-v-ac89827c>
            <div class="box" data-v-67f09934>
                <header class="titleBox mint-header is-fixed" data-v-77b08f5f data-v-67f09934>
                    <h3 style="text-align: center;width: 100%">小微律政-公司注册</h3>
                </header>
            </div>
        </div>

        <div class="classifyArea" data-v-ac89827c>
            <span <?php if(request()->param('id') == $pinfo['id']): ?> class="active" <?php endif; ?> data-v-ac89827c> <a  style="color: black" href="<?php echo url('/wcategory/'.$pinfo['id']); ?>">全部</a></span>
            <?php if(is_array($son_cates) || $son_cates instanceof \think\Collection || $son_cates instanceof \think\Paginator): $i = 0; $__LIST__ = $son_cates;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$son_cates): $mod = ($i % 2 );++$i;?>
            <span <?php if(request()->param('id') == $son_cates['id']): ?> class="active" <?php endif; ?> data-v-ac89827c>
                <a href="<?php echo url('/wcategory/'.$son_cates['id']); ?>" style="color: black"><?php echo $son_cates['cate_name']; ?></a></span>
            <?php endforeach; endif; else: echo "" ;endif; ?>

        </div>
        <div class="listArea" data-v-ac89827c>

            <?php if(count($articles) > 1): if(is_array($articles) || $articles instanceof \think\Collection || $articles instanceof \think\Paginator): $i = 0; $__LIST__ = $articles;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$article): $mod = ($i % 2 );++$i;?>
            <div class="list" data-v-ac89827c>
                <a href="<?php echo url('/warticle/'.$article['id']); ?>" data-v-ac89827c>
                    <img src="/public/<?php echo $article['thumb']; ?>" data-v-ac89827c>
                <div class="productName ellipsis" data-v-ac89827c><?php echo $article['sort_title']; ?></div>
            </a>
                <div class="priceArea" data-v-ac89827c><span data-v-ac89827c><i data-v-ac89827c> </i>面议</span>
                    <!----></div>
            </div>
            <?php endforeach; endif; else: echo "" ;endif; else: ?>
            <p style="text-align: center;line-height:100px;height: 200px;">暂无数据~~~</p>
            <?php endif; ?>

        </div>
            <section style="padding: 10px" class="block" data-v-ac89827c>
                <?php echo $current['content']; ?>
            </section>
            <section  style="padding: 10px; margin-bottom: 80px;" class="block" data-v-ac89827c>
                <?php echo $current['content']; ?>
            </section>
        </div>
    </div>
    <footer style="z-index:3;" data-v-90cea5f6>
        <button class="immBuy" onclick="window.history.go(-1)" data-v-90cea5f6>
            返回上一页
        </button>
    </footer>
</div>
<script src="/public/static/wap/js/manifest.fdc37cc515bf6f04e0a9.js" defer></script>
<script src="/public/static/wap/js/class.fdc37cc515bf6f04e0a9.js" defer></script>
<script src="/public/static/wap/js/vendor.fdc37cc515bf6f04e0a9.js" defer></script>
<script src="/public/static/wap/js/styles.fdc37cc515bf6f04e0a9.js" defer></script>
<script src="/public/static/wap/js/babel-polyfill.fdc37cc515bf6f04e0a9.js" defer></script>
</body>

</html>
