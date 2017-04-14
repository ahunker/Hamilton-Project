<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.opengis.net/kml/2.2"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="xs math"
    xmlns="http://www.opengis.net/kml/2.2"
    version="3.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:variable name="Ham" select="document('Hamilton_Placeography1.kml')"/>
    <xsl:mode on-no-match="shallow-copy"/>
    <xsl:template match="Placemark">
        <Placemark>
        <xsl:apply-templates select="description"/> 
        <xsl:apply-templates select="name"/>
        <xsl:apply-templates select="description/following-sibling::*"/> 
        </Placemark>
    </xsl:template>
     <xsl:template match="description">
       <name><xsl:value-of select="."/></name>
   </xsl:template> 
    <xsl:template match="Placemark/name">
        <description>  
            <xsl:value-of select="$Ham//name[. = current()]/following-sibling::description"/>
        </description>
    </xsl:template>
</xsl:stylesheet>
