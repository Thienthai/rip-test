<%@ include file="../init.jsp" %>

<portlet:renderURL var="toWritePage">
</portlet:renderURL>

<portlet:renderURL var="toWritePage" ><portlet:param name="mvcPath" value="/html/write.jsp" /></portlet:renderURL>

<div>
	<button onClick="link()" id="addBut">Add</button>
	<table id="customers">
	  <tr>
	    <th>Floor</th>
	    <th>Room</th>
	    <th>Name</th>
	    <th>Host</th>
	    <th>Leave Date</th>
	    <th>Place</th>
	    <th>Show</th>
	  </tr>
	  <tr>
	  <!--
	    <td>3</td>
	    <td>1404</td>
	    <td>Test</td>
	    <td>Test</td>
	    <td>04/04/2020</td>
	    <td>Gantin</td>
	    <td>N</td>
	  -->
	  </tr>
	</table>
	<span id="noResult">No Result</span>
	<div id="modal"></div>
	<hr>
</div>
<script>
	function link(){
		var catUrl = "<portlet:renderURL><portlet:param name="mvcPath" value="/html/write.jsp" /></portlet:renderURL>";
	    $(() => {
	        $.ajax({
	            type : 'POST',
	            url  : catUrl,
	            success : function(data){
	                console.log(data);
	            }
	        });
	    });
	}
	
	YUI().use(
			  'aui-modal',
			  function(Y) {
			    var modal = new Y.Modal(
			      {
			        bodyContent: 'Modal body',
			        centered: true,
			        headerContent: '<h3>Modal header</h3>',
			        modal: true,
			        render: '#modal',
			        width: 450
			      }
			    ).render();
			  }
			);
</script>