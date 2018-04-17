<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:output method="xml" indent="yes"/>
    <xsl:output method="xml" indent="yes"/>
    <!-- GLOBAL RULES -->
    <xsl:variable name="xSpacer" select="100"/>
    <xsl:variable name="ySpacer" select="5"/>
    <xsl:variable name="max_xValue" select="$xSpacer * 5"/>
    <xsl:variable name="max_yValue" select="-(100 * $ySpacer)"/>
    <xsl:template match="/">
        
        <svg width="850" height="850" viewBox="0 0 900 900">
            <g transform="translate(100 750)">
                <xsl:variable name="xPos" select="$max_xValue div 2"/>
                <text x="{$xPos}" y="20" text-anchor="middle" style="font-size:20px" font-family="Georgia">"Hamilton: An American Musical"</text>
                <text color="black" font-family="Georgia" text-anchor="middle" x="400" y="-650" style="font-size:32px">Factual, Fictional, or Ambiguous?</text>
                <text color="black" font-family="Georgia" text-anchor="middle" x="400" y="-600" style="font-size:32px">"Hamilton: An Americal Musical"</text>
                <text y="-250" x="-15" color="black" font-family="Georgia" text-anchor="middle" style="font-size:18px">50%</text>
                <text y="-500" x="-15" color="black" font-family="Georgia" text-anchor="middle" style="font-size:18px">100%</text>
                <text x="550" y="-500" font-size="25px" font-family="Georgia">Legend:</text>
                <text x="600" y="-450" text-anchor="start" font-size="23px" fill="#996600" font-family="Georgia">-Fact</text>
                <text x="600" y="-400" text-anchor="start" font-size="23px" fill="#ffcc66" font-family="Georgia">-Fiction</text>
                <text x="600" y="-350" text-anchor="start" font-size="23px" fill="#993300" font-family="Georgia">-Ambiguous</text>
                <xsl:comment>X-axis</xsl:comment>
                <line x1="30" y1="0" x2="{$max_xValue}" y2="0" stroke="black" stroke-width="2"/>
                <xsl:comment>Y-axis</xsl:comment>
                <line x1="30" y1="0" x2="30" y2="{$max_yValue}" stroke="black" stroke-width="2"/>
                
                
                <xsl:for-each select="teiCorpus">
                    <xsl:variable name="fact" select="count(.//seg[@type='#fact'])"/>
                    <xsl:variable name="fiction" select="count(.//seg[@type='#fiction'])"/>
                    <xsl:variable name="ambiguous" select="count(.//seg[@type='#ambiguous'])"/>
                    
                    <xsl:variable name="sumSeg" select="count(.//seg)"/>
                    
                    <xsl:variable name="percFact" select="($fact div $sumSeg * 100) * $ySpacer"/>
                    <xsl:variable name="percFiction" select="($fiction div $sumSeg * 100) * $ySpacer"/>
                    <xsl:variable name="percAmbiguous" select="($ambiguous div $sumSeg * 100) * $ySpacer"/>
                    
                    <xsl:variable name="xPos" select="$max_xValue div 2"/>
                    
                    <xsl:variable name="fictionY2pos" select="$percFiction + $percFact"/>
                    <xsl:variable name="ambiguousY1pos" select="$percFiction + $percFact"/>
                    <xsl:variable name="ambiguousY2pos" select="$percFiction + $percFact + $percAmbiguous"/>
                    
                    <xsl:variable name="factPERC" select="$fact div $sumSeg * 100"/>
                    <xsl:variable name="fictionPERC" select="$fiction div $sumSeg * 100"/>
                    <xsl:variable name="ambiguousPERC" select="$ambiguous div $sumSeg * 100"/>
                    
                    <line class="fact" x1="{$xPos}" y1="0" x2="{$xPos}" y2="-{$percFact}" stroke="#996600" stroke-width="200"/>
                    <text x="{$xPos}" y="-{$percFact div 2}" text-anchor="middle" stroke="black" font-family="Georgia" font-size="16px"><xsl:value-of select="format-number($factPERC, '0')"/><xsl:text>%</xsl:text></text>
                    
                    <line class="fiction" x1="{$xPos}" y1="-{$percFact}" x2="{$xPos}" y2="-{$fictionY2pos}" stroke="#ffcc66" stroke-width="200"/>
                    <text x="{$xPos}" y="-{($percFiction div 2) + $percFact}" text-anchor="middle" stroke="black" font-family="Georgia" font-size="16px"><xsl:value-of select="format-number($fictionPERC, '0')"/><xsl:text>%</xsl:text></text>
                    
                    <line class="ambiguous" x1="{$xPos}" y1="-{$ambiguousY1pos}" x2="{$xPos}" y2="-{$ambiguousY2pos}" stroke="#993300" stroke-width="200"/>
                    <text x="{$xPos + 150}" y="-{($percAmbiguous div 2) + $ambiguousY1pos}" text-anchor="middle" stroke="black" font-family="Georgia" font-size="16px"><xsl:value-of select="format-number($ambiguousPERC, '0')"/><xsl:text>%</xsl:text></text>
                    <line x1="{$xPos}" y1="-{($percAmbiguous div 2) + $ambiguousY1pos}" x2="{$xPos + 135}" y2="-{($percAmbiguous div 2) + $ambiguousY1pos}" stroke="black" stroke-width="2" stroke-dasharray="2"/>
                    
                    
                </xsl:for-each>
            </g>
        </svg>
    </xsl:template>
</xsl:stylesheet>