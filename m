Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U1BXT-0004MO-9i
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 08:00:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Feb 2013 08:59:21 +0100
Message-Id: <1359705587-9762-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
References: <1359705587-9762-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 08/34] ARM OMAP boards: switch to barebox_arm_entry
To: barebox@lists.infradead.org

All boards use hardcoded SDRAM addresses, copied from the board init file.
OMAP3 boards are a bit special, they had a SoC specific reset() function. This
is renamed to omap3_invalidate_dcache() and called from the board lowlevel init
code now.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                                |    2 ++
 arch/arm/boards/archosg9/Makefile               |    4 ++--
 arch/arm/boards/archosg9/lowlevel.c             |    3 ++-
 arch/arm/boards/beagle/lowlevel.c               |   16 ++++++++++++++--
 arch/arm/boards/beaglebone/Makefile             |    2 ++
 arch/arm/boards/beaglebone/lowlevel.c           |   12 +++++++++++-
 arch/arm/boards/omap343xdsp/lowlevel.c          |   15 +++++++++++++--
 arch/arm/boards/omap3evm/lowlevel.c             |   13 +++++++++++--
 arch/arm/boards/panda/lowlevel.c                |    7 ++++---
 arch/arm/boards/pcm049/lowlevel.c               |    7 ++++---
 arch/arm/boards/pcm051/Makefile                 |    2 ++
 arch/arm/boards/pcm051/lowlevel.c               |   11 +++++++++++
 arch/arm/boards/phycard-a-l1/lowlevel.c         |   12 ++++++++++--
 arch/arm/boards/phycard-a-xl2/lowlevel.c        |    7 ++++---
 arch/arm/mach-omap/Kconfig                      |    5 -----
 arch/arm/mach-omap/include/mach/omap3-silicon.h |    1 +
 arch/arm/mach-omap/omap3_core.S                 |   11 ++++-------
 17 files changed, 97 insertions(+), 33 deletions(-)
 create mode 100644 arch/arm/boards/pcm051/lowlevel.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 627c1b5..96ee516 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -82,6 +82,8 @@ config ARCH_OMAP
 	bool "TI OMAP"
 	select HAS_DEBUG_LL
 	select GPIOLIB
+	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
 
 config ARCH_PXA
 	bool "Intel/Marvell PXA based"
diff --git a/arch/arm/boards/archosg9/Makefile b/arch/arm/boards/archosg9/Makefile
index 450c03f..4cc5a2e 100644
--- a/arch/arm/boards/archosg9/Makefile
+++ b/arch/arm/boards/archosg9/Makefile
@@ -1,4 +1,4 @@
 obj-y += board.o
 obj-$(CONFIG_ARM_BOARD_APPEND_ATAG) += archos_features.o
-obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel.o mux.o
-pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel.o mux.o
+obj-y += lowlevel.o mux.o
+pbl-y += lowlevel.o mux.o
diff --git a/arch/arm/boards/archosg9/lowlevel.c b/arch/arm/boards/archosg9/lowlevel.c
index aea6342..26808f6 100644
--- a/arch/arm/boards/archosg9/lowlevel.c
+++ b/arch/arm/boards/archosg9/lowlevel.c
@@ -13,6 +13,7 @@
 #include <common.h>
 #include <io.h>
 #include <init.h>
+#include <sizes.h>
 #include <mach/omap4-mux.h>
 #include <mach/omap4-silicon.h>
 #include <mach/omap4-clock.h>
@@ -63,7 +64,7 @@ static noinline void archosg9_init_lowlevel(void)
 
 	omap4_ddr_init(&ddr_regs_400_mhz_2cs, &core);
 
-	board_init_lowlevel_return();
+	barebox_arm_entry(0x80000000, SZ_1G, 0);
 }
 
 void __naked __bare_init reset(void)
diff --git a/arch/arm/boards/beagle/lowlevel.c b/arch/arm/boards/beagle/lowlevel.c
index 677f055..c0abbe8 100644
--- a/arch/arm/boards/beagle/lowlevel.c
+++ b/arch/arm/boards/beagle/lowlevel.c
@@ -1,5 +1,7 @@
 #include <io.h>
-#include <init.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
 #include <mach/control.h>
 #include <mach/omap3-silicon.h>
 #include <mach/omap3-mux.h>
