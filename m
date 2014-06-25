Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzhQ0-0000DT-Ki
 for barebox@lists.infradead.org; Wed, 25 Jun 2014 07:14:58 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 25 Jun 2014 09:18:20 +0200
Message-Id: <1403680701-10494-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1403680701-10494-1-git-send-email-dev@lynxeye.de>
References: <1403680701-10494-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 3/4] arm: imx6: use imx6 specific cpu init function
To: barebox@lists.infradead.org

From: Lucas Stach <l.stach@pengutronix.de>

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c |  5 +++--
 arch/arm/boards/datamodul-edm-qmx6/lowlevel.c         |  3 ++-
 arch/arm/boards/dfi-fs700-m60/lowlevel.c              |  7 ++++---
 arch/arm/boards/embest-riotboard/lowlevel.c           |  2 +-
 arch/arm/boards/freescale-mx6-arm2/lowlevel.c         |  3 ++-
 arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c    |  5 +++--
 arch/arm/boards/freescale-mx6-sabresd/lowlevel.c      |  3 ++-
 arch/arm/boards/gk802/lowlevel.c                      |  3 ++-
 arch/arm/boards/guf-santaro/lowlevel.c                |  3 ++-
 arch/arm/boards/phytec-phycard-imx6/lowlevel.c        |  2 +-
 arch/arm/boards/phytec-phyflex-imx6/lowlevel.c        | 10 +++++-----
 arch/arm/boards/solidrun-hummingboard/lowlevel.c      |  3 ++-
 arch/arm/boards/tqma6x/lowlevel.c                     |  4 ++--
 arch/arm/boards/udoo/lowlevel.c                       |  3 ++-
 arch/arm/boards/variscite-mx6/lowlevel.c              |  2 +-
 15 files changed, 34 insertions(+), 24 deletions(-)

diff --git a/arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c b/arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c
index 60a84ef..5371be6 100644
--- a/arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c
+++ b/arch/arm/boards/boundarydevices-nitrogen6x/lowlevel.c
@@ -1,5 +1,6 @@
 #include <common.h>
 #include <sizes.h>
+#include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
@@ -9,7 +10,7 @@ ENTRY_FUNCTION(start_imx6q_nitrogen6x_1g, r0, r1, r2)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
+	imx6_cpu_lowlevel_init();
 
 	fdt = __dtb_imx6q_nitrogen6x_start - get_runtime_offset();
 
@@ -22,7 +23,7 @@ ENTRY_FUNCTION(start_imx6dl_nitrogen6x_1g, r0, r1, r2)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
+	imx6_cpu_lowlevel_init();
 
 	fdt = __dtb_imx6dl_nitrogen6x_start - get_runtime_offset();
 
diff --git a/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c b/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
index b1ce4e9..914c275 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
+++ b/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
@@ -21,6 +21,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/imx6-mmdc.h>
+#include <mach/generic.h>
 
 static void sdram_init(void)
 {
@@ -142,7 +143,7 @@ ENTRY_FUNCTION(start_imx6_realq7, r0, r1, r2)
 	unsigned long sdram = 0x10000000;
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
+	imx6_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00940000 - 8);
 
diff --git a/arch/arm/boards/dfi-fs700-m60/lowlevel.c b/arch/arm/boards/dfi-fs700-m60/lowlevel.c
index 541e6c1..81b3530 100644
--- a/arch/arm/boards/dfi-fs700-m60/lowlevel.c
+++ b/arch/arm/boards/dfi-fs700-m60/lowlevel.c
@@ -21,6 +21,7 @@
 #include <asm/barebox-arm.h>
 #include <mach/imx6-mmdc.h>
 #include <mach/imx6-regs.h>
+#include <mach/generic.h>
 
 #include <debug_ll.h>
 
@@ -106,7 +107,7 @@ ENTRY_FUNCTION(start_imx6q_dfi_fs700_m60_6q_nanya, r0, r1, r2)
 	void *fdt;
 	int i;
 
-	arm_cpu_lowlevel_init();
+	imx6_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00940000 - 8);
 
@@ -125,7 +126,7 @@ ENTRY_FUNCTION(start_imx6q_dfi_fs700_m60_6q_micron, r0, r1, r2)
 	void *fdt;
 	int i;
 
-	arm_cpu_lowlevel_init();
+	imx6_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00940000 - 8);
 
