<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>파일 업로드</title>
</head>

<body>
  <h2>파일 다운로드 폼</h2>

	<s:url id="download" action="fileDownloadAction"/>
	
	<s:a href="%{download}"><s:property value="fileDownloadName" /></s:a> 
	
</body>
</html>