@@ -164,4 +166,14 @@ static int beagle_board_init(void)
 
 	return 0;
 }
-pure_initcall(beagle_board_init);
+
+void __naked reset(void)
+{
+	omap3_invalidate_dcache();
+
+	common_reset();
+
+	beagle_board_init();
+
+	barebox_arm_entry(0x80000000, SZ_128M, 0);
+}
diff --git a/arch/arm/boards/beaglebone/Makefile b/arch/arm/boards/beaglebone/Makefile
index 88c223a..3b7261c 100644
--- a/arch/arm/boards/beaglebone/Makefile
+++ b/arch/arm/boards/beaglebone/Makefile
@@ -1,3 +1,5 @@
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
 obj-y += board.o
 obj-y += lowlevel.o
 pbl-y += lowlevel.o
diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index d446e8d..b565c74 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -1,6 +1,8 @@
 #include <init.h>
 #include <sizes.h>
 #include <io.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
 #include <mach/am33xx-silicon.h>
 #include <mach/am33xx-clock.h>
 #include <mach/sdrc.h>
@@ -245,4 +247,12 @@ static int beaglebone_board_init(void)
 
 	return 0;
 }
-pure_initcall(beaglebone_board_init);
+
+void __naked reset(void)
+{
+	common_reset();
+
+	beaglebone_board_init();
+
+	barebox_arm_entry(0x80000000, SZ_256M, 0);
+}
diff --git a/arch/arm/boards/omap343xdsp/lowlevel.c b/arch/arm/boards/omap343xdsp/lowlevel.c
index 0d2ccd4..403de91 100644
--- a/arch/arm/boards/omap343xdsp/lowlevel.c
+++ b/arch/arm/boards/omap343xdsp/lowlevel.c
@@ -1,7 +1,8 @@
 #include <common.h>
 #include <io.h>
-#include <init.h>
 #include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
 #include <mach/omap3-mux.h>
 #include <mach/sdrc.h>
 #include <mach/control.h>
@@ -543,4 +544,14 @@ static int sdp343x_board_init(void)
 
 	return 0;
 }
-pure_initcall(sdp343x_board_init);
+
+void __naked reset(void)
+{
+	omap3_invalidate_dcache();
+
+	common_reset();
+
+	sdp343x_board_init();
+
+	barebox_arm_entry(0x80000000, SZ_128M, 0);
+}
diff --git a/arch/arm/boards/omap3evm/lowlevel.c b/arch/arm/boards/omap3evm/lowlevel.c
index 9050c09..49ecb85 100644
--- a/arch/arm/boards/omap3evm/lowlevel.c
+++ b/arch/arm/boards/omap3evm/lowlevel.c
@@ -1,7 +1,8 @@
-#include <common.h>
 #include <io.h>
 #include <init.h>
 #include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
 #include <mach/omap3-mux.h>
 #include <mach/sdrc.h>
 #include <mach/control.h>
@@ -157,4 +158,12 @@ static int omap3_evm_board_init(void)
 
 	return 0;
 }
-pure_initcall(omap3_evm_board_init);
+
+void __naked reset(void)
+{
+	common_reset();
+
+	omap3_evm_board_init();
+
+	barebox_arm_entry(0x80000000, SZ_128M, 0);
+}
diff --git a/arch/arm/boards/panda/lowlevel.c b/arch/arm/boards/panda/lowlevel.c
index 36e2bc5..df0f9c1 100644
--- a/arch/arm/boards/panda/lowlevel.c
+++ b/arch/arm/boards/panda/lowlevel.c
@@ -18,6 +18,7 @@
  */
 #include <common.h>
 #include <io.h>
+#include <sizes.h>
 #include <mach/omap4-mux.h>
 #include <mach/omap4-silicon.h>
 #include <mach/omap4-clock.h>
@@ -70,8 +71,6 @@ static void noinline panda_init_lowlevel(void)
 
 	/* Set VCORE1 = 1.3 V, VCORE2 = VCORE3 = 1.21V */
 	omap4_scale_vcores(TPS62361_VSEL0_GPIO);
-
-	board_init_lowlevel_return();
 }
 
 void reset(void)