@@ -148,7 +149,7 @@ ENTRY_FUNCTION(start_imx6dl_dfi_fs700_m60_6s, r0, r1, r2)
 	void *fdt;
 	int i;
 
-	arm_cpu_lowlevel_init();
+	imx6_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00920000 - 8);
 
diff --git a/arch/arm/boards/embest-riotboard/lowlevel.c b/arch/arm/boards/embest-riotboard/lowlevel.c
index 64edd61..c4ef287 100644
--- a/arch/arm/boards/embest-riotboard/lowlevel.c
+++ b/arch/arm/boards/embest-riotboard/lowlevel.c
@@ -30,7 +30,7 @@ ENTRY_FUNCTION(start_imx6s_riotboard, r0, r1, r2)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
+	imx6_cpu_lowlevel_init();
 
 	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
 		writel(0x4, 0x020e016c);
diff --git a/arch/arm/boards/freescale-mx6-arm2/lowlevel.c b/arch/arm/boards/freescale-mx6-arm2/lowlevel.c
index 53783bb..5676711 100644
--- a/arch/arm/boards/freescale-mx6-arm2/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6-arm2/lowlevel.c
@@ -2,9 +2,10 @@
 #include <sizes.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
+#include <mach/generic.h>
 
 void __naked barebox_arm_reset_vector(void)
 {
-	arm_cpu_lowlevel_init();
+	imx6_cpu_lowlevel_init();
 	barebox_arm_entry(0x10000000, SZ_2G, NULL);
 }
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c b/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
index a154381..1b47965 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/lowlevel.c
@@ -1,5 +1,6 @@
 #include <common.h>
 #include <sizes.h>
+#include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
@@ -9,7 +10,7 @@ ENTRY_FUNCTION(start_imx6q_sabrelite, r0, r1, r2)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
+	imx6_cpu_lowlevel_init();
 
 	fdt = __dtb_imx6q_sabrelite_start - get_runtime_offset();
 
@@ -22,7 +23,7 @@ ENTRY_FUNCTION(start_imx6dl_sabrelite, r0, r1, r2)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
+	imx6_cpu_lowlevel_init();
 
 	fdt = __dtb_imx6dl_sabrelite_start - get_runtime_offset();
 
diff --git a/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
index 325de84..bf18459 100644
--- a/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx6-sabresd/lowlevel.c
@@ -1,5 +1,6 @@
 #include <common.h>
 #include <sizes.h>
+#include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
@@ -9,7 +10,7 @@ ENTRY_FUNCTION(start_imx6q_sabresd, r0, r1, r2)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
+	imx6_cpu_lowlevel_init();
 
 	fdt = __dtb_imx6q_sabresd_start - get_runtime_offset();
 
diff --git a/arch/arm/boards/gk802/lowlevel.c b/arch/arm/boards/gk802/lowlevel.c
index bfedfb6..de744a2 100644
--- a/arch/arm/boards/gk802/lowlevel.c
+++ b/arch/arm/boards/gk802/lowlevel.c
@@ -1,5 +1,6 @@
 #include <common.h>
 #include <sizes.h>
+#include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
@@ -9,7 +10,7 @@ ENTRY_FUNCTION(start_imx6_gk802, r0, r1, r2)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
+	imx6_cpu_lowlevel_init();
 
 	fdt = __dtb_imx6q_gk802_start - get_runtime_offset();
 	barebox_arm_entry(0x10000000, SZ_1G, fdt);
diff --git a/arch/arm/boards/guf-santaro/lowlevel.c b/arch/arm/boards/guf-santaro/lowlevel.c
index daf9709..02de84c 100644
--- a/arch/arm/boards/guf-santaro/lowlevel.c
+++ b/arch/arm/boards/guf-santaro/lowlevel.c
@@ -3,6 +3,7 @@
 #include <io.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
+#include <mach/generic.h>
 #include <mach/imx6-regs.h>
 #include <debug_ll.h>
 
@@ -33,7 +34,7 @@ ENTRY_FUNCTION(start_imx6q_guf_santaro, r0, r1, r2)
 	void *fdt;
 	int i;
 
-	arm_cpu_lowlevel_init();
+	imx6_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00920000 - 8);
 
