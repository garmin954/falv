<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:51:"F:\WWW\qiye1/./application/admin\view\cate\lst.html";i:1552033126;s:58:"F:\WWW\qiye1\application\admin\view\template\template.html";i:1549977998;s:55:"F:\WWW\qiye1\application\admin\view\template\style.html";i:1547206380;s:54:"F:\WWW\qiye1\application\admin\view\template\base.html";i:1547794034;}*/ ?>
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

<div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="">首页</a>
        <a href="">系统设置</a>
        <a>
          <cite>配置列表</cite></a>
      </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <!--<div class="layui-row">-->
    <!--<form class="layui-form layui-col-md12 x-so">-->
    <!--<input class="layui-input" placeholder="开始日" name="start" id="start">-->
    <!--<input class="layui-input" placeholder="截止日" name="end" id="end">-->
    <!--<input type="text" name="username"  placeholder="请输入用户名" autocomplete="off" class="layui-input">-->
    <!--<button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>-->
    <!--</form>-->
    <!--</div>-->
    <xblock>
        <button class="layui-btn layui-btn" type="button" id="sortAll"><i class="layui-icon"></i>一键排序</button>
        <button class="layui-btn" onclick="x_admin_show('添加栏目','<?php echo url('admin/cate/add'); ?>',750,500)"><i
                class="layui-icon"></i>添加
        </button>
        <span class="x-right" style="line-height:40px">共有数据：<?php echo $nums; ?> 条</span>
    </xblock>
    <table class="layui-table">
        <thead>
        <tr>

            <th style="width: 5%;">ID</th>
            <th style="width: 5%;">排序</th>
            <th style="width: 50%;">栏目名称</th>
            <th style="width: 10%;">上级栏目</th>

            <th style="width: 10%;">状态</th>
            <th style="width: 10%;">操作</th>

        </thead>
        <tbody>
        <form action="" id="sort_all">

            <?php if(is_array($lists) || $lists instanceof \think\Collection || $lists instanceof \think\Paginator): $i = 0; $__LIST__ = $lists;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>


            <td><?php echo $vo['id']; ?></td>

            <td style="width: 65px;">
                <div class="layui-table-cell laytable-cell-1-id ">
                    <input type="text" class="yl-form-sort" name="sort[<?php echo $vo['id']; ?>]" value="<?php echo $vo['sort']; ?>">
                    <span class="layui-table-sort layui-inline">
                  <i class="layui-edge layui-table-sort-asc" onclick="changeNum(this,'asc')"></i>
                  <i class="layui-edge layui-table-sort-desc" onclick="changeNum(this,'desc')"></i>
                </span>
                </div>
            </td>
            <td> <?php if($vo['level'] == 0): elseif($vo['level'] == 1): ?>&nbsp;&nbsp;&nbsp;&nbsp; ├─&nbsp;
                <?php else: ?>&nbsp;&nbsp;&nbsp;&nbsp;

                <?php if(getSonMax('cate',$vo['id']) != $vo['id']): if(getParent('cate',getSonMax('cate',$vo['id'])) == $vo['pid'] &&
                getSonMax('cate',getParent('cate',$vo['id'])) == $vo['pid']): ?>
                <?php echo str_repeat("│ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;",$vo['level']-2); ?>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;├─&nbsp;
                <?php else: ?>
                <?php echo str_repeat("│ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;",$vo['level']-1); ?>
                ├─&nbsp;
                <?php endif; else: if(getSon('cate',$vo['id'])): ?>
                <?php echo str_repeat("│ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;",$vo['level']-1); ?>└─&nbsp;
                <?php else: if(getParent('cate',getSonMax('cate',$vo['id'])) == $vo['pid'] &&
                getSonMax('cate',getParent('cate',$vo['id'])) == $vo['pid']): ?>

                <?php echo str_repeat("│ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;",$vo['level']-2); ?>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;└─&nbsp;
                <?php else: ?>
                <?php echo str_repeat("│ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;",$vo['level']-1); ?>
                └─&nbsp;
                <?php endif; endif; endif; endif; ?><?php echo $vo['cate_name']; ?> <?php echo $vo['level']; ?>

                <a style="float: right" title="添加子栏目"
                   onclick="x_admin_show('添加栏目','<?php echo url('admin/cate/add',array('pid'=>$vo['id'])); ?>',750,500)"
                   href="javascript:;">
                    <i class="iconfont">&#xe600;</i>
                </a></td>
            <td>

                <?php if(is_array($cate_list) || $cate_list instanceof \think\Collection || $cate_list instanceof \think\Paginator): $i = 0; $__LIST__ = $cate_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;if($vo['pid'] == $v['id']): ?><?php echo $v['cate_name']; endif; endforeach; endif; else: echo "" ;endif; if($vo['pid'] == 0): ?>顶级栏目<?php endif; ?>
            </td>


            <td class="td-status">
                <div id="<?php echo $vo['id']; ?>" onclick="closes(this)"
                     class="layui-unselect layui-form-switch
             <?php if($vo['status'] == 1): ?>layui-form-onswitch<?php endif; ?>" lay-skin="_switch">
                <em><?php if($vo['status'] == 1): ?>开启<?php else: ?>关闭<?php endif; ?></em><i></i>
</div>
</td>
<td class="td-manage">
    <a title="添加文章" href="<?php echo url('admin/article/lst',array('cate_id'=>$vo['id'])); ?>">
        <i class="iconfont">&#xe687;</i>
    </a>
    <a title="编辑" onclick="x_admin_show('添加系统配置','<?php echo url('admin/cate/edit',array('id'=>$vo['id'])); ?>',750,500)"
       href="javascript:;">
        <i class="layui-icon">&#xe642;</i>
    </a>
    <a title="删除" onclick="member_del(this,<?php echo $vo['id']; ?>)" href="javascript:;">
        <i class="layui-icon">&#xe640;</i>
    </a>


</td>
</tr>
<?php endforeach; endif; else: echo "" ;endif; ?>
</form>
</tbody>
</table>
<div class="page">

</div>

</div>



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