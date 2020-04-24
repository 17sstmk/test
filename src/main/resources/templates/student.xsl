<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>Students Information</h2>
    <table border="1" cellspacing="0">
    <tr >
      <th rowspan="3"></th>
      <th align="center"  colspan="8">基本信息</th>
       <th align="center" rowspan="3" colspan="3">联系方式</th>
    </tr>
    <tr>
      <th colspan="4"></th>
      <th align="center"  colspan="4">其他信息</th>
    </tr>
    <tr >
      <th colspan="5"></th>
      <th align="center"  colspan="3">自我介绍</th>
    </tr>
    <tr >
      <th align="left" >用户名</th>
      <th align="left" >真实姓名</th>
      <th align="left" >性别</th>
      <th align="left" >学号</th>
      <th align="left" >生日</th>
      <th align="left" >院系</th>
      <th align="left" >兴趣爱好</th>
      <th align="left" >各项特长</th>
      <th align="left" >照片</th>
      <th align="left" >电邮</th>
      <th align="left" >电话</th>
      <th align="left" >宿舍</th>
    </tr>
    <xsl:for-each select="students/student">
    <tr>
      <td><xsl:value-of select="username"/></td>
      <td><xsl:value-of select="basicinfo/truename"/></td>
      <td><xsl:value-of select="basicinfo/sex"/></td>
      <td><xsl:value-of select="basicinfo/sno"/></td>
      <td><xsl:value-of select="basicinfo/birthday"/></td>
      <td><xsl:value-of select="basicinfo/other/department"/></td>
      <td><xsl:value-of select="basicinfo/other/self-introduce/hobby"/></td>
      <td><xsl:value-of select="basicinfo/other/self-introduce/advantage"/></td>

      <td>      <xsl:element name="a">
        <xsl:attribute name="href">
          <xsl:value-of select="basicinfo/other/photo"/>
        </xsl:attribute>
        点击查看图片
      </xsl:element>
      </td>
      <td><xsl:value-of select="contact/email"/></td>
      <td><xsl:value-of select="contact/telephone"/></td>
      <td><xsl:value-of select="contact/dormitory"/></td>
    </tr>
    </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>