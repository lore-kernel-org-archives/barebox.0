Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22a.google.com ([2a00:1450:400c:c00::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YgNMx-0000gG-H2
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 01:04:28 +0000
Received: by wgsk9 with SMTP id k9so3357049wgs.3
 for <barebox@lists.infradead.org>; Thu, 09 Apr 2015 18:04:02 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 10 Apr 2015 03:03:49 +0200
Message-Id: <1428627830-17281-13-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1428627830-17281-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1428627830-17281-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 12/13] ARM: mvebu: armada-xp: Sort boards and images
 alphabetically
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Before adding new Armada XP based boards becomes messier than necessary,
sort Armada XP based board Kconfig and image Makefile alphabetically.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 arch/arm/mach-mvebu/Kconfig |  8 ++++----
 images/Makefile.mvebu       | 22 +++++++++++-----------
 2 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/arch/arm/mach-mvebu/Kconfig b/arch/arm/mach-mvebu/Kconfig
index 8323b6604174..9394cf71a998 100644
--- a/arch/arm/mach-mvebu/Kconfig
+++ b/arch/arm/mach-mvebu/Kconfig
@@ -43,14 +43,14 @@ config MACH_GLOBALSCALE_MIRABOX
 
 comment "Armada XP based boards"
 
-config MACH_PLATHOME_OPENBLOCKS_AX3
-	bool "PlatHome OpenBlocks AX3"
-	select ARCH_ARMADA_XP
-
 config MACH_MARVELL_ARMADA_XP_GP
 	bool "Marvell Armada XP GP"
 	select ARCH_ARMADA_XP
 
+config MACH_PLATHOME_OPENBLOCKS_AX3
+	bool "PlatHome OpenBlocks AX3"
+	select ARCH_ARMADA_XP
+
 #
 # Dove 88AP510 SoC boards
 #
diff --git a/images/Makefile.mvebu b/images/Makefile.mvebu
index c3923e4ecc8f..82f370576468 100644
--- a/images/Makefile.mvebu
+++ b/images/Makefile.mvebu
@@ -24,17 +24,6 @@ image-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += barebox-globalscale-mirabox-uart.img
 image-$(CONFIG_MACH_GLOBALSCALE_MIRABOX) += barebox-globalscale-mirabox-2nd.img
 
 # ----------------------- Armada XP based boards ---------------------------
-PLATHOME_OPENBLOCKS_AX3_KWBOPTS = ${KWBOPTS} -i $(board)/plathome-openblocks-ax3/kwbimage.cfg
-OPTS_start_plathome_openblocks_ax3.pblx.kwbimg = $(PLATHOME_OPENBLOCKS_AX3_KWBOPTS)
-OPTS_start_plathome_openblocks_ax3.pblx.kwbuartimg = -m uart $(PLATHOME_OPENBLOCKS_AX3_KWBOPTS)
-FILE_barebox-plathome-openblocks-ax3.img   = start_plathome_openblocks_ax3.pblx.kwbimg
-FILE_barebox-plathome-openblocks-ax3-uart.img = start_plathome_openblocks_ax3.pblx.kwbuartimg
-FILE_barebox-plathome-openblocks-ax3-2nd.img = start_plathome_openblocks_ax3.pblx
-pblx-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += start_plathome_openblocks_ax3
-image-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += barebox-plathome-openblocks-ax3.img
-image-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += barebox-plathome-openblocks-ax3-uart.img
-image-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += barebox-plathome-openblocks-ax3-2nd.img
-
 MARVELL_ARMADA_XP_GP_KWBOPTS = ${KWBOPTS} -i $(board)/marvell-armada-xp-gp/kwbimage.cfg
 OPTS_start_marvell_armada_xp_gp.pblx.kwbimg = $(MARVELL_ARMADA_XP_GP_KWBOPTS)
 OPTS_start_marvell_armada_xp_gp.pblx.kwbuartimg = -m uart $(MARVELL_ARMADA_XP_GP_KWBOPTS)
@@ -46,6 +35,17 @@ image-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += barebox-marvell-armada-xp-gp.img
 image-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += barebox-marvell-armada-xp-gp-uart.img
 image-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) += barebox-marvell-armada-xp-gp-2nd.img
 
+PLATHOME_OPENBLOCKS_AX3_KWBOPTS = ${KWBOPTS} -i $(board)/plathome-openblocks-ax3/kwbimage.cfg
+OPTS_start_plathome_openblocks_ax3.pblx.kwbimg = $(PLATHOME_OPENBLOCKS_AX3_KWBOPTS)
+OPTS_start_plathome_openblocks_ax3.pblx.kwbuartimg = -m uart $(PLATHOME_OPENBLOCKS_AX3_KWBOPTS)
+FILE_barebox-plathome-openblocks-ax3.img   = start_plathome_openblocks_ax3.pblx.kwbimg
+FILE_barebox-plathome-openblocks-ax3-uart.img = start_plathome_openblocks_ax3.pblx.kwbuartimg
+FILE_barebox-plathome-openblocks-ax3-2nd.img = start_plathome_openblocks_ax3.pblx
+pblx-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += start_plathome_openblocks_ax3
+image-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += barebox-plathome-openblocks-ax3.img
+image-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += barebox-plathome-openblocks-ax3-uart.img
+image-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += barebox-plathome-openblocks-ax3-2nd.img
+
 # ----------------------- Dove 88AP510 based boards ---------------------------
 SOLIDRUN_CUBOX_KWBOPTS = ${KWBOPTS} -i $(board)/solidrun-cubox/kwbimage.cfg
 OPTS_start_solidrun_cubox.pblx.kwbimg = $(SOLIDRUN_CUBOX_KWBOPTS)
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
