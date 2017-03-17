$(document).ready(function(){
	var plot1= null;
	var plot2= null;
	$('#btn3').click(function(){
		var ActiveJobs = [];
		var start=$('#text1').val();
		var end=$('#text2').val();
		$.ajax({
				type: 'GET',
				data: { get_param: 'value' }, 
				url: 'http://localhost:8080/DemoRest/rest/demodata/data+json/'+start+'/'+end,
				dataType: 'json',
				success:function(data){
				$.each(data, function(index, element) {		
		                ActiveJobs.push(element.ActiveJob);
		        });
				plot1.replot({data:[ActiveJobs]});
			},
			error: function(data){
				alert("Error");
			}
	
		
		}); 
	});
	
	
	
	
	
		$('#btn1').click(function(){
			debugger;
			var ActiveJobs = [];
			var abc = [5,6,1,2,8,3,9,3,2,5,4,8,9,7];
			$.ajax({
  				type: 'GET',
  				data: { get_param: 'value' }, 
  				url: 'http://localhost:8080/DemoRest/rest/demodata/data/ActiveJob',
  				dataType: 'json',
  				success:function(data){
 				$.each(data, function(index, element) {		
 		                ActiveJobs.push(element.ActiveJob);
  		        });
 				plot1 = $.jqplot ('chart1', [ActiveJobs],{
 					title: "Chart",
 					highlighter:{show:true},
 					animate: true, animateReplot: true,
 				      axesDefaults: {
 				         labelRenderer: $.jqplot.CanvasAxisLabelRenderer
 				       },
				      series:[{showMarker:false, pointLabels:{ show:false }}],
				      seriesDefaults: {
				            lineWidth: 1, shadow: false, 
				            rendererOptions: { smooth: false },
				            markerOptions: { show: true, shadow: false, size: 2 } 
				            }, 
				cursor:{ 
			        	show: true,
			        	zoom:true, 
			        	tooltipLocation:'sw'
			      	} 
					
				  });
  			},
  			error: function(data){
  				alert("Error");
  			}
		
			
 		}); 
		});
		$('#chart1').bind('jqplotDataClick',function(ev, seriesIndex, pointIndex, data){
			alert(data);
			alert(seriesIndex);
			alert(pointIndex);
			alert(ev);
		});
		$('#btn2').click(function(){
			debugger;
			var ActiveJobs = [];
			$.ajax({
  				type: 'GET',
  				data: { get_param: 'value' }, 
  				url: 'http://localhost:8080/DemoRest/rest/demodata/data/IdelJob',
  				dataType: 'json',
  				success:function(data){
 				$.each(data, function(index, element) {		
 		                ActiveJobs.push(element.IdelJob);
  		        });
 				 plot2 = $.jqplot ('chart2', [ActiveJobs],{  
				      series:[{showMarker:false, pointLabels:{ show:false }}],
				     
				cursor:{ 
			        	show: true,
			        	zoom:true, 
			        	showTooltip:true
			      	} 
					
				  });
  			},
  			error: function(data){
  				alert("Error");
  			}
		
			
 		}); 
			
		});
		$('#btn4').click(function(){ plot1.resetZoom()});
	});