@@ -79,9 +78,11 @@ void reset(void)
 	common_reset();
 
 	if (get_pc() > 0x80000000)
-		board_init_lowlevel_return();
+		goto out;
 
 	arm_setup_stack(0x4030d000);
 
 	panda_init_lowlevel();
+out:
+	barebox_arm_entry(0x80000000, SZ_1G, 0);
 }
diff --git a/arch/arm/boards/pcm049/lowlevel.c b/arch/arm/boards/pcm049/lowlevel.c
index b64244c..8ecf81a 100644
--- a/arch/arm/boards/pcm049/lowlevel.c
+++ b/arch/arm/boards/pcm049/lowlevel.c
@@ -18,6 +18,7 @@
  */
 #include <common.h>
 #include <io.h>
+#include <sizes.h>
 #include <mach/omap4-mux.h>
 #include <mach/omap4-silicon.h>
 #include <mach/omap4-clock.h>
@@ -80,8 +81,6 @@ static void noinline pcm049_init_lowlevel(void)
 	sr32(0x4A30a31C, 16, 4, 0x0); /* set divisor to 1 */
 	sr32(0x4A30a110, 0, 1, 0x1);  /* set the clock source to active */
 	sr32(0x4A30a110, 2, 2, 0x3);  /* enable clocks */
-
-	board_init_lowlevel_return();
 }
 
 void reset(void)
@@ -89,9 +88,11 @@ void reset(void)
 	common_reset();
 
 	if (get_pc() > 0x80000000)
-		board_init_lowlevel_return();
+		goto out;
 
 	arm_setup_stack(0x4030d000);
 
 	pcm049_init_lowlevel();
+out:
+	barebox_arm_entry(0x80000000, SZ_512M, 0);
 }
diff --git a/arch/arm/boards/pcm051/Makefile b/arch/arm/boards/pcm051/Makefile
index dcfc293..8a571d9 100644
--- a/arch/arm/boards/pcm051/Makefile
+++ b/arch/arm/boards/pcm051/Makefile
@@ -1 +1,3 @@
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
 obj-y += board.o
diff --git a/arch/arm/boards/pcm051/lowlevel.c b/arch/arm/boards/pcm051/lowlevel.c
new file mode 100644
index 0000000..683fdce
--- /dev/null
+++ b/arch/arm/boards/pcm051/lowlevel.c
@@ -0,0 +1,11 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+void __naked reset(void)
+{
+	common_reset();
+
+	barebox_arm_entry(0x80000000, SZ_512M, 0);
+}
diff --git a/arch/arm/boards/phycard-a-l1/lowlevel.c b/arch/arm/boards/phycard-a-l1/lowlevel.c
index d82c43d..6043d8a 100644
--- a/arch/arm/boards/phycard-a-l1/lowlevel.c
+++ b/arch/arm/boards/phycard-a-l1/lowlevel.c
@@ -1,7 +1,8 @@
-#include <common.h>
 #include <io.h>
 #include <init.h>
 #include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
 #include <mach/omap3-mux.h>
 #include <mach/sdrc.h>
 #include <mach/control.h>
@@ -247,5 +248,12 @@ static int pcaal1_board_init(void)
 
 	return 0;
 }
-pure_initcall(pcaal1_board_init);
 
+void __naked reset(void)
+{
+	common_reset();
+
+	pcaal1_board_init();
+
+	barebox_arm_entry(0x80000000, SZ_256M, 0);
+}
diff --git a/arch/arm/boards/phycard-a-xl2/lowlevel.c b/arch/arm/boards/phycard-a-xl2/lowlevel.c
index 5d8693a..f8f4db5 100644
--- a/arch/arm/boards/phycard-a-xl2/lowlevel.c
+++ b/arch/arm/boards/phycard-a-xl2/lowlevel.c
@@ -18,6 +18,7 @@
  */
 #include <common.h>
 #include <io.h>
+#include <sizes.h>
 #include <mach/omap4-mux.h>
 #include <mach/omap4-silicon.h>
 #include <mach/omap4-clock.h>
@@ -80,8 +81,6 @@ static noinline void pcaaxl2_init_lowlevel(void)
 	sr32(0x4A30a31C, 16, 4, 0x0); /* set divisor to 1 */
 	sr32(0x4A30a110, 0, 1, 0x1);  /* set the clock source to active */
 	sr32(0x4A30a110, 2, 2, 0x3);  /* enable clocks */
