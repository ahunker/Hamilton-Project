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
            </head>
            <body>
                <div class="menu">
                    <xsl:comment>#include virtual="menu.html"</xsl:comment>
                </div>
                <div class="main">
                    <div class="main2">
                        <h2>Table</h2>
                        <table>
                            <tr>
                                <th>Name</th>
                                <th>xml:id</th>
                                <th>Birth</th>
                                <th>Death</th>
                                <th>Occupation</th>
                                <th>No. of Times Referenced</th>
                                <th>People Referenced</th>
                                <th>Referenced By</th>
                            </tr>
                            <xsl:for-each select="descendant::person">
                                <tr>
                                    <td>
                                        <xsl:apply-templates select=".//forename"/>
                                        <xsl:text> </xsl:text>
                                        <xsl:apply-templates select=".//surname"/>
                                        <xsl:if test=".//roleName">
                                            <xsl:text> - Other names/titles: </xsl:text>
                                            <xsl:apply-templates
                                                select=".//string-join(roleName, ', ')"/>
                                        </xsl:if>
                                    </td>
                                    <td>
                                        <xsl:apply-templates select="@xml:id"/>
                                    </td>
                                    <td>
                                        <xsl:if test=".//birth">
                                            <xsl:if test=".//birth/@when">
                                                <xsl:apply-templates select=".//birth/@when"/>
                                                <xsl:text> - </xsl:text>
                                            </xsl:if>
                                            <xsl:apply-templates select=".//birth/placeName"/>
                                        </xsl:if>
                                    </td>
                                    <td>
                                        <xsl:if test=".//death">
                                            <xsl:if test=".//death/@when">
                                                <xsl:apply-templates select=".//death/@when"/>
                                                <xsl:text> - </xsl:text>
                                            </xsl:if>
                                            <xsl:apply-templates select=".//death/placeName"/>
                                        </xsl:if>
                                    </td>
                                    <td>
                                        <xsl:apply-templates
                                            select=".//string-join(occupation, ', ')"/>
                                    </td>



                                    <td><xsl:if
                                        test="./@xml:id = $hamiltonColl//persName/@ref/tokenize(., '#')">
                                        <xsl:variable name="ref" select="./@xml:id"/>
                                        
                                            <xsl:apply-templates
                                                select="count($hamiltonColl//persName[@ref/tokenize(., '#') = $ref])"
                                            />
                                        
                                    </xsl:if></td>



                                    <td>
                                        <xsl:if
                                            test="./@xml:id = $hamiltonColl//sp/@who/tokenize(., '#')">
                                            <xsl:variable name="ref" select="./@xml:id"/>
                                           
                                          <xsl:variable name="distRef"
                                                select="distinct-values($hamiltonColl//sp[for $i in tokenize(@who, ' ') return substring-after($i, '#')[. = $ref]] //persName/@ref/tokenize(., '#'))"/>
                                           
                                            <ul>
                                                <xsl:for-each select="$distRef">
                                                  <li>
                                                  <xsl:apply-templates select="."/>
                                                  </li>
                                                  <!-- REMOVE EXTRA li -->
                                                </xsl:for-each>
                                            </ul>
                                        </xsl:if>
                                    </td>
                                    <td>
                                        <xsl:if
                                            test="./@xml:id = $hamiltonColl//persName/@ref/tokenize(., '#')">
                                            <xsl:variable name="ref" select="./@xml:id"/>
                                            <xsl:variable name="distRefers"
                                                select="distinct-values(for $i in $hamiltonColl//sp[.//persName/@ref/tokenize(., '#') = $ref]/@who/tokenize(., ' ') return substring-after($i, '#'))"/>

                                            <ul>
                                                <xsl:for-each select="$distRefers">
                                                  <li>
                                                  <xsl:apply-templates select="."/>
                                                  </li>

                                                </xsl:for-each>
                                            </ul>

                                        </xsl:if>
                                    </td>

                                </tr>
                            </xsl:for-each>
                        </table>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
