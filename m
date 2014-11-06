Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XmLA8-0000Ss-SK
 for barebox@lists.infradead.org; Thu, 06 Nov 2014 11:23:38 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XmL9l-0008A1-Hd
 for barebox@lists.infradead.org; Thu, 06 Nov 2014 12:23:13 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  6 Nov 2014 12:23:13 +0100
Message-Id: <1415272993-29736-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1415272993-29736-1-git-send-email-l.stach@pengutronix.de>
References: <1415272993-29736-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: imx5: add imx5_cpu_lowlevel_init and use in all
 boards
To: barebox@lists.infradead.org

This is similar to what we do on imx6 and makes sure we
apply the errata workarounds early.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/ccxmx51/lowlevel.c                | 3 ++-
 arch/arm/boards/efika-mx-smartbook/lowlevel.c     | 3 ++-
 arch/arm/boards/eukrea_cpuimx51/lowlevel.c        | 3 ++-
 arch/arm/boards/freescale-mx51-babbage/lowlevel.c | 3 ++-
 arch/arm/boards/freescale-mx53-qsb/lowlevel.c     | 5 +++--
 arch/arm/boards/freescale-mx53-smd/lowlevel.c     | 3 ++-
 arch/arm/boards/freescale-mx53-vmx53/lowlevel.c   | 3 ++-
 arch/arm/boards/guf-vincell/lowlevel.c            | 3 ++-
 arch/arm/boards/karo-tx51/lowlevel.c              | 3 ++-
 arch/arm/boards/karo-tx53/lowlevel.c              | 3 ++-
 arch/arm/boards/tqma53/lowlevel.c                 | 5 +++--
 arch/arm/mach-imx/cpu_init.c                      | 7 +++++++
 arch/arm/mach-imx/include/mach/generic.h          | 1 +
 13 files changed, 32 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boards/ccxmx51/lowlevel.c b/arch/arm/boards/ccxmx51/lowlevel.c
index 3e67b314a791..2b3dc42e87c5 100644
--- a/arch/arm/boards/ccxmx51/lowlevel.c
+++ b/arch/arm/boards/ccxmx51/lowlevel.c
@@ -1,11 +1,12 @@
 #include <common.h>
 #include <mach/esdctl.h>
+#include <mach/generic.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include <mach/imx51-regs.h>
 
 void __naked barebox_arm_reset_vector(void)
 {
-	arm_cpu_lowlevel_init();
+	imx5_cpu_lowlevel_init();
 	barebox_arm_entry(MX51_CSD0_BASE_ADDR, SZ_128M, NULL);
 }
diff --git a/arch/arm/boards/efika-mx-smartbook/lowlevel.c b/arch/arm/boards/efika-mx-smartbook/lowlevel.c
index 0d32eee860e4..52454c7d5045 100644
--- a/arch/arm/boards/efika-mx-smartbook/lowlevel.c
+++ b/arch/arm/boards/efika-mx-smartbook/lowlevel.c
@@ -1,5 +1,6 @@
 #include <common.h>
 #include <mach/esdctl.h>
+#include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/imx5.h>
@@ -10,7 +11,7 @@ ENTRY_FUNCTION(start_imx51_genesi_efikasb, r0, r1, r2)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
+	imx5_cpu_lowlevel_init();
 	arm_setup_stack(0x20000000 - 16);
 	imx51_init_lowlevel(800);
 
diff --git a/arch/arm/boards/eukrea_cpuimx51/lowlevel.c b/arch/arm/boards/eukrea_cpuimx51/lowlevel.c
index c3f7b4acbb46..7a85b489d2e3 100644
--- a/arch/arm/boards/eukrea_cpuimx51/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx51/lowlevel.c
@@ -1,9 +1,10 @@
 #include <common.h>
 #include <mach/esdctl.h>
+#include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
 
 void __naked barebox_arm_reset_vector(void)
 {
-	arm_cpu_lowlevel_init();
+	imx5_cpu_lowlevel_init();
 	imx51_barebox_entry(NULL);
 }
diff --git a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
index 5a5a83c436cd..1b9ba16ef6b5 100644
--- a/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
+++ b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
@@ -1,5 +1,6 @@
 #include <common.h>
 #include <mach/esdctl.h>
+#include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
@@ -9,7 +10,7 @@ ENTRY_FUNCTION(start_imx51_babbage, r0, r1, r2)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
+	imx5_cpu_lowlevel_init();
 
 	fdt = __dtb_imx51_babbage_start - get_runtime_offset();
 
diff --git a/arch/arm/boards/freescale-mx53-qsb/lowlevel.c b/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
index 7d1c1d5b2a16..aff6e3bc544c 100644
--- a/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
@@ -1,5 +1,6 @@
 #include <common.h>
 #include <mach/esdctl.h>
+#include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <image-metadata.h>
@@ -10,7 +11,7 @@ ENTRY_FUNCTION(start_imx53_loco, r0, r1, r2)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
+	imx5_cpu_lowlevel_init();
 
 	fdt = __dtb_imx53_qsb_start - get_runtime_offset();
 
@@ -23,7 +24,7 @@ ENTRY_FUNCTION(start_imx53_loco_r, r0, r1, r2)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
+	imx5_cpu_lowlevel_init();
 
 	fdt = __dtb_imx53_qsrb_start - get_runtime_offset();
 
