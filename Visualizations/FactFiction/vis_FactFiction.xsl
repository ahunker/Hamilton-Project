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
                <title>Hamilton Project: Fact, Fiction, or Ambiguous</title>
                <link rel="stylesheet" type="text/css" href="vis.css"/>
                <script type="text/javascript" src="about.js"/>
            </head>
            <body>
                <div class="menu">
                    <xsl:comment>#include virtual="menu.html"</xsl:comment>
                </div>
                <div class="img">
                    <h2>Bar Graph of Fact, Fiction, and Ambiguity:</h2>

                    <h3>Click to zoom in on graph.</h3>
                    <a href="FactFictionGraph.svg" title="Bar Graph of Fact, Fiction, and Ambiguity"
                        target="_blank">
                        <img alt="svg_ref" src="FactFictionGraph.svg" class="vis3"/>
                    </a>

                </div>
                <div class="main">
                    <div class="main2">
                        <h2>Description:</h2>
                        <p>The bar graph above shows the division of factual, fictional, and
                            ambiguous lyrics as percentages. In the musical, we tagged a total of
                            208 lyrics; 160 were factual, 36 were fictional, and 12 were ambiguous.
                            The lyrics were chosen by team members as lines that suggested further
                            research or raised questions of authenticity.</p>
                        <h2>Table:</h2>
                        <table>
                            <tr>
                                <th/>
                                <th>Fact</th>
                                <th>Fiction</th>
                                <th>Ambiguous</th>
                            </tr>
                            <xsl:for-each select="//text">
                                <xsl:variable name="pos" as="xs:integer" select="position()"/>
                                <xsl:variable name="fact" select="count(.//seg[@type = '#fact'])"/>
                                <xsl:variable name="fiction"
                                    select="count(.//seg[@type = '#fiction'])"/>
                                <xsl:variable name="ambiguous"
                                    select="count(.//seg[@type = '#ambiguous'])"/>
                                <tr>
                                    <th>
                                        <xsl:apply-templates select=".//title"/>
                                    </th>
                                    <td>
                                        <xsl:apply-templates select="$fact"/>
                                    </td>
                                    <td>
                                        <xsl:apply-templates select="$fiction"/>
                                    </td>
                                    <td>
                                        <xsl:apply-templates select="$ambiguous"/>
                                    </td>
                                </tr>
                            </xsl:for-each>
                            <tr>
                                <th>Total:</th>
                                <td>
                                    <xsl:apply-templates
                                        select="count(teiCorpus//seg[@type = '#fact'])"/>
                                </td>
                                <td>
                                    <xsl:apply-templates
                                        select="count(teiCorpus//seg[@type = '#fiction'])"/>
                                </td>
                                <td>
                                    <xsl:apply-templates
                                        select="count(teiCorpus//seg[@type = '#ambiguous'])"/>
                                </td>
                            </tr>
                        </table>
                        <h2>Looking at the Lyrics</h2>
                        <p>Click on the buttons below to see the lyrics identified as fact, fiction,
                            or ambiguous, and learn more about the history of Hamilton.</p>
                        <div class="buttons">
                            <div>
                                <button id="opt0">
                                    <strong>Factual Lyrics</strong>
                                </button>
                            </div>
                            <div>
                                <button id="opt1">
                                    <strong>Fictional Lyrics</strong>
                                </button>
                            </div>
                            <div>
                                <button id="opt2">
                                    <strong>Ambiguous Lyrics</strong>
                                </button>
                            </div>
                        </div>
                        <div class="main" id="aboutopt0">
                            <h2 class="about">FACT</h2>

                            <ol>
                                <xsl:for-each select="//text">
                                    <li>
                                        <xsl:apply-templates select=".//title"/>
                                        <ul>
                                            <xsl:for-each select=".//seg[@type = '#fact']">
                                                <li>
                                                  <xsl:apply-templates/>
                                                </li>
                                            </xsl:for-each>
                                        </ul>
                                    </li>
                                </xsl:for-each>
                            </ol>

                        </div>
                        <div class="main" id="aboutopt1">
                            <h2>FICTION</h2>
                            <ol>
                                <xsl:for-each select="//text">
                                    <li>
                                        <xsl:apply-templates select=".//title"/>
                                        <ul>
                                            <xsl:for-each select=".//seg[@type = '#fiction']">
                                                <li>
                                                  <xsl:apply-templates/>
                                                </li>
                                            </xsl:for-each>
                                        </ul>
                                    </li>
                                </xsl:for-each>
                            </ol>
                        </div>
                        <div class="main" id="aboutopt2">
                            <h2>AMBIGUOUS</h2>
                            <ol>
                                <xsl:for-each select="//text">
                                    <li>
                                        <xsl:apply-templates select=".//title"/>
                                        <ul>
                                            <xsl:for-each select=".//seg[@type = '#ambiguous']">
                                                <li>
                                                  <xsl:apply-templates/>
                                                </li>
                                            </xsl:for-each>
                                        </ul>
                                    </li>
                                </xsl:for-each>
                            </ol>
                        </div>
                        <h2>Analysis:</h2>
                        <p></p>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
