<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <RecipeBook>
            <xsl:for-each select="/RecipeBook/Recipe">
                <xsl:sort select="@calories" data-type="number" order="descending"/>
                <Recipe>
                    <h3 style="margin-bottom: 0.4rem;">
                        <xsl:value-of select="./Type"/><xsl:text> </xsl:text>
                        <xsl:value-of select="./Name"/>
                    </h3>
                    <p style="margin-top: 0.4rem;">
                        <xsl:value-of select="./@calories"/><xsl:text> каллорий</xsl:text><xsl:text> </xsl:text>
                    </p>
                    <p style="margin-top: 0.4rem;">
                        <xsl:value-of select="./Weight"/><xsl:text> грамм</xsl:text>
                    </p>
                    <p style="margin-top: 0.4rem;">
                        <xsl:text>Рецепт:</xsl:text><xsl:text> </xsl:text>
                        <xsl:value-of select="./RecipeText"/>
                    </p>
                    <p style="margin-top: 0.4rem;">
                        <xsl:text>Ингредиенты:</xsl:text><xsl:text> </xsl:text>
                        <xsl:value-of select="./Ingredient1"/><xsl:text>, </xsl:text>
                        <xsl:value-of select="./Ingredient2"/><xsl:text>, </xsl:text>
                        <xsl:value-of select="./Ingredient3"/>
                    </p>
                </Recipe>
            </xsl:for-each>
        </RecipeBook>
    </xsl:template>
</xsl:stylesheet>

