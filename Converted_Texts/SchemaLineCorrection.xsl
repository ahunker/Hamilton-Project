<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.tei-c.org/ns/1.0"
    version="3.0">
    <xsl:template match="processing-instruction()">
        <xsl:processing-instruction name="xml-model">
    <xsl:text>href="../../../ODD/out/hamiltonODD.rng" type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"</xsl:text>
  </xsl:processing-instruction>
        <xsl:processing-instruction name="xml-model">
    <xsl:text>href="../../../ODD/out/hamiltonODD.rng" type="application/xml" schematypens="http://purl.oclc.org/dsdl/schematron"</xsl:text>
  </xsl:processing-instruction> 
    
    </xsl:template>
    <xsl:mode on-no-match="shallow-copy"/>

</xsl:stylesheet>