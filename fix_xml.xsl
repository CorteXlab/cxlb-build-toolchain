<?xml version="1.0" encoding="iso-8859-15"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="xml" encoding="iso-8859-15"/>
  <xsl:param name="pythondir"/>
  <xsl:param name="modulename"/>
  <xsl:template match="import"><import>from <xsl:value-of select="$modulename"/> import <xsl:value-of select="$modulename"/></import></xsl:template>
  <xsl:template match="doc">
  <doc><xsl:value-of select="$pythondir"/>/<xsl:value-of select="$modulename"/>.py</doc></xsl:template>
  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>
