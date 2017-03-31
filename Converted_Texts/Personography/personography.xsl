<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.tei-c.org/ns/1.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:variable name="valitem" select="descendant::valItem/@ident"/>
    <xsl:variable name="noHashvalitem" select="$valitem/tokenize(string(), '#')"/>
    <xsl:variable name="valItem" select="distinct-values($noHashvalitem)"/>
    <xsl:template match="/">
        <TEI>
            <teiHeader xml:lang="en">
                <fileDesc>
                    <titleStmt>
                        <title>
                            <!-- title of the resource -->
                        </title>
                    </titleStmt>
                    <publicationStmt>
                        <p>
                            <!-- Information about distribution of the resource -->
                        </p>
                    </publicationStmt>
                    <sourceDesc>
                        <p>
                            <!-- Information about source from which the resource derives -->
                        </p>
                    </sourceDesc>
                </fileDesc>
            </teiHeader>
            <text>
                <body>
                    <listPerson>
                        <xsl:for-each select="$valItem">
                            <xsl:variable name="id" select="."/>
                            <person xml:id="{$id}">

                                <persName><surname></surname><forename></forename></persName>
                                
                                    <birth when="1700">
                                    <placeName/></birth>
                                    <death when="1800">
                                    <placeName/></death> 
                                
                                
                                <occupation>....</occupation>
                                <note>....</note>
                            </person>
                        </xsl:for-each>
                    </listPerson>
                </body>
            </text>
        </TEI>
    </xsl:template>
</xsl:stylesheet>
