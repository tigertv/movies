<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" indent="yes" />

<xsl:template match="/collection">
<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
<xsl:text disable-output-escaping='yes'><![CDATA[<!DOCTYPE html>]]></xsl:text>
<html>
<head>
<!--
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta charset="utf-8">
-->
	<title>My Title</title>
	<script src="js/main.js"/>
</head>
<body>
<table border="1">
	<tr>
		<th>TITLE</th>
		<th>GENRE</th>
		<th>YEAR</th>
	</tr>
	<xsl:for-each select="movie">
	<tr>
		<td><xsl:value-of select="title"/></td>
		<td><xsl:value-of select="genre"/></td>
		<td><xsl:value-of select="year"/></td>
	</tr>
	</xsl:for-each>
</table>
</body>
</html>

</xsl:template>
</xsl:stylesheet>
