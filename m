Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo4.mail-out.ovh.net ([188.165.36.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ur2TN-00023I-SU
 for barebox@lists.infradead.org; Mon, 24 Jun 2013 08:50:07 +0000
Received: from mail643.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 78ED510503E2
 for <barebox@lists.infradead.org>; Mon, 24 Jun 2013 10:43:01 +0200 (CEST)
Date: Mon, 24 Jun 2013 10:39:08 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130624083908.GJ27130@game.jcrosoft.org>
References: <1372017777-787-1-git-send-email-s.hauer@pengutronix.de>
 <1372017777-787-4-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1372017777-787-4-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] ARM: Turn most board directories into regular
 build directories
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 22:02 Sun 23 Jun     , Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Why you did not move all of them?

Best Regards,
J.
> ---
>  arch/arm/Makefile        | 78 ++++++------------------------------------------
>  arch/arm/boards/Makefile | 68 +++++++++++++++++++++++++++++++++++++++++
>  2 files changed, 77 insertions(+), 69 deletions(-)
>  create mode 100644 arch/arm/boards/Makefile
> 
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 32bdd65..2f0f16e 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -69,13 +69,19 @@ machine-$(CONFIG_ARCH_VEXPRESS)		:= vexpress
>  machine-$(CONFIG_ARCH_TEGRA)		:= tegra
>  machine-$(CONFIG_ARCH_ZYNQ)		:= zynq
>  
> +
>  # Board directory name.  This list is sorted alphanumerically
>  # by CONFIG_* macro name.
> -
> +#
> +# DO NOT ADD NEW ENTRIES TO THIS LIST!
> +# Add to arch/arm/boards/Makefile instead.
> +#
> +# These are here only because they have a board specific config.h.
> +# TODO: Get rid of board specific config.h and move these to
> +# arch/arm/boards/Makefile aswell.
>  board-$(CONFIG_MACH_A9M2410)			+= a9m2410
>  board-$(CONFIG_MACH_A9M2440)			+= a9m2440
>  board-$(CONFIG_MACH_ANIMEO_IP)			+= animeo_ip
> -board-$(CONFIG_MACH_ARCHOSG9)			+= archosg9
>  board-$(CONFIG_MACH_AT91RM9200EK)		+= at91rm9200ek
>  board-$(CONFIG_MACH_AT91SAM9260EK)		+= at91sam9260ek
>  board-$(CONFIG_MACH_AT91SAM9261EK)		+= at91sam9261ek
> @@ -86,93 +92,27 @@ board-$(CONFIG_MACH_AT91SAM9M10G45EK)		+= at91sam9m10g45ek
>  board-$(CONFIG_MACH_AT91SAM9M10IHD)		+= at91sam9m10ihd
>  board-$(CONFIG_MACH_AT91SAM9N12EK)		+= at91sam9n12ek
>  board-$(CONFIG_MACH_AT91SAM9X5EK)		+= at91sam9x5ek
> -board-$(CONFIG_MACH_BEAGLE)			+= beagle
> -board-$(CONFIG_MACH_BEAGLEBONE)			+= beaglebone
> -board-$(CONFIG_MACH_CCMX51)			+= ccxmx51
> -board-$(CONFIG_MACH_CFA10036)			+= crystalfontz-cfa10036
> -board-$(CONFIG_MACH_CHUMBY)			+= chumby_falconwing
> -board-$(CONFIG_MACH_CLEP7212)			+= clep7212
>  board-$(CONFIG_MACH_DSS11)			+= dss11
> -board-$(CONFIG_MACH_EDB93012)			+= edb93xx
> -board-$(CONFIG_MACH_EDB9301)			+= edb93xx
> -board-$(CONFIG_MACH_EDB9302A)			+= edb93xx
> -board-$(CONFIG_MACH_EDB9302)			+= edb93xx
> -board-$(CONFIG_MACH_EDB9307A)			+= edb93xx
> -board-$(CONFIG_MACH_EDB9307)			+= edb93xx
> -board-$(CONFIG_MACH_EDB9315A)			+= edb93xx
> -board-$(CONFIG_MACH_EDB9315)			+= edb93xx
> -board-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK)		+= efika-mx-smartbook
> -board-$(CONFIG_MACH_EUKREA_CPUIMX25)		+= eukrea_cpuimx25
> -board-$(CONFIG_MACH_EUKREA_CPUIMX27)		+= eukrea_cpuimx27
> -board-$(CONFIG_MACH_EUKREA_CPUIMX35)		+= eukrea_cpuimx35
> -board-$(CONFIG_MACH_EUKREA_CPUIMX51SD)		+= eukrea_cpuimx51
> -board-$(CONFIG_MACH_FREESCALE_MX25_3STACK)	+= freescale-mx25-3-stack
> -board-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	+= freescale-mx35-3-stack
> -board-$(CONFIG_MACH_FREESCALE_MX51_PDK)		+= freescale-mx51-pdk
> -board-$(CONFIG_MACH_FREESCALE_MX53_LOCO)	+= freescale-mx53-loco
> -board-$(CONFIG_MACH_FREESCALE_MX53_SMD)		+= freescale-mx53-smd
>  board-$(CONFIG_MACH_GE863)			+= telit-evk-pro3
> -board-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG)       += globalscale-guruplug
> -board-$(CONFIG_MACH_GLOBALSCALE_MIRABOX)        += globalscale-mirabox
> -board-$(CONFIG_MACH_GUF_CUPID)			+= guf-cupid
> -board-$(CONFIG_MACH_GUF_VINCELL)		+= guf-vincell
> -board-$(CONFIG_MACH_HIGHBANK)			+= highbank
> -board-$(CONFIG_MACH_IMX21ADS)			+= imx21ads
> -board-$(CONFIG_MACH_IMX233_OLINUXINO)		+= imx233-olinuxino
> -board-$(CONFIG_MACH_IMX27ADS)			+= imx27ads
> -board-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP)	+= marvell-armada-xp-gp
>  board-$(CONFIG_MACH_MINI2440)			+= friendlyarm-mini2440
>  board-$(CONFIG_MACH_MINI6410)			+= friendlyarm-mini6410
> -board-$(CONFIG_MACH_MIOA701)			+= mioa701
>  board-$(CONFIG_MACH_MMCCPU)			+= mmccpu
> -board-$(CONFIG_MACH_MX23EVK)			+= freescale-mx23-evk
> -board-$(CONFIG_MACH_MX28EVK)			+= freescale-mx28-evk
> -board-$(CONFIG_MACH_MX6Q_ARM2)			+= freescale-mx6-arm2
> -board-$(CONFIG_MACH_NESO)			+= guf-neso
> -board-$(CONFIG_MACH_NOMADIK_8815NHK)		+= nhk8815
> -board-$(CONFIG_MACH_NXDB500)			+= netx
> -board-$(CONFIG_MACH_OMAP343xSDP)		+= omap343xdsp
> -board-$(CONFIG_MACH_OMAP3EVM)			+= omap3evm
> -board-$(CONFIG_MACH_PANDA)			+= panda
> -board-$(CONFIG_MACH_PCA100)			+= phycard-i.MX27
> -board-$(CONFIG_MACH_PCAAL1)			+= phycard-a-l1
> -board-$(CONFIG_MACH_PCAAXL2)			+= phycard-a-xl2
>  board-$(CONFIG_MACH_PCM027)			+= pcm027
> -board-$(CONFIG_MACH_PCM037)			+= pcm037
> -board-$(CONFIG_MACH_PCM038)			+= pcm038
> -board-$(CONFIG_MACH_PCM043)			+= pcm043
> -board-$(CONFIG_MACH_PCM049)			+= pcm049
> -board-$(CONFIG_MACH_PCM051)			+= pcm051
> -board-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3)	+= plathome-openblocks-ax3
>  board-$(CONFIG_MACH_PM9261)			+= pm9261
>  board-$(CONFIG_MACH_PM9263)			+= pm9263
>  board-$(CONFIG_MACH_PM9G45)			+= pm9g45
>  board-$(CONFIG_MACH_QIL_A9260)			+= qil-a926x
>  board-$(CONFIG_MACH_QIL_A9G20)			+= qil-a926x
> -board-$(CONFIG_MACH_REALQ7)			+= dmo-mx6-realq7
> -board-$(CONFIG_MACH_RPI)			+= raspberry-pi
> -board-$(CONFIG_MACH_SABRELITE)			+= freescale-mx6-sabrelite
> -board-$(CONFIG_MACH_SABRESD)			+= freescale-mx6-sabresd
>  board-$(CONFIG_MACH_SAMA5D3XEK)			+= sama5d3xek
> -board-$(CONFIG_MACH_SCB9328)			+= scb9328
>  board-$(CONFIG_MACH_SOLIDRUN_CUBOX)		+= solidrun-cubox
>  board-$(CONFIG_MACH_TINY210)			+= friendlyarm-tiny210
>  board-$(CONFIG_MACH_TINY6410)			+= friendlyarm-tiny6410
>  board-$(CONFIG_MACH_TNY_A9260)			+= tny-a926x
>  board-$(CONFIG_MACH_TNY_A9263)			+= tny-a926x
>  board-$(CONFIG_MACH_TNY_A9G20)			+= tny-a926x
> -board-$(CONFIG_MACH_TOSHIBA_AC100)		+= toshiba-ac100
> -board-$(CONFIG_MACH_TQMA53)			+= tqma53
> -board-$(CONFIG_MACH_TX25)			+= karo-tx25
> -board-$(CONFIG_MACH_TX28)			+= karo-tx28
> -board-$(CONFIG_MACH_TX51)			+= karo-tx51
> -board-$(CONFIG_MACH_TX53)			+= karo-tx53
>  board-$(CONFIG_MACH_USB_A9260)			+= usb-a926x
>  board-$(CONFIG_MACH_USB_A9263)			+= usb-a926x
>  board-$(CONFIG_MACH_USB_A9G20)			+= usb-a926x
> -board-$(CONFIG_MACH_VERSATILEPB)		+= versatile
> -board-$(CONFIG_MACH_VEXPRESS)			+= vexpress
> -board-$(CONFIG_MACH_ZEDBOARD)			+= avnet-zedboard
>  
>  machdirs := $(patsubst %,arch/arm/mach-%/,$(machine-y))
>  
> @@ -325,7 +265,7 @@ else
>  MACH :=
>  endif
>  
> -common-y += $(BOARD) $(MACH)
> +common-y += $(BOARD) arch/arm/boards/ $(MACH)
>  common-y += arch/arm/lib/ arch/arm/cpu/
>  
>  common-$(CONFIG_BUILTIN_DTB) += arch/arm/dts/
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> new file mode 100644
> index 0000000..6d1e98d
> --- /dev/null
> +++ b/arch/arm/boards/Makefile
> @@ -0,0 +1,68 @@
> +# keep sorted by CONFIG_* macro name.
> +obj-$(CONFIG_MACH_ARCHOSG9)			+= archosg9/
> +obj-$(CONFIG_MACH_BEAGLE)			+= beagle/
> +obj-$(CONFIG_MACH_BEAGLEBONE)			+= beaglebone/
> +obj-$(CONFIG_MACH_CCMX51)			+= ccxmx51/
> +obj-$(CONFIG_MACH_CFA10036)			+= crystalfontz-cfa10036/
> +obj-$(CONFIG_MACH_CHUMBY)			+= chumby_falconwing/
> +obj-$(CONFIG_MACH_CLEP7212)			+= clep7212/
> +obj-$(CONFIG_MACH_EDB93012)			+= edb93xx/
> +obj-$(CONFIG_MACH_EDB9301)			+= edb93xx/
> +obj-$(CONFIG_MACH_EDB9302A)			+= edb93xx/
> +obj-$(CONFIG_MACH_EDB9302)			+= edb93xx/
> +obj-$(CONFIG_MACH_EDB9307A)			+= edb93xx/
> +obj-$(CONFIG_MACH_EDB9307)			+= edb93xx/
> +obj-$(CONFIG_MACH_EDB9315A)			+= edb93xx/
> +obj-$(CONFIG_MACH_EDB9315)			+= edb93xx/
> +obj-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK)		+= efika-mx-smartbook/
> +obj-$(CONFIG_MACH_EUKREA_CPUIMX25)		+= eukrea_cpuimx25/
> +obj-$(CONFIG_MACH_EUKREA_CPUIMX27)		+= eukrea_cpuimx27/
> +obj-$(CONFIG_MACH_EUKREA_CPUIMX35)		+= eukrea_cpuimx35/
> +obj-$(CONFIG_MACH_EUKREA_CPUIMX51SD)		+= eukrea_cpuimx51/
> +obj-$(CONFIG_MACH_FREESCALE_MX25_3STACK)	+= freescale-mx25-3-stack/
> +obj-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	+= freescale-mx35-3-stack/
> +obj-$(CONFIG_MACH_FREESCALE_MX51_PDK)		+= freescale-mx51-pdk/
> +obj-$(CONFIG_MACH_FREESCALE_MX53_LOCO)		+= freescale-mx53-loco/
> +obj-$(CONFIG_MACH_FREESCALE_MX53_SMD)		+= freescale-mx53-smd/
> +obj-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG)		+= globalscale-guruplug/
> +obj-$(CONFIG_MACH_GLOBALSCALE_MIRABOX)		+= globalscale-mirabox/
> +obj-$(CONFIG_MACH_GUF_CUPID)			+= guf-cupid/
> +obj-$(CONFIG_MACH_GUF_VINCELL)			+= guf-vincell/
> +obj-$(CONFIG_MACH_HIGHBANK)			+= highbank/
> +obj-$(CONFIG_MACH_IMX21ADS)			+= imx21ads/
> +obj-$(CONFIG_MACH_IMX233_OLINUXINO)		+= imx233-olinuxino/
> +obj-$(CONFIG_MACH_IMX27ADS)			+= imx27ads/
> +obj-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP)		+= marvell-armada-xp-gp/
> +obj-$(CONFIG_MACH_MIOA701)			+= mioa701/
> +obj-$(CONFIG_MACH_MX23EVK)			+= freescale-mx23-evk/
> +obj-$(CONFIG_MACH_MX28EVK)			+= freescale-mx28-evk/
> +obj-$(CONFIG_MACH_MX6Q_ARM2)			+= freescale-mx6-arm2/
> +obj-$(CONFIG_MACH_NESO)				+= guf-neso/
> +obj-$(CONFIG_MACH_NOMADIK_8815NHK)		+= nhk8815/
> +obj-$(CONFIG_MACH_NXDB500)			+= netx/
> +obj-$(CONFIG_MACH_OMAP343xSDP)			+= omap343xdsp/
> +obj-$(CONFIG_MACH_OMAP3EVM)			+= omap3evm/
> +obj-$(CONFIG_MACH_PANDA)			+= panda/
> +obj-$(CONFIG_MACH_PCA100)			+= phycard-i.MX27/
> +obj-$(CONFIG_MACH_PCAAL1)			+= phycard-a-l1/
> +obj-$(CONFIG_MACH_PCAAXL2)			+= phycard-a-xl2/
> +obj-$(CONFIG_MACH_PCM037)			+= pcm037/
> +obj-$(CONFIG_MACH_PCM038)			+= pcm038/
> +obj-$(CONFIG_MACH_PCM043)			+= pcm043/
> +obj-$(CONFIG_MACH_PCM049)			+= pcm049/
> +obj-$(CONFIG_MACH_PCM051)			+= pcm051/
> +obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3)	+= plathome-openblocks-ax3/
> +obj-$(CONFIG_MACH_REALQ7)			+= dmo-mx6-realq7/
> +obj-$(CONFIG_MACH_RPI)				+= raspberry-pi/
> +obj-$(CONFIG_MACH_SABRELITE)			+= freescale-mx6-sabrelite/
> +obj-$(CONFIG_MACH_SABRESD)			+= freescale-mx6-sabresd/
> +obj-$(CONFIG_MACH_SCB9328)			+= scb9328/
> +obj-$(CONFIG_MACH_TOSHIBA_AC100)		+= toshiba-ac100/
> +obj-$(CONFIG_MACH_TQMA53)			+= tqma53/
> +obj-$(CONFIG_MACH_TX25)				+= karo-tx25/
> +obj-$(CONFIG_MACH_TX28)				+= karo-tx28/
> +obj-$(CONFIG_MACH_TX51)				+= karo-tx51/
> +obj-$(CONFIG_MACH_TX53)				+= karo-tx53/
> +obj-$(CONFIG_MACH_VERSATILEPB)			+= versatile/
> +obj-$(CONFIG_MACH_VEXPRESS)			+= vexpress/
> +obj-$(CONFIG_MACH_ZEDBOARD)			+= avnet-zedboard/
> -- 
> 1.8.3.1
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
