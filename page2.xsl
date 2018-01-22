<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">

		<html>
			<head>
				<title>경력</title>
			</head>

			<body>
				<table border="1">
					<tr>
						<th rowspan="3">어학</th>
						<th>종류</th>
						<th>등급</th>
						<th>취득일</th>
						<th>시행처</th>
					</tr>
					<xsl:for-each select="resume/resume_good/english_list/english">
						<tr>
							<td>
								<xsl:value-of select="ewhat" />
							</td>
							<td>
								<xsl:value-of select="egrade" />
							</td>
							<td>
								<xsl:value-of select="e_year|e_month|e_day" />
							</td>
							<td>
								<xsl:value-of select="ewhere" />
							</td>
						</tr>
					</xsl:for-each>

					<tr>
						<th rowspan="3">자격증</th>
						<th>종류</th>
						<th>등급</th>
						<th>취득일</th>
						<th>발행처</th>
					</tr>

					<xsl:for-each select="resume/resume_good/license_list/license">
						<tr>
							<td>
								<xsl:value-of select="lwhat" />
							</td>
							<td>
								<xsl:value-of select="lgrade" />
							</td>
							<td>
								<xsl:value-of select="l_year|l_month|l_day" />
							</td>
							<td>
								<xsl:value-of select="lwhere" />
							</td>
						</tr>

					</xsl:for-each>

					<tr>
						<th rowspan="3">교육</th>
						<th>기간</th>
						<th>교육명</th>
						<th>교육기관</th>
						<th>교육내용</th>

					</tr>

					<xsl:for-each select="resume/resume_good/education_list/education">
						<tr>
							<td>
								<xsl:value-of select="start_year|start_month" />
								~
								<xsl:value-of select="finish_year|finish_month" />
							</td>
							<td>
								<xsl:value-of select="edname" />
							</td>
							<td>
								<xsl:value-of select="edwhere" />
							</td>
							<td>
								<xsl:value-of select="edwhat" />
							</td>
						</tr>

					</xsl:for-each>

					<tr>
						<th rowspan="3">수상</th>
						<th>수상일자</th>
						<th>단체명</th>
						<th colspan="2">수상내용</th>

					</tr>

					<xsl:for-each select="resume/resume_good/prize_list/prize">
						<tr>
							<td>
								<xsl:value-of select="pyear|pmonth|pday" />
							</td>
							<td>
								<xsl:value-of select="pname" />
							</td>
							<td colspan="2">
								<xsl:value-of select="pwhat" />
							</td>
						</tr>

					</xsl:for-each>

					<tr>
						<th rowspan="3">경력</th>
						<th>근무기간</th>
						<th>근무처</th>
						<th>직위</th>
						<th>담당업무</th>
					</tr>

					<xsl:for-each select="resume/resume_career/career_list/career">
						<tr>
							<td>
								<xsl:value-of select="cstart_year|cstart_month" />
								~
								<xsl:value-of select="cfinish_year|cfinish_month" />
							</td>
							<td>
								<xsl:value-of select="cwhere" />
							</td>
							<td>
								<xsl:value-of select="cposition" />
							</td>
							<td>
								<xsl:value-of select="cwhat" />
							</td>
						</tr>

					</xsl:for-each>

					<tr>
						<th rowspan="3">기타활동</th>
						<th>활동구분</th>
						<th>활동기관</th>
						<th colspan="2">활동내역</th>

					</tr>

					<xsl:for-each select="resume/resume_career/etc_list/etc">
						<tr>
							<td>
								<xsl:value-of select="etcwhat" />
							</td>
							<td>
								<xsl:value-of select="etcwhere" />
							</td>
							<td colspan="2">
								<xsl:value-of select="etctask" />
							</td>
						</tr>

					</xsl:for-each>

				</table>

			</body>

		</html>

	</xsl:template>

</xsl:stylesheet>