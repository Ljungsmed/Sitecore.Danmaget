<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:sc="http://www.sitecore.net/sc"
  xmlns:dot="http://www.sitecore.net/dot"
  exclude-result-prefixes="dot sc">

  <!-- output directives -->
  <xsl:output method="html" indent="no" encoding="UTF-8" />

  <!-- parameters -->
  <xsl:param name="lang" select="'en'"/>
  <xsl:param name="id" select="''"/>
  <xsl:param name="sc_item"/>
  <xsl:param name="sc_currentitem"/>

  <!-- variables -->
  <!-- Uncomment one of the following lines if you need a "home" variable in you code -->
  <!--<xsl:variable name="home" select="sc:item('/sitecore/content/home',.)" />-->
  <xsl:variable name="home" select="/*/item[@key='content']/item[@template='dmhome']" />
  <!--<xsl:variable name="home" select="$sc_currentitem/ancestor-or-self::item[@template='site root']" />-->

  <!-- entry point -->
  <xsl:template match="*">
    <xsl:apply-templates select="$sc_item" mode="main"/>
  </xsl:template>

  <!--==============================================================-->
  <!-- main                                                         -->
  <!--==============================================================-->
  <xsl:template match="*" mode="main">
    <xsl:variable name="homeClass">
      <xsl:call-template name="GetClass">
        <xsl:with-param name="current" select="$home" />
      </xsl:call-template>
    </xsl:variable>
    <div id="topmenu">
      <table>
        <tr>
          <td class="{$homeClass}">
            <sc:link select="$home">
              <sc:text field="title" select="$home"/>
            </sc:link>
          </td>
          <td class="tdfiller"></td>
          <xsl:for-each select="$home/item">
            <xsl:variable name="class">
              <xsl:choose>
                <xsl:when test="$sc_currentitem/@id = ./@id">
                  <xsl:text>menuselected</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:text>menu</xsl:text>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:variable>
            <td class="{$class}">
              <sc:link>
                <sc:text field="title" />
              </sc:link>
            </td>
            <td class="tdfiller"></td>
          </xsl:for-each>
        </tr>
      </table>
    </div>
  </xsl:template>

  <xsl:template name="GetClass">
    <xsl:param name="current"/>
    
      <xsl:choose>
        <xsl:when test="$sc_currentitem/@id = $current/@id">
          <xsl:text>menuselected</xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:text>menu</xsl:text>
        </xsl:otherwise>
      </xsl:choose>
    
  </xsl:template>

</xsl:stylesheet>