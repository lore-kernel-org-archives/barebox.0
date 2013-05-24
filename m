Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ufla6-0006ZR-Oa
 for barebox@lists.infradead.org; Fri, 24 May 2013 06:34:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 24 May 2013 08:34:00 +0200
Message-Id: <1369377242-23493-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369377242-23493-1-git-send-email-s.hauer@pengutronix.de>
References: <1369377242-23493-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] ARM: Makefile: Make sure to clean boarddirs
To: barebox@lists.infradead.org

On ARM the boarddirs are only cleaned due to the regular file
pattern search, but are not explicitly cleaned. This makes
it impossible to clean files which are not matched by a pattern
but have to be explicitly cleaned due to adding them to extra-y.

This patch changes the board-/board-y variables to += so that
we can use $(board-) to add it to common-. This way the board
directories are also cleaned.

While touching the board-y variables anyway order them
alphabetically.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile | 192 +++++++++++++++++++++++++++---------------------------
 1 file changed, 97 insertions(+), 95 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index d506b12..2deec6c 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -70,101 +70,101 @@ machine-$(CONFIG_ARCH_ZYNQ)		:= zynq
 
 # Board directory name.  This list is sorted alphanumerically
 # by CONFIG_* macro name.
-board-$(CONFIG_MACH_A9M2410)			:= a9m2410
-board-$(CONFIG_MACH_A9M2440)			:= a9m2440
-board-$(CONFIG_MACH_ANIMEO_IP)			:= animeo_ip
-board-$(CONFIG_MACH_AT91RM9200EK)		:= at91rm9200ek
-board-$(CONFIG_MACH_AT91SAM9260EK)		:= at91sam9260ek
-board-$(CONFIG_MACH_AT91SAM9261EK)		:= at91sam9261ek
-board-$(CONFIG_MACH_AT91SAM9263EK)		:= at91sam9263ek
-board-$(CONFIG_MACH_AT91SAM9G10EK)		:= at91sam9261ek
-board-$(CONFIG_MACH_AT91SAM9G20EK)		:= at91sam9260ek
-board-$(CONFIG_MACH_AT91SAM9N12EK)		:= at91sam9n12ek
-board-$(CONFIG_MACH_AT91SAM9X5EK)		:= at91sam9x5ek
-board-$(CONFIG_MACH_AT91SAM9M10IHD)		:= at91sam9m10ihd
-board-$(CONFIG_MACH_AT91SAM9M10G45EK)		:= at91sam9m10g45ek
-board-$(CONFIG_MACH_SAMA5D3XEK)			:= sama5d3xek
-board-$(CONFIG_MACH_CLEP7212)			:= clep7212
-board-$(CONFIG_MACH_DSS11)			:= dss11
-board-$(CONFIG_MACH_EDB9301)			:= edb93xx
-board-$(CONFIG_MACH_EDB9302)			:= edb93xx
-board-$(CONFIG_MACH_EDB9302A)			:= edb93xx
-board-$(CONFIG_MACH_EDB9307)			:= edb93xx
-board-$(CONFIG_MACH_EDB9307A)			:= edb93xx
-board-$(CONFIG_MACH_EDB93012)			:= edb93xx
-board-$(CONFIG_MACH_EDB9315)			:= edb93xx
-board-$(CONFIG_MACH_EDB9315A)			:= edb93xx
-board-$(CONFIG_MACH_EUKREA_CPUIMX25)		:= eukrea_cpuimx25
-board-$(CONFIG_MACH_EUKREA_CPUIMX27)		:= eukrea_cpuimx27
-board-$(CONFIG_MACH_EUKREA_CPUIMX35)		:= eukrea_cpuimx35
-board-$(CONFIG_MACH_EUKREA_CPUIMX51SD)		:= eukrea_cpuimx51
-board-$(CONFIG_MACH_FREESCALE_MX25_3STACK)	:= freescale-mx25-3-stack
-board-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	:= freescale-mx35-3-stack
-board-$(CONFIG_MACH_GE863)			:= telit-evk-pro3
-board-$(CONFIG_MACH_HIGHBANK)			:= highbank
-board-$(CONFIG_MACH_IMX21ADS)			:= imx21ads
-board-$(CONFIG_MACH_IMX27ADS)			:= imx27ads
-board-$(CONFIG_MACH_IMX233_OLINUXINO)	:= imx233-olinuxino
-board-$(CONFIG_MACH_MIOA701)			:= mioa701
-board-$(CONFIG_MACH_MMCCPU)			:= mmccpu
-board-$(CONFIG_MACH_NOMADIK_8815NHK)		:= nhk8815
-board-$(CONFIG_MACH_NXDB500)			:= netx
-board-$(CONFIG_MACH_OMAP343xSDP)		:= omap343xdsp
-board-$(CONFIG_MACH_BEAGLE)			:= beagle
-board-$(CONFIG_MACH_BEAGLEBONE)			:= beaglebone
-board-$(CONFIG_MACH_OMAP3EVM)			:= omap3evm
-board-$(CONFIG_MACH_PANDA)			:= panda
-board-$(CONFIG_MACH_ARCHOSG9)			:= archosg9
-board-$(CONFIG_MACH_PCM049)			:= pcm049
-board-$(CONFIG_MACH_PCA100)			:= phycard-i.MX27
-board-$(CONFIG_MACH_PCAAL1)			:= phycard-a-l1
-board-$(CONFIG_MACH_PCAAXL2)			:= phycard-a-xl2
-board-$(CONFIG_MACH_PCM027)			:= pcm027
-board-$(CONFIG_MACH_PCM037)			:= pcm037
-board-$(CONFIG_MACH_PCM038)			:= pcm038
-board-$(CONFIG_MACH_PCM043)			:= pcm043
-board-$(CONFIG_MACH_PCM051)			:= pcm051
-board-$(CONFIG_MACH_PM9261)			:= pm9261
-board-$(CONFIG_MACH_PM9263)			:= pm9263
-board-$(CONFIG_MACH_PM9G45)			:= pm9g45
-board-$(CONFIG_MACH_RPI)			:= raspberry-pi
-board-$(CONFIG_MACH_SCB9328)			:= scb9328
-board-$(CONFIG_MACH_NESO)			:= guf-neso
-board-$(CONFIG_MACH_MX23EVK)			:= freescale-mx23-evk
-board-$(CONFIG_MACH_CHUMBY)			:= chumby_falconwing
-board-$(CONFIG_MACH_TX28)			:= karo-tx28
-board-$(CONFIG_MACH_MX28EVK)			:= freescale-mx28-evk
-board-$(CONFIG_MACH_CFA10036)			:= crystalfontz-cfa10036
-board-$(CONFIG_MACH_FREESCALE_MX51_PDK)		:= freescale-mx51-pdk
-board-$(CONFIG_MACH_FREESCALE_MX53_LOCO)	:= freescale-mx53-loco
-board-$(CONFIG_MACH_FREESCALE_MX53_SMD)		:= freescale-mx53-smd
-board-$(CONFIG_MACH_GUF_CUPID)			:= guf-cupid
-board-$(CONFIG_MACH_MINI2440)			:= friendlyarm-mini2440
-board-$(CONFIG_MACH_MINI6410)			:= friendlyarm-mini6410
-board-$(CONFIG_MACH_TINY6410)			:= friendlyarm-tiny6410
-board-$(CONFIG_MACH_QIL_A9260)			:= qil-a9260
-board-$(CONFIG_MACH_TNY_A9260)			:= tny-a926x
-board-$(CONFIG_MACH_TNY_A9263)			:= tny-a926x
-board-$(CONFIG_MACH_TNY_A9G20)			:= tny-a926x
-board-$(CONFIG_MACH_USB_A9260)			:= usb-a926x
-board-$(CONFIG_MACH_USB_A9263)			:= usb-a926x
-board-$(CONFIG_MACH_USB_A9G20)			:= usb-a926x
-board-$(CONFIG_MACH_VERSATILEPB)		:= versatile
-board-$(CONFIG_MACH_VEXPRESS)			:= vexpress
-board-$(CONFIG_MACH_TX25)			:= karo-tx25
-board-$(CONFIG_MACH_TQMA53)			:= tqma53
-board-$(CONFIG_MACH_TX51)			:= karo-tx51
-board-$(CONFIG_MACH_MX6Q_ARM2)			:= freescale-mx6-arm2
-board-$(CONFIG_MACH_TOSHIBA_AC100)		:= toshiba-ac100
-board-$(CONFIG_MACH_CCMX51)			:= ccxmx51
-board-$(CONFIG_MACH_TINY210)			:= friendlyarm-tiny210
-board-$(CONFIG_MACH_SABRELITE)			:= freescale-mx6-sabrelite
-board-$(CONFIG_MACH_TX53)			:= karo-tx53
-board-$(CONFIG_MACH_GUF_VINCELL)		:= guf-vincell
-board-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK)		:= efika-mx-smartbook
-board-$(CONFIG_MACH_SABRESD)			:= freescale-mx6-sabresd
-board-$(CONFIG_MACH_REALQ7)			:= dmo-mx6-realq7
-board-$(CONFIG_MACH_ZEDBOARD)			:= avnet-zedboard
+board-$(CONFIG_MACH_A9M2410)			+= a9m2410
+board-$(CONFIG_MACH_A9M2440)			+= a9m2440
+board-$(CONFIG_MACH_ANIMEO_IP)			+= animeo_ip
+board-$(CONFIG_MACH_ARCHOSG9)			+= archosg9
+board-$(CONFIG_MACH_AT91RM9200EK)		+= at91rm9200ek
+board-$(CONFIG_MACH_AT91SAM9260EK)		+= at91sam9260ek
+board-$(CONFIG_MACH_AT91SAM9261EK)		+= at91sam9261ek
+board-$(CONFIG_MACH_AT91SAM9263EK)		+= at91sam9263ek
+board-$(CONFIG_MACH_AT91SAM9G10EK)		+= at91sam9261ek
+board-$(CONFIG_MACH_AT91SAM9G20EK)		+= at91sam9260ek
+board-$(CONFIG_MACH_AT91SAM9M10G45EK)		+= at91sam9m10g45ek
+board-$(CONFIG_MACH_AT91SAM9M10IHD)		+= at91sam9m10ihd
+board-$(CONFIG_MACH_AT91SAM9N12EK)		+= at91sam9n12ek
+board-$(CONFIG_MACH_AT91SAM9X5EK)		+= at91sam9x5ek
+board-$(CONFIG_MACH_BEAGLE)			+= beagle
+board-$(CONFIG_MACH_BEAGLEBONE)			+= beaglebone
+board-$(CONFIG_MACH_CCMX51)			+= ccxmx51
+board-$(CONFIG_MACH_CFA10036)			+= crystalfontz-cfa10036
+board-$(CONFIG_MACH_CHUMBY)			+= chumby_falconwing
+board-$(CONFIG_MACH_CLEP7212)			+= clep7212
+board-$(CONFIG_MACH_DSS11)			+= dss11
+board-$(CONFIG_MACH_EDB93012)			+= edb93xx
+board-$(CONFIG_MACH_EDB9301)			+= edb93xx
+board-$(CONFIG_MACH_EDB9302A)			+= edb93xx
+board-$(CONFIG_MACH_EDB9302)			+= edb93xx
+board-$(CONFIG_MACH_EDB9307A)			+= edb93xx
+board-$(CONFIG_MACH_EDB9307)			+= edb93xx
+board-$(CONFIG_MACH_EDB9315A)			+= edb93xx
+board-$(CONFIG_MACH_EDB9315)			+= edb93xx
+board-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK)		+= efika-mx-smartbook
+board-$(CONFIG_MACH_EUKREA_CPUIMX25)		+= eukrea_cpuimx25
+board-$(CONFIG_MACH_EUKREA_CPUIMX27)		+= eukrea_cpuimx27
+board-$(CONFIG_MACH_EUKREA_CPUIMX35)		+= eukrea_cpuimx35
+board-$(CONFIG_MACH_EUKREA_CPUIMX51SD)		+= eukrea_cpuimx51
+board-$(CONFIG_MACH_FREESCALE_MX25_3STACK)	+= freescale-mx25-3-stack
+board-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	+= freescale-mx35-3-stack
+board-$(CONFIG_MACH_FREESCALE_MX51_PDK)		+= freescale-mx51-pdk
+board-$(CONFIG_MACH_FREESCALE_MX53_LOCO)	+= freescale-mx53-loco
+board-$(CONFIG_MACH_FREESCALE_MX53_SMD)		+= freescale-mx53-smd
+board-$(CONFIG_MACH_GE863)			+= telit-evk-pro3
+board-$(CONFIG_MACH_GUF_CUPID)			+= guf-cupid
+board-$(CONFIG_MACH_GUF_VINCELL)		+= guf-vincell
+board-$(CONFIG_MACH_HIGHBANK)			+= highbank
+board-$(CONFIG_MACH_IMX21ADS)			+= imx21ads
+board-$(CONFIG_MACH_IMX233_OLINUXINO)		+= imx233-olinuxino
+board-$(CONFIG_MACH_IMX27ADS)			+= imx27ads
+board-$(CONFIG_MACH_MINI2440)			+= friendlyarm-mini2440
+board-$(CONFIG_MACH_MINI6410)			+= friendlyarm-mini6410
+board-$(CONFIG_MACH_MIOA701)			+= mioa701
+board-$(CONFIG_MACH_MMCCPU)			+= mmccpu
+board-$(CONFIG_MACH_MX23EVK)			+= freescale-mx23-evk
+board-$(CONFIG_MACH_MX28EVK)			+= freescale-mx28-evk
+board-$(CONFIG_MACH_MX6Q_ARM2)			+= freescale-mx6-arm2
+board-$(CONFIG_MACH_NESO)			+= guf-neso
+board-$(CONFIG_MACH_NOMADIK_8815NHK)		+= nhk8815
+board-$(CONFIG_MACH_NXDB500)			+= netx
+board-$(CONFIG_MACH_OMAP343xSDP)		+= omap343xdsp
+board-$(CONFIG_MACH_OMAP3EVM)			+= omap3evm
+board-$(CONFIG_MACH_PANDA)			+= panda
+board-$(CONFIG_MACH_PCA100)			+= phycard-i.MX27
+board-$(CONFIG_MACH_PCAAL1)			+= phycard-a-l1
+board-$(CONFIG_MACH_PCAAXL2)			+= phycard-a-xl2
+board-$(CONFIG_MACH_PCM027)			+= pcm027
+board-$(CONFIG_MACH_PCM037)			+= pcm037
+board-$(CONFIG_MACH_PCM038)			+= pcm038
+board-$(CONFIG_MACH_PCM043)			+= pcm043
+board-$(CONFIG_MACH_PCM049)			+= pcm049
+board-$(CONFIG_MACH_PCM051)			+= pcm051
+board-$(CONFIG_MACH_PM9261)			+= pm9261
+board-$(CONFIG_MACH_PM9263)			+= pm9263
+board-$(CONFIG_MACH_PM9G45)			+= pm9g45
+board-$(CONFIG_MACH_QIL_A9260)			+= qil-a9260
+board-$(CONFIG_MACH_REALQ7)			+= dmo-mx6-realq7
+board-$(CONFIG_MACH_RPI)			+= raspberry-pi
+board-$(CONFIG_MACH_SABRELITE)			+= freescale-mx6-sabrelite
+board-$(CONFIG_MACH_SABRESD)			+= freescale-mx6-sabresd
+board-$(CONFIG_MACH_SAMA5D3XEK)			+= sama5d3xek
+board-$(CONFIG_MACH_SCB9328)			+= scb9328
+board-$(CONFIG_MACH_TINY210)			+= friendlyarm-tiny210
+board-$(CONFIG_MACH_TINY6410)			+= friendlyarm-tiny6410
+board-$(CONFIG_MACH_TNY_A9260)			+= tny-a926x
+board-$(CONFIG_MACH_TNY_A9263)			+= tny-a926x
+board-$(CONFIG_MACH_TNY_A9G20)			+= tny-a926x
+board-$(CONFIG_MACH_TOSHIBA_AC100)		+= toshiba-ac100
+board-$(CONFIG_MACH_TQMA53)			+= tqma53
+board-$(CONFIG_MACH_TX25)			+= karo-tx25
+board-$(CONFIG_MACH_TX28)			+= karo-tx28
+board-$(CONFIG_MACH_TX51)			+= karo-tx51
+board-$(CONFIG_MACH_TX53)			+= karo-tx53
+board-$(CONFIG_MACH_USB_A9260)			+= usb-a926x
+board-$(CONFIG_MACH_USB_A9263)			+= usb-a926x
+board-$(CONFIG_MACH_USB_A9G20)			+= usb-a926x
+board-$(CONFIG_MACH_VERSATILEPB)		+= versatile
+board-$(CONFIG_MACH_VEXPRESS)			+= vexpress
+board-$(CONFIG_MACH_ZEDBOARD)			+= avnet-zedboard
 
 machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
 
@@ -306,4 +306,6 @@ common-$(CONFIG_BUILTIN_DTB) += arch/arm/dts/
 
 lds-y	:= arch/arm/lib/barebox.lds
 
+common- += $(patsubst %,arch/arm/boards/%/,$(board-))
+
 CLEAN_FILES += include/generated/mach-types.h arch/arm/lib/barebox.lds barebox-flash-image
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
