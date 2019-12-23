<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
</head>
<body>
	<h1>${headerMessage}</h1>
	
        <form:form method="POST" action="editCity" modelAttribute="city">
        
        	<form:hidden path="city_id" /> 
             <table>
                <tr>
                    <td><form:label path="description">ciudad</form:label></td>
                    <td><form:input path="description"/></td>
                </tr>
                <tr>
			<form:select path="state.state_id">
                       <form:option value="-1" label="--- Select ---"/>
                      
                       <c:forEach var="estado" items="${states}">
                             <form:option value="${estado.state_id}" label="${estado.description}"/>
                       </c:forEach>
                      
                    </form:select>
			</tr>
                <tr>
                    <td><input type="submit" value="Submit"/></td>
                </tr>
            </table>
        </form:form>

</body>
</html>