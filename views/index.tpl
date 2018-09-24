<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Json Apis.is</title>
	<link rel="stylesheet" type="text/css" href="static/styles.css">
</head>
<body>
	<div class="row">
	<section>
		<h3>Gengi gjaldmiðla frá apis.is</h3>
		<ul>
			% for i in data['results']:
			<li>
				{{i['shortName']}} {{i['longName']}} - ISKR: {{i['value']}}
			</li>
			% end
		</ul>
	</section>
	</div>
</body>
</html>