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
  <script src="https://cdn.staticfile.org/echarts/4.3.0/echarts.min.js"></script>
  <style type="text/css">
    .contentbox{
      float: left;
      width: 45%;
    }
    .chartbox{
      width: 80%;
      height: 300px;
    }
    a {
      color: #c75f3e;
    }

    #mytable {
      width: 85%;
      padding: 0;
      margin: 0;
      text-align: center;
      margin-bottom: 10px;
    }

    caption {
      padding: 0 0 5px 0;
      width: 700px;
      font: italic 11px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
      text-align: right;
    }

    th {
      font: bold 11px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
      color: #4f6b72;
      border-right: 1px solid #C1DAD7;
      border-bottom: 1px solid #C1DAD7;
      border-top: 1px solid #C1DAD7;
      letter-spacing: 2px;
      text-transform: uppercase;
      text-align: center;
      padding: 6px 6px 6px 12px;
      background: #CAE8EA  no-repeat;
    }

    th.nobg {
      border-top: 0;
      border-left: 0;
      border-right: 1px solid #C1DAD7;
      background: none;
    }

    td {
      border-right: 1px solid #C1DAD7;
      border-bottom: 1px solid #C1DAD7;
      background: #fff;
      font-size:11px;
      padding: 6px 6px 6px 12px;
      color: #4f6b72;
    }


    td.alt {
      background: #F5FAFA;
      color: #797268;
    }

    th.spec {
      border-left: 1px solid #C1DAD7;
      border-top: 0;
      background: #fff no-repeat;
      font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
    }

    th.specalt {
      border-left: 1px solid #C1DAD7;
      border-top: 0;
      background: #f5fafa no-repeat;
      font: bold 10px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
      color: #797268;
    }
    /*---------for IE 5.x bug*/
    html>body td{ font-size:11px;}
    body,td,th {
      font-family: 瀹嬩綋, Arial;
      font-size: 12px;
    }
  </style>
</head>
<body style="margin: 15px;">  
 

<div class="layui-table contentbox" lay-size="lg">
  <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
  <div id="main1" class="chartbox"></div>
  <script type="text/javascript">
      // 基于准备好的dom，初始化echarts实例
      var myChart = echarts.init(document.getElementById('main1'));

      // 指定图表的配置项和数据
      var option = {
          series : [
              {
                  name: '访问来源',
                  type: 'pie',
                  radius: '55%',
                  data:[
                      {value:235, name:'微信'},
                      {value:274, name:'QQ'},
                      {value:310, name:'今日头条'},
                      {value:335, name:'学校网站'},
                      {value:400, name:'百度贴吧'}
                  ],
                  roseType: 'angle',
                  itemStyle: {
                      normal: {
                          shadowBlur: 200,
                          shadowColor: 'rgba(0, 0, 0, 0.5)'
                      }
                  }
              }
          ]
      };

      // 使用刚指定的配置项和数据显示图表。
      myChart.setOption(option);
  </script>
</div>
<div class="layui-table contentbox" lay-size="lg">
  <div id="main2" class="chartbox"></div>
  <script type="text/javascript">
      // 基于准备好的dom，初始化echarts实例
      var myChart = echarts.init(document.getElementById('main2'));

      // 指定图表的配置项和数据
      var option = {
          title: {
              text: '三类人数对比图'
          },
          tooltip: {},
          legend: {
              data:['人数']
          },
          xAxis: {
              data: ["学生数量","教师数量","管理员数量"]
          },
          yAxis: {},
          series: [{
              name: '人数',
              type: 'bar',
              data: [10,14,2]
          }]
      };

      // 使用刚指定的配置项和数据显示图表。
      myChart.setOption(option);
  </script>
</div>

<div class="layui-table"  lay-size="lg">
  <table id="mytable" cellspacing="0">
    <tr>
      <th scope="col" style="text-align: center;">您好！<span id="p1"></span></th>
    </tr>
    <tr>
      <td class="row"><p id="p2"></p></td>
    </tr>
    <tr>
      <td class="row"><p id="p3"></p></td>
    </tr>
    <tr>
      <td class="row"><p id="p4"></p></td>
    </tr>
  </table>
</div>

<script src="<%=request.getContextPath() %>/static/layui/layui.js" charset="utf-8"></script>

<script>
    layui.use(['util', 'laydate', 'layer'], function(){
        var util = layui.util
            ,laydate = layui.laydate
            ,layer = layui.layer;


    //某个时间在当前时间的多久前
    function setTimeAgo(y, M, d, H, m, s){
        var str = util.timeAgo(new Date(y, M||0, d||1, H||0, m||0, s||0));
        lay('#p4').html("距离现在：" + str + "！");
    };

    $.ajax({
        url:'<%=request.getContextPath() %>/admin/select_welcome.do',
        type:'GET',
        async:true,    //是否异步
        data:{
            administratorId:'${id }'
        },
        timeout:5000,    //超时时间
        dataType:'json',    //返回的数据格式：json/xml/html/script/jsonp/text
        success:function(result){
            if(result.name){
                $("#p1").html("您好！ " + result.name + " 管理员！");
            }
            if(result.cnt){
                $("#p2").html("这是您第 " + result.cnt + " 次登陆账号！");
            }
            if(result.time){
                $("#p3").html("您上次登录时间为： " + result.time.y + "年" + (result.time.M + 1) + "月" + result.time.d + "日" +
                    result.time.H + "时" + result.time.m + "分" + result.time.s + "秒" + "！");
                setTimeAgo(result.time.y, result.time.M, result.time.d, result.time.H, result.time.m, result.time.s);
            }
        },
        error:function(xhr,textStatus){}
    });

    });


</script>

</body>
</html>