Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a7HkC-0007k2-6W
 for barebox@lists.infradead.org; Fri, 11 Dec 2015 07:03:57 +0000
Date: Fri, 11 Dec 2015 08:03:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151211070330.GP11966@pengutronix.de>
References: <alpine.LFD.2.20.1512101025310.13554@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.20.1512101025310.13554@localhost>
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
Subject: Re: "make distclean" leaves a pile of arch/arm/dts/*.lzo files
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: barebox mailing list <barebox@lists.infradead.org>

Hi Robert,

On Thu, Dec 10, 2015 at 10:28:18AM -0500, Robert P. J. Day wrote:
> 
>   just did a configure and build for a beaglebone black, then ran
> "make distclean" and ...
> 
> $ git status --ignored
> On branch master
> Your branch is up-to-date with 'origin/master'.
> Ignored files:
>   (use "git add -f <file>..." to include in what will be committed)
> 
> 	arch/arm/dts/am335x-afi-gf.dtb.lzo
> 	arch/arm/dts/am335x-bone-common.dtb.lzo
> 	arch/arm/dts/am335x-bone.dtb.lzo
> 	arch/arm/dts/am335x-boneblack.dtb.lzo
> 	arch/arm/dts/am335x-phytec-phycard-som-mlo.dtb.lzo
> 	arch/arm/dts/am335x-phytec-phycard-som.dtb.lzo
> 	arch/arm/dts/am335x-phytec-phycore-som-mlo.dtb.lzo
> 	arch/arm/dts/am335x-phytec-phycore-som-no-eeprom.dtb.lzo
>         arch/arm/dts/am335x-phytec-phycore-som-no-spi-no-eeprom.dtb.lzo
> 	arch/arm/dts/am335x-phytec-phycore-som-no-spi.dtb.lzo
> 	arch/arm/dts/am335x-phytec-phycore-som.dtb.lzo
> 	arch/arm/dts/am335x-phytec-phyflex-som-mlo.dtb.lzo
> 	arch/arm/dts/am335x-phytec-phyflex-som-no-eeprom.dtb.lzo
> 	arch/arm/dts/am335x-phytec-phyflex-som-no-spi-no-eeprom.dtb.lzo
> 	arch/arm/dts/am335x-phytec-phyflex-som-no-spi.dtb.lzo
> 	arch/arm/dts/am335x-phytec-phyflex-som.dtb.lzo
> 	barebox-flash-images
> 
> nothing to commit, working directory clean
> $
> 
>   so i'm guessing building for other targets will also leave .lzo
> files lying around.

Added the following patch, this should fix this issue. Thanks for
noting.

Sascha

---------------------------8<-------------------------------

From a9e7e68279de3aec38b038211a15a80cfc612c4e Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Dec 2015 08:02:02 +0100
Subject: [PATCH] ARM: dts: Add *.dtb.lzo to clean files

*.dtb.lzo are generated during compilatiion, delete them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 49a2f99..2da930e 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -71,4 +71,4 @@ pbl-dtb-$(CONFIG_MACH_UDOO) += imx6q-udoo.dtb.o
 pbl-dtb-$(CONFIG_MACH_USI_TOPKICK) += kirkwood-topkick-bb.dtb.o
 pbl-dtb-$(CONFIG_MACH_VARISCITE_MX6) += imx6q-var-custom.dtb.o
 
-clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts
+clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.lzo
-- 
2.6.2

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
