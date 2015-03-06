Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTym1-0000pH-QY
 for barebox@lists.infradead.org; Fri, 06 Mar 2015 20:23:08 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id 167F526C2001
 for <barebox@lists.infradead.org>; Fri,  6 Mar 2015 21:22:09 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri,  6 Mar 2015 21:22:01 +0100
Message-Id: <1425673322-31946-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 1/2] images: move board variable to parent makefile
To: barebox@lists.infradead.org

A lot of the image makefiles define an equal board variable, which
gives the impression that this variable is unique for this makefile.
As those files aren't freestanding makefiles but get included into a
parent makefile this is not actually true. Attempts to override this
variable will not work reliable as make is picking up a random instance.

Fix this confusion by moving this variable out of the individual makefiles.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 images/Makefile          | 2 ++
 images/Makefile.imx      | 2 --
 images/Makefile.mvebu    | 2 --
 images/Makefile.mxs      | 1 -
 images/Makefile.rockchip | 2 --
 images/Makefile.tegra    | 2 --
 6 files changed, 2 insertions(+), 9 deletions(-)

diff --git a/images/Makefile b/images/Makefile
index 7c3aaf7..2ed7464 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -97,6 +97,8 @@ $(obj)/%.img: $(obj)/$$(FILE_$$(@F))
 	$(Q)if [ -z $(FILE_$(@F)) ]; then echo "FILE_$(@F) empty!"; false; fi
 	$(call if_changed,shipped)
 
+board = $(srctree)/arch/$(ARCH)/boards
+
 include $(srctree)/images/Makefile.am33xx
 include $(srctree)/images/Makefile.imx
 include $(srctree)/images/Makefile.mvebu
diff --git a/images/Makefile.imx b/images/Makefile.imx
index eacc76e..cc9fdfc 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -7,8 +7,6 @@
 $(obj)/%.imximg: $(obj)/% FORCE
 	$(call if_changed,imx_image)
 
-board = $(srctree)/arch/$(ARCH)/boards
-
 # ----------------------- i.MX25 based boards ---------------------------
 pblx-$(CONFIG_MACH_TX25) += start_imx25_karo_tx25
 FILE_barebox-karo-tx25.img = start_imx25_karo_tx25.pblx
diff --git a/images/Makefile.mvebu b/images/Makefile.mvebu
index 5e90855..c3923e4 100644
--- a/images/Makefile.mvebu
+++ b/images/Makefile.mvebu
@@ -9,8 +9,6 @@ $(obj)/%.kwbimg: $(obj)/% FORCE
 $(obj)/%.kwbuartimg: $(obj)/% FORCE
 	$(call if_changed,kwb_image)
 
-board = $(srctree)/arch/$(ARCH)/boards
-
 KWBOPTS = -c -d 0x1000000 -e 0x1000000
 
 # ----------------------- Armada 370 based boards ---------------------------
diff --git a/images/Makefile.mxs b/images/Makefile.mxs
index 733f83b..c93fb57 100644
--- a/images/Makefile.mxs
+++ b/images/Makefile.mxs
@@ -18,7 +18,6 @@ quiet_cmd_mxs_sd = MXS-SD $@
 $(obj)/%.mxssd: $(obj)/%
 	$(call if_changed,mxs_sd)
 
-board = $(srctree)/arch/$(ARCH)/boards
 mxs23cfg = $(srctree)/arch/arm/mach-mxs/mxs23img.cfg
 mxs28cfg = $(srctree)/arch/arm/mach-mxs/mxs28img.cfg
 
diff --git a/images/Makefile.rockchip b/images/Makefile.rockchip
index 2444433..9715b92 100644
--- a/images/Makefile.rockchip
+++ b/images/Makefile.rockchip
@@ -2,8 +2,6 @@
 # barebox image generation Makefile for Rockchip images
 #
 
-board = $(srctree)/arch/$(ARCH)/boards
-
 pblx-$(CONFIG_MACH_RADXA_ROCK) += start_radxa_rock
 FILE_barebox-radxa-rock.img = start_radxa_rock.pblx
 image-$(CONFIG_MACH_RADXA_ROCK) += barebox-radxa-rock.img
diff --git a/images/Makefile.tegra b/images/Makefile.tegra
index 4f876e4..b5782ca 100644
--- a/images/Makefile.tegra
+++ b/images/Makefile.tegra
@@ -28,8 +28,6 @@ quiet_cmd_tegra124_image = T124IMG  $@
 $(obj)/%.t124img: $(obj)/% FORCE
 	$(call if_changed,tegra124_image)
 
-board = $(srctree)/arch/$(ARCH)/boards
-
 # ----------------------- Tegra20 based boards ---------------------------
 pblx-$(CONFIG_MACH_TOSHIBA_AC100) += start_toshiba_ac100
 FILE_barebox-tegra20-toshiba-ac100-usbloader.img = start_toshiba_ac100.pblx
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
