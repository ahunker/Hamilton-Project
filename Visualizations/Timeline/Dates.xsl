<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Visualizations: Frequency of Phrases</title>
                <link rel="stylesheet" type="text/css" href="vis.css" />
            </head>
            <body>
                <div class="menu">
                    <xsl:comment>#include virtual="menu.html"</xsl:comment>
                </div>
                <h2>Dates</h2>
                <xsl:for-each select="descendant::sp"><l><xsl:apply-templates select=".//date"/></l></xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>