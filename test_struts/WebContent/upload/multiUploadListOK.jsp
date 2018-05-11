<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>파일 업로드</title>
</head>
<body>

       <h2>다중 파일 업로드 입력 완료 (리스트)</h2>
       
       <table border="1">
       <s:iterator value="uploads" status="stat">
       <tr>
                <td>File<s:porperty value="%{#stat.index}" /></td>
                <td><s:property value="%{uploads[#stat.index]}" /></td>
       </tr>
       </s:iterator>
       </table>
       
       <br>
       
       <table border="1">
       <s:iterator value="uploadsFileName" status="stat">
       <tr>
               <td>File Name <s:property value="%{#stat.index}" /></td>
               <td><s:property value="%{uploadsFileName[#stat.index]}" /></td>
       </tr>
       </s:iterator>
       </table>
       
       <br>
       
       <table border="1">
	   <s:iterator value="uploadsContentType" status="stat">
	   <tr>
		        <td>Content Type <s:property value="%{#stat.index}" /></td>
		        <td><s:property value="%{uploadsContentType[#stat.index]}" /></td>
	   </tr>
	   </s:iterator>
	   </table>
	          
</body>
</html>