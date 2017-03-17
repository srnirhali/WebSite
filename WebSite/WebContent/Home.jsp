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
<script type="text/javascript" src="JavaScript/Home.js"></script>
</head>

<body>


<div id="chart1"></div>
<div id="chart2"></div>

<div>
<div>
	Start Date<input type="text" id="text1">
	End Date<input type="text" id="text2">
	<input type="button" value="reset" id="btn3">
</div>
	<input type="button" id="btn1" value="ActiveJob">
	<input type="button" id="btn2" value="IdelJob">
	<input type="button" id="btn4" value="resetZoom">
</div>
</body>
</html>