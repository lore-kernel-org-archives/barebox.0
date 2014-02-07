Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22f.google.com ([2a00:1450:4013:c00::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBpSX-0002Qk-4T
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 17:43:25 +0000
Received: by mail-ee0-f47.google.com with SMTP id d49so1683256eek.6
 for <barebox@lists.infradead.org>; Fri, 07 Feb 2014 09:43:03 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri,  7 Feb 2014 18:42:52 +0100
Message-Id: <1391794973-32469-1-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1391640009-3399-7-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1391640009-3399-7-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 6/7] ARM: dove: separate barebox-specific DT changes
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Michael Grzeschik <mgr@pengutronix.de>

To ease DT import from Linux, which is still maintained in-tree, we
separate barebox-specific changes by including the original dts in
a separate DT file. This allows to overlay modifications and keep
clean DT history.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Changelog:
v1->v2:
- split-off barebox specific DT overlay

Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Michael Grzeschik <mgr@pengutronix.de>
Cc: barebox@lists.infradead.org
---
 arch/arm/boards/solidrun-cubox/lowlevel.c |  4 ++--
 arch/arm/dts/Makefile                     |  4 ++--
 arch/arm/dts/dove-cubox-bb.dts            | 18 ++++++++++++++++++
 3 files changed, 22 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm/dts/dove-cubox-bb.dts

diff --git a/arch/arm/boards/solidrun-cubox/lowlevel.c b/arch/arm/boards/solidrun-cubox/lowlevel.c
index 1fcecb5b7c44..4b35731e2beb 100644
--- a/arch/arm/boards/solidrun-cubox/lowlevel.c
+++ b/arch/arm/boards/solidrun-cubox/lowlevel.c
@@ -21,7 +21,7 @@
 #include <asm/barebox-arm-head.h>
 #include <mach/lowlevel.h>
 
-extern char __dtb_dove_cubox_start[];
+extern char __dtb_dove_cubox_bb_start[];
 
 ENTRY_FUNCTION(start_solidrun_cubox, r0, r1, r2)
 {
@@ -29,7 +29,7 @@ ENTRY_FUNCTION(start_solidrun_cubox, r0, r1, r2)
 
 	arm_cpu_lowlevel_init();
 
-	fdt = (uint32_t)__dtb_dove_cubox_start - get_runtime_offset();
+	fdt = (uint32_t)__dtb_dove_cubox_bb_start - get_runtime_offset();
 
 	mvebu_barebox_entry(fdt);
 }
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index bc314e922185..0f366ca39f5d 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -16,7 +16,7 @@ dtb-$(CONFIG_ARCH_IMX6) += imx6q-gk802.dtb \
 	imx6q-mba6x.dtb \
 	imx6q-phytec-pbab01.dtb \
 	imx6dl-cubox-i-carrier-1.dtb
-dtb-$(CONFIG_ARCH_MVEBU) += dove-cubox.dtb
+dtb-$(CONFIG_ARCH_MVEBU) += dove-cubox-bb.dtb
 dtb-$(CONFIG_ARCH_SOCFPGA) += socfpga_cyclone5_sockit.dtb \
 	socfpga_cyclone5_socrates.dtb
 dtb-$(CONFIG_ARCH_TEGRA) += \
@@ -35,7 +35,7 @@ pbl-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs70
 pbl-$(CONFIG_MACH_PCM051) += am335x-phytec-phycore.dtb.o
 pbl-$(CONFIG_MACH_PHYTEC_PFLA02) += imx6q-phytec-pbab01.dtb.o
 pbl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-realq7.dtb.o
-pbl-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox.dtb.o
+pbl-$(CONFIG_MACH_SOLIDRUN_CUBOX) += dove-cubox-bb.dtb.o
 pbl-$(CONFIG_MACH_GK802) += imx6q-gk802.dtb.o
 pbl-$(CONFIG_MACH_TORADEX_COLIBRI_T20_IRIS) += tegra20-colibri-iris.dtb.o
 pbl-$(CONFIG_MACH_TOSHIBA_AC100) += tegra20-paz00.dtb.o
diff --git a/arch/arm/dts/dove-cubox-bb.dts b/arch/arm/dts/dove-cubox-bb.dts
new file mode 100644
index 000000000000..3d1e5b4fa622
--- /dev/null
+++ b/arch/arm/dts/dove-cubox-bb.dts
@@ -0,0 +1,18 @@
+/*
+ * Barebox specific DT overlay for SolidRun CuBox
+ *   Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
+ */
+
+#include "dove-cubox.dts"
+
+/ {
+	chosen {
+		linux,stdout-path = &uart0;
+	};
+
+	leds {
+		power {
+			barebox,default-trigger = "heartbeat";
+		};
+	};
+};
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
