<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Hamilton Project: <xsl:apply-templates select="//title/text()"/></title>
                <link rel="stylesheet" type="text/css" href="songStyle.css"/>
            </head>
            <body>
                <div class="menu"><xsl:comment>#include virtual="menu.html"</xsl:comment></div>
                <div class="song">
                    <hr/>
                    <div class="lyrics">
                        <xsl:apply-templates select="//body"/>
                    </div>
                    <hr/>
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="head/title">
        <h2><xsl:apply-templates/></h2>
    </xsl:template>
    <xsl:template match="div[@type='song']//stage">
        <i><xsl:text>(</xsl:text><xsl:apply-templates/><xsl:text>)</xsl:text></i><br/>
    </xsl:template>
    <xsl:template match="div[@type='song']//sp/speaker">
       <br/><strong><xsl:apply-templates/></strong><br/>
    </xsl:template>
    <xsl:template match="l">
        <xsl:apply-templates/><br/>
    </xsl:template>
    <xsl:template match="persName">
        <span class="persName"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="placeName">
        <span class="placeName"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="date">
        <span class="date"><xsl:apply-templates/></span>
    </xsl:template>
</xsl:stylesheet>