<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>Teachers Information</h2>
    <table border="1" cellspacing="0">
    <tr >
      <th rowspan="2" colspan="2"></th>
      <th align="center"  rowspan="2" colspan="4">基本信息</th>
      <th align="center"  colspan="4">联系方式</th>
    </tr>
    <tr >
      <th align="center"  colspan="2">固定</th>
      <th align="center"  colspan="2">移动</th>
    </tr>
    <tr >
      <th align="left" >工号</th>
      <th align="left" >用户名</th>
      <th align="left" >真实姓名</th>
      <th align="left" >性别</th>
      <th align="left" >职称</th>
      <th align="left" >专业方向</th>
      <th align="left" >办公室地点</th>
      <th align="left" >办公室电话</th>
      <th align="left" >手机</th>
      <th align="left" >电邮</th>
    </tr>
    <xsl:for-each select="teachers/teacher">
    <tr>
      <td><xsl:value-of select="@tid"/></td>
      <td><xsl:value-of select="username"/></td>
      <td><xsl:value-of select="basicinfo/truename"/></td>
      <td><xsl:value-of select="basicinfo/sex"/></td>
      <td><xsl:value-of select="basicinfo/position"/></td>
      <td><xsl:value-of select="basicinfo/major"/></td>
      <td><xsl:value-of select="contact/fixed/office-place"/></td>
      <td><xsl:value-of select="contact/fixed/office-phone"/></td>
      <td><xsl:value-of select="contact/moved/mobile-phone"/></td>
      <td><xsl:value-of select="contact/moved/email"/></td>
    </tr>
    </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>