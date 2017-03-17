<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="dist/jquery.min.js"></script>
<script type="text/javascript" src="dist/jquery.jqplot.min.js"></script>
<script type="text/javascript" src="dist/jquery.jqplot.min.js"></script>
<script type="text/javascript" src="dist/plugins/jqplot.barRenderer.min.js"></script>
<script type="text/javascript" src="dist/plugins/jqplot.pieRenderer.min.js"></script>
<script type="text/javascript" src="dist/plugins/jqplot.categoryAxisRenderer.min.js"></script>
<script type="text/javascript" src="dist/plugins/jqplot.pointLabels.min.js"></script>

<script type="text/javascript" src="dist/plugins/jqplot.cursor.js"></script>
<script type="text/javascript" src="dist/plugins/jqplot.dateAxisRenderer.js"></script>
<script type="text/javascript" src="dist/plugins/jqplot.logAxisRenderer.js"></script>
<script type="text/javascript" src="dist/plugins/jqplot.canvasTextRenderer.js"></script>
<script type="text/javascript" src="dist/plugins/jqplot.canvasAxisTickRenderer.js"></script>
<link rel="stylesheet" type="text/css" href="dist/jquery.jqplot.min.css" />

<script type="text/javascript">
	$(document).ready(function(){
		var ploat= null;
		var data=[2,5,6,7,8,6,3];
		$('#btn').click(function(){
			ploat = $.jqplot('chart1', [data]);
			
		});
		$('#btn1').click(function(){
			
			ploat.destroy();
			
			
		});
		$('#btn2').click(function(){
			var series = [[5,6,8]];
			ploat.replot({data:series});
		});
	});
	
</script>

</head>

<body>
<div id="chart1"></div>
<div>
<input type="button" id="btn1" value="update">
<input type="button" id="btn2" value="upd">
	<input type="button" id="btn" value="submit">
</div>
</body>
</html>