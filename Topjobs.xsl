<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
	<table id="menuTable" border="1" class="indent">
		<thead class="headBg">
		    <tr>
				<th>position</th>
				<th>location</th>
				<th>salsry</th>
		    </tr>
		</thead>
		<tbody>
     <xsl:for-each select="//section">
		    <tr>
		       <td colspan="3">
					<xsl:value-of select="@name"/>
			   </td>
			</tr>
			<xsl:for-each select="entry">
			 <td align="center">
			  <input name="item0" type="checkbox"/>
			 </td>		
			 <td>
					<xsl:value-of select="position"/>
			 </td>
		     <td>
					<xsl:value-of select="location"/>
			 </td>
			 <td align="right">
					<xsl:value-of select="salary"/>
			 </td>
			    </xsl:for-each>
				</xsl:for-each>
		</tbody>
	</table>
</xsl:template>
</xsl:transform>