<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    <!--2017-4-22 ebb: For this ambitious line-graph experiment, we had trouble figuring out how to loop through a collection() of a files and access a count in a previous file, since we can't address that with XPath axes inside <xsl:for-each>. I have worked out TWO WAYS to resolve the problem, and this way represents processing the collection() of files with the for-each loop. 
        RUN THIS XSLT AGAINST any single XML file in the Hamilton collection. 
    -->
    <xsl:variable name="hamiltonColl" as="document-node()*" select="collection('Hamilton/?select=*.xml')"/>
    <xsl:variable name="xSpacer" select="51"/>
    <xsl:variable name="ySpacer" select="10"/>
    <xsl:variable name="numSongs" select="46"/>
    <xsl:variable name="max_xValue" select="$xSpacer * $numSongs"/>
   <!-- <xsl:variable name="max_yValue" select="(50 * $ySpacer)"/>-->
<!--ebb: After a little more tinkering with the XPath I figured out how to calculate the maximum y value throughout the collection, based on any of the available phrase types in each song:  -->
   <xsl:variable name="max_yVal"> 
        <xsl:value-of select="max(for $i in distinct-values($hamiltonColl//text//phr/@type) return max($hamiltonColl//text/count(descendant::phr[@type=$i])))"/>
        </xsl:variable>
<xsl:variable name="max_yValue" select="$max_yVal * $ySpacer"/> 
       
   
    
    <xsl:template match="/">
        
        <xsl:comment>MAX Y:
         <xsl:value-of select="$max_yValue"/>
           </xsl:comment>
        <svg width="1450" height="{$max_yValue + 300}" viewBox="0 0 {2150 * 1.2} {$max_yValue + 300}">
            <g transform="translate(100 {$max_yValue + 100})">
                <xsl:for-each select="descendant::body/head/title">
                    <xsl:variable name="xPos" select="position() * $xSpacer"/>
                    <xsl:variable name="xName" select="."/>
                    <text x="{$xPos}" y="20" text-anchor="end" transform="rotate(-60 {$xPos}, 0)" style="font-size:20px" font-family="georgia" font-weight="bold" letter-spacing="1"><xsl:value-of select="$xName"/></text>
                </xsl:for-each>
                <xsl:comment>X-axis</xsl:comment>
                <line x1="30" y1="0" x2="{$max_xValue + $xSpacer}" y2="0" stroke="black" stroke-width="2"/>
                <xsl:comment>Y-axis</xsl:comment>
                <line x1="30" y1="0" x2="30" y2="-{$max_yValue + 70}" stroke="black" stroke-width="2"/>
                <xsl:for-each select="1 to 5">
                    <xsl:variable name="yAxis_HashLocator" select=". * 100"/>
                    <xsl:variable name="yAxis_HashName" select=". * 10"/>
                    <text x="15" y="-{$yAxis_HashLocator}" text-anchor="middle">
                        <xsl:value-of select="$yAxis_HashName"/>
                    </text>
                    <line x1="30" x2="{$max_xValue + $xSpacer}" y1="{-$yAxis_HashLocator}" y2="{-$yAxis_HashLocator}" stroke="black" stroke-width=".5" stroke-dasharray="10"/>
 </xsl:for-each> 
                <text x="1150" y="-550" text-anchor="middle" style="font-size:50px" font-family="georgia">Frequency of Phrases in "Hamilton: An American Musical"</text>
                <text x="-30" y="-250" text-anchor="middle" style="font-size:30px;writing-mode:tb;" font-family="georgia">Count of Repeated Phrase Per Song</text>
                <text x="1150" y ="400" text-anchor="middle" style="font-size:45px" font-family="georgia">Song Titles</text>
                <text x="25" y="300" style="font-size:30px" font-family="georgia">Legend:</text>
                <text x="25" y="325" style="font-size:21px" font-family="georgia" fill="#ff3300" letter-spacing="2">My Shot</text>
                <text x="150" y="325" style="font-size:21px" font-family="georgia" fill="#006600" letter-spacing="2">Wait</text>
                <text x="275" y="325" style="font-size:21px" font-family="georgia" fill="#3399ff" letter-spacing="2">Helpless</text>
                <text x="25" y="350" style="font-size:21px" font-family="georgia" fill="#6600cc" letter-spacing="2">Satisfied</text>
                <text x="150" y="350" style="font-size:21px" font-family="georgia" fill="#000099" letter-spacing="2">Rise (Up)</text>
                <text x="275" y="350" style="font-size:21px" font-family="georgia" fill="#ff32a6" letter-spacing="2">Look Around</text>
                <text x="25" y="375" style="font-size:21px" font-family="georgia" fill="#ff8000" letter-spacing="2">Time</text>
                <text x="150" y="375" style="font-size:21px" font-family="georgia" fill="maroon" letter-spacing="2">Legacy</text>
                
