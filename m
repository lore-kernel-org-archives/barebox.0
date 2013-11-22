Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Vjs8Y-0003Fc-7i
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:55:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:54:35 +0100
Message-Id: <1385132083-7484-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385132083-7484-1-git-send-email-s.hauer@pengutronix.de>
References: <1385132083-7484-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/16] images: socfpga: Do not pollute Make variable namespace
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile.socfpga | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/images/Makefile.socfpga b/images/Makefile.socfpga
index 5eed83c..2fca1b7 100644
--- a/images/Makefile.socfpga
+++ b/images/Makefile.socfpga
@@ -13,22 +13,22 @@ $(obj)/%.socfpgaimg: $(obj)/% FORCE
 # ----------------------- Cyclone5 based boards ---------------------------
 pblx-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += start_socfpga_sockit_xload
 FILE_barebox-socfpga-sockit-xload.img = start_socfpga_sockit_xload.pblx.socfpgaimg
-xload-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += barebox-socfpga-sockit-xload.img
+socfpga-xload-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += barebox-socfpga-sockit-xload.img
 
 pblx-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += start_socfpga_sockit
 FILE_barebox-socfpga-sockit.img = start_socfpga_sockit.pblx
-barebox-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += barebox-socfpga-sockit.img
+socfpga-barebox-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT) += barebox-socfpga-sockit.img
 
 pblx-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += start_socfpga_socrates_xload
 FILE_barebox-socfpga-socrates-xload.img = start_socfpga_socrates_xload.pblx.socfpgaimg
-xload-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += barebox-socfpga-socrates-xload.img
+socfpga-xload-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += barebox-socfpga-socrates-xload.img
 
 pblx-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += start_socfpga_socrates
 FILE_barebox-socfpga-socrates.img = start_socfpga_socrates.pblx
-barebox-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += barebox-socfpga-socrates.img
+socfpga-barebox-$(CONFIG_MACH_SOCFPGA_EBV_SOCRATES) += barebox-socfpga-socrates.img
 
 ifdef CONFIG_ARCH_SOCFPGA_XLOAD
-image-y += $(xload-y)
+image-y += $(socfpga-xload-y)
 else
-image-y += $(barebox-y)
+image-y += $(socfpga-barebox-y)
 endif
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
