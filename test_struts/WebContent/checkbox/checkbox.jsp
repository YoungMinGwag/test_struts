<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<s:form action="checkbox">
     <s:checkbox name="male" value="true" label="����"/>
     <s:checkbox name="female" value="false" label="����"/>
     <s:submit/>
</s:form>