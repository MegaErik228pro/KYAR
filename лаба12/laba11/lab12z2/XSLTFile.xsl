<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<title>Аттестация</title>
			</head>
			<body>
				<h2>Аттестация</h2>
				<table border="1" width="600">
					<tr bgcolor="skyblue">
						<th>Ученик</th>
						<th>Математика</th>
						<th>Белорусский</th>
						<th>Английский</th>
					</tr>
					<xsl:for-each select="ALL/GROUP">
						<tr>
							<td bgcolor="moccasin" width="160">
								<xsl:value-of select="NAME"/>
							</td>
								
								    <xsl:choose>
										<xsl:when test="MATH &lt; 5">
											<td bgcolor="red" align="center">
												<xsl:value-of select="MATH"/>
											</td>
										</xsl:when>
										<xsl:when test="MATH &gt; 7">
											<td bgcolor="lightgreen" align="center">
												<xsl:value-of select="MATH"/>
											</td>
										</xsl:when>
										<xsl:when test="(MATH &lt; 8) and (MATH &gt; 4)">
											<td bgcolor="moccasin" align="center">
												<xsl:value-of select="MATH"/>
											</td>
										</xsl:when>
									</xsl:choose>

							<xsl:choose>
								<xsl:when test="BEL &lt; 5">
									<td bgcolor="red" align="center">
										<xsl:value-of select="BEL"/>
									</td>
								</xsl:when>
								<xsl:when test="BEL &gt; 7">
									<td bgcolor="lightgreen" align="center">
										<xsl:value-of select="BEL"/>
									</td>
								</xsl:when>
								<xsl:when test="(BEL &lt; 8) and (BEL &gt; 4)">
									<td bgcolor="moccasin" align="center">
										<xsl:value-of select="BEL"/>
									</td>
								</xsl:when>
							</xsl:choose>

							<xsl:choose>
								<xsl:when test="ENG &lt; 5">
									<td bgcolor="red" align="center">
										<xsl:value-of select="ENG"/>
									</td>
								</xsl:when>
								<xsl:when test="ENG &gt; 7">
									<td bgcolor="lightgreen" align="center">
										<xsl:value-of select="ENG"/>
									</td>
								</xsl:when>
								<xsl:when test="(ENG &lt; 8) and (ENG &gt; 4)">
									<td bgcolor="moccasin" align="center">
										<xsl:value-of select="ENG"/>
									</td>
								</xsl:when>
							</xsl:choose>
							
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>