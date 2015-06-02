Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yzh9W-0003Hs-EZ
 for barebox@lists.infradead.org; Tue, 02 Jun 2015 08:02:27 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 8D0ECA00405
 for <barebox@lists.infradead.org>; Tue,  2 Jun 2015 10:03:24 +0200 (CEST)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Tue, 2 Jun 2015 10:01:07 +0200
Message-Id: <1433232067-31563-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH] image: am335x: Generate SPI MLO images
To: barebox@lists.infradead.org

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 images/Makefile        | 2 +-
 images/Makefile.am33xx | 6 ++++++
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/images/Makefile b/images/Makefile
index 587cb26..36c1a57 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -123,6 +123,6 @@ images: $(addprefix $(obj)/, $(image-y)) FORCE
 	@for i in $(image-y); do echo $$i; done
 
 clean-files := *.pbl *.pblb *.pblx *.map start_*.imximg *.img barebox.z start_*.kwbimg \
-	start_*.kwbuartimg *.socfpgaimg *.mlo *.t20img *.t20img.cfg *.t30img \
+	start_*.kwbuartimg *.socfpgaimg *.mlo *.spi *.t20img *.t20img.cfg *.t30img \
 	*.t30img.cfg *.t124img *.t124img.cfg *.mlospi *.mlo *.mxsbs *.mxssd
 clean-files += pbl.lds
diff --git a/images/Makefile.am33xx b/images/Makefile.am33xx
index eae2a6a..ddf4f2b 100644
--- a/images/Makefile.am33xx
+++ b/images/Makefile.am33xx
@@ -4,8 +4,14 @@
 quiet_cmd_mlo_image = MLO     $@
       cmd_mlo_image = scripts/omap_signGP -o $@ -l 0x402f0400 -c $<
 
+quiet_cmd_mlo_spi_image = SPI-IMG $@.spi
+      cmd_mlo_spi_image = scripts/mk-omap-image -s -a 0x402f0400 $<.mlo > $@.spi
+
 $(obj)/%.mlo: $(obj)/% FORCE
 	$(call if_changed,mlo_image)
+ifdef CONFIG_OMAP_BUILD_SPI
+	$(call if_changed,mlo_spi_image)
+endif
 
 pblx-$(CONFIG_MACH_AFI_GF) += start_am33xx_afi_gf_sdram
 FILE_barebox-am33xx-afi-gf.img = start_am33xx_afi_gf_sdram.pblx
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
