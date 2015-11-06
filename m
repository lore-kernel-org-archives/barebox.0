Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zujpy-00034l-B5
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 16:26:07 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1Zujpb-0000Eo-J5
 for barebox@lists.infradead.org; Fri, 06 Nov 2015 17:25:39 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri,  6 Nov 2015 17:25:35 +0100
Message-Id: <1446827139-339-3-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1446827139-339-1-git-send-email-l.stach@pengutronix.de>
References: <1446827139-339-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 3/7] ARM: microsom: change barebox image name for Hummingboard
To: barebox@lists.infradead.org

To reflect that the current image is in fact for a combination of a
MicroSOM i1 with a Hummingboard baseboard.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/solidrun-microsom/lowlevel.c | 2 +-
 images/Makefile.imx                          | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/solidrun-microsom/lowlevel.c b/arch/arm/boards/solidrun-microsom/lowlevel.c
index 30f4a3f59104..703c0aafd1d5 100644
--- a/arch/arm/boards/solidrun-microsom/lowlevel.c
+++ b/arch/arm/boards/solidrun-microsom/lowlevel.c
@@ -6,7 +6,7 @@
 
 extern char __dtb_imx6dl_hummingboard_start[];
 
-ENTRY_FUNCTION(start_imx6dl_hummingboard, r0, r1, r2)
+ENTRY_FUNCTION(start_hummingboard_microsom_i1, r0, r1, r2)
 {
 	void *fdt;
 
diff --git a/images/Makefile.imx b/images/Makefile.imx
index c33b1531787d..e47b7a40594d 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -202,10 +202,10 @@ CFG_start_imx6sx_sabresdb.pblx.imximg = $(board)/freescale-mx6sx-sabresdb/flash-
 FILE_barebox-freescale-imx6sx-sabresdb.img = start_imx6sx_sabresdb.pblx.imximg
 image-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += barebox-freescale-imx6sx-sabresdb.img
 
-pblx-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_imx6dl_hummingboard
-CFG_start_imx6dl_hummingboard.pblx.imximg = $(board)/solidrun-microsom/flash-header-solidrun-hummingboard.imxcfg
-FILE_barebox-solidrun-imx6dl-hummingboard.img = start_imx6dl_hummingboard.pblx.imximg
-image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-imx6dl-hummingboard.img
+pblx-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += start_hummingboard_microsom_i1
+CFG_start_hummingboard_microsom_i1.pblx.imximg = $(board)/solidrun-microsom/flash-header-solidrun-hummingboard.imxcfg
+FILE_barebox-solidrun-hummingboard-microsom-i1.img = start_hummingboard_microsom_i1.pblx.imximg
+image-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += barebox-solidrun-hummingboard-microsom-i1.img
 
 pblx-$(CONFIG_MACH_NITROGEN6X) += start_imx6q_nitrogen6x_1g
 CFG_start_imx6q_nitrogen6x_1g.pblx.imximg = $(board)/boundarydevices-nitrogen6x/flash-header-nitrogen6q-1g.imxcfg
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
