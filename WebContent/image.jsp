<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.ptheron.ir.dto.ImageDto" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Image</title>
</head>
<body>

	<center>
	<%
	List<ImageDto> list = (ArrayList<ImageDto>)request.getAttribute("list");
	%>
	<table border="1px">
		<thead>
			<tr>
				<td>Image</td>
				<td>Type</td>
				<td>Surface</td>
				<td>Ville</td>
			</tr>
		</thead>
		<%
		for (int i=0; i<list.size(); i++) {
			ImageDto dto = list.get(i);
			String id = dto.getId();
			String type = dto.getName();
			String area = dto.getArea();
			String city = dto.getCity();
		%>
		<tr>
			<td><img src="./DownloadImage?id=<%=id%>" width="150px" height="100px"/></td>
			<td><%=type%></td>
			<td><%=area%></td>
			<td><%=city%></td>
		</tr>
		<% } %>
	</table>
	</center>

</body>
</html>