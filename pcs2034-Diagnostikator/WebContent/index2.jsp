<?xml version="1.0" encoding="ISO-8859-1" ?>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:f="http://java.sun.com/jsf/core"
	xmlns:h="http://java.sun.com/jsf/html">
<head>
<title>Jsp Frameset</title>
<link href="resources/css/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	//         
	// written by: Coothead
	function updateObjectIframe(which) {
		document.getElementById('content').innerHTML = '<object id="foo" name="foo" type="text/html" data="'+which.href+'"><\/object>';
	}

	//

	function ahah(url, target) {
		document.getElementById(target).innerHTML = ' Fetching data...';
		if (window.XMLHttpRequest) {
			req = new XMLHttpRequest();
		} else if (window.ActiveXObject) {
			req = new ActiveXObject("Microsoft.XMLHTTP");
		}
		if (req != undefined) {
			req.onreadystatechange = function() {
				ahahDone(url, target);
			};
			req.open("GET", url, true);
			req.send("");
		}
	}

	function ahahDone(url, target) {
		if (req.readyState == 4) { // only if req is "loaded"
			if (req.status == 200) { // only if "OK"
				document.getElementById(target).innerHTML = req.responseText;
			} else {
				document.getElementById(target).innerHTML = " AHAH Error:\n"
						+ req.status + "\n" + req.statusText;
			}
		}
	}

	function load(name, div) {
		ahah(name, div);
		return false;
	}
</script>

</head>
<body>
	<div id="main_container">
		<div id="header"></div>
		<div id="middle">
			<div id="sidebar">
				<a href="usuarioList.jsf"
					onclick="updateObjectIframe(this); return false;">this is an
					object test not an iframe test</a>
					
					
					<a href="usuarioList.jsf" onclick="updateObjectIframe(this); return false;">usuarios</a>
		<a href="pacienteList.jsf" target="content">paciente</a>
		<a href="doencaList.jsf" onclick="updateObjectIframe(this); return false;">doenca</a>
		<a href="sintomaList.jsf" onclick="updateObjectIframe(this); return false;">sintomas</a>
			<h:inputTextarea ></h:inputTextarea>
			</div>
			<div id="content"></div>
		</div>
		<div id="footer"></div>
	</div>


</body>
</html>