<!--EBB: EXPERIMENTING WITH LOOPING OVER FILES IN COLLECTION -->

                <xsl:for-each select="$hamiltonColl">
               <xsl:variable name="pos" as="xs:integer" select="position()"/>
                    <xsl:variable name="shot" select="count(descendant::text//phr[@type='#shot']) * $ySpacer"/>
                    <xsl:variable name="satisfied" select="count(descendant::text//phr[@type='#satisfied']) * $ySpacer"/>
                    <xsl:variable name="helpless" select="count(descendant::text//phr[@type='#helpless']) * $ySpacer"/>
                    <xsl:variable name="legacy" select="count(descendant::text//phr[@type='#legacy']) * $ySpacer"/>
                    <xsl:variable name="wait" select="count(descendant::text//phr[@type='#wait']) * $ySpacer"/>
                    <xsl:variable name="rise" select="count(descendant::text//phr[@type='#rise']) * $ySpacer"/>
                    <xsl:variable name="time" select="count(descendant::text//phr[@type='#time']) * $ySpacer"/>
                    <xsl:variable name="look" select="count(descendant::text//phr[@type='#look']) * $ySpacer"/>
                    <xsl:variable name="xPos" select="$pos * $xSpacer"/>
                    <circle cx="{$xPos}" cy="-{$shot}" r="3.5" fill="#ff3300"/>
                    <circle cx="{$xPos}" cy="-{$satisfied}" r="3.5" fill="#6600cc"/>
                    <circle cx="{$xPos}" cy="-{$helpless}" r="3.5" fill="#3399ff"/>
                    <circle cx="{$xPos}" cy="-{$legacy}" r="3.5" fill="maroon"/>
                    <circle cx="{$xPos}" cy="-{$wait}" r="3.5" fill="#006600"/>
                    <circle cx="{$xPos}" cy="-{$rise}" r="3.5" fill="#000099"/>
                    <circle cx="{$xPos}" cy="-{$time}" r="3.5" fill="#ff8000"/>
                    <circle cx="{$xPos}" cy="-{$look}" r="3.5" fill="#ff32a6"/>
                   <xsl:variable name="xPos" select="$pos * $xSpacer"/>
                    <xsl:variable name="xLine" select="($pos - 1) * $xSpacer"/>
                    <xsl:variable name="previousDoc" as="document-node()?" select="$hamiltonColl[$pos - 1]"/>
                    <xsl:variable name="shotLine" select="count($previousDoc//text//phr[@type='#shot']) * $ySpacer"/>
                   
                    <xsl:variable name="satisfiedLine" select="count($previousDoc//text//phr[@type='#satisfied']) * $ySpacer"/>
                    <xsl:variable name="helplessLine" select="count($previousDoc//text//phr[@type='#helpless']) * $ySpacer"/>
                    <xsl:variable name="legacyLine" select="count($previousDoc//text//phr[@type='#legacy']) * $ySpacer"/>
                    <xsl:variable name="waitLine" select="count($previousDoc//text//phr[@type='#wait']) * $ySpacer"/>
                    <xsl:variable name="riseLine" select="count($previousDoc//text//phr[@type='#rise']) * $ySpacer"/>
                    <xsl:variable name="timeLine" select="count($previousDoc//text//phr[@type='#time']) * $ySpacer"/>
                    <xsl:variable name="lookLine" select="count($previousDoc//text//phr[@type='#look']) * $ySpacer"/>
                    <xsl:if test="$previousDoc"><line x1="{$xLine}" y1="-{$shotLine}" x2="{$xPos}" y2="-{$shot}" stroke="#ff3300" stroke-width="3" stroke-opacity="0.5"/>
                        <line x1="{$xLine}" y1="-{$satisfiedLine}" x2="{$xPos}" y2="-{$satisfied}" stroke="#6600cc" stroke-width="2" stroke-opacity="0.5"/>
                        <line x1="{$xLine}" y1="-{$helplessLine}" x2="{$xPos}" y2="-{$helpless}" stroke="#3399ff" stroke-width="2" stroke-opacity="0.5"/>
                        <line x1="{$xLine}" y1="-{$legacyLine}" x2="{$xPos}" y2="-{$legacy}" stroke="maroon" stroke-width="2" stroke-opacity="0.5"/>
                        <line x1="{$xLine}" y1="-{$waitLine}" x2="{$xPos}" y2="-{$wait}" stroke="#006600" stroke-width="2" stroke-opacity="0.5"/>
                        <line x1="{$xLine}" y1="-{$riseLine}" x2="{$xPos}" y2="-{$rise}" stroke="#000099" stroke-width="2" stroke-opacity="0.5"/>
                        <line x1="{$xLine}" y1="-{$timeLine}" x2="{$xPos}" y2="-{$time}" stroke="#ff8000" stroke-width="2" stroke-opacity="0.5"/>
                        <line x1="{$xLine}" y1="-{$lookLine}" x2="{$xPos}" y2="-{$look}" stroke="#ff32a6" stroke-width="2" stroke-opacity="0.5"/>
                    </xsl:if>    
                </xsl:for-each>
                
            </g>
        </svg>
    </xsl:template>
</xsl:stylesheet>