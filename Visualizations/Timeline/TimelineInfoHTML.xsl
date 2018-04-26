<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml" version="3.0">
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Hamilton Project: Timeline</title>
            </head>

            <body>
                <div>
                    <xsl:for-each select="//listEvent">
                        <h3>
                            <xsl:apply-templates select=".//head"/>
                        </h3>
                        <ul>
                            <xsl:for-each select="./event">
                                <li>
                                    <xsl:apply-templates select="./@when"/>: <i><xsl:apply-templates
                                            select="./label"/></i> - <xsl:apply-templates
                                        select="./desc"/>
                                </li>
                            </xsl:for-each>
                        </ul>
                    </xsl:for-each>
                </div>
            </body>

        </html>
    </xsl:template>
</xsl:stylesheet>
