<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:date="http://exslt.org/dates-and-times"
                version="1.0">

    <xsl:import href="examples/defaults/exslt-functions-support-module.xsl"/>

    <xsl:output method="html" indent="yes" doctype-public="about:legacy-doctype"/>

    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="body/section">
        <xsl:copy>
            <xsl:apply-templates/>
            <xsl:apply-imports/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/">
        <xsl:copy>
            <xsl:apply-templates/>
            <xsl:comment>Run with <xsl:value-of select="system-property('xsl:vendor')"/> at <xsl:value-of select="date:date-time()"/></xsl:comment>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>