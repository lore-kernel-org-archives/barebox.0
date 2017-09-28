Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxVrF-00034p-QJ
 for barebox@lists.infradead.org; Thu, 28 Sep 2017 10:15:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Sep 2017 12:15:30 +0200
Message-Id: <20170928101531.5333-2-s.hauer@pengutronix.de>
In-Reply-To: <20170928101531.5333-1-s.hauer@pengutronix.de>
References: <20170928101531.5333-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: i.MX6ul: Add SoC specific lowlevel_init function
To: Barebox List <barebox@lists.infradead.org>

On i.MX6ul(l) (Cortex A7) We have to set the SMP bit before
enabling the caches, otherwise they won't work. Add a SoC specific
lowlevel_init function to be called by the i.MX6ul(l) boards.

Since this is a quirk of the Cortex A7 core we put the functionality
into a separate function to be reused by other Cortex A7 cores.

Change existing i.MX6ul(l) boards to use the new initialisation
function. It seems this is only needed when booting from USB,
in other boot modes the ROM will already have done the initialisation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-som-imx6/lowlevel.c        | 2 +-
 arch/arm/boards/technexion-pico-hobbit/lowlevel.c | 2 +-
 arch/arm/cpu/lowlevel.S                           | 7 +++++++
 arch/arm/include/asm/barebox-arm-head.h           | 1 +
 arch/arm/mach-imx/cpu_init.c                      | 7 +++++++
 arch/arm/mach-imx/include/mach/generic.h          | 1 +
 6 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/phytec-som-imx6/lowlevel.c b/arch/arm/boards/phytec-som-imx6/lowlevel.c
index 07ac4437ab..29811d34ef 100644
--- a/arch/arm/boards/phytec-som-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx6/lowlevel.c
@@ -56,7 +56,7 @@ static void __noreturn start_imx6_phytec_common(uint32_t size,
 
 	if (cpu_type == IMX6_CPUTYPE_IMX6UL
 	    || cpu_type == IMX6_CPUTYPE_IMX6ULL) {
-		arm_cpu_lowlevel_init();
+		imx6ul_cpu_lowlevel_init();
 		/* OCRAM Free Area is 0x00907000 to 0x00918000 (68KB) */
 		arm_setup_stack(0x00910000 - 8);
 	} else {
diff --git a/arch/arm/boards/technexion-pico-hobbit/lowlevel.c b/arch/arm/boards/technexion-pico-hobbit/lowlevel.c
index aad55127bf..f351e67dd7 100644
--- a/arch/arm/boards/technexion-pico-hobbit/lowlevel.c
+++ b/arch/arm/boards/technexion-pico-hobbit/lowlevel.c
@@ -37,7 +37,7 @@ static void __noreturn start_imx6_pico_hobbit_common(uint32_t size,
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
+	imx6ul_cpu_lowlevel_init();
 
 	arm_setup_stack(0x00910000 - 8);
 
diff --git a/arch/arm/cpu/lowlevel.S b/arch/arm/cpu/lowlevel.S
index e5baa12346..66b05e20a4 100644
--- a/arch/arm/cpu/lowlevel.S
+++ b/arch/arm/cpu/lowlevel.S
@@ -58,3 +58,10 @@ ENTRY(arm_cpu_lowlevel_init)
 
 	mov	pc, r2
 ENDPROC(arm_cpu_lowlevel_init)
+
+ENTRY(cortex_a7_lowlevel_init)
+	mrc	p15, 0, r12, c1, c0, 1
+	orr	r12, r12, (1 << 6)	/* Enable SMP for cortex-a7 to make caches work */
+	mcr	p15, 0, r12, c1, c0, 1
+	mov	pc, lr
+ENDPROC(cortex_a7_lowlevel_init)
diff --git a/arch/arm/include/asm/barebox-arm-head.h b/arch/arm/include/asm/barebox-arm-head.h
index 0a2eb6bdca..bd9c9b1c4f 100644
--- a/arch/arm/include/asm/barebox-arm-head.h
+++ b/arch/arm/include/asm/barebox-arm-head.h
@@ -6,6 +6,7 @@
 #ifndef __ASSEMBLY__
 
 void arm_cpu_lowlevel_init(void);
+void cortex_a7_lowlevel_init(void);
 
 /*
  * 32 bytes at this offset is reserved in the barebox head for board/SoC
diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
index 2b388cad8c..6a6c4c5210 100644
--- a/arch/arm/mach-imx/cpu_init.c
+++ b/arch/arm/mach-imx/cpu_init.c
@@ -14,6 +14,7 @@
 
 #include <asm/barebox-arm-head.h>
 #include <asm/errata.h>
+#include <linux/types.h>
 
 void imx5_cpu_lowlevel_init(void)
 {
@@ -34,6 +35,12 @@ void imx6_cpu_lowlevel_init(void)
 	enable_arm_errata_845369_war();
 }
 
+void imx6ul_cpu_lowlevel_init(void)
+{
+	cortex_a7_lowlevel_init();
+	arm_cpu_lowlevel_init();
+}
+
 void imx7_cpu_lowlevel_init(void)
 {
 	arm_cpu_lowlevel_init();
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 73be9ceb55..f68dc875b0 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -48,6 +48,7 @@ int imx6_devices_init(void);
 
 void imx5_cpu_lowlevel_init(void);
 void imx6_cpu_lowlevel_init(void);
+void imx6ul_cpu_lowlevel_init(void);
 void imx7_cpu_lowlevel_init(void);
 void vf610_cpu_lowlevel_init(void);
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
