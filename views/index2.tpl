<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Json local</title>
	<link rel="stylesheet" type="text/css" href="static/styles.css">
</head>
<body>
	<% import json
	with open("gengi.json", "r", encoding="utf-8") as skra:
	gengi = json.load(skra)
	%>
	<div class="row">
	<section>
		<h3>Gengi gjaldmiðla í ISKR</h3>
		<ul>
			% for i in gengi['results']:
			<li>
				{{i['shortName']}} {{i['longName']}} - ISKR: {{i['value']}}
			</li>
			% end
		</ul>
	</section>
	</div>
</body>
</html>