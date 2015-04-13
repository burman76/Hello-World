<%@page import="java.io.IOException"%>
<%@page import="java.net.URL"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.jar.Manifest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sample Web Project</title>
</head>
<body>

<%

String version = "";
Enumeration<URL> resources = getClass().getClassLoader().getResources("META-INF/MANIFEST.MF");
while (resources.hasMoreElements()) {
  try {
    Manifest manifest = new Manifest(resources.nextElement().openStream());
    // check that this is your manifest and do what you need or get the next one
    version = manifest.getMainAttributes().getValue("Manifest-Version");
  } catch (IOException E) {
    // handle
  }
}
//response.getOutputStream().print("Hello World version: [" + version + "]");
%>
Hello World version: [<%=version%>]
</body>
</html>