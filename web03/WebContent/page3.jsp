<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table width="800" align="center">
		<tr>
			<td colspan="2">
				<a href="main.jsp">
				<img alt="logo" src="imgs/logo.png">
				</a>
			</td>
		</tr>
		<tr>
			<td width="150" height="600" bgcolor="#9999ff">
				<p><a href="page1.jsp">�λ縻</a></p>
				<p><a href="page2.jsp">���ô±�</a></p>
				<p><a href="page3.jsp">�Խ���</a></p>
				<p><a href="#">�����</a></p>
				<p><a href="#">���</a></p>
			</td>
			<td valign="top">
			<!-- ����� �κ� -->
				<h1>�Խ���</h1>
				
				<table width="80%" border="1" cellspacing="0">
					<tr>
						<td>�����ȣ</td>
						<td>�����</td>
						<td>����</td>
						<td>�Ի���</td>
					</tr>
					<%
					String url="jdbc:oracle:thin:@203.236.209.193:1521:xe";
					String id="scott";
					String pw="tiger";
					
					oracle.jdbc.driver.OracleDriver driver=null;
					driver=new oracle.jdbc.driver.OracleDriver();
					
					Connection conn=null;
					Statement stmt=null;
					ResultSet rs=null;
					try{
						conn=DriverManager.getConnection(url,id,pw);
						stmt=conn.createStatement();
						rs=stmt.executeQuery("SELECT EMPNO,ENAME,SAL,HIREDATE FROM EMP");
						while(rs.next()){
					%>
					<tr>
						<td><a href="page4.jsp?empno=<%=rs.getInt(1) %>"><%=rs.getInt(1) %></a></td>
						<td> <%=rs.getString(2) %></td>
						<td> <%=rs.getInt(3) %></td>
						<td> <%=rs.getDate(4) %></td>
					</tr>
					<% 
						}
					}catch(Exception e){
						System.out.println("����������");
					}finally{
						if(rs!=null)rs.close();
						if(stmt!=null)stmt.close();
						if(conn!=null)conn.close();
					}
					%>
				</table>
				<a href="page5.jsp">�Է�</a>
				
				
			<!-- ����� �κ� �� -->
			</td>
		</tr>
		<tr>
			<td colspan="2"  bgcolor="blue">
			����Ư���� ���ʱ� ���ʴ��74��33 ��Ʈ�� 3�� | ����ڵ�Ϲ�ȣ 220-81-29726 | ��ǥ�̻� ������ | ���θ� (��)��Ʈ��ǻ��
			<br>
			TEL 02-3486-3456 | FAX 02-3486-7890 | ����Ǹž� �Ű���ȣ ���Ｍ�� 2003-02577ȣ
			<br>
			COPYRIGHT BY BITACADEMY CO.LTD. ALL RIGHTS RESERVED. HTTP://www.BITacademy.com
			</td>
		</tr>
	
	
	
	</table>
</body>
</html>