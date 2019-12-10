<%@page import="com.rainsia.register.entity.User"%>
<%@page import="com.rainsia.register.dao.impl.UserDaoImpl"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>发布处理页面</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

</head>

<body>
	<%
		request.setCharacterEncoding("UTF-8");

		String good_name = request.getParameter("good_name");
		String good_massage = request.getParameter("good_massage");
		String good_money = request.getParameter("good_money");
		String good_picture = request.getParameter("good_picture");
		String good_location = request.getParameter("good_location");

		if (good_name == null || good_name.equals("")) {
			request.setAttribute("message", "商品名不能为空");
			request.getRequestDispatcher("mysale.jsp").forward(request,
					response);
		}else if (good_location == null || good_location.equals("")) {
			request.setAttribute("message", "物品所在地不能为空");
			request.getRequestDispatcher("mysale.jsp").forward(request,
					response);
		}try {		//从加载驱动开始就要注意捕获异常
			Class.forName("com.mysql.jdbc.Driver"); //加载数据库驱动
			//创建连接
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/first_db?useUnicode=true&characterEncoding=utf-8",
					"root", "");
			//创建Statement对象
			stmt = con.createStatement();
			//获得结果集
			rs = stmt
					.executeQuery("SELECT * FROM sever WHERE sever_name='"
							+ name + "'");
			if (rs.next()) {
				request.setAttribute("message", "添加失败，服务器已经存在在服务器中，请重新添加。");
				request.getRequestDispatcher("add.jsp").forward(
						request, response);
			} else {
			    int count = stmt.executeUpdate("INSERT INTO sever (sever_name, fuwuqi_name) VALUES('"+name+"','"+pwd+"')"	);
			    if (count == 1) {
					out.println("<script type='text/javascript'>"
						+ "alert('添加成功!');"
						+ "location.href='add.jsp';"
						+ "</script>");
			    } else {
					request.setAttribute("message", "添加失败，请重试！");
					request.getRequestDispatcher("add.jsp").forward(
						request, response);
			    }
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			rs.close();
			stmt.close();
			con.close();
		}		
	%>
</body>
<html>