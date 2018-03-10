<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml" version="3.0">
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:variable name="hamiltonColl" as="document-node()*"
        select="collection('Hamilton/?select=*.xml')"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Personography</title>
                <link rel="stylesheet" type="text/css" href="style.css" />
            </head>
            <body>
                <div class="menu">
                    <xsl:comment>#include virtual="menu.html"</xsl:comment>
                </div>
                <div class="person">
                    <div class="person2">
                        <h2>Personography</h2>
                        <xsl:for-each select="descendant::person">
                        <h3><xsl:apply-templates select=".//forename"/>
                            <xsl:text> </xsl:text>
                            <xsl:apply-templates select=".//surname"/>
                            </h3>
                        <xsl:if test=".//roleName">
                            <p><xsl:text>Other names/titles: </xsl:text>
                            <xsl:apply-templates
                                select=".//string-join(roleName, ', ')"/></p>
                        </xsl:if>
                            <xsl:if test=".//birth">
                                <p><xsl:if test=".//birth/@when">
                                    <xsl:text>Birth: </xsl:text><xsl:apply-templates select=".//birth/@when"/>
                                    <xsl:text> - </xsl:text>
                                </xsl:if>
                                <xsl:apply-templates select=".//birth/placeName"/>
                                </p>
                            </xsl:if>
                            <xsl:if test=".//death">
                                <p>
                                <xsl:if test=".//death/@when">
                                    <xsl:text>Death: </xsl:text>
                                    <xsl:apply-templates select=".//death/@when"/>
                                    <xsl:text> - </xsl:text>
                                </xsl:if>
                                <xsl:apply-templates select=".//death/placeName"/>
                                </p>
                            </xsl:if>
                            <xsl:if test=".//occupation"><p><xsl:text>Occupation: </xsl:text><xsl:apply-templates
                                select=".//string-join(occupation, ', ')"/></p></xsl:if>
                            <p><xsl:text>Role: </xsl:text><xsl:apply-templates select=".//note"/></p>
                        </xsl:for-each>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>