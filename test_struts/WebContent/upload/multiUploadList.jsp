<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���� ���ε�</title>
</head>
<body>
     <h2>���� ���� ���ε� �Է� �� (����Ʈ)</h2>
     
     <s:form action="multiUploadListAction" method="POST" enctype="multipart/form-data">
             <s:file lavle="File (1)" name="uploads" />
             <s:file lavle="File (2)" name="uploads" />
             <s:file lavle="File (3)" name="uploads" />
     </s:form>
</body>
</html>