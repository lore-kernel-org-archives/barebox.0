Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyQ4o-00087i-5Y
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 19:04:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Dec 2014 20:03:34 +0100
Message-Id: <1418151816-24593-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1418151816-24593-1-git-send-email-s.hauer@pengutronix.de>
References: <1418151816-24593-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/13] ARM: MXS: Add multiimage support
To: barebox@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>

The Freescale MXS SoCs have a multi staged boot process which needs
different images composed out of different binaries. The ROM executes
a so called bootstream which contains multiple executables. The first
one is executed in SRAM and the purpose of this binary is to setup
the internal PMIC and the SDRAM. The second image is usually the
bootloader itself. In case of barebox the bootstream is composed
out of the self extracting barebox image (pblx) and the prepare
stage for setting up the SDRAM.

The bootstream image itself is useful for USB boot, but for booting from
SD cards or NAND a BCB header has to be prepended to the image. In case
of SD boot the image has the .mxssd file extension in barebox.

Since the bootstream images are encrypted they are not suitable for
2nd stage execution. For this purpose the 2nd stage images are generated.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/.gitignore   |  2 ++
 images/Makefile     |  3 ++-
 images/Makefile.mxs | 22 ++++++++++++++++++++++
 3 files changed, 26 insertions(+), 1 deletion(-)
 create mode 100644 images/Makefile.mxs

diff --git a/images/.gitignore b/images/.gitignore
index d27e71a..c5377d9 100644
--- a/images/.gitignore
+++ b/images/.gitignore
@@ -16,6 +16,8 @@
 *.t124img.cfg
 *.mlo
 *.mlospi
+*.mxsbs
+*.mxssd
 pbl.lds
 barebox.x
 barebox.z
diff --git a/images/Makefile b/images/Makefile
index c55cbdc..7c3aaf7 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -103,6 +103,7 @@ include $(srctree)/images/Makefile.mvebu
 include $(srctree)/images/Makefile.rockchip
 include $(srctree)/images/Makefile.socfpga
 include $(srctree)/images/Makefile.tegra
+include $(srctree)/images/Makefile.mxs
 
 targets += $(image-y) pbl.lds barebox.x barebox.z
 targets += $(patsubst %,%.pblx,$(pblx-y))
@@ -119,5 +120,5 @@ images: $(addprefix $(obj)/, $(image-y)) FORCE
 
 clean-files := *.pbl *.pblb *.pblx *.map start_*.imximg *.img barebox.z start_*.kwbimg \
 	start_*.kwbuartimg *.socfpgaimg *.mlo *.t20img *.t20img.cfg *.t30img \
-	*.t30img.cfg *.t124img *.t124img.cfg *.mlospi *.mlo
+	*.t30img.cfg *.t124img *.t124img.cfg *.mlospi *.mlo *.mxsbs *.mxssd
 clean-files += pbl.lds
diff --git a/images/Makefile.mxs b/images/Makefile.mxs
new file mode 100644
index 0000000..c6056e6
--- /dev/null
+++ b/images/Makefile.mxs
@@ -0,0 +1,22 @@
+#
+# barebox image generation Makefile for MXS images
+#
+
+# %.mxsbs - convert into MXS BootStream image
+# ----------------------------------------------------------------
+quiet_cmd_mxs_bootstream = MXS-BOOTSTREAM $@
+      cmd_mxs_bootstream = $(objtree)/scripts/mxsimage -c $(CFG_$(@F)) -b $< -o $@ -p $(word 2,$^)
+
+$(obj)/%.mxsbs: $(obj)/%.pblx $(obj)/prep_%.pblb FORCE
+	$(call if_changed,mxs_bootstream)
+
+# %.mxssd - convert into MXS SD card image
+# ----------------------------------------------------------------
+quiet_cmd_mxs_sd = MXS-SD $@
+      cmd_mxs_sd = $(objtree)/scripts/mxsboot sd $< $@
+
+$(obj)/%.mxssd: $(obj)/%
+	$(call if_changed,mxs_sd)
+
+board = $(srctree)/arch/$(ARCH)/boards
+mxscfg = $(srctree)/arch/arm/mach-mxs/mxsimg.cfg
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
