<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" xmlns="http://www.tei-c.org/ns/1.0"
    version="3.0">
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="head">
        <xsl:for-each select=".">
            <head>
                <xsl:apply-templates select="./title"/>
            <listEvent>
                <head>
                    <xsl:apply-templates select="./title/text()"/>
                </head>
                <event xml:id="event" when="0000-00-00"/>
                <label></label>
                <desc></desc>
            </listEvent>
            </head>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
