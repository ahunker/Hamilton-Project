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
                <title>Visualizations: Frequency of Phrases</title>
                <link rel="stylesheet" type="text/css" href="vis.css" />
            </head>
            <body>
                <div class="menu">
                    <xsl:comment>#include virtual="menu.html"</xsl:comment>
                </div>
                <div id="svg">
                    <svg xmlns="http://www.w3.org/2000/svg" width="1450" height="730"
                        viewBox="0 0 2580 730">
                        <g transform="translate(100 530)">
                            <text x="50" y="20" text-anchor="end" transform="rotate(-45 50, 0)"
                                style="font-size:17px" font-family="georgia">Alexander
                                Hamilton</text>
                            <text x="100" y="20" text-anchor="end" transform="rotate(-45 100, 0)"
                                style="font-size:17px" font-family="georgia">Aaron Burr, Sir</text>
                            <text x="150" y="20" text-anchor="end" transform="rotate(-45 150, 0)"
                                style="font-size:17px" font-family="georgia">My Shot</text>
                            <text x="200" y="20" text-anchor="end" transform="rotate(-45 200, 0)"
                                style="font-size:17px" font-family="georgia">The Story of
                                Tonight</text>
                            <text x="250" y="20" text-anchor="end" transform="rotate(-45 250, 0)"
                                style="font-size:17px" font-family="georgia">The Schuyler
                                Sisters</text>
                            <text x="300" y="20" text-anchor="end" transform="rotate(-45 300, 0)"
                                style="font-size:17px" font-family="georgia">Farmer Refuted</text>
                            <text x="350" y="20" text-anchor="end" transform="rotate(-45 350, 0)"
                                style="font-size:17px" font-family="georgia">You'll Be Back</text>
                            <text x="400" y="20" text-anchor="end" transform="rotate(-45 400, 0)"
                                style="font-size:17px" font-family="georgia">Right Hand Man</text>
                            <text x="450" y="20" text-anchor="end" transform="rotate(-45 450, 0)"
                                style="font-size:17px" font-family="georgia">A Winter's Ball</text>
                            <text x="500" y="20" text-anchor="end" transform="rotate(-45 500, 0)"
                                style="font-size:17px" font-family="georgia">Helpless</text>
                            <text x="550" y="20" text-anchor="end" transform="rotate(-45 550, 0)"
                                style="font-size:17px" font-family="georgia">Satisfied</text>
                            <text x="600" y="20" text-anchor="end" transform="rotate(-45 600, 0)"
                                style="font-size:17px" font-family="georgia">The Story of Tonight
                                (Reprise)</text>
                            <text x="650" y="20" text-anchor="end" transform="rotate(-45 650, 0)"
                                style="font-size:17px" font-family="georgia">Wait for It</text>
                            <text x="700" y="20" text-anchor="end" transform="rotate(-45 700, 0)"
                                style="font-size:17px" font-family="georgia">Stay Alive</text>
                            <text x="750" y="20" text-anchor="end" transform="rotate(-45 750, 0)"
                                style="font-size:17px" font-family="georgia">Ten Duel
                                Commandments</text>
                            <text x="800" y="20" text-anchor="end" transform="rotate(-45 800, 0)"
                                style="font-size:17px" font-family="georgia">Meet Me Inside</text>
                            <text x="850" y="20" text-anchor="end" transform="rotate(-45 850, 0)"
                                style="font-size:17px" font-family="georgia">That Would Be
                                Enough</text>
                            <text x="900" y="20" text-anchor="end" transform="rotate(-45 900, 0)"
                                style="font-size:17px" font-family="georgia">Guns and Ships</text>
                            <text x="950" y="20" text-anchor="end" transform="rotate(-45 950, 0)"
                                style="font-size:17px" font-family="georgia">History has its Eyes on
                                You</text>
                            <text x="1000" y="20" text-anchor="end" transform="rotate(-45 1000, 0)"
                                style="font-size:17px" font-family="georgia">Yorktown (The World
                                Turned Upside Down)</text>
                            <text x="1050" y="20" text-anchor="end" transform="rotate(-45 1050, 0)"
                                style="font-size:17px" font-family="georgia">What Comes Next?</text>
                            <text x="1100" y="20" text-anchor="end" transform="rotate(-45 1100, 0)"
                                style="font-size:17px" font-family="georgia">Dear Theodosia</text>
                            <text x="1150" y="20" text-anchor="end" transform="rotate(-45 1150, 0)"
                                style="font-size:17px" font-family="georgia">Non-Stop</text>
                            <text x="1200" y="20" text-anchor="end" transform="rotate(-45 1200, 0)"
                                style="font-size:17px" font-family="georgia">What'd I Miss</text>
                            <text x="1250" y="20" text-anchor="end" transform="rotate(-45 1250, 0)"
                                style="font-size:17px" font-family="georgia">Cabinet Battle
                                #1</text>
                            <text x="1300" y="20" text-anchor="end" transform="rotate(-45 1300, 0)"
                                style="font-size:17px" font-family="georgia">Take A Break</text>
                            <text x="1350" y="20" text-anchor="end" transform="rotate(-45 1350, 0)"
                                style="font-size:17px" font-family="georgia">Say No to This</text>
                            <text x="1400" y="20" text-anchor="end" transform="rotate(-45 1400, 0)"
                                style="font-size:17px" font-family="georgia">The Room Where it
                                Happens</text>
                            <text x="1450" y="20" text-anchor="end" transform="rotate(-45 1450, 0)"
                                style="font-size:17px" font-family="georgia">Schuyler
                                Defeated</text>
                            <text x="1500" y="20" text-anchor="end" transform="rotate(-45 1500, 0)"
                                style="font-size:17px" font-family="georgia">Cabinet Battle
                                #2</text>
                            <text x="1550" y="20" text-anchor="end" transform="rotate(-45 1550, 0)"
                                style="font-size:17px" font-family="georgia">Washington On Your
                                Side</text>
                            <text x="1600" y="20" text-anchor="end" transform="rotate(-45 1600, 0)"
                                style="font-size:17px" font-family="georgia">One Last Time</text>
                            <text x="1650" y="20" text-anchor="end" transform="rotate(-45 1650, 0)"
                                style="font-size:17px" font-family="georgia">I Know Him</text>
                            <text x="1700" y="20" text-anchor="end" transform="rotate(-45 1700, 0)"
                                style="font-size:17px" font-family="georgia">The Adams
                                Administration</text>
                            <text x="1750" y="20" text-anchor="end" transform="rotate(-45 1750, 0)"
                                style="font-size:17px" font-family="georgia">We Know</text>
                            <text x="1800" y="20" text-anchor="end" transform="rotate(-45 1800, 0)"
                                style="font-size:17px" font-family="georgia">Hurricane</text>
                            <text x="1850" y="20" text-anchor="end" transform="rotate(-45 1850, 0)"
                                style="font-size:17px" font-family="georgia">The Reynolds
                                Pamphlet</text>
                            <text x="1900" y="20" text-anchor="end" transform="rotate(-45 1900, 0)"
                                style="font-size:17px" font-family="georgia">Burn</text>
                            <text x="1950" y="20" text-anchor="end" transform="rotate(-45 1950, 0)"
                                style="font-size:17px" font-family="georgia">Blow Us All Away</text>
                            <text x="2000" y="20" text-anchor="end" transform="rotate(-45 2000, 0)"
                                style="font-size:17px" font-family="georgia">Stay Alive
                                (Reprise)</text>
                            <text x="2050" y="20" text-anchor="end" transform="rotate(-45 2050, 0)"
                                style="font-size:17px" font-family="georgia">It's Quiet
                                Uptown</text>
                            <text x="2100" y="20" text-anchor="end" transform="rotate(-45 2100, 0)"
                                style="font-size:17px" font-family="georgia">The Election of
                                1800</text>
                            <text x="2150" y="20" text-anchor="end" transform="rotate(-45 2150, 0)"
                                style="font-size:17px" font-family="georgia">Your Obedient
                                Servant</text>
                            <text x="2200" y="20" text-anchor="end" transform="rotate(-45 2200, 0)"
                                style="font-size:17px" font-family="georgia">Best of Wives and Best
                                of Women</text>
                            <text x="2250" y="20" text-anchor="end" transform="rotate(-45 2250, 0)"
                                style="font-size:17px" font-family="georgia">The World Was Wide
                                Enough</text>
                            <text x="2300" y="20" text-anchor="end" transform="rotate(-45 2300, 0)"
                                style="font-size:17px" font-family="georgia">Who Lives, Who Dies,
                                Who Tells Your Story</text>
                            <!--X-axis-->
                            <line x1="30" y1="0" x2="2350" y2="0" stroke="black" stroke-width="2"/>
                            <!--Y-axis-->
                            <line x1="30" y1="0" x2="30" y2="-500" stroke="black" stroke-width="2"/>
                            <text x="15" y="-100" text-anchor="middle">10</text>
                            <line x1="30" x2="2350" y1="-100" y2="-100" stroke="black"
                                stroke-width=".5" stroke-dasharray="10"/>
                            <text x="15" y="-200" text-anchor="middle">20</text>
                            <line x1="30" x2="2350" y1="-200" y2="-200" stroke="black"
                                stroke-width=".5" stroke-dasharray="10"/>
                            <text x="15" y="-300" text-anchor="middle">30</text>
                            <line x1="30" x2="2350" y1="-300" y2="-300" stroke="black"
                                stroke-width=".5" stroke-dasharray="10"/>
                            <text x="15" y="-400" text-anchor="middle">40</text>
                            <line x1="30" x2="2350" y1="-400" y2="-400" stroke="black"
                                stroke-width=".5" stroke-dasharray="10"/>
                            <text x="15" y="-500" text-anchor="middle">50</text>
                            <line x1="30" x2="2350" y1="-500" y2="-500" stroke="black"
                                stroke-width=".5" stroke-dasharray="10"/>
                            <text x="1150" y="-550" text-anchor="middle" style="font-size:30px"
                                font-family="georgia">Frequency of Phrases in Hamilton: An American
                                Musical</text>
                            <text x="-30" y="-250" text-anchor="middle"
                                style="font-size:25px;writing-mode:tb;" font-family="georgia">Count
                                of Repeated Phrase Per Song</text>
                            <text x="1150" y="250" text-anchor="middle" style="font-size:25px"
                                font-family="georgia">Song Titles</text>
                            <text x="25" y="175" style="font-size:25px" font-family="georgia"
                                >Legend:</text>
                            <text x="25" y="200" style="font-size:18px" font-family="georgia"
                                fill="red">My Shot</text>
                            <text x="125" y="200" style="font-size:18px" font-family="georgia"
                                fill="green">Wait</text>
                            <text x="225" y="200" style="font-size:18px" font-family="georgia"
                                fill="blue">Helpless</text>
                            <text x="25" y="225" style="font-size:18px" font-family="georgia"
                                fill="purple">Satisfied</text>
                            <text x="125" y="225" style="font-size:18px" font-family="georgia"
                                fill="teal">Rise (Up)</text>
                            <text x="225" y="225" style="font-size:18px" font-family="georgia"
                                fill="pink">Look Around</text>
                            <text x="25" y="250" style="font-size:18px" font-family="georgia"
                                fill="orange">Time</text>
                            <text x="125" y="250" style="font-size:18px" font-family="georgia"
                                fill="gold">Legacy</text>
                            <circle cx="50" cy="-0" r="3.5" fill="red"/>
                            <circle cx="50" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="50" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="50" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="50" cy="-70" r="3.5" fill="green"/>
                            <circle cx="50" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="50" cy="-10" r="3.5" fill="orange"/>
                            <circle cx="50" cy="-0" r="3.5" fill="pink"/>
                            <circle cx="100" cy="-0" r="3.5" fill="red"/>
                            <circle cx="100" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="100" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="100" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="100" cy="-0" r="3.5" fill="green"/>
                            <circle cx="100" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="100" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="100" cy="-0" r="3.5" fill="pink"/>
                            <line x1="50" y1="-0" x2="100" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="50" y1="-0" x2="100" y2="-0" stroke="purple" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="50" y1="-0" x2="100" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="50" y1="-0" x2="100" y2="-0" stroke="yellow" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="50" y1="-70" x2="100" y2="-0" stroke="green" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="50" y1="-0" x2="100" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="50" y1="-10" x2="100" y2="-0" stroke="orange" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="50" y1="-0" x2="100" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="150" cy="-430" r="3.5" fill="red"/>
                            <circle cx="150" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="150" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="150" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="150" cy="-0" r="3.5" fill="green"/>
                            <circle cx="150" cy="-170" r="3.5" fill="teal"/>
                            <circle cx="150" cy="-100" r="3.5" fill="orange"/>
                            <circle cx="150" cy="-0" r="3.5" fill="pink"/>
                            <line x1="100" y1="-0" x2="150" y2="-430" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="100" y1="-0" x2="150" y2="-0" stroke="purple" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="100" y1="-0" x2="150" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="100" y1="-0" x2="150" y2="-0" stroke="yellow" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="100" y1="-0" x2="150" y2="-0" stroke="green" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="100" y1="-0" x2="150" y2="-170" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="100" y1="-0" x2="150" y2="-100" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="100" y1="-0" x2="150" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="200" cy="-0" r="3.5" fill="red"/>
                            <circle cx="200" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="200" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="200" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="200" cy="-0" r="3.5" fill="green"/>
                            <circle cx="200" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="200" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="200" cy="-0" r="3.5" fill="pink"/>
                            <line x1="150" y1="-430" x2="200" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="150" y1="-0" x2="200" y2="-0" stroke="purple" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="150" y1="-0" x2="200" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="150" y1="-0" x2="200" y2="-0" stroke="yellow" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="150" y1="-0" x2="200" y2="-0" stroke="green" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="150" y1="-170" x2="200" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="150" y1="-100" x2="200" y2="-0" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="150" y1="-0" x2="200" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="250" cy="-0" r="3.5" fill="red"/>
                            <circle cx="250" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="250" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="250" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="250" cy="-0" r="3.5" fill="green"/>
                            <circle cx="250" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="250" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="250" cy="-160" r="3.5" fill="pink"/>
                            <line x1="200" y1="-0" x2="250" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="200" y1="-0" x2="250" y2="-0" stroke="purple" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="200" y1="-0" x2="250" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="200" y1="-0" x2="250" y2="-0" stroke="yellow" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="200" y1="-0" x2="250" y2="-0" stroke="green" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="200" y1="-0" x2="250" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="200" y1="-0" x2="250" y2="-0" stroke="orange" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="200" y1="-0" x2="250" y2="-160" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="300" cy="-0" r="3.5" fill="red"/>
                            <circle cx="300" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="300" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="300" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="300" cy="-0" r="3.5" fill="green"/>
                            <circle cx="300" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="300" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="300" cy="-0" r="3.5" fill="pink"/>
                            <line x1="250" y1="-0" x2="300" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="250" y1="-0" x2="300" y2="-0" stroke="purple" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="250" y1="-0" x2="300" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="250" y1="-0" x2="300" y2="-0" stroke="yellow" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="250" y1="-0" x2="300" y2="-0" stroke="green" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="250" y1="-0" x2="300" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="250" y1="-0" x2="300" y2="-0" stroke="orange" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="250" y1="-160" x2="300" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="350" cy="-0" r="3.5" fill="red"/>
                            <circle cx="350" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="350" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="350" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="350" cy="-0" r="3.5" fill="green"/>
                            <circle cx="350" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="350" cy="-10" r="3.5" fill="orange"/>
                            <circle cx="350" cy="-0" r="3.5" fill="pink"/>
                            <line x1="300" y1="-0" x2="350" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="300" y1="-0" x2="350" y2="-0" stroke="purple" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="300" y1="-0" x2="350" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="300" y1="-0" x2="350" y2="-0" stroke="yellow" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="300" y1="-0" x2="350" y2="-0" stroke="green" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="300" y1="-0" x2="350" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="300" y1="-0" x2="350" y2="-10" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="300" y1="-0" x2="350" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="400" cy="-30" r="3.5" fill="red"/>
                            <circle cx="400" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="400" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="400" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="400" cy="-0" r="3.5" fill="green"/>
                            <circle cx="400" cy="-80" r="3.5" fill="teal"/>
                            <circle cx="400" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="400" cy="-0" r="3.5" fill="pink"/>
                            <line x1="350" y1="-0" x2="400" y2="-30" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="350" y1="-0" x2="400" y2="-0" stroke="purple" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="350" y1="-0" x2="400" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="350" y1="-0" x2="400" y2="-0" stroke="yellow" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="350" y1="-0" x2="400" y2="-0" stroke="green" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="350" y1="-0" x2="400" y2="-80" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="350" y1="-10" x2="400" y2="-0" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="350" y1="-0" x2="400" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="450" cy="-0" r="3.5" fill="red"/>
                            <circle cx="450" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="450" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="450" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="450" cy="-0" r="3.5" fill="green"/>
                            <circle cx="450" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="450" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="450" cy="-0" r="3.5" fill="pink"/>
                            <line x1="400" y1="-30" x2="450" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="400" y1="-0" x2="450" y2="-0" stroke="purple" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="400" y1="-0" x2="450" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="400" y1="-0" x2="450" y2="-0" stroke="yellow" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="400" y1="-0" x2="450" y2="-0" stroke="green" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="400" y1="-80" x2="450" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="400" y1="-0" x2="450" y2="-0" stroke="orange" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="400" y1="-0" x2="450" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="500" cy="-0" r="3.5" fill="red"/>
                            <circle cx="500" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="500" cy="-230" r="3.5" fill="blue"/>
                            <circle cx="500" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="500" cy="-0" r="3.5" fill="green"/>
                            <circle cx="500" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="500" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="500" cy="-0" r="3.5" fill="pink"/>
                            <line x1="450" y1="-0" x2="500" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="450" y1="-0" x2="500" y2="-0" stroke="purple" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="450" y1="-0" x2="500" y2="-230" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="450" y1="-0" x2="500" y2="-0" stroke="yellow" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="450" y1="-0" x2="500" y2="-0" stroke="green" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="450" y1="-0" x2="500" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="450" y1="-0" x2="500" y2="-0" stroke="orange" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="450" y1="-0" x2="500" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="550" cy="-0" r="3.5" fill="red"/>
                            <circle cx="550" cy="-230" r="3.5" fill="purple"/>
                            <circle cx="550" cy="-30" r="3.5" fill="blue"/>
                            <circle cx="550" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="550" cy="-10" r="3.5" fill="green"/>
                            <circle cx="550" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="550" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="550" cy="-0" r="3.5" fill="pink"/>
                            <line x1="500" y1="-0" x2="550" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="500" y1="-0" x2="550" y2="-230" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="500" y1="-230" x2="550" y2="-30" stroke="blue"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="500" y1="-0" x2="550" y2="-0" stroke="yellow" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="500" y1="-0" x2="550" y2="-10" stroke="green" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="500" y1="-0" x2="550" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="500" y1="-0" x2="550" y2="-0" stroke="orange" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="500" y1="-0" x2="550" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="600" cy="-0" r="3.5" fill="red"/>
                            <circle cx="600" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="600" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="600" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="600" cy="-10" r="3.5" fill="green"/>
                            <circle cx="600" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="600" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="600" cy="-0" r="3.5" fill="pink"/>
                            <line x1="550" y1="-0" x2="600" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="550" y1="-230" x2="600" y2="-0" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="550" y1="-30" x2="600" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="550" y1="-0" x2="600" y2="-0" stroke="yellow" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="550" y1="-10" x2="600" y2="-10" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="550" y1="-0" x2="600" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="550" y1="-0" x2="600" y2="-0" stroke="orange" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="550" y1="-0" x2="600" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="650" cy="-0" r="3.5" fill="red"/>
                            <circle cx="650" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="650" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="650" cy="-10" r="3.5" fill="yellow"/>
                            <circle cx="650" cy="-390" r="3.5" fill="green"/>
                            <circle cx="650" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="650" cy="-40" r="3.5" fill="orange"/>
                            <circle cx="650" cy="-0" r="3.5" fill="pink"/>
                            <line x1="600" y1="-0" x2="650" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="600" y1="-0" x2="650" y2="-0" stroke="purple" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="600" y1="-0" x2="650" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="600" y1="-0" x2="650" y2="-10" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="600" y1="-10" x2="650" y2="-390" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="600" y1="-0" x2="650" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="600" y1="-0" x2="650" y2="-40" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="600" y1="-0" x2="650" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="700" cy="-10" r="3.5" fill="red"/>
                            <circle cx="700" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="700" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="700" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="700" cy="-0" r="3.5" fill="green"/>
                            <circle cx="700" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="700" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="700" cy="-0" r="3.5" fill="pink"/>
                            <line x1="650" y1="-0" x2="700" y2="-10" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="650" y1="-0" x2="700" y2="-0" stroke="purple" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="650" y1="-0" x2="700" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="650" y1="-10" x2="700" y2="-0" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="650" y1="-390" x2="700" y2="-0" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="650" y1="-0" x2="700" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="650" y1="-40" x2="700" y2="-0" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="650" y1="-0" x2="700" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="750" cy="-0" r="3.5" fill="red"/>
                            <circle cx="750" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="750" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="750" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="750" cy="-0" r="3.5" fill="green"/>
                            <circle cx="750" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="750" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="750" cy="-0" r="3.5" fill="pink"/>
                            <line x1="700" y1="-10" x2="750" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="700" y1="-0" x2="750" y2="-0" stroke="purple" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="700" y1="-0" x2="750" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="700" y1="-0" x2="750" y2="-0" stroke="yellow" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="700" y1="-0" x2="750" y2="-0" stroke="green" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="700" y1="-0" x2="750" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="700" y1="-0" x2="750" y2="-0" stroke="orange" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="700" y1="-0" x2="750" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="800" cy="-0" r="3.5" fill="red"/>
                            <circle cx="800" cy="-10" r="3.5" fill="purple"/>
                            <circle cx="800" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="800" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="800" cy="-0" r="3.5" fill="green"/>
                            <circle cx="800" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="800" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="800" cy="-0" r="3.5" fill="pink"/>
                            <line x1="750" y1="-0" x2="800" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="750" y1="-0" x2="800" y2="-10" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="750" y1="-0" x2="800" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="750" y1="-0" x2="800" y2="-0" stroke="yellow" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="750" y1="-0" x2="800" y2="-0" stroke="green" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="750" y1="-0" x2="800" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="750" y1="-0" x2="800" y2="-0" stroke="orange" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="750" y1="-0" x2="800" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="850" cy="-0" r="3.5" fill="red"/>
                            <circle cx="850" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="850" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="850" cy="-10" r="3.5" fill="yellow"/>
                            <circle cx="850" cy="-0" r="3.5" fill="green"/>
                            <circle cx="850" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="850" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="850" cy="-80" r="3.5" fill="pink"/>
                            <line x1="800" y1="-0" x2="850" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="800" y1="-10" x2="850" y2="-0" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="800" y1="-0" x2="850" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="800" y1="-0" x2="850" y2="-10" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="800" y1="-0" x2="850" y2="-0" stroke="green" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="800" y1="-0" x2="850" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="800" y1="-0" x2="850" y2="-0" stroke="orange" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="800" y1="-0" x2="850" y2="-80" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="900" cy="-0" r="3.5" fill="red"/>
                            <circle cx="900" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="900" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="900" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="900" cy="-0" r="3.5" fill="green"/>
                            <circle cx="900" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="900" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="900" cy="-0" r="3.5" fill="pink"/>
                            <line x1="850" y1="-0" x2="900" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="850" y1="-0" x2="900" y2="-0" stroke="purple" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="850" y1="-0" x2="900" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="850" y1="-10" x2="900" y2="-0" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="850" y1="-0" x2="900" y2="-0" stroke="green" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="850" y1="-0" x2="900" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="850" y1="-0" x2="900" y2="-0" stroke="orange" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="850" y1="-80" x2="900" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="950" cy="-0" r="3.5" fill="red"/>
                            <circle cx="950" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="950" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="950" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="950" cy="-0" r="3.5" fill="green"/>
                            <circle cx="950" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="950" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="950" cy="-0" r="3.5" fill="pink"/>
                            <line x1="900" y1="-0" x2="950" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="900" y1="-0" x2="950" y2="-0" stroke="purple" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="900" y1="-0" x2="950" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="900" y1="-0" x2="950" y2="-0" stroke="yellow" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="900" y1="-0" x2="950" y2="-0" stroke="green" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="900" y1="-0" x2="950" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="900" y1="-0" x2="950" y2="-0" stroke="orange" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="900" y1="-0" x2="950" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="1000" cy="-40" r="3.5" fill="red"/>
                            <circle cx="1000" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="1000" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="1000" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="1000" cy="-0" r="3.5" fill="green"/>
                            <circle cx="1000" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="1000" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="1000" cy="-0" r="3.5" fill="pink"/>
                            <line x1="950" y1="-0" x2="1000" y2="-40" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="950" y1="-0" x2="1000" y2="-0" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="950" y1="-0" x2="1000" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="950" y1="-0" x2="1000" y2="-0" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="950" y1="-0" x2="1000" y2="-0" stroke="green" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="950" y1="-0" x2="1000" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="950" y1="-0" x2="1000" y2="-0" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="950" y1="-0" x2="1000" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="1050" cy="-0" r="3.5" fill="red"/>
                            <circle cx="1050" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="1050" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="1050" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="1050" cy="-0" r="3.5" fill="green"/>
                            <circle cx="1050" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="1050" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="1050" cy="-0" r="3.5" fill="pink"/>
                            <line x1="1000" y1="-40" x2="1050" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="1000" y1="-0" x2="1050" y2="-0" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1000" y1="-0" x2="1050" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1000" y1="-0" x2="1050" y2="-0" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1000" y1="-0" x2="1050" y2="-0" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1000" y1="-0" x2="1050" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1000" y1="-0" x2="1050" y2="-0" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1000" y1="-0" x2="1050" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="1100" cy="-0" r="3.5" fill="red"/>
                            <circle cx="1100" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="1100" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="1100" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="1100" cy="-0" r="3.5" fill="green"/>
                            <circle cx="1100" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="1100" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="1100" cy="-0" r="3.5" fill="pink"/>
                            <line x1="1050" y1="-0" x2="1100" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="1050" y1="-0" x2="1100" y2="-0" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1050" y1="-0" x2="1100" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1050" y1="-0" x2="1100" y2="-0" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1050" y1="-0" x2="1100" y2="-0" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1050" y1="-0" x2="1100" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1050" y1="-0" x2="1100" y2="-0" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1050" y1="-0" x2="1100" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="1150" cy="-30" r="3.5" fill="red"/>
                            <circle cx="1150" cy="-80" r="3.5" fill="purple"/>
                            <circle cx="1150" cy="-10" r="3.5" fill="blue"/>
                            <circle cx="1150" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="1150" cy="-70" r="3.5" fill="green"/>
                            <circle cx="1150" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="1150" cy="-110" r="3.5" fill="orange"/>
                            <circle cx="1150" cy="-100" r="3.5" fill="pink"/>
                            <line x1="1100" y1="-0" x2="1150" y2="-30" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="1100" y1="-0" x2="1150" y2="-80" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1100" y1="-0" x2="1150" y2="-10" stroke="blue"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1100" y1="-0" x2="1150" y2="-0" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1100" y1="-0" x2="1150" y2="-70" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1100" y1="-0" x2="1150" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1100" y1="-0" x2="1150" y2="-110" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1100" y1="-0" x2="1150" y2="-100" stroke="pink"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <circle cx="1200" cy="-0" r="3.5" fill="red"/>
                            <circle cx="1200" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="1200" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="1200" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="1200" cy="-0" r="3.5" fill="green"/>
                            <circle cx="1200" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="1200" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="1200" cy="-0" r="3.5" fill="pink"/>
                            <line x1="1150" y1="-30" x2="1200" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="1150" y1="-80" x2="1200" y2="-0" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1150" y1="-10" x2="1200" y2="-0" stroke="blue"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1150" y1="-0" x2="1200" y2="-0" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1150" y1="-70" x2="1200" y2="-0" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1150" y1="-0" x2="1200" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1150" y1="-110" x2="1200" y2="-0" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1150" y1="-100" x2="1200" y2="-0" stroke="pink"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <circle cx="1250" cy="-0" r="3.5" fill="red"/>
                            <circle cx="1250" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="1250" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="1250" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="1250" cy="-0" r="3.5" fill="green"/>
                            <circle cx="1250" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="1250" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="1250" cy="-0" r="3.5" fill="pink"/>
                            <line x1="1200" y1="-0" x2="1250" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="1200" y1="-0" x2="1250" y2="-0" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1200" y1="-0" x2="1250" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1200" y1="-0" x2="1250" y2="-0" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1200" y1="-0" x2="1250" y2="-0" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1200" y1="-0" x2="1250" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1200" y1="-0" x2="1250" y2="-0" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1200" y1="-0" x2="1250" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="1300" cy="-0" r="3.5" fill="red"/>
                            <circle cx="1300" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="1300" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="1300" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="1300" cy="-30" r="3.5" fill="green"/>
                            <circle cx="1300" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="1300" cy="-10" r="3.5" fill="orange"/>
                            <circle cx="1300" cy="-20" r="3.5" fill="pink"/>
                            <line x1="1250" y1="-0" x2="1300" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="1250" y1="-0" x2="1300" y2="-0" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1250" y1="-0" x2="1300" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1250" y1="-0" x2="1300" y2="-0" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1250" y1="-0" x2="1300" y2="-30" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1250" y1="-0" x2="1300" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1250" y1="-0" x2="1300" y2="-10" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1250" y1="-0" x2="1300" y2="-20" stroke="pink"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <circle cx="1350" cy="-0" r="3.5" fill="red"/>
                            <circle cx="1350" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="1350" cy="-40" r="3.5" fill="blue"/>
                            <circle cx="1350" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="1350" cy="-0" r="3.5" fill="green"/>
                            <circle cx="1350" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="1350" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="1350" cy="-0" r="3.5" fill="pink"/>
                            <line x1="1300" y1="-0" x2="1350" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="1300" y1="-0" x2="1350" y2="-0" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1300" y1="-0" x2="1350" y2="-40" stroke="blue"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1300" y1="-0" x2="1350" y2="-0" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1300" y1="-30" x2="1350" y2="-0" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1300" y1="-0" x2="1350" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1300" y1="-10" x2="1350" y2="-0" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1300" y1="-20" x2="1350" y2="-0" stroke="pink"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <circle cx="1400" cy="-0" r="3.5" fill="red"/>
                            <circle cx="1400" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="1400" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="1400" cy="-10" r="3.5" fill="yellow"/>
                            <circle cx="1400" cy="-30" r="3.5" fill="green"/>
                            <circle cx="1400" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="1400" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="1400" cy="-0" r="3.5" fill="pink"/>
                            <line x1="1350" y1="-0" x2="1400" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="1350" y1="-0" x2="1400" y2="-0" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1350" y1="-40" x2="1400" y2="-0" stroke="blue"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1350" y1="-0" x2="1400" y2="-10" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1350" y1="-0" x2="1400" y2="-30" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1350" y1="-0" x2="1400" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1350" y1="-0" x2="1400" y2="-0" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1350" y1="-0" x2="1400" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="1450" cy="-0" r="3.5" fill="red"/>
                            <circle cx="1450" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="1450" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="1450" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="1450" cy="-10" r="3.5" fill="green"/>
                            <circle cx="1450" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="1450" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="1450" cy="-0" r="3.5" fill="pink"/>
                            <line x1="1400" y1="-0" x2="1450" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="1400" y1="-0" x2="1450" y2="-0" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1400" y1="-0" x2="1450" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1400" y1="-10" x2="1450" y2="-0" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1400" y1="-30" x2="1450" y2="-10" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1400" y1="-0" x2="1450" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1400" y1="-0" x2="1450" y2="-0" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1400" y1="-0" x2="1450" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="1500" cy="-0" r="3.5" fill="red"/>
                            <circle cx="1500" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="1500" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="1500" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="1500" cy="-0" r="3.5" fill="green"/>
                            <circle cx="1500" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="1500" cy="-10" r="3.5" fill="orange"/>
                            <circle cx="1500" cy="-0" r="3.5" fill="pink"/>
                            <line x1="1450" y1="-0" x2="1500" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="1450" y1="-0" x2="1500" y2="-0" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1450" y1="-0" x2="1500" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1450" y1="-0" x2="1500" y2="-0" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1450" y1="-10" x2="1500" y2="-0" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1450" y1="-0" x2="1500" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1450" y1="-0" x2="1500" y2="-10" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1450" y1="-0" x2="1500" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="1550" cy="-0" r="3.5" fill="red"/>
                            <circle cx="1550" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="1550" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="1550" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="1550" cy="-0" r="3.5" fill="green"/>
                            <circle cx="1550" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="1550" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="1550" cy="-0" r="3.5" fill="pink"/>
                            <line x1="1500" y1="-0" x2="1550" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="1500" y1="-0" x2="1550" y2="-0" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1500" y1="-0" x2="1550" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1500" y1="-0" x2="1550" y2="-0" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1500" y1="-0" x2="1550" y2="-0" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1500" y1="-0" x2="1550" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1500" y1="-10" x2="1550" y2="-0" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1500" y1="-0" x2="1550" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="1600" cy="-0" r="3.5" fill="red"/>
                            <circle cx="1600" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="1600" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="1600" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="1600" cy="-0" r="3.5" fill="green"/>
                            <circle cx="1600" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="1600" cy="-90" r="3.5" fill="orange"/>
                            <circle cx="1600" cy="-0" r="3.5" fill="pink"/>
                            <line x1="1550" y1="-0" x2="1600" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="1550" y1="-0" x2="1600" y2="-0" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1550" y1="-0" x2="1600" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1550" y1="-0" x2="1600" y2="-0" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1550" y1="-0" x2="1600" y2="-0" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1550" y1="-0" x2="1600" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1550" y1="-0" x2="1600" y2="-90" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1550" y1="-0" x2="1600" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="1650" cy="-0" r="3.5" fill="red"/>
                            <circle cx="1650" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="1650" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="1650" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="1650" cy="-0" r="3.5" fill="green"/>
                            <circle cx="1650" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="1650" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="1650" cy="-0" r="3.5" fill="pink"/>
                            <line x1="1600" y1="-0" x2="1650" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="1600" y1="-0" x2="1650" y2="-0" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1600" y1="-0" x2="1650" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1600" y1="-0" x2="1650" y2="-0" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1600" y1="-0" x2="1650" y2="-0" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1600" y1="-0" x2="1650" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1600" y1="-90" x2="1650" y2="-0" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1600" y1="-0" x2="1650" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="1700" cy="-0" r="3.5" fill="red"/>
                            <circle cx="1700" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="1700" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="1700" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="1700" cy="-0" r="3.5" fill="green"/>
                            <circle cx="1700" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="1700" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="1700" cy="-0" r="3.5" fill="pink"/>
                            <line x1="1650" y1="-0" x2="1700" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="1650" y1="-0" x2="1700" y2="-0" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1650" y1="-0" x2="1700" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1650" y1="-0" x2="1700" y2="-0" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1650" y1="-0" x2="1700" y2="-0" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1650" y1="-0" x2="1700" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1650" y1="-0" x2="1700" y2="-0" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1650" y1="-0" x2="1700" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="1750" cy="-0" r="3.5" fill="red"/>
                            <circle cx="1750" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="1750" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="1750" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="1750" cy="-0" r="3.5" fill="green"/>
                            <circle cx="1750" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="1750" cy="-10" r="3.5" fill="orange"/>
                            <circle cx="1750" cy="-0" r="3.5" fill="pink"/>
                            <line x1="1700" y1="-0" x2="1750" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="1700" y1="-0" x2="1750" y2="-0" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1700" y1="-0" x2="1750" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1700" y1="-0" x2="1750" y2="-0" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1700" y1="-0" x2="1750" y2="-0" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1700" y1="-0" x2="1750" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1700" y1="-0" x2="1750" y2="-10" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1700" y1="-0" x2="1750" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="1800" cy="-0" r="3.5" fill="red"/>
                            <circle cx="1800" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="1800" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="1800" cy="-10" r="3.5" fill="yellow"/>
                            <circle cx="1800" cy="-140" r="3.5" fill="green"/>
                            <circle cx="1800" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="1800" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="1800" cy="-0" r="3.5" fill="pink"/>
                            <line x1="1750" y1="-0" x2="1800" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="1750" y1="-0" x2="1800" y2="-0" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1750" y1="-0" x2="1800" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1750" y1="-0" x2="1800" y2="-10" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1750" y1="-0" x2="1800" y2="-140" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1750" y1="-0" x2="1800" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1750" y1="-10" x2="1800" y2="-0" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1750" y1="-0" x2="1800" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="1850" cy="-0" r="3.5" fill="red"/>
                            <circle cx="1850" cy="-20" r="3.5" fill="purple"/>
                            <circle cx="1850" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="1850" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="1850" cy="-0" r="3.5" fill="green"/>
                            <circle cx="1850" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="1850" cy="-20" r="3.5" fill="orange"/>
                            <circle cx="1850" cy="-0" r="3.5" fill="pink"/>
                            <line x1="1800" y1="-0" x2="1850" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="1800" y1="-0" x2="1850" y2="-20" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1800" y1="-0" x2="1850" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1800" y1="-10" x2="1850" y2="-0" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1800" y1="-140" x2="1850" y2="-0" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1800" y1="-0" x2="1850" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1800" y1="-0" x2="1850" y2="-20" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1800" y1="-0" x2="1850" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="1900" cy="-0" r="3.5" fill="red"/>
                            <circle cx="1900" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="1900" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="1900" cy="-10" r="3.5" fill="yellow"/>
                            <circle cx="1900" cy="-0" r="3.5" fill="green"/>
                            <circle cx="1900" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="1900" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="1900" cy="-0" r="3.5" fill="pink"/>
                            <line x1="1850" y1="-0" x2="1900" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="1850" y1="-20" x2="1900" y2="-0" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1850" y1="-0" x2="1900" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1850" y1="-0" x2="1900" y2="-10" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1850" y1="-0" x2="1900" y2="-0" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1850" y1="-0" x2="1900" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1850" y1="-20" x2="1900" y2="-0" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1850" y1="-0" x2="1900" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="1950" cy="-0" r="3.5" fill="red"/>
                            <circle cx="1950" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="1950" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="1950" cy="-20" r="3.5" fill="yellow"/>
                            <circle cx="1950" cy="-0" r="3.5" fill="green"/>
                            <circle cx="1950" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="1950" cy="-10" r="3.5" fill="orange"/>
                            <circle cx="1950" cy="-0" r="3.5" fill="pink"/>
                            <line x1="1900" y1="-0" x2="1950" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="1900" y1="-0" x2="1950" y2="-0" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1900" y1="-0" x2="1950" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1900" y1="-10" x2="1950" y2="-20" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1900" y1="-0" x2="1950" y2="-0" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1900" y1="-0" x2="1950" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1900" y1="-0" x2="1950" y2="-10" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1900" y1="-0" x2="1950" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="2000" cy="-0" r="3.5" fill="red"/>
                            <circle cx="2000" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="2000" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="2000" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="2000" cy="-0" r="3.5" fill="green"/>
                            <circle cx="2000" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="2000" cy="-10" r="3.5" fill="orange"/>
                            <circle cx="2000" cy="-0" r="3.5" fill="pink"/>
                            <line x1="1950" y1="-0" x2="2000" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="1950" y1="-0" x2="2000" y2="-0" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1950" y1="-0" x2="2000" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1950" y1="-20" x2="2000" y2="-0" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1950" y1="-0" x2="2000" y2="-0" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1950" y1="-0" x2="2000" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="1950" y1="-10" x2="2000" y2="-10" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="1950" y1="-0" x2="2000" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="2050" cy="-0" r="3.5" fill="red"/>
                            <circle cx="2050" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="2050" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="2050" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="2050" cy="-0" r="3.5" fill="green"/>
                            <circle cx="2050" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="2050" cy="-10" r="3.5" fill="orange"/>
                            <circle cx="2050" cy="-20" r="3.5" fill="pink"/>
                            <line x1="2000" y1="-0" x2="2050" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="2000" y1="-0" x2="2050" y2="-0" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="2000" y1="-0" x2="2050" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="2000" y1="-0" x2="2050" y2="-0" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="2000" y1="-0" x2="2050" y2="-0" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="2000" y1="-0" x2="2050" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="2000" y1="-10" x2="2050" y2="-10" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="2000" y1="-0" x2="2050" y2="-20" stroke="pink"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <circle cx="2100" cy="-0" r="3.5" fill="red"/>
                            <circle cx="2100" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="2100" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="2100" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="2100" cy="-0" r="3.5" fill="green"/>
                            <circle cx="2100" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="2100" cy="-0" r="3.5" fill="orange"/>
                            <circle cx="2100" cy="-0" r="3.5" fill="pink"/>
                            <line x1="2050" y1="-0" x2="2100" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="2050" y1="-0" x2="2100" y2="-0" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="2050" y1="-0" x2="2100" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="2050" y1="-0" x2="2100" y2="-0" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="2050" y1="-0" x2="2100" y2="-0" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="2050" y1="-0" x2="2100" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="2050" y1="-10" x2="2100" y2="-0" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="2050" y1="-20" x2="2100" y2="-0" stroke="pink"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <circle cx="2150" cy="-0" r="3.5" fill="red"/>
                            <circle cx="2150" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="2150" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="2150" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="2150" cy="-0" r="3.5" fill="green"/>
                            <circle cx="2150" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="2150" cy="-10" r="3.5" fill="orange"/>
                            <circle cx="2150" cy="-0" r="3.5" fill="pink"/>
                            <line x1="2100" y1="-0" x2="2150" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="2100" y1="-0" x2="2150" y2="-0" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="2100" y1="-0" x2="2150" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="2100" y1="-0" x2="2150" y2="-0" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="2100" y1="-0" x2="2150" y2="-0" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="2100" y1="-0" x2="2150" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="2100" y1="-0" x2="2150" y2="-10" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="2100" y1="-0" x2="2150" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="2200" cy="-0" r="3.5" fill="red"/>
                            <circle cx="2200" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="2200" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="2200" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="2200" cy="-0" r="3.5" fill="green"/>
                            <circle cx="2200" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="2200" cy="-10" r="3.5" fill="orange"/>
                            <circle cx="2200" cy="-0" r="3.5" fill="pink"/>
                            <line x1="2150" y1="-0" x2="2200" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="2150" y1="-0" x2="2200" y2="-0" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="2150" y1="-0" x2="2200" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="2150" y1="-0" x2="2200" y2="-0" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="2150" y1="-0" x2="2200" y2="-0" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="2150" y1="-0" x2="2200" y2="-0" stroke="teal" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="2150" y1="-10" x2="2200" y2="-10" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="2150" y1="-0" x2="2200" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="2250" cy="-10" r="3.5" fill="red"/>
                            <circle cx="2250" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="2250" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="2250" cy="-30" r="3.5" fill="yellow"/>
                            <circle cx="2250" cy="-10" r="3.5" fill="green"/>
                            <circle cx="2250" cy="-30" r="3.5" fill="teal"/>
                            <circle cx="2250" cy="-30" r="3.5" fill="orange"/>
                            <circle cx="2250" cy="-0" r="3.5" fill="pink"/>
                            <line x1="2200" y1="-0" x2="2250" y2="-10" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="2200" y1="-0" x2="2250" y2="-0" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="2200" y1="-0" x2="2250" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="2200" y1="-0" x2="2250" y2="-30" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="2200" y1="-0" x2="2250" y2="-10" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="2200" y1="-0" x2="2250" y2="-30" stroke="teal"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="2200" y1="-10" x2="2250" y2="-30" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="2200" y1="-0" x2="2250" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <circle cx="2300" cy="-0" r="3.5" fill="red"/>
                            <circle cx="2300" cy="-0" r="3.5" fill="purple"/>
                            <circle cx="2300" cy="-0" r="3.5" fill="blue"/>
                            <circle cx="2300" cy="-0" r="3.5" fill="yellow"/>
                            <circle cx="2300" cy="-0" r="3.5" fill="green"/>
                            <circle cx="2300" cy="-0" r="3.5" fill="teal"/>
                            <circle cx="2300" cy="-120" r="3.5" fill="orange"/>
                            <circle cx="2300" cy="-0" r="3.5" fill="pink"/>
                            <line x1="2250" y1="-10" x2="2300" y2="-0" stroke="red" stroke-width="3"
                                stroke-opacity="0.5"/>
                            <line x1="2250" y1="-0" x2="2300" y2="-0" stroke="purple"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="2250" y1="-0" x2="2300" y2="-0" stroke="blue" stroke-width="2"
                                stroke-opacity="0.5"/>
                            <line x1="2250" y1="-30" x2="2300" y2="-0" stroke="yellow"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="2250" y1="-10" x2="2300" y2="-0" stroke="green"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="2250" y1="-30" x2="2300" y2="-0" stroke="teal"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="2250" y1="-30" x2="2300" y2="-120" stroke="orange"
                                stroke-width="2" stroke-opacity="0.5"/>
                            <line x1="2250" y1="-0" x2="2300" y2="-0" stroke="pink" stroke-width="2"
                                stroke-opacity="0.5"/>
                        </g>
                    </svg>
                </div>
                <div class="main">
                    <div class="main2">
                        <h2>Table</h2>
                        <table>
                           <tr>
                               <th></th>
                               <th>My Shot</th>
                               <th>Wait</th>
                               <th>Helpless</th>
                               <th>Satisfied</th>
                               <th>Rise (Up)</th>
                               <th>Look Around</th>
                               <th>Time</th>
                               <th>Legacy</th>
                           </tr>
                            <xsl:for-each select="$hamiltonColl">
                                <xsl:variable name="pos" as="xs:integer" select="position()"/>
                                <xsl:variable name="shot" select="count(descendant::text//phr[@type='#shot'])"/>
                                <xsl:variable name="satisfied" select="count(descendant::text//phr[@type='#satisfied'])"/>
                                <xsl:variable name="helpless" select="count(descendant::text//phr[@type='#helpless'])"/>
                                <xsl:variable name="legacy" select="count(descendant::text//phr[@type='#legacy'])"/>
                                <xsl:variable name="wait" select="count(descendant::text//phr[@type='#wait'])"/>
                                <xsl:variable name="rise" select="count(descendant::text//phr[@type='#rise'])"/>
                                <xsl:variable name="time" select="count(descendant::text//phr[@type='#time'])"/>
                                <xsl:variable name="look" select="count(descendant::text//phr[@type='#look'])"/>
                                <tr>
                                    <th><xsl:apply-templates select="//text//title"/></th>
                                    <td><xsl:apply-templates select="$shot"/></td>
                                    <td><xsl:apply-templates select="$wait"/></td>
                                    <td><xsl:apply-templates select="$helpless"/></td>
                                    <td><xsl:apply-templates select="$satisfied"/></td>
                                    <td><xsl:apply-templates select="$rise"/></td>
                                    <td><xsl:apply-templates select="$look"/></td>
                                    <td><xsl:apply-templates select="$time"/></td>
                                    <td><xsl:apply-templates select="$legacy"/></td>
                                </tr>
                            </xsl:for-each>
                            <tr>
                                <th>Total:</th>
                                <td><xsl:apply-templates select="count($hamiltonColl/descendant::text//phr[@type='#shot'])"/></td>
                                <td><xsl:apply-templates select="count($hamiltonColl/descendant::text//phr[@type='#wait'])"/></td>
                                <td><xsl:apply-templates select="count($hamiltonColl/descendant::text//phr[@type='#helpless'])"/></td>
                                <td><xsl:apply-templates select="count($hamiltonColl/descendant::text//phr[@type='#satisfied'])"/></td>
                                <td><xsl:apply-templates select="count($hamiltonColl/descendant::text//phr[@type='#rise'])"/></td>
                                <td><xsl:apply-templates select="count($hamiltonColl/descendant::text//phr[@type='#look'])"/></td>
                                <td><xsl:apply-templates select="count($hamiltonColl/descendant::text//phr[@type='#time'])"/></td>
                                <td><xsl:apply-templates select="count($hamiltonColl/descendant::text//phr[@type='#legacy'])"/></td>
                            </tr>
                        </table>
                        
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
