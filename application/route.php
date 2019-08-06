<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

use think\Route;
// 注册路由到index模块的News控制器的read操作
Route::rule('index/:c','index/index/index');

Route::rule('index','index/index/index');
Route::rule('category/:id','index/index/category');
Route::rule('category','index/index/category');


//Route::rule('down','index/index/down');
Route::rule('info/:id','index/index/info');
Route::rule('info','index/index/info');

Route::rule('/','index/index/index');
Route::rule('wap','index/wap/index');

Route::rule('wcategory/:id','index/wap/category');
Route::rule('wcategory','index/wap/category');


Route::rule('warticle/:id','index/wap/info');
Route::rule('warticle','index/wap/info');

Route::rule('categoryNews/:id','index/advisory/categoryNews');
Route::rule('categoryNews','index/advisory/categoryNews');

Route::rule('cateArticle/:id','index/advisory/cateArticle');
Route::rule('cateArticle','index/advisory/cateArticle');

Route::rule('articleInfo/:id','index/advisory/articleInfo');
Route::rule('articleInfo','index/advisory/articleInfo');

//----------------
Route::rule('categoryNews/:id','index/advisory/categoryNews');
Route::rule('categoryNews','index/advisory/categoryNews');

Route::rule('cateSon/:id','index/advisory/cateSon');
Route::rule('cateSon','index/advisory/cateSon');


Route::rule('addArticle','admin/advisory/addArticle');
