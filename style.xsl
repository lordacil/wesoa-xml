<?xml version="1.0" encoding="ISO-8859-1"?><!-- DWXMLSource="Contact.xml" -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<style>
body {
    font-family: Arial, Helvetica, sans-serif;
    font-size: 14px;
}
div {
    margin-left: 150px;
    margin-right: 20px;
    margin-top: 50px;
    width: 100%;
}
h1 {
    font-size: 24px;
    color: #F00;
}
.headings {
    background-color: #06F;
}
.data {
    background-color: #6F9;
}
.table {
    border-collapse: collapse;
    border: 2px solid #F00;
    width: 100%;
}
</style>
</head>
<body>
<div>
<h1>LECTURER</h1>
    <table class="table">
        <tr class="headings">
            <th>Name</th>
            <th>Education</th>
            <th>Field</th>
            <th>Lecturer Code</th>
            <th>NIDN</th>
        </tr>
        <xsl:for-each select="listoflecturers/lecturer">
        <tr class="data">
            <td><xsl:value-of select="person/name"/></td>
            <td><xsl:value-of select="person/education"/></td>
            <td><xsl:value-of select="person/field"/></td>
            <td><xsl:value-of select="person/lecturercode"/></td>
            <td><xsl:value-of select="person/nidn"/></td>
        </tr>
    </xsl:for-each>
</table>
</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>