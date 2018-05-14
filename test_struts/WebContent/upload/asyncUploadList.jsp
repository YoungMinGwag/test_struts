<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>비동기 파일 업로드</title>
</head>

<body>

<table border="0" cellpadding="10" cellspacing="0">
	
	<s:iterator value="listFile" status="stat"> 
   
    		<s:url id="download" action="asyncDownloadAction">
			<s:param name="fileUploadPath" value="fileUploadPath" />
			<s:param name="fileDownloadName">
				<s:property value="listFile[#stat.index].name" />
			</s:param>
			</s:url>
		
		<tr>
			<td>
				<s:a href="%{download}"><s:property value="listFile[#stat.index].name" /></s:a>
			</td>
		</tr>

	</s:iterator>	
		
</table>

</body>
</html>