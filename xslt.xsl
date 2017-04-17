<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="text"/>
	<xsl:template match="/">
    [
	<xsl:for-each select="nastaveni">
	"nastaveni": {
            <xsl:for-each select="hrac">
		"Hrac": {
			"Uzivatel": "<xsl:value-of select="uzivatel"/>",
			"Obtiznost": "<xsl:value-of select="obtiznost"/>",	
                        }
            </xsl:for-each>,
            
            <xsl:for-each select="obecne">
		"Obecne": {
			"Rezim": "<xsl:value-of select="rezim"/>",
			"Jazyk": "<xsl:value-of select="jazyk"/>",
                        "Titulky": "<xsl:value-of select="titulky/@hodnota"/>",
                        "Jazyk titulku": "<xsl:value-of select="jazykTitulky"/>",
                        "Ukazky": "<xsl:value-of select="ukazky/@hodnota"/>",
                        "Automaticke ukladani": "<xsl:value-of select="automatickeUkladani/@hodnota"/>",	
                        }
            </xsl:for-each>,
            
            <xsl:for-each select="grafika">
		"Grafika": {
			"Rozliseni": "<xsl:value-of select="rozliseni"/>",
			"Jas": "<xsl:value-of select="jas"/>",
                        "Kontrast": "<xsl:value-of select="kontrast"/>",
                        "Kvalita textur": "<xsl:value-of select="kvalitaTextur"/>",
                        "Nasviceni prostredi": "<xsl:value-of select="nasviceniProstredi"/>",
                        "Kvalita stinu": "<xsl:value-of select="kvalitaStinu"/>",
                        "Kvality vody": "<xsl:value-of select="kvalityVody"/>",
                        "Kvalita prostredí": "<xsl:value-of select="kvalitaProstredí"/>",	
                        }
            </xsl:for-each>,  
            
            <xsl:for-each select="zvuk">
		"Zvuk": {
			"Celkova hlasitost": "<xsl:value-of select="celkovaHlasitost"/>",
			"Hudba": "<xsl:value-of select="hudba"/>",
                        "Kontrast": "<xsl:value-of select="kontrast"/>",	
                        }
            </xsl:for-each>,
            
            <xsl:for-each select="ovladani">
		"Ovladani": {
			"Vstup": "<xsl:value-of select="vstup"/>",
			"Citlivost": "<xsl:value-of select="citlivost"/>",	
                        }
            </xsl:for-each>,
        </xsl:for-each> 
      ]      
    </xsl:template>

</xsl:stylesheet>