diff --git a/arch/arm/boards/phytec-phycard-imx6/lowlevel.c b/arch/arm/boards/phytec-phycard-imx6/lowlevel.c
index 64312b0..b31638c 100644
--- a/arch/arm/boards/phytec-phycard-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-imx6/lowlevel.c
@@ -59,7 +59,7 @@ static void __noreturn start_imx6q_phytec_pbaa03_common(uint32_t size)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
+	imx6_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00920000 - 8);
 
diff --git a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
index 6c6f660..ba6dab7 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
@@ -61,7 +61,7 @@ ENTRY_FUNCTION(start_phytec_pbab01_1gib, r0, r1, r2)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
+	imx6_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00920000 - 8);
 
@@ -77,7 +77,7 @@ ENTRY_FUNCTION(start_phytec_pbab01_2gib, r0, r1, r2)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
+	imx6_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00920000 - 8);
 
@@ -95,7 +95,7 @@ ENTRY_FUNCTION(start_phytec_pbab01_4gib, r0, r1, r2)
 
 	__barebox_arm_head();
 
-	arm_cpu_lowlevel_init();
+	imx6_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00920000 - 8);
 
@@ -110,7 +110,7 @@ ENTRY_FUNCTION(start_phytec_pbab01dl_1gib, r0, r1, r2)
 
         __barebox_arm_head();
 
-        arm_cpu_lowlevel_init();
+	imx6_cpu_lowlevel_init();
 
         arm_setup_stack(0x00920000 - 8);
 
@@ -125,7 +125,7 @@ ENTRY_FUNCTION(start_phytec_pbab01s_512mb, r0, r1, r2)
 
 	__barebox_arm_head();
 
-	arm_cpu_lowlevel_init();
+	imx6_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00920000 - 8);
 
diff --git a/arch/arm/boards/solidrun-hummingboard/lowlevel.c b/arch/arm/boards/solidrun-hummingboard/lowlevel.c
index 8710d85..eb52838 100644
--- a/arch/arm/boards/solidrun-hummingboard/lowlevel.c
+++ b/arch/arm/boards/solidrun-hummingboard/lowlevel.c
@@ -1,5 +1,6 @@
 #include <common.h>
 #include <sizes.h>
+#include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
@@ -9,7 +10,7 @@ ENTRY_FUNCTION(start_imx6dl_hummingboard, r0, r1, r2)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
+	imx6_cpu_lowlevel_init();
 
 	fdt = __dtb_imx6dl_hummingboard_start - get_runtime_offset();
 	barebox_arm_entry(0x10000000, SZ_512M, fdt);
diff --git a/arch/arm/boards/tqma6x/lowlevel.c b/arch/arm/boards/tqma6x/lowlevel.c
index aed95e6..d2eea16 100644
--- a/arch/arm/boards/tqma6x/lowlevel.c
+++ b/arch/arm/boards/tqma6x/lowlevel.c
@@ -45,7 +45,7 @@ ENTRY_FUNCTION(start_imx6q_mba6x, r0, r1, r2)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
+	imx6_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00920000 - 8);
 
@@ -66,7 +66,7 @@ ENTRY_FUNCTION(start_imx6dl_mba6x, r0, r1, r2)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
+	imx6_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00920000 - 8);
 
diff --git a/arch/arm/boards/udoo/lowlevel.c b/arch/arm/boards/udoo/lowlevel.c
index 5eac7a3..3d9fc68 100644
--- a/arch/arm/boards/udoo/lowlevel.c
+++ b/arch/arm/boards/udoo/lowlevel.c
@@ -1,5 +1,6 @@
 #include <common.h>
 #include <sizes.h>
+#include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
@@ -9,7 +10,7 @@ ENTRY_FUNCTION(start_imx6_udoo, r0, r1, r2)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
+	imx6_cpu_lowlevel_init();
 
 	fdt = __dtb_imx6q_udoo_start - get_runtime_offset();
 
diff --git a/arch/arm/boards/variscite-mx6/lowlevel.c b/arch/arm/boards/variscite-mx6/lowlevel.c
index a2c0874..74f3a77 100644
--- a/arch/arm/boards/variscite-mx6/lowlevel.c
+++ b/arch/arm/boards/variscite-mx6/lowlevel.c
@@ -61,7 +61,7 @@ ENTRY_FUNCTION(start_variscite_custom, r0, r1, r2)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
+	imx6_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00920000 - 8);
 
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
