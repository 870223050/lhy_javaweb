<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>我的拍卖</title>
    <link rel="stylesheet" href="css/myauction.css">
</head>

<body>
<%
		//获取验证消息
		request.setCharacterEncoding("UTF-8");
		String message = (String) request.getAttribute("message");
	%>
    <div class="my-center clearfix">
        <div class="my-left">
            <div class="page-type">
                <p>
                    <a href="#">个人中心</a>
                </p>
            </div>
            <div class="page-things">
                <ul>
                    <li class="info-btn">
                        账户信息
                    </li>
                    <li class="auction-btn">
                        我的竞拍
                    </li>
                    <li class="news-btn">
                        我的消息
                    </li>
                    <li class="attention-btn">
                        我的关注
                    </li>
                </ul>
            </div>
        </div>
        <div class="my-right-info clearfix">
            <div class="my-information">
                <h4>个人信息</h4>
            </div>
            <div class="my-detail">
                <h3>个人信息:</h3>
                <ul class="infolists">
                    <li class="infolist">
                        <label class="subinfo-label">用户名：</label>
                        <span>天生撅墙</span>
                        <span>（用户名即为登录账号，请牢记～）</span>
                    </li>
                    <li class="infolist">
                        <label class="subinfo-label">姓名：</label>
                        <span class="red-small">立即实名</span>
                        <span>（实名认证通过后，才可对标的进行报名参拍）</span>
                    </li>
                    <li class="infolist">
                        <label class="subinfo-label">手机号：</label>
                        <span>173****1018</span>
                        <span>（手机号可作为登录账号，请牢记～）</span>
                    </li>
                    <li class="infolist">
                        <label class="subinfo-label">邮箱：</label>
                        <span class="red-small">立即绑定</span>
                        <span>（邮箱可用于快速找回登录密码）</span>
                    </li>
                </ul>
               <div id="mess" style="color:red;"><%=message != null && !message.equals("")?message:"" %></div>
                   <form  method="post" action="good_add.jsp">
                   <div id="good_name">商品名字:&nbsp;<input class="shurukuang" type="text" name="good_name" /></div>
                   <div id="good_massage">商品描述:&nbsp;<input class="shurukuang" type="text" name="good_massage" /></div>
                   <div id="good_money">保&nbsp;证&nbsp;金:<input class="shurukuang" type="text" name="good_money" /></div>
                    <div id="good_picture">图片:<input class="shurukuang" type="text" name="good_picture" /></div>
                    <div id="good_location">所在地:<input class="shurukuang" type="text" name="good_location" /></div>
                    <input type="submit" value="提交">				  
                   </form>
            </div>
        </div>
        <div class="my-right-auction vanish">
            <div class="auction-info">
                <h4>我的竞拍</h4>
                <div class="person-auction">
                    <p>
                        <span>参拍中</span>
                        <span>已结束</span>
                        <span>已拍下</span>
                        <span>保证金</span>
                    </p>                  
                </div>
            </div>
        </div>
        <div class="my-right-news vanish">
            <h4>我的消息</h4>
            <img src="jpg/my-news.png" alt="mynews">
        </div>
        <div class="my-right-attention vanish">
            <h4>我的关注</h4>
            <img src="jpg/my-attention.png" alt="my-attention">
        </div>
    </div>
</body>
<script src="js/myauction.js"></script>
</html>