-
-	board_init_lowlevel_return();
 }
 
 void reset(void)
@@ -89,9 +88,11 @@ void reset(void)
 	common_reset();
 
 	if (get_pc() > 0x80000000)
-		board_init_lowlevel_return();
+		goto out;
 
 	arm_setup_stack(0x4030d000);
 
 	pcaaxl2_init_lowlevel();
+out:
+	barebox_arm_entry(0x80000000, SZ_512M, 0);
 }
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index f659184..a87fc4b 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -29,7 +29,6 @@ config ARCH_OMAP3
 	bool "OMAP3"
 	select CPU_V7
 	select GENERIC_GPIO
-	select MACH_HAS_LOWLEVEL_INIT
 	select OMAP_CLOCK_SOURCE_S32K
 	help
 	  Say Y here if you are using Texas Instrument's OMAP343x based platform
@@ -148,7 +147,6 @@ config MACH_OMAP3EVM
 
 config MACH_PANDA
 	bool "Texas Instrument's Panda Board"
-	select MACH_HAS_LOWLEVEL_INIT
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	depends on ARCH_OMAP4
 	help
@@ -156,7 +154,6 @@ config MACH_PANDA
 
 config MACH_ARCHOSG9
 	bool "Archos G9 tablets"
-	select MACH_HAS_LOWLEVEL_INIT
 	depends on ARCH_OMAP4
 	help
 	  Say Y here if you are using OMAP4-based Archos G9 tablet
@@ -164,7 +161,6 @@ config MACH_ARCHOSG9
 config MACH_PCM049
 	bool "Phytec phyCORE pcm049"
 	depends on ARCH_OMAP4
-	select MACH_HAS_LOWLEVEL_INIT
 	help
 	  Say Y here if you are using Phytecs phyCORE pcm049 board
 	  based on OMAP4
@@ -177,7 +173,6 @@ config MACH_PCAAL1
 
 config MACH_PCAAXL2
 	bool "Phytec phyCARD XL2"
-	select MACH_HAS_LOWLEVEL_INIT
 	depends on ARCH_OMAP4
 	help
 	  Say Y here if you are using a phyCARD-A-XL1 PCA-A-XL1
diff --git a/arch/arm/mach-omap/include/mach/omap3-silicon.h b/arch/arm/mach-omap/include/mach/omap3-silicon.h
index 282b587..43b2953 100644
--- a/arch/arm/mach-omap/include/mach/omap3-silicon.h
+++ b/arch/arm/mach-omap/include/mach/omap3-silicon.h
@@ -133,6 +133,7 @@
 /* If Architecture specific init functions are present */
 #ifndef __ASSEMBLY__
 void omap3_core_init(void);
+void omap3_invalidate_dcache(void);
 #endif /* __ASSEMBLY__ */
 
 #endif /* __ASM_ARCH_OMAP3_H */
diff --git a/arch/arm/mach-omap/omap3_core.S b/arch/arm/mach-omap/omap3_core.S
index bc32f55..a47e248 100644
--- a/arch/arm/mach-omap/omap3_core.S
+++ b/arch/arm/mach-omap/omap3_core.S
@@ -33,9 +33,8 @@
 #include <mach/clocks.h>
 #include <asm/barebox-arm-head.h>
 
-#ifdef CONFIG_MACH_DO_LOWLEVEL_INIT
-.section .text.__reset
-ENTRY(reset)
+.section .text.__omap3_invalidate_dcache
+ENTRY(omap3_invalidate_dcache)
 	/* Invalidate all Dcaches */
 #ifndef CONFIG_CPU_V7_DCACHE_SKIP
 	/* If Arch specific ROM code SMI handling does not exist */
@@ -83,8 +82,6 @@ finished_inval:
 	mcr	p15, 2, r10, c0, c0, 0	/* select current cache level in cssr */
 	isb
 #endif /* CONFIG_CPU_V7_DCACHE_SKIP */
-	common_reset r0
 	/* back to arch calling code */
-	b board_init_lowlevel_return
-ENDPROC(reset)
-#endif
+	bx lr
+ENDPROC(omap3_invalidate_dcache)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
