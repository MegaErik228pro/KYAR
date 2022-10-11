<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<title>Groups</title>
			</head>
			<body>
				<h2>Groups</h2>
				<table border="1">
					<tr bgcolor="skyblue">
						<th>Name</th>
						<th>TIME</th>
						<th>Style</th>
						<th>Pages</th>
					</tr>
					<xsl:for-each select="ALL/GROUP">
						<xsl:sort select="TIME"/>
						<tr bgcolor="moccasin">
							<td>
								<xsl:value-of select="NAME"/>
							</td>
							<td>
								<xsl:value-of select="TIME"/>
							</td>
							<td>
								<xsl:value-of select="STYLE"/>
							</td>
							<td>
								<xsl:value-of select="PAGES"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>