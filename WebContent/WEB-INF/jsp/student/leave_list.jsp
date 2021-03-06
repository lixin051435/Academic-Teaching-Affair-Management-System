<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <title>layui</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="<%=request.getContextPath() %>/static/layui/css/layui.css"  media="all">
  <script src="<%=request.getContextPath() %>/static/jquery-easyui-1.3.5/jquery.min.js"></script>
</head>
<body style="margin: 15px;">  
 
<div class="demoTable">
  <span>休假列表：</span>
  <button class="layui-btn" data-type="insertLeave">添加请假</button>
  <div class="layui-inline">
    <label>开始时间</label>
    <div class="layui-input-inline">
      <input type="text" id="s_score" class="layui-input">
    </div>
  </div>
  <div class="layui-inline">
    <label>结束时间</label>
    <div class="layui-input-inline">
      <input type="text" id="s_term" class="layui-input">
    </div>
  </div>
  <button class="layui-btn" data-type="searchEvaluation">搜索列表</button>
  <button class="layui-btn" data-type="refreshEvaluation">还原默认</button>
</div>
 
<table class="layui-table" lay-data="{height:471, limit: 10, url:'<%=request.getContextPath() %>/student/select_leave_list.do', where: {userid: '${id }',usertype:'0'}, page:true, id:'idTest'}" lay-filter="demo">
  <thead>
    <tr>
      <th lay-data="{field:'userid', width:100, sort: true}">学生id</th>
      <th lay-data="{field:'username', width:100, sort: true}">学生姓名</th>
      <th lay-data="{field:'begintime', width:200, sort: true}">开始时间</th>
      <th lay-data="{field:'endtime', width:200, sort: true}">结束时间</th>
      <th lay-data="{field:'reason', width:100, sort: true}">请假理由</th>
      <th lay-data="{field:'status', width:100, sort: true}">请假状态</th>
      <%--<th lay-data="{fixed: 'right', width:160, align:'center', toolbar: '#barDemo'}"></th>--%>
    </tr>
  </thead>
</table>

 
<script type="text/html" id="barDemo">
  <%--<a class="layui-btn layui-btn-mini" lay-event="edit">修改评价</a>--%>
</script>
               
          
<script src="<%=request.getContextPath() %>/static/layui/layui.js" charset="utf-8"></script>

<script>
var updateObj, updateIndex;

layui.use('table', function(){
  var table = layui.table;
  //监听表格复选框选择
  table.on('checkbox(demo)', function(obj){
    console.log(obj)
  });
  //监听工具条
  table.on('tool(demo)', function(obj){
    var data = obj.data;
    if(obj.event === 'edit') {
    }
  });
  
  var $ = layui.$, active = {
      insertLeave: function(){ //添加老师课程
          insertIndex = layer.open({
              type: 1,
              skin: 'layui-layer-rim', //加上边框
              area: ['840px', '420px'], //宽高
              content: '\
          <div class="layui-form layui-form-pane">\
            <div class="layui-form-item">\
                <label class="layui-form-label">开始时间</label>\
                <div class="layui-input-block">\
                  <input type="text" id="begintime" name="begintime" autocomplete="off" placeholder="请输入开始时间" class="layui-input">\
                </div>\
              </div>\
            <div class="layui-form-item">\
                <label class="layui-form-label">结束时间</label>\
                <div class="layui-input-block">\
                  <input type="text" id="endtime" name="endtime" autocomplete="off" placeholder="请输入结束时间" class="layui-input">\
                </div>\
              </div>\
            <div class="layui-form-item">\
                <label class="layui-form-label">请假理由</label>\
                <div class="layui-input-block">\
                  <input type="text" id="reason" name="reason" autocomplete="off" placeholder="请输入请假理由" class="layui-input">\
                </div>\
              </div>\
              <button class="layui-btn" onclick="insertLeave()">添加休假</button>\
          </div>\
        '
          });
      },
    refreshEvaluation: function(){
      table.reload('idTest', {
        url: '<%=request.getContextPath() %>/student/select_leave_list.do'
        ,where: {userid: '${id }',usertype:'0'} //设定异步数据接口的额外参数
      });
    },
    searchEvaluation: function(){
      table.reload('idTest', {
        url: '<%=request.getContextPath() %>/student/select_leave_list.do'
        ,where: {
            userid: '${id }',
            begintime: $("#s_score").val(),
              endtime: $("#s_term").val(),
              usertype:0
        } //设定异步数据接口的额外参数
      });
    }
  };
  
  $('.demoTable .layui-btn').on('click', function(){
    var type = $(this).data('type');
    active[type] ? active[type].call(this) : '';
  });
});


function insertLeave(){
    var load = layer.load();
    $.ajax({
        url:'<%=request.getContextPath() %>/student/insert_leave.do',
        type:'GET',
        async:false,    //是否异步
        data:{
            userid:'${id }',
            begintime:$("#begintime").val(),
            endtime:$("#endtime").val(),
            reason:$("#reason").val(),
            usertype:0
        },
        timeout:5000,    //超时时间
        dataType:'json',    //返回的数据格式：json/xml/html/script/jsonp/text
        success:function(result){
            if(result.success){
                layer.msg('添加成功', {icon: 1});
                layui.table.reload('idTest',{});
            } else{
                layer.msg('添加失败', {icon: 2});
            }
        },
        error:function(xhr,textStatus){
            layer.msg('添加失败', {icon: 2});
        }
    });
    layer.close(insertIndex);
    layer.close(load);
}
</script>

</body>
</html>