<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/common.js"></script>
<title>Demo Page</title>
</head>
<body>

	<div style="margin: auto; text-align: center;">
		<p id="msg">Hello Demo</p>
		<button onclick="callAjax('Get')">GET</button>
		<button onclick="callAjax('Post')">POST</button>
		<button onclick="callAjax('Put')">PUT</button>
		<button onclick="callAjax('Delete')">DELETE</button>
	</div>

</body>
<script>
	function getParams() {
		var data = {};
		return data;
	}

	function callAjax(todo, fn) {
		var url = '/demo/do' + todo;
		ajax(todo.toUpperCase(), url, JSON.stringify(getParams()), showMessage);
	}
	
	function showMessage(arg) {
		var obj = JSON.parse(arg);
		document.getElementById('msg').innerHTML = obj.msg;
	}
</script>
</html>