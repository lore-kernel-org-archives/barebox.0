Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUUAn-00046x-4M
 for barebox@lists.infradead.org; Tue, 12 Nov 2019 11:17:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Nov 2019 12:17:22 +0100
Message-Id: <20191112111722.30000-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH] ARM: Compile with -fPIE
To: Barebox List <barebox@lists.infradead.org>

Early code in barebox often runs at an address the binary is not linked
at. This causes problems for example when simple initializations in a
switch are converted to an array lookup (-ftree-switch-conversion).
These arrays are then addressed where they are linked at. Some code
where this is known to cause problems is already compiled with
-fno-tree-switch-conversion. This however is limited to single files.

This patch compiles barebox with -fPIE enabled. This causes such tables
to be looked up PC relative rather than with its absolute address. This
makes the -fno-tree-switch-conversion and -fno-jump-table options
unnecessary.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                            |  3 +++
 arch/arm/boards/nvidia-beaver/Makefile       |  4 +---
 arch/arm/boards/nvidia-jetson-tk1/Makefile   |  4 +---
 arch/arm/boards/toradex-colibri-t20/Makefile |  6 ++----
 arch/arm/boards/toshiba-ac100/Makefile       |  4 +---
 arch/arm/boards/zii-imx51-rdu1/Makefile      |  1 -
 arch/arm/boards/zii-imx7d-dev/Makefile       |  1 -
 arch/arm/boards/zii-vf610-dev/Makefile       |  1 -
 arch/arm/mach-omap/Makefile                  |  2 --
 arch/arm/mach-tegra/Makefile                 | 12 ++----------
 10 files changed, 10 insertions(+), 28 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 13e8cee286..740b0790e7 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -141,6 +141,9 @@ CPPFLAGS += -DTEXT_BASE=$(TEXT_BASE)
 CPPFLAGS += -fdata-sections -ffunction-sections
 LDFLAGS_barebox += --gc-sections
 
+# early code often runs at addresses we are not linked at
+CPPFLAGS += -fPIE
+
 ifdef CONFIG_RELOCATABLE
 LDFLAGS_barebox += -pie
 else
diff --git a/arch/arm/boards/nvidia-beaver/Makefile b/arch/arm/boards/nvidia-beaver/Makefile
index 7ade54e854..f0eb7b2de0 100644
--- a/arch/arm/boards/nvidia-beaver/Makefile
+++ b/arch/arm/boards/nvidia-beaver/Makefile
@@ -1,6 +1,4 @@
-CFLAGS_pbl-entry.o := \
-	-mcpu=arm7tdmi -march=armv4t \
-	-fno-tree-switch-conversion -fno-jump-tables
+CFLAGS_pbl-entry.o := -mcpu=arm7tdmi -march=armv4t
 soc := tegra30
 lwl-y += entry.o
 obj-y += board.o
diff --git a/arch/arm/boards/nvidia-jetson-tk1/Makefile b/arch/arm/boards/nvidia-jetson-tk1/Makefile
index 16b203f9f3..5487f0289a 100644
--- a/arch/arm/boards/nvidia-jetson-tk1/Makefile
+++ b/arch/arm/boards/nvidia-jetson-tk1/Makefile
@@ -1,6 +1,4 @@
-CFLAGS_pbl-entry.o := \
-	-mcpu=arm7tdmi -march=armv4t \
-	-fno-tree-switch-conversion -fno-jump-tables
+CFLAGS_pbl-entry.o := -mcpu=arm7tdmi -march=armv4t
 soc := tegra124
 lwl-y += entry.o
 obj-y += board.o
diff --git a/arch/arm/boards/toradex-colibri-t20/Makefile b/arch/arm/boards/toradex-colibri-t20/Makefile
index d0347f2382..644a8e5269 100644
--- a/arch/arm/boards/toradex-colibri-t20/Makefile
+++ b/arch/arm/boards/toradex-colibri-t20/Makefile
@@ -1,9 +1,7 @@
-CFLAGS_pbl-entry.o := \
-	-mcpu=arm7tdmi -march=armv4t \
-	-fno-tree-switch-conversion -fno-jump-tables
+CFLAGS_pbl-entry.o := -mcpu=arm7tdmi -march=armv4t
 soc := tegra20
 lwl-y += entry.o
 obj-y += board.o
 extra-y += colibri-t20_256_hsmmc.bct colibri-t20_256_v11_nand.bct \
            colibri-t20_256_v12_nand.bct colibri-t20_512_hsmmc.bct \
