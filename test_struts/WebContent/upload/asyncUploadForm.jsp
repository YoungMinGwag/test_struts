<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>비동기 파일 업로드</title>
    <s:head theme="ajax"/>
    
    <script type="text/javascript">
		dojo.event.topic.subscribe("/after", function(data, request, widget){
    
    var div = dojo.byId("uploadComplete");
		div.innerHTML="File Upload Complete!";

});
</script>   

</head>

<body>
<h2>Ajax를 이용한 비동기 파일 업로드 입력 폼</h2>

<s:form action="asyncUploadAction" method="POST" enctype="multipart/form-data">
	<s:file label="File (1)" name="uploads" />
	<s:file label="File (2)" name="uploads" />
	<s:file label="FIle (3)" name="uploads" />
	<s:submit theme="ajax" notifyTopics="/after" />
</s:form>

<s:div id="uploadComplete" theme="ajax" loadingText="wait..." ></s:div>

</p>

<s:url id="asyncList" value="/asyncUploadList.action" />
<s:a theme="ajax" href="%{asyncList}" targets="uploadlist">현재까지 업로드한 파일 가져오기</s:a>

</p>

<fieldset> 
<legend>업로드 파일 리스트</legend> 
  <s:div id="uploadlist" theme="ajax" loadingText="Loading..." >
  	이 곳에 업로드한 파일의 리스트가 출력됩니다.
  </s:div>
</fieldset> 



</body>
</html>