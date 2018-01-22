<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<head>
				<title>개인정보</title>
			</head>

			<body>
				<table border="2">
					<tr>
						<th rowspan="3">성명</th>
						<th>한글</th>
						<td>
							<xsl:value-of select="//name" />
						</td>
					</tr>

					<tr>
						<th>한자</th>
						<td>
							<xsl:value-of select="//korean" />
						</td>
					</tr>

					<tr>
						<th>영어</th>
						<td>
							<xsl:value-of select="//eng" />
						</td>
					</tr>

					<tr>
						<th rowspan="2">주소</th>
						<th>주소</th>
						<td colspan="5">
							
								<xsl:value-of select="//wcity | //bcity | //scity| //street_name| //street_no" />
						
						</td>
					</tr>

					<tr>
						<th>우편번호</th>
						<td colspan="5">
							<xsl:value-of select="//post_no" />
						</td>
					</tr>

					<tr>
						<th rowspan="3">학력</th>
						<th>입학일자</th>
						<th>졸업일자</th>
						<th>학교명</th>
						<th>전공</th>
						<th>세부전공</th>
						<th>성적</th>
					</tr>
					<xsl:for-each select="resume/school_list/school">
						<tr>

							<td>
								<xsl:value-of select="enter|enter_month|enter_day" />
							</td>
							<td>
								<xsl:value-of select="graduate|graduate_month|graduate_day" />
							</td>
							<td>
								<xsl:value-of select="where" />
							</td>
							<td>
								<xsl:value-of select="major" />
							</td>
							<td>
								<xsl:value-of select="major_specific" />
							</td>
							<td>
								<xsl:value-of select="grade" />
							</td>

						</tr>
					</xsl:for-each>

				</table>

			</body>

		</html>

	</xsl:template>
</xsl:stylesheet>
