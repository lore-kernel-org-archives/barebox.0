Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from plane.gmane.org ([80.91.229.3])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrQgH-0002hT-BX
 for barebox@lists.infradead.org; Mon, 02 Jun 2014 11:45:34 +0000
Received: from list by plane.gmane.org with local (Exim 4.69)
 (envelope-from <gcbb-barebox@m.gmane.org>) id 1WrQfo-00034M-3o
 for barebox@lists.infradead.org; Mon, 02 Jun 2014 13:45:04 +0200
Received: from proxy10.messagelabs.net ([194.106.220.19])
 by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
 id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Mon, 02 Jun 2014 13:45:04 +0200
Received: from embedded24 by proxy10.messagelabs.net with local (Gmexim 0.1
 (Debian)) id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Mon, 02 Jun 2014 13:45:04 +0200
From: Rolf Evers-Fischer <embedded24@evers-fischer.de>
Date: Mon, 2 Jun 2014 11:41:23 +0000 (UTC)
Message-ID: <loom.20140602T130705-338@post.gmane.org>
References: <1400147030-16936-1-git-send-email-s.hauer@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH] ARM: AM3xxx: Add support for building AM33xx spi images
To: barebox@lists.infradead.org

Dear Sascha and Jan,

Sascha Hauer <s.hauer@...> writes:

> 
> From: Jan Luebbe <jlu@...>
> 
> mk-am35xx-spi-image can only build AM35xx images. Rename
> the tool to mk-am3xxx-spi-image and add support for the AM33xx.
> 
> Signed-off-by: Sascha Hauer <s.hauer@...>
> ---
>  arch/arm/Makefile                                  |  7 ++-
>  scripts/Makefile                                   |  2 +-
>  ...mk-am35xx-spi-image.c => mk-am3xxx-spi-image.c} | 52


I tried to use the changes from this patch in order to create a SPI image.
But I was not successful.

1.a) When I set the CONFIG_OMAP_BUILD_SPI option to "yes" and the
CONFIG_OMAP_BUILD_IFT option to "no", there is no SPI image built. These are
the last line from barebox_mlo compilation:
" (...)
  CHK     include/generated/compile.h
images built:
finished target barebox_mlo.compile"
It seems to me that the parameter "image-y" is never set.

1.b) When I set both config options to "yes", there is an MLO image built,
but no SPI image.

How do I have to configure my project in order to get an SPI image?

2.) Additionally, I'm not sure if we really need the changes in the
mk-am35xx-spi-image.c file, since especially the am3358/am3359 are
using the same format as the am35xx:
 - 32 bit image size in big-endian
 - 32 bit load address in big-endian
 - binary image converted from little- to big-endian

But it may be different for other am33xx SoCs.


A couple of weeks ago I have been able to create a SPI image in
barebox-2014.03 by modification of the file "images/Makefile.am33xx" only.
Maybe, you can take a look into my patch as well (of course the
"CONFIG_MACH_SPR" option and filenames have to match the name of your board
accordingly):

diff --git a/images/Makefile.am33xx b/images/Makefile.am33xx
index dacc2d1..0a6c019 100644
--- a/images/Makefile.am33xx
+++ b/images/Makefile.am33xx
@@ -7,6 +7,12 @@ quiet_cmd_mlo_image = MLO     $@
 $(obj)/%.mlo: $(obj)/% FORCE
 	$(call if_changed,mlo_image)
 
+quiet_cmd_spi_image = SPI     $@
+      cmd_spi_image = scripts/mk-am35xx-spi-image -a 0x402f0400 $< > $@
+
+$(obj)/%.spi: $(obj)/% FORCE
+	$(call if_changed,spi_image)
+
 pblx-$(CONFIG_MACH_PCM051) += start_am33xx_phytec_phycore_sdram
 FILE_barebox-am33xx-phytec-phycore.img = start_am33xx_phytec_phycore_sdram.pblx
 am33xx-barebox-$(CONFIG_MACH_PCM051) += barebox-am33xx-phytec-phycore.img
@@ -23,8 +29,20 @@ pblx-$(CONFIG_MACH_BEAGLEBONE) +=
start_am33xx_beaglebone_sram
 FILE_barebox-am33xx-beaglebone-mlo.img = start_am33xx_beaglebone_sram.pblx.mlo
 am33xx-mlo-$(CONFIG_MACH_BEAGLEBONE) += barebox-am33xx-beaglebone-mlo.img
 
+pblx-$(CONFIG_MACH_SPR) += start_am33xx_spr_sdram
+FILE_barebox-am33xx-spr.img = start_am33xx_spr_sdram.pblx
+am33xx-barebox-$(CONFIG_MACH_SPR) += barebox-am33xx-spr.img
+
+pblx-$(CONFIG_MACH_SPR) += start_am33xx_spr_sram
+FILE_barebox-am33xx-spr-spi.img = start_am33xx_spr_sram.pblx.spi
+am33xx-spi-$(CONFIG_MACH_SPR) += barebox-am33xx-spr-spi.img
+
 ifdef CONFIG_OMAP_BUILD_IFT
 image-y += $(am33xx-mlo-y)
 else
+ifdef CONFIG_OMAP_BUILD_SPI
+image-y += $(am33xx-spi-y)
+else
 image-y += $(am33xx-barebox-y)
 endif
+endif

Nevertheless I'd like to keep my code as close as possible to the
barebox-mainline. Therefore I'm interested to find a common solution
together with you.


Kind regards,
 Rolf



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