-           colibri-t20_512_v11_nand.bct colibri-t20_512_v12_nand.bct
\ No newline at end of file
+           colibri-t20_512_v11_nand.bct colibri-t20_512_v12_nand.bct
diff --git a/arch/arm/boards/toshiba-ac100/Makefile b/arch/arm/boards/toshiba-ac100/Makefile
index 2b6c09e279..4ef18c0ce9 100644
--- a/arch/arm/boards/toshiba-ac100/Makefile
+++ b/arch/arm/boards/toshiba-ac100/Makefile
@@ -1,5 +1,3 @@
-CFLAGS_pbl-entry.o := \
-	-mcpu=arm7tdmi -march=armv4t \
-	-fno-tree-switch-conversion -fno-jump-tables
+CFLAGS_pbl-entry.o := -mcpu=arm7tdmi -march=armv4t
 lwl-y += entry.o
 obj-y += board.o
diff --git a/arch/arm/boards/zii-imx51-rdu1/Makefile b/arch/arm/boards/zii-imx51-rdu1/Makefile
index 604b3621be..01c7a259e9 100644
--- a/arch/arm/boards/zii-imx51-rdu1/Makefile
+++ b/arch/arm/boards/zii-imx51-rdu1/Makefile
@@ -1,3 +1,2 @@
 obj-y += board.o
-CFLAGS_pbl-lowlevel.o := -fno-tree-switch-conversion -fno-jump-tables
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/zii-imx7d-dev/Makefile b/arch/arm/boards/zii-imx7d-dev/Makefile
index e1baed17ba..01c7a259e9 100644
--- a/arch/arm/boards/zii-imx7d-dev/Makefile
+++ b/arch/arm/boards/zii-imx7d-dev/Makefile
@@ -1,3 +1,2 @@
-CFLAGS_pbl-lowlevel.o := -fno-tree-switch-conversion -fno-jump-tables
 obj-y += board.o
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/zii-vf610-dev/Makefile b/arch/arm/boards/zii-vf610-dev/Makefile
index 3c3a3f2387..1297d815e3 100644
--- a/arch/arm/boards/zii-vf610-dev/Makefile
+++ b/arch/arm/boards/zii-vf610-dev/Makefile
@@ -1,4 +1,3 @@
 obj-y += board.o
-CFLAGS_pbl-lowlevel.o := -fno-tree-switch-conversion -fno-jump-tables
 lwl-y += lowlevel.o
 bbenv-y += defaultenv-zii-vf610-dev
diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index 06cd191f95..36b2aa090e 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -22,8 +22,6 @@ pbl-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
 obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
 pbl-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
 obj-pbl-$(CONFIG_ARCH_AM33XX) += am33xx_generic.o am33xx_clock.o am33xx_mux.o am3xxx.o
-CFLAGS_pbl-am33xx_generic.o := -fno-tree-switch-conversion -fno-jump-tables
-CFLAGS_am33xx_generic.o := -fno-tree-switch-conversion -fno-jump-tables
 obj-pbl-$(CONFIG_ARCH_AM35XX) += am3xxx.o am35xx_emif4.o
 obj-$(CONFIG_ARCH_AM33XX) += am33xx_scrm.o
 obj-$(CONFIG_ARCH_OMAP3) += omap3_clock.o
diff --git a/arch/arm/mach-tegra/Makefile b/arch/arm/mach-tegra/Makefile
index 7c4c1fd137..7547951752 100644
--- a/arch/arm/mach-tegra/Makefile
+++ b/arch/arm/mach-tegra/Makefile
@@ -1,13 +1,5 @@
-CFLAGS_tegra_avp_init.o := \
-	-mcpu=arm7tdmi -march=armv4t \
-	-fno-tree-switch-conversion -fno-jump-tables
-CFLAGS_pbl-tegra_avp_init.o := \
-	-mcpu=arm7tdmi -march=armv4t \
-	-fno-tree-switch-conversion -fno-jump-tables
-CFLAGS_tegra_maincomplex_init.o := \
-	-fno-tree-switch-conversion -fno-jump-tables
-CFLAGS_pbl-tegra_maincomplex_init.o := \
-	-fno-tree-switch-conversion -fno-jump-tables
+CFLAGS_tegra_avp_init.o := -mcpu=arm7tdmi -march=armv4t
+CFLAGS_pbl-tegra_avp_init.o := -mcpu=arm7tdmi -march=armv4t
 lwl-y += tegra_avp_init.o
 lwl-y += tegra_maincomplex_init.o
 obj-y += tegra20.o
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
