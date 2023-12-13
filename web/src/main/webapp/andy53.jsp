<!DOCTYPE html>
<html>
	
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
		<script>
			function test1() {
				$('#id1').load('andy52.jsp?max=' + $('#max').val() );
			}
			
			function test2() {
				$.get("andy52.jsp?max=" + $('#max').val(), function(data,status) {
					if(status == 'success'){
						$('#id1').html(data);
					}
					
				});
			}
			
			function test3() {
				$.post("andy52.jsp?max=" + $('#max').val(),
						{
							"max" : $('#max').val()
						}, 
						function(data,status) {
								if(status == 'success'){
									$('#id1').html(data);
								}
							});
			}
			
			function test4() {
				$.ajax({
					url:"andy52.jsp",
					method:"post",
					data:{
						"max" : $('#max').val()
					},
					success: function(data){
						$('#id1').html(data);
					}
					
				});
			}
		</script>
	
	
	</head>
	<body>
		Lottery:<span id="id1"></span>
		<input type="number" id="max"/>
		<br />
		jQuery<button onclick="test1()">test1</button> <br />
		GET<button onclick="test2()">test2</button> <br />
		POST<button onclick="test3()">test3</button> <br />
		AJAX<button onclick="test4()">test4</button> <br />
		
		<form action="andy52.jsp?max=" method="post">
			<input type="number" name="max">
			<input type="submit" value="test5">
		</form>
		
	</body>
</html>