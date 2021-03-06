<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    exclude-result-prefixes="xs xsi"
    version="3.0">
    
    <!-- identify the author of the change by means of a @xml:id -->
    <xsl:param name="p_id-editor" select="'pers_TG'"/>
    <xsl:param name="p_editor">
        <tei:respStmt xml:lang="en">
            <tei:resp>TEI edition</tei:resp>
            <tei:persName xml:id="pers_TG"><tei:forename>Till</tei:forename> <tei:surname>Grallert</tei:surname></tei:persName>
        </tei:respStmt>
    </xsl:param>
    
    <!-- toggle debugging (not available in all stylesheets) -->
    <xsl:param name="p_verbose" select="false()"/>
    
    <!-- generate an id for the most recent change -->
    <xsl:param name="p_id-change" select="generate-id(//tei:change[last()])"/>
    <!-- ID for the standard print edition -->
    <xsl:param name="p_id-print-edition" select="'#edition_1'"/>
    
</xsl:stylesheet>