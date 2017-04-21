<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    <xsl:variable name="hamiltonColl" select="collection('Hamilton')"/>
    <xsl:variable name="xSpacer" select="35"/>
    <xsl:variable name="ySpacer" select="10"/>
    <xsl:variable name="numSongs" select="46"/>
    <xsl:variable name="max_xValue" select="$xSpacer * $numSongs"/>
    <xsl:variable name="max_yValue" select="(50 * $ySpacer)"/>
        
    
       
   
    
    <xsl:template match="/">
        <svg width="1800" height="{$max_yValue + 300}" viewBox="0 0 {1800 * 1.2} {$max_yValue + 300}">
            <g transform="translate(100 {$max_yValue + 100})">
                <xsl:for-each select="$hamiltonColl//body/head/title">
                    <xsl:variable name="xPos" select="position() * $xSpacer"/>
                    <xsl:variable name="xName" select="."/>
                    <text x="{$xPos}" y="15" text-anchor="end" transform="rotate(-45 {$xPos}, 0)" style="font-size:14px" font-family="georgia"><xsl:value-of select="$xName"/></text>
                </xsl:for-each>
                <xsl:comment>X-axis</xsl:comment>
                <line x1="30" y1="0" x2="{$max_xValue + $xSpacer}" y2="0" stroke="black" stroke-width="2"/>
                <xsl:comment>Y-axis</xsl:comment>
                <line x1="30" y1="0" x2="30" y2="-{$max_yValue}" stroke="black" stroke-width="2"/>
                <xsl:for-each select="1 to 5">
                    <xsl:variable name="yAxis_HashLocator" select=". * 100"/>
                    <xsl:variable name="yAxis_HashName" select=". * 10"/>
                    <text x="15" y="-{$yAxis_HashLocator}" text-anchor="middle">
                        <xsl:value-of select="$yAxis_HashName"/>
                    </text>
                    <line x1="30" x2="{$max_xValue + $xSpacer}" y1="{-$yAxis_HashLocator}" y2="{-$yAxis_HashLocator}" stroke="black" stroke-width=".5" stroke-dasharray="10"/>
                </xsl:for-each> 
                <xsl:for-each select="$hamiltonColl//text">
                    <xsl:variable name="shot" select="count(.//phr[@type='#shot']) * $ySpacer"/>
                    <xsl:variable name="satisfied" select="count(.//phr[@type='#satisfied']) * $ySpacer"/>
                    <xsl:variable name="helpless" select="count(.//phr[@type='#helpless']) * $ySpacer"/>
                    <xsl:variable name="legacy" select="count(.//phr[@type='#legacy']) * $ySpacer"/>
                    <xsl:variable name="wait" select="count(.//phr[@type='#wait']) * $ySpacer"/>
                    <xsl:variable name="rise" select="count(.//phr[@type='#rise']) * $ySpacer"/>
                    <xsl:variable name="time" select="count(.//phr[@type='#time']) * $ySpacer"/>
                    <xsl:variable name="look" select="count(.//phr[@type='#look']) * $ySpacer"/>
                    <xsl:variable name="xPos" select="position() * $xSpacer"/>
                    <circle cx="{$xPos}" cy="-{$shot}" r="3.5" fill="red"/>
                    <circle cx="{$xPos}" cy="-{$satisfied}" r="3.5" fill="purple"/>
                    <circle cx="{$xPos}" cy="-{$helpless}" r="3.5" fill="blue"/>
                    <circle cx="{$xPos}" cy="-{$legacy}" r="3.5" fill="yellow"/>
                    <circle cx="{$xPos}" cy="-{$wait}" r="3.5" fill="green"/>
                    <circle cx="{$xPos}" cy="-{$rise}" r="3.5" fill="brown"/>
                    <circle cx="{$xPos}" cy="-{$time}" r="3.5" fill="orange"/>
                    <circle cx="{$xPos}" cy="-{$look}" r="3.5" fill="pink"/>
                     </xsl:for-each>
                <xsl:for-each select="$hamiltonColl//text">
                    <xsl:variable name="shot" select="count(.//phr[@type='#shot']) * $ySpacer"/>
                    <xsl:variable name="satisfied" select="count(.//phr[@type='#satisfied']) * $ySpacer"/>
                    <xsl:variable name="helpless" select="count(.//phr[@type='#helpless']) * $ySpacer"/>
                    <xsl:variable name="legacy" select="count(.//phr[@type='#legacy']) * $ySpacer"/>
                    <xsl:variable name="wait" select="count(.//phr[@type='#wait']) * $ySpacer"/>
                    <xsl:variable name="rise" select="count(.//phr[@type='#rise']) * $ySpacer"/>
                    <xsl:variable name="time" select="count(.//phr[@type='#time']) * $ySpacer"/>
                    <xsl:variable name="look" select="count(.//phr[@type='#look']) * $ySpacer"/>
                    <xsl:variable name="xPos" select="position() * $xSpacer"/>
                    <xsl:variable name="xLine" select="preceding::text[1]/position() * $xSpacer"/>
                    <xsl:variable name="shotLine" select="preceding::text[1]//count(.//phr[@type='#shot']) * $ySpacer"/>
                    
                        <line x1="{$xLine}" y1="-{$shotLine}" x2="{$xPos}" y2="-{$shot}" stroke="red" stroke-width="3"/>
                    
                </xsl:for-each>
                
            </g>
        </svg>
    </xsl:template>
</xsl:stylesheet>