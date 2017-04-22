<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    xmlns="http://www.tei-c.org/ns/1.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:variable name="hamiltonColl" select="collection('Hamilton/?select=*.xml')"/>
 <!--2016-04-22 ebb: This is a TEI-to-TEI stylesheet for the Hamilton project to convert a collection of separate files into a single file with <teiCorpus> as the root element. -->
    <xsl:template match="/">
        <teiCorpus>
                <xsl:copy-of select="descendant::teiHeader"/>
            <xsl:for-each select="$hamiltonColl/TEI"><xsl:copy-of select="current()"/>
            </xsl:for-each>
        </teiCorpus>
        
    </xsl:template>
  
</xsl:stylesheet>