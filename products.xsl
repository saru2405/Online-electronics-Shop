<?xml version = "1.0"?>
<xsl:stylesheet version = "1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
<xsl:output method = "html" omit-xml-declaration = "no" doctype-system = "http://www.w3c.org/TR/xhtml1/DTD/xhtml1-strict.dtd" 
doctype-public = "-//W3C//DTD XHTML 1.0 Strict//EN"/>
<xsl:template match = "/">
<html xmlns = "http://www.w3.org/1999/xhtml">
<head>
<title>Products</title>
</head>
<body>
<style>
	body{
		background-color:lightblue ;
	}
</style>
   <p> <b>Online Eletronics Shop</b> </p>
	<table border = "1" bgcolor = "lightgreen">
	<thead>
		<tr>
			<th>Device</th>
			<th>D_id</th>
			<th>Offers</th>
			<th>Availablity</th>
			<th>Delivery_speed</th>
			
		</tr>
	</thead>
	<xsl:for-each select = "/products/device">
		<tr>
            <td><xsl:value-of select = "@device"/></td>
			<td><xsl:value-of select = "@d_id"/></td>
			<td><xsl:value-of select = "offers"/></td>
			<td><xsl:value-of select = "availablity"/></td>
			<td><xsl:value-of select = "delivery_speed"/></td>
		</tr>
	</xsl:for-each>
	</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>