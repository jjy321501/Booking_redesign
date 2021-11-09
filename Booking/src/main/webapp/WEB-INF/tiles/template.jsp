<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>제목</title>
    <style>
        #header{    
        	width:100%;
	    }
    
        }
        #main{
            max-width: 100%;
         	height: 100%; 
        }
        #footer{
        	height: 200px;
        	background-color: #e2e6eb;
        	margin: auto;
	    	min-width: 992px !important;
	    	padding: 0px;
	    	
        }
        
         #left, #main{  
         	height: 100%; 
         } 
    </style>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
    <div style="width:100%; height:100%;">
	    <div id="header"><tiles:insertAttribute name="header" /></div>
	    <div id="main"><tiles:insertAttribute name="body" /></div> 
	   	<div id="footer"><tiles:insertAttribute name="footer" /></tiles></div>   
    </div>
 
    <script type="text/javascript">
        $(function() {
 
        });    
    </script>    
</body>
</html>