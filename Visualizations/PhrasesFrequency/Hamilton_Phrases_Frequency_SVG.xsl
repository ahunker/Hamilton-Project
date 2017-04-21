<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    <xsl:variable name="hamiltonColl" select="collection('Hamilton')"/>
    <xsl:variable name="xSpacer" select="33"/>
    <xsl:variable name="ySpacer" select="5"/>
    <xsl:variable name="numSongs" select="46"/>
    <xsl:variable name="max_xValue" select="$xSpacer * $numSongs"/>
    <xsl:variable name="max_yValue" select="-(100 * $ySpacer)"/>
    
       <xsl:variable name="ys">
           <xsl:for-each select="$hamiltonColl//text">
        <xsl:variable name="shot" select="count(.//phr[@type='#shot'])"/>
        <xsl:variable name="satisfied" select="count(.//phr[@type='#satisfied'])"/>
        <xsl:variable name="helpless" select="count(.//phr[@type='#helpless'])"/>
        <xsl:variable name="legacy" select="count(.//phr[@type='#legacy'])"/>
        <xsl:variable name="wait" select="count(.//phr[@type='#wait'])"/>
        <xsl:variable name="rise" select="count(.//phr[@type='#rise'])"/>
        <xsl:variable name="time" select="count(.//phr[@type='#time'])"/>
        <xsl:variable name="look" select="count(.//phr[@type='#look'])"/>
    </xsl:for-each>
       </xsl:variable>
    <xsl:variable name="maxY" select="max($ys)"/>
        
    
       
   
    
    <xsl:template match="/">
        <svg width="1800" height="900" viewBox="0 0 1600 900">
            <g transform="translate(50 500)">
                <xsl:for-each select="$hamiltonColl//body/head/title">
                    <xsl:variable name="xPos" select="position() * $xSpacer"/>
                    <xsl:variable name="xName" select="."/>
                    <text x="{$xPos}" y="15" text-anchor="end" transform="rotate(-45 {$xPos}, 0)" style="font-size:14px" font-family="georgia"><xsl:value-of select="$xName"/></text>
                </xsl:for-each>
                <xsl:comment>X-axis</xsl:comment>
                <line x1="30" y1="0" x2="{$max_xValue + $xSpacer}" y2="0" stroke="black" stroke-width="2"/>
                <xsl:comment>Y-axis</xsl:comment>
                <line x1="30" y1="0" x2="30" y2="{$max_yValue}" stroke="black" stroke-width="2"/>
                <xsl:for-each select="$hamiltonColl//text">
                    <xsl:variable name="shot" select="count(.//phr[@type='#shot'])"/>
                    <xsl:variable name="satisfied" select="count(.//phr[@type='#satisfied'])"/>
                    <xsl:variable name="helpless" select="count(.//phr[@type='#helpless'])"/>
                    <xsl:variable name="legacy" select="count(.//phr[@type='#legacy'])"/>
                    <xsl:variable name="wait" select="count(.//phr[@type='#wait'])"/>
                    <xsl:variable name="rise" select="count(.//phr[@type='#rise'])"/>
                    <xsl:variable name="time" select="count(.//phr[@type='#time'])"/>
                    <xsl:variable name="look" select="count(.//phr[@type='#look'])"/>
                    <xsl:variable name="maxShot" select="max($shot)"/>
                    <xsl:variable name="maxSatisfied" select="max($satisfied)"/>
                    <xsl:variable name="maxLegacy" select="max($legacy)"/>
                    <xsl:variable name="maxWait" select="max($wait)"/>
                    <xsl:variable name="maxRise" select="max($rise)"/>
                    <xsl:variable name="maxTime" select="max($time)"/>
                    <xsl:variable name="maxLook" select="max($look)"/>
                    <xsl:comment><xsl:value-of select="$maxShot"/>, <xsl:value-of select="$maxSatisfied"/></xsl:comment>
                </xsl:for-each>
                
            </g>
        </svg>
    </xsl:template>
</xsl:stylesheet>