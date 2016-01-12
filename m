Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aJ5EO-0005cq-Rv
 for barebox@lists.infradead.org; Tue, 12 Jan 2016 20:07:54 +0000
Received: from tellur.intern.lynxeye.de (p57B5F3A9.dip0.t-ipconnect.de
 [87.181.243.169]) by lynxeye.de (Postfix) with ESMTPA id B05DA26C2001
 for <barebox@lists.infradead.org>; Tue, 12 Jan 2016 21:06:54 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue, 12 Jan 2016 21:06:51 +0100
Message-Id: <1452629211-30125-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH] ARM: tegra: clean up lowlevel entry
To: barebox@lists.infradead.org

The lowlevel startup function jumps directly to the main
cluster if we are already running there. This allows for a
significant cleanup of the board startup code by directly
using the FDT address available there.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/nvidia-beaver/entry.c        | 11 ++---------
 arch/arm/boards/nvidia-jetson-tk1/entry.c    | 11 ++---------
 arch/arm/boards/toradex-colibri-t20/entry.c  | 11 ++---------
 arch/arm/boards/toshiba-ac100/entry.c        | 11 ++---------
 arch/arm/mach-tegra/include/mach/lowlevel.h  |  9 +++++----
 arch/arm/mach-tegra/tegra_avp_init.c         |  5 +----
 arch/arm/mach-tegra/tegra_maincomplex_init.c |  5 ++---
 7 files changed, 16 insertions(+), 47 deletions(-)

diff --git a/arch/arm/boards/nvidia-beaver/entry.c b/arch/arm/boards/nvidia-beaver/entry.c
index 9b7e253..0f487bb 100644
--- a/arch/arm/boards/nvidia-beaver/entry.c
+++ b/arch/arm/boards/nvidia-beaver/entry.c
@@ -15,9 +15,6 @@
  */
 
 #include <common.h>
-#include <linux/sizes.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
 #include <mach/lowlevel.h>
 #include <mach/lowlevel-dvc.h>
 
@@ -25,15 +22,11 @@ extern char __dtb_tegra30_beaver_start[];
 
 ENTRY_FUNCTION(start_nvidia_beaver, r0, r1, r2)
 {
-	uint32_t fdt;
-
-	tegra_cpu_lowlevel_setup();
+	tegra_cpu_lowlevel_setup(__dtb_tegra30_beaver_start);
 
 	tegra_dvc_init();
 	tegra30_tps62366a_ramp_vddcore();
 	tegra30_tps65911_cpu_rail_enable();
 
-	fdt = (uint32_t)__dtb_tegra30_beaver_start - get_runtime_offset();
-
-	tegra_avp_reset_vector(fdt);
+	tegra_avp_reset_vector();
 }
diff --git a/arch/arm/boards/nvidia-jetson-tk1/entry.c b/arch/arm/boards/nvidia-jetson-tk1/entry.c
index 8f112a3..da40f74 100644
--- a/arch/arm/boards/nvidia-jetson-tk1/entry.c
+++ b/arch/arm/boards/nvidia-jetson-tk1/entry.c
@@ -15,9 +15,6 @@
  */
 
 #include <common.h>
-#include <linux/sizes.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
 #include <mach/lowlevel.h>
 #include <mach/lowlevel-dvc.h>
 
@@ -25,15 +22,11 @@ extern char __dtb_tegra124_jetson_tk1_start[];
 
 ENTRY_FUNCTION(start_nvidia_jetson, r0, r1, r2)
 {
-	uint32_t fdt;
-
-	tegra_cpu_lowlevel_setup();
+	tegra_cpu_lowlevel_setup(__dtb_tegra124_jetson_tk1_start);
 
 	tegra_dvc_init();
 	tegra124_dvc_pinmux();
 	tegra124_as3722_enable_essential_rails(0x3c00);
 
-	fdt = (uint32_t)__dtb_tegra124_jetson_tk1_start - get_runtime_offset();
-
-	tegra_avp_reset_vector(fdt);
+	tegra_avp_reset_vector();
 }
diff --git a/arch/arm/boards/toradex-colibri-t20/entry.c b/arch/arm/boards/toradex-colibri-t20/entry.c
index a25958f..9557b13 100644
--- a/arch/arm/boards/toradex-colibri-t20/entry.c
+++ b/arch/arm/boards/toradex-colibri-t20/entry.c
@@ -15,22 +15,15 @@
  */
 
 #include <common.h>
