Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WE4lW-0006Ye-IB
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 22:28:19 +0000
Received: from tellur.localdomain (p57B5F67D.dip0.t-ipconnect.de
 [87.181.246.125]) by lynxeye.de (Postfix) with ESMTPA id 041E818B425E
 for <barebox@lists.infradead.org>; Thu, 13 Feb 2014 23:27:21 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 13 Feb 2014 23:28:55 +0100
Message-Id: <1392330535-21265-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH] tegra: rename board directory for Colibri T20
To: barebox@lists.infradead.org

For computer modules the naming standard is to have
a single board directory named after the module and
have all the baseboard support beneath it.

Also change the CONFIG name, as we may want to build
all the baseboards at once.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/Makefile                          |  2 +-
 arch/arm/boards/toradex-colibri-t20-iris/Makefile |  2 --
 arch/arm/boards/toradex-colibri-t20-iris/entry.c  | 34 -----------------------
 arch/arm/boards/toradex-colibri-t20/Makefile      |  2 ++
 arch/arm/boards/toradex-colibri-t20/entry.c       | 34 +++++++++++++++++++++++
 arch/arm/configs/tegra_v7_defconfig               |  2 +-
 arch/arm/dts/Makefile                             |  2 +-
 arch/arm/mach-tegra/Kconfig                       |  4 +--
 images/Makefile.tegra                             |  4 +--
 9 files changed, 43 insertions(+), 43 deletions(-)
 delete mode 100644 arch/arm/boards/toradex-colibri-t20-iris/Makefile
 delete mode 100644 arch/arm/boards/toradex-colibri-t20-iris/entry.c
 create mode 100644 arch/arm/boards/toradex-colibri-t20/Makefile
 create mode 100644 arch/arm/boards/toradex-colibri-t20/entry.c

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index a4219d7..c34dd96 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -83,7 +83,7 @@ obj-$(CONFIG_MACH_SOLIDRUN_HUMMINGBOARD)	+= solidrun-hummingboard/
 obj-$(CONFIG_MACH_TNY_A9260)			+= tny-a926x/
 obj-$(CONFIG_MACH_TNY_A9263)			+= tny-a926x/
 obj-$(CONFIG_MACH_TNY_A9G20)			+= tny-a926x/
-obj-$(CONFIG_MACH_TORADEX_COLIBRI_T20_IRIS)	+= toradex-colibri-t20-iris/
+obj-$(CONFIG_MACH_TORADEX_COLIBRI_T20)		+= toradex-colibri-t20/
 obj-$(CONFIG_MACH_TOSHIBA_AC100)		+= toshiba-ac100/
 obj-$(CONFIG_MACH_TQMA53)			+= tqma53/
 obj-$(CONFIG_MACH_TQMA6X)			+= tqma6x/
