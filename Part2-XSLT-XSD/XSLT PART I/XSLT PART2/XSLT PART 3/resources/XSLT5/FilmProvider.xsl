<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/films">
    <html>
    <head>
        <title>Films</title>
    </head>
    <body>
    <h1>Films</h1>
    <table>
    <thead>
        <tr>
            <th>Titre</th>
            <th>Résumé</th>
            <th>Réalisé par</th>
        </tr>
    </thead>
        <tbody>
            <xsl:apply-templates select="film"/>
        </tbody>
    </table>
    </body>
    </html>
    </xsl:template>
    <xsl:template match="film">
        <xsl:for-each select="films/film" order-by="+date">
            <tr>
                <td><b><xsl:value-of select="titre"/></b>
                    <i><xsl:value-of select="nom"/>,<xsl:value-of select="prenom"/></i></td>
                <td><xsl:value-of select="resume/text"/></td>
            </tr>
        </xsl:for-each>
    </xsl:template>

    <xsl:template match="realisateur">
        <xsl:value-of select="prenom"/><xsl:text> </xsl:text><xsl:value-of select="nom"/>
    </xsl:template>

</xsl:stylesheet>