-#include <linux/sizes.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
 #include <mach/lowlevel.h>
 
 extern char __dtb_tegra20_colibri_iris_start[];
 
 static void common_toradex_colibri_t20_iris_start(void)
 {
-	uint32_t fdt;
+	tegra_cpu_lowlevel_setup(__dtb_tegra20_colibri_iris_start);
 
-	tegra_cpu_lowlevel_setup();
-
-	fdt = (uint32_t)__dtb_tegra20_colibri_iris_start - get_runtime_offset();
-
-	tegra_avp_reset_vector(fdt);
+	tegra_avp_reset_vector();
 }
 
 ENTRY_FUNCTION(start_colibri_t20_256_usbload, r0, r1, r2)
diff --git a/arch/arm/boards/toshiba-ac100/entry.c b/arch/arm/boards/toshiba-ac100/entry.c
index fb695c3..56979c9 100644
--- a/arch/arm/boards/toshiba-ac100/entry.c
+++ b/arch/arm/boards/toshiba-ac100/entry.c
@@ -15,20 +15,13 @@
  */
 
 #include <common.h>
-#include <linux/sizes.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
 #include <mach/lowlevel.h>
 
 extern char __dtb_tegra20_paz00_start[];
 
 ENTRY_FUNCTION(start_toshiba_ac100, r0, r1, r2)
 {
-	uint32_t fdt;
+	tegra_cpu_lowlevel_setup(__dtb_tegra20_paz00_start);
 
-	tegra_cpu_lowlevel_setup();
-
-	fdt = (uint32_t)__dtb_tegra20_paz00_start - get_runtime_offset();
-
-	tegra_avp_reset_vector(fdt);
+	tegra_avp_reset_vector();
 }
diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
index 0c76b88..f70688e 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel.h
+++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
@@ -24,6 +24,7 @@
 #ifndef __TEGRA_LOWLEVEL_H
 #define __TEGRA_LOWLEVEL_H
 
+#include <asm/barebox-arm.h>
 #include <linux/compiler.h>
 #include <linux/sizes.h>
 #include <io.h>
@@ -244,18 +245,18 @@ void tegra_ll_delay_usec(int delay)
 }
 
 /* reset vector for the AVP, to be called from board reset vector */
-void tegra_avp_reset_vector(uint32_t boarddata);
+void tegra_avp_reset_vector(void);
 
 /* reset vector for the main CPU complex */
-void tegra_maincomplex_entry(void);
+void tegra_maincomplex_entry(char *fdt);
 
 static __always_inline
-void tegra_cpu_lowlevel_setup(void)
+void tegra_cpu_lowlevel_setup(char *fdt)
 {
 	uint32_t r;
 
 	if (tegra_cpu_is_maincomplex())
-		tegra_maincomplex_entry();
+		tegra_maincomplex_entry(fdt - get_runtime_offset());
 
 	/* set the cpu to SVC32 mode */
 	__asm__ __volatile__("mrs %0, cpsr":"=r"(r));
diff --git a/arch/arm/mach-tegra/tegra_avp_init.c b/arch/arm/mach-tegra/tegra_avp_init.c
index 20fcf3f..16dc65b 100644
--- a/arch/arm/mach-tegra/tegra_avp_init.c
+++ b/arch/arm/mach-tegra/tegra_avp_init.c
@@ -257,14 +257,11 @@ static void tegra_cluster_switch_hp(void)
 	writel(reg, TEGRA_FLOW_CTRL_BASE + FLOW_CLUSTER_CONTROL);
 }
 
-void tegra_avp_reset_vector(uint32_t boarddata)
+void tegra_avp_reset_vector(void)
 {
 	int num_cores;
 	unsigned int entry_address = 0;
 
-	/* put boarddata in scratch reg, for main CPU to fetch after startup */
-	writel(boarddata, TEGRA_PMC_BASE + PMC_SCRATCH(10));
-
 	/* we want to bring up the high performance CPU complex */
 	if (tegra_get_chiptype() >= TEGRA30)
 		tegra_cluster_switch_hp();
diff --git a/arch/arm/mach-tegra/tegra_maincomplex_init.c b/arch/arm/mach-tegra/tegra_maincomplex_init.c
index 6c6bdf6..27bb336 100644
--- a/arch/arm/mach-tegra/tegra_maincomplex_init.c
+++ b/arch/arm/mach-tegra/tegra_maincomplex_init.c
@@ -23,7 +23,7 @@
 #include <mach/tegra20-pmc.h>
 #include <mach/tegra20-car.h>
 
-void tegra_maincomplex_entry(void)
+void tegra_maincomplex_entry(char *fdt)
 {
 	uint32_t rambase, ramsize;
 	enum tegra_chiptype chiptype;
@@ -79,6 +79,5 @@ void tegra_maincomplex_entry(void)
 		unreachable();
 	}
 
-	barebox_arm_entry(rambase, ramsize,
-			  (void *)readl(TEGRA_PMC_BASE + PMC_SCRATCH(10)));
+	barebox_arm_entry(rambase, ramsize, fdt);
 }
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