diff --git a/arch/arm/boards/freescale-mx53-smd/lowlevel.c b/arch/arm/boards/freescale-mx53-smd/lowlevel.c
index 1db07e2e2c6c..306db09acfec 100644
--- a/arch/arm/boards/freescale-mx53-smd/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-smd/lowlevel.c
@@ -1,9 +1,10 @@
 #include <common.h>
 #include <mach/esdctl.h>
+#include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
 
 void __naked barebox_arm_reset_vector(void)
 {
-	arm_cpu_lowlevel_init();
+	imx5_cpu_lowlevel_init();
 	imx53_barebox_entry(NULL);
 }
diff --git a/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c b/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
index 4054fd51e255..487a9fd899e4 100644
--- a/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
+++ b/arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
@@ -1,5 +1,6 @@
 #include <common.h>
 #include <mach/esdctl.h>
+#include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
@@ -9,7 +10,7 @@ ENTRY_FUNCTION(start_imx53_vmx53, r0, r1, r2)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
+	imx5_cpu_lowlevel_init();
 
 	fdt = __dtb_imx53_voipac_bsb_start - get_runtime_offset();
 
diff --git a/arch/arm/boards/guf-vincell/lowlevel.c b/arch/arm/boards/guf-vincell/lowlevel.c
index 186c0d9dd02e..00e34fba39f4 100644
--- a/arch/arm/boards/guf-vincell/lowlevel.c
+++ b/arch/arm/boards/guf-vincell/lowlevel.c
@@ -6,6 +6,7 @@
 #include <mach/iomux-v3.h>
 #include <mach/esdctl-v4.h>
 #include <mach/esdctl.h>
+#include <mach/generic.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include <io.h>
@@ -127,7 +128,7 @@ void __bare_init __naked barebox_arm_reset_vector(void)
 {
 	u32 r;
 
-	arm_cpu_lowlevel_init();
+	imx5_cpu_lowlevel_init();
 
 	/* Skip SDRAM initialization if we run from RAM */
 	r = get_pc();
diff --git a/arch/arm/boards/karo-tx51/lowlevel.c b/arch/arm/boards/karo-tx51/lowlevel.c
index c3f7b4acbb46..7a85b489d2e3 100644
--- a/arch/arm/boards/karo-tx51/lowlevel.c
+++ b/arch/arm/boards/karo-tx51/lowlevel.c
@@ -1,9 +1,10 @@
 #include <common.h>
 #include <mach/esdctl.h>
+#include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
 
 void __naked barebox_arm_reset_vector(void)
 {
-	arm_cpu_lowlevel_init();
+	imx5_cpu_lowlevel_init();
 	imx51_barebox_entry(NULL);
 }
diff --git a/arch/arm/boards/karo-tx53/lowlevel.c b/arch/arm/boards/karo-tx53/lowlevel.c
index d82e6669b009..8adbd8d66604 100644
--- a/arch/arm/boards/karo-tx53/lowlevel.c
+++ b/arch/arm/boards/karo-tx53/lowlevel.c
@@ -3,10 +3,11 @@
 #include <asm/barebox-arm.h>
 #include <mach/imx5.h>
 #include <mach/esdctl.h>
+#include <mach/generic.h>
 
 void __naked barebox_arm_reset_vector(void)
 {
-	arm_cpu_lowlevel_init();
+	imx5_cpu_lowlevel_init();
 
 	/*
 	 * For the TX53 rev 8030 the SDRAM setup is not stable without
diff --git a/arch/arm/boards/tqma53/lowlevel.c b/arch/arm/boards/tqma53/lowlevel.c
index cd8721255590..4e129e49f6ab 100644
--- a/arch/arm/boards/tqma53/lowlevel.c
+++ b/arch/arm/boards/tqma53/lowlevel.c
@@ -5,6 +5,7 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/imx5.h>
+#include <mach/generic.h>
 #include <image-metadata.h>
 
 extern char __dtb_imx53_mba53_start[];
@@ -41,7 +42,7 @@ ENTRY_FUNCTION(start_imx53_mba53_512mib, r0, r1, r2)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
+	imx5_cpu_lowlevel_init();
 
 	arm_setup_stack(0xf8020000 - 8);
 
@@ -60,7 +61,7 @@ ENTRY_FUNCTION(start_imx53_mba53_1gib, r0, r1, r2)
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
+	imx5_cpu_lowlevel_init();
 
 	arm_setup_stack(0xf8020000 - 8);
 
diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
index 68eacf7a6020..8b10e63ade80 100644
--- a/arch/arm/mach-imx/cpu_init.c
+++ b/arch/arm/mach-imx/cpu_init.c
@@ -15,6 +15,13 @@
 #include <asm/barebox-arm-head.h>
 #include <asm/errata.h>
 
+void imx5_cpu_lowlevel_init(void)
+{
+	arm_cpu_lowlevel_init();
+
+	enable_arm_errata_709718_war();
+}
+
 void imx6_cpu_lowlevel_init(void)
 {
 	arm_cpu_lowlevel_init();
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 505a54268d94..d4b6a1f7b4fd 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -33,6 +33,7 @@ int imx51_devices_init(void);
 int imx53_devices_init(void);
 int imx6_devices_init(void);
 
+void imx5_cpu_lowlevel_init(void);
 void imx6_cpu_lowlevel_init(void);
 
 /* There's a off-by-one betweem the gpio bank number and the gpiochip */
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
