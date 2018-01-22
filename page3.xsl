<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
	
	<html>
<head>
<title>자기소개서</title>
</head>

<body>

	<pre>
		<h3>회사 입사지원서</h3> <button type="button">입사지원 현황 보기</button>
	</pre>

	<xsl:value-of select="//why" />
	<br /><br />
	<xsl:value-of select="//introduce" />
	<br /><br />
	<xsl:value-of select="//plan" />
	<br /><br />
</body>

</html>

	</xsl:template>


</xsl:stylesheet>