diff --git a/arch/arm/boards/toradex-colibri-t20-iris/Makefile b/arch/arm/boards/toradex-colibri-t20-iris/Makefile
deleted file mode 100644
index 5be3dd0..0000000
--- a/arch/arm/boards/toradex-colibri-t20-iris/Makefile
+++ /dev/null
@@ -1,2 +0,0 @@
-CFLAGS_pbl-entry.o := -mcpu=arm7tdmi -march=armv4t
-lwl-y += entry.o
diff --git a/arch/arm/boards/toradex-colibri-t20-iris/entry.c b/arch/arm/boards/toradex-colibri-t20-iris/entry.c
deleted file mode 100644
index 886613f..0000000
--- a/arch/arm/boards/toradex-colibri-t20-iris/entry.c
+++ /dev/null
@@ -1,34 +0,0 @@
-/*
- * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
- *
- * This program is free software; you can redistribute it and/or modify it
- * under the terms and conditions of the GNU General Public License,
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope it will be useful, but WITHOUT
- * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
- * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
- * more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program.  If not, see <http://www.gnu.org/licenses/>.
- */
-
-#include <common.h>
-#include <sizes.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
-#include <mach/lowlevel.h>
-
-extern char __dtb_tegra20_colibri_iris_start[];
-
-ENTRY_FUNCTION(start_toradex_colibri_t20_iris, r0, r1, r2)
-{
-	uint32_t fdt;
-
-	tegra_cpu_lowlevel_setup();
-
-	fdt = (uint32_t)__dtb_tegra20_colibri_iris_start - get_runtime_offset();
-
-	tegra_avp_reset_vector(fdt);
-}
diff --git a/arch/arm/boards/toradex-colibri-t20/Makefile b/arch/arm/boards/toradex-colibri-t20/Makefile
new file mode 100644
index 0000000..5be3dd0
--- /dev/null
+++ b/arch/arm/boards/toradex-colibri-t20/Makefile
@@ -0,0 +1,2 @@
+CFLAGS_pbl-entry.o := -mcpu=arm7tdmi -march=armv4t
+lwl-y += entry.o
diff --git a/arch/arm/boards/toradex-colibri-t20/entry.c b/arch/arm/boards/toradex-colibri-t20/entry.c
new file mode 100644
index 0000000..886613f
--- /dev/null
+++ b/arch/arm/boards/toradex-colibri-t20/entry.c
@@ -0,0 +1,34 @@
+/*
+ * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/lowlevel.h>
+
+extern char __dtb_tegra20_colibri_iris_start[];
+
+ENTRY_FUNCTION(start_toradex_colibri_t20_iris, r0, r1, r2)
+{
+	uint32_t fdt;
+
+	tegra_cpu_lowlevel_setup();
+
+	fdt = (uint32_t)__dtb_tegra20_colibri_iris_start - get_runtime_offset();
+
+	tegra_avp_reset_vector(fdt);
+}
diff --git a/arch/arm/configs/tegra_v7_defconfig b/arch/arm/configs/tegra_v7_defconfig
index 831c138..f76b501 100644
--- a/arch/arm/configs/tegra_v7_defconfig
+++ b/arch/arm/configs/tegra_v7_defconfig
@@ -1,5 +1,5 @@
 CONFIG_ARCH_TEGRA=y
-CONFIG_MACH_TORADEX_COLIBRI_T20_IRIS=y
+CONFIG_MACH_TORADEX_COLIBRI_T20=y
 CONFIG_MACH_TOSHIBA_AC100=y
 CONFIG_AEABI=y
 CONFIG_CMD_ARM_MMUINFO=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 1718bde..af7b0dd 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -44,7 +44,7 @@ pbl-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6q-phytec-pbab01.dtb.o
 pbl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
 pbl-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox.dtb.o
 pbl-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
-pbl-$(CONFIG_MACH_TORADEX_COLIBRI_T20_IRIS) += tegra20-colibri-iris.dtb.o
+pbl-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += tegra20-colibri-iris.dtb.o
 pbl-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
 pbl-$(CONFIG_MACH_TQMA53) += imx53-mba53.dtb.o
 pbl-$(CONFIG_MACH_TQMA6X) += imx6dl-mba6x.dtb.o imx6q-mba6x.dtb.o
diff --git a/arch/arm/mach-tegra/Kconfig b/arch/arm/mach-tegra/Kconfig
index 3becb84..34e1c37 100644
--- a/arch/arm/mach-tegra/Kconfig
+++ b/arch/arm/mach-tegra/Kconfig
@@ -48,8 +48,8 @@ config ARCH_TEGRA_2x_SOC
 
 menu "select Tegra boards to be built"
 
-config MACH_TORADEX_COLIBRI_T20_IRIS
-	bool "Toradex Colibri T20 on Iris Carrier"
+config MACH_TORADEX_COLIBRI_T20
+	bool "Toradex Colibri T20"
 	select ARCH_TEGRA_2x_SOC
 
 config MACH_TOSHIBA_AC100
diff --git a/images/Makefile.tegra b/images/Makefile.tegra
index 1cf1432..f03503e 100644
--- a/images/Makefile.tegra
+++ b/images/Makefile.tegra
@@ -9,6 +9,6 @@ pblx-$(CONFIG_MACH_TOSHIBA_AC100) += start_toshiba_ac100
 FILE_barebox-tegra20-toshiba-ac100.img = start_toshiba_ac100.pblx
 image-$(CONFIG_MACH_TOSHIBA_AC100) += barebox-tegra20-toshiba-ac100.img
 
-pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20_IRIS) += start_toradex_colibri_t20_iris
+pblx-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += start_toradex_colibri_t20_iris
 FILE_barebox-tegra20-toradex-colibri-t20-iris.img = start_toradex_colibri_t20_iris.pblx
-image-$(CONFIG_MACH_TORADEX_COLIBRI_T20_IRIS) += barebox-tegra20-toradex-colibri-t20-iris.img
+image-$(CONFIG_MACH_TORADEX_COLIBRI_T20) += barebox-tegra20-toradex-colibri-t20-iris.img
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
