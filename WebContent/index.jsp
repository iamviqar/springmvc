<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page language="java" import="java.io.FileInputStream" %> 
    <%@ page language="java" import="java.io.IOException" %> 
    <%@ page language="java" import="java.io.InputStream" %> 
    <%@ page language="java" import="java.util.Properties" %> 

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Properties prop = new Properties();
InputStream input = null;
String companyCodes = null;
try {

	//input = new FileInputStream("/WEB-INF/config.properties");
	input = application.getResourceAsStream("/WEB-INF/config.properties");
	// load a properties file
	prop.load(input);

	// get the property value and print it out
	//System.out.println(prop.getProperty("company.codes"));
	companyCodes = prop.getProperty("company.codes");

} catch (IOException ex) {
	ex.printStackTrace();
} finally {
	if (input != null) {
		try {
			input.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
%>
<script>
//alert("<%=companyCodes%>");
var companyCodes = "<%=companyCodes%>";
var companyCodesArr = companyCodes.split(",");
alert(companyCodesArr);
/* for(ite in res){
	console.log(res[ite]);
} */
</script>

</body>
</html>