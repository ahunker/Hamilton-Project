<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    <!--2017-4-22 ebb: For this ambitious line-graph experiment, I have not discovered how we can loop through a collection() of a files and access a count in a previous file, since we can't address that with XPath inside <xsl:for-each>. So I've written another XSLT file (teiCorpusTransform.xsl) to generate a single TEI file out of the entire Hamilton collection unified by the <teiCorpus> element (which permits multiple <TEI> child elements. This new file, hamiltonCorpus.xml, contains 46 <TEI> elements inside and all of the team markup, and we can now easily loop through it with XPath. 
        
        RUN THIS XSLT AGAINST hamiltonCorpus.xml in this directory.
    -->

    <xsl:variable name="xSpacer" select="35"/>
    <xsl:variable name="ySpacer" select="10"/>
    <xsl:variable name="numSongs" select="46"/>
    <xsl:variable name="max_xValue" select="$xSpacer * $numSongs"/>
   <!-- <xsl:variable name="max_yValue" select="(50 * $ySpacer)"/>-->
<!--ebb: After a little more tinkering with the XPath I figured out how to calculate the maximum y value throughout the collection, based on any of the available phrase types in each song:  -->
   <xsl:variable name="max_yVal"> 
        <xsl:value-of select="max(for $i in distinct-values(descendant::text//phr/@type) return max(descendant::text/count(descendant::phr[@type=$i])))"/>
        </xsl:variable>
<xsl:variable name="max_yValue" select="$max_yVal * $ySpacer"/> 
       
   
    
    <xsl:template match="/">
        
        <xsl:comment>MAX Y:
         <xsl:value-of select="$max_yValue"/>
           </xsl:comment>
        <svg width="1800" height="{$max_yValue + 300}" viewBox="0 0 {1800 * 1.2} {$max_yValue + 300}">
            <g transform="translate(100 {$max_yValue + 100})">
                <xsl:for-each select="descendant::body/head/title">
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
<!--EBB: EXPERIMENTING WITH LOOPING OVER FILES IN COLLECTION -->

                <xsl:for-each select="descendant::TEI">
                    <xsl:variable name="shot" select="count(descendant::text//phr[@type='#shot']) * $ySpacer"/>
                    <xsl:variable name="satisfied" select="count(descendant::text//phr[@type='#satisfied']) * $ySpacer"/>
                    <xsl:variable name="helpless" select="count(descendant::text//phr[@type='#helpless']) * $ySpacer"/>
                    <xsl:variable name="legacy" select="count(descendant::text//phr[@type='#legacy']) * $ySpacer"/>
                    <xsl:variable name="wait" select="count(descendant::text//phr[@type='#wait']) * $ySpacer"/>
                    <xsl:variable name="rise" select="count(descendant::text//phr[@type='#rise']) * $ySpacer"/>
                    <xsl:variable name="time" select="count(descendant::text//phr[@type='#time']) * $ySpacer"/>
                    <xsl:variable name="look" select="count(descendant::text//phr[@type='#look']) * $ySpacer"/>
                    <xsl:variable name="xPos" select="position() * $xSpacer"/>
                    <circle cx="{$xPos}" cy="-{$shot}" r="3.5" fill="red"/>
                    <circle cx="{$xPos}" cy="-{$satisfied}" r="3.5" fill="purple"/>
                    <circle cx="{$xPos}" cy="-{$helpless}" r="3.5" fill="blue"/>
                    <circle cx="{$xPos}" cy="-{$legacy}" r="3.5" fill="yellow"/>
                    <circle cx="{$xPos}" cy="-{$wait}" r="3.5" fill="green"/>
                    <circle cx="{$xPos}" cy="-{$rise}" r="3.5" fill="brown"/>
                    <circle cx="{$xPos}" cy="-{$time}" r="3.5" fill="orange"/>
                    <circle cx="{$xPos}" cy="-{$look}" r="3.5" fill="pink"/>
                    <xsl:variable name="xPos" select="position() * $xSpacer"/>
                    <xsl:variable name="xLine" select="(position() - 1) * $xSpacer"/>
                    <xsl:variable name="shotLine" select="count(preceding-sibling::TEI[1]//text//phr[@type='#shot']) * $ySpacer"/>
                    
                    <line x1="{$xLine}" y1="-{$shotLine}" x2="{$xPos}" y2="-{$shot}" stroke="red" stroke-width="3"/>
                     </xsl:for-each>
                
            </g>
        </svg>
    </xsl:template>
</xsl:stylesheet>