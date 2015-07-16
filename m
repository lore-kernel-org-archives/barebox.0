Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFesV-0005kV-PP
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 08:50:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jul 2015 10:50:24 +0200
Message-Id: <1437036628-29439-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1437036628-29439-1-git-send-email-s.hauer@pengutronix.de>
References: <1437036628-29439-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/11] images: i.MX: Create target for SRAM images
To: Barebox List <barebox@lists.infradead.org>

Some boards like to do their SDRAM setup in code rather than in hardcoded
DCD tables. For these boards the bootloader has to be loaded to the internal
SRAM which is often too small for a full featured barebox. This new SRAM
image type target allows to overcome this limitation. The image created
with the new imx-sram-img rule is a regular imx-image with the difference
that the load size only spans the pblx image and not the whole image including
the payload. The pbl image easily fits into SRAM. The strategy is that this
initial code initializes the SDRAM, loads the whole image to SDRAM and jumps
to it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile.imx | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/images/Makefile.imx b/images/Makefile.imx
index 6b44958..cdbae8c 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -14,6 +14,17 @@ $(obj)/%.imximg: $(obj)/% FORCE
 	$(call if_changed,imx_image)
 endif
 
+quiet_cmd_imx_sram_img ?= IMX-SRAM-IMG    $@
+      cmd_imx_sram_img ?= cat $(obj)/$(patsubst %.imx-sram-img,%.pblb,$(2)) > $@; \
+		  $(call size_append, $(obj)/barebox.z) >> $@; \
+		  $(CPP) $(imxcfg_cpp_flags) -o $(imximg-tmp) $(CFG_$(@F)) ; \
+		  $(objtree)/scripts/imx/imx-image -o $@ -b -c $(imximg-tmp) -f $@; \
+		  cat $(obj)/barebox.z >> $@; \
+		  $(objtree)/scripts/fix_size -f $@
+
+$(obj)/%.imx-sram-img: $(obj)/%.pblb $(obj)/barebox.z FORCE
+	$(call if_changed,imx_sram_img,$(@F))
+
 # ----------------------- i.MX25 based boards ---------------------------
 pblx-$(CONFIG_MACH_TX25) += start_imx25_karo_tx25
 FILE_barebox-karo-tx25.img = start_imx25_karo_tx25.pblx
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
