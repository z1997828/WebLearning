<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<script>
			var xhttp = new XMLHttpRequest();
			xhttp.onreadystatechange = function () {
		//		console.log("OKOK");
				if(xhttp.readyState == 1){
					document.getElementById("div1").innerHTML = "1";
				}else if (xhttp.readyState == 2){
					document.getElementById("div2").innerHTML = "2";
				}else if (xhttp.readyState == 3){
					document.getElementById("div3").innerHTML = "3";
				}else if (xhttp.readyState == 4){
					document.getElementById("div4").innerHTML = "4";
					if (xhttp.status == 200){
						document.getElementById("lottery").innerHTML = xhttp.responseText;
					}
					
				}
					
			};
		
			
			function test1() {
				xhttp.open("GET","andy52.jsp");
				xhttp.send();
			}	
		</script>
		<div id="div1"></div>
		<div id="div2"></div>
		<div id="div3"></div>
		<div id="div4"></div>
		<input type="button" onclick="test1()" value="Test1" />
		<hr />
		Lottery:<span id="lottery"></span>
	</body>
</html>