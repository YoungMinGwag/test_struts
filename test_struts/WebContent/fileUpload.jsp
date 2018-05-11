<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>파일 업로드</title>
</head>
<body>
<h2>단일 파일 업로드 입력 폼</h2>

  <s:form action="fileUploadAction" method="POST" enctype="multipart/form-date">
       <s:file name="upload" label="File"/>
       <s:submit />
  </s:form>
</body>
</html>