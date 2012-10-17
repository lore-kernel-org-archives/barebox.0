Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOamF-00027T-1w
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 21:03:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 23:03:18 +0200
Message-Id: <1350507817-7819-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
References: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/28] ARM OMAP boards: switch to barebox_arm_entry
To: barebox@lists.infradead.org

All boards use hardcoded SDRAM addresses, copied from the board init file.
OMAP3 boards are a bit special, they had a SoC specific reset() function. This
is renamed to omap3_invalidate_dcache() and called from the board lowlevel init
code now.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/archosg9/Makefile         |    4 ++--
 arch/arm/boards/archosg9/lowlevel.c       |    4 +++-
 arch/arm/boards/beagle/Makefile           |    2 ++
 arch/arm/boards/beagle/lowlevel.c         |   14 ++++++++++++++
 arch/arm/boards/omap343xdsp/Makefile      |    2 ++
 arch/arm/boards/omap343xdsp/lowlevel.c    |   14 ++++++++++++++
 arch/arm/boards/omap3evm/Makefile         |    2 ++
 arch/arm/boards/omap3evm/lowlevel.c       |   10 ++++++++++
 arch/arm/boards/panda/lowlevel.c          |    7 ++++---
 arch/arm/boards/pcm049/lowlevel.c         |    7 ++++---
 arch/arm/boards/phycard-a-l1/Makefile     |    2 ++
 arch/arm/boards/phycard-a-xl2/lowlevel.c  |    7 ++++---
 arch/arm/mach-omap/include/mach/silicon.h |    1 +
 arch/arm/mach-omap/omap3_core.S           |   11 ++++-------
 14 files changed, 68 insertions(+), 19 deletions(-)
 create mode 100644 arch/arm/boards/beagle/lowlevel.c
 create mode 100644 arch/arm/boards/omap343xdsp/lowlevel.c
 create mode 100644 arch/arm/boards/omap3evm/lowlevel.c

diff --git a/arch/arm/boards/archosg9/Makefile b/arch/arm/boards/archosg9/Makefile
index 256eaf6..53b9d5b 100644
--- a/arch/arm/boards/archosg9/Makefile
+++ b/arch/arm/boards/archosg9/Makefile
@@ -1,3 +1,3 @@
 obj-y += board.o
-obj-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel.o mux.o
-pbl-$(CONFIG_MACH_DO_LOWLEVEL_INIT) += lowlevel.o mux.o
+obj-y += lowlevel.o mux.o
+pbl-y += lowlevel.o mux.o
diff --git a/arch/arm/boards/archosg9/lowlevel.c b/arch/arm/boards/archosg9/lowlevel.c
index fa5be1d..c9053bf 100644
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
@@ -63,7 +64,8 @@ static noinline void archosg9_init_lowlevel(void)
 
 	/* Set VCORE1 = 1.3 V, VCORE2 = VCORE3 = 1.21V */
 	omap4_scale_vcores(TPS62361_VSEL0_GPIO);
-	board_init_lowlevel_return();
+
+	barebox_arm_entry(0x80000000, SZ_1G, 0);
 }
 
 void __naked __bare_init reset(void)
diff --git a/arch/arm/boards/beagle/Makefile b/arch/arm/boards/beagle/Makefile
index dcfc293..88c223a 100644
--- a/arch/arm/boards/beagle/Makefile
+++ b/arch/arm/boards/beagle/Makefile
@@ -1 +1,3 @@
 obj-y += board.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/beagle/lowlevel.c b/arch/arm/boards/beagle/lowlevel.c
new file mode 100644
index 0000000..134839e
--- /dev/null
+++ b/arch/arm/boards/beagle/lowlevel.c
@@ -0,0 +1,14 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/silicon.h>
+
+void __naked reset(void)
+{
+	omap3_invalidate_dcache();
+
+	common_reset();
+
+	barebox_arm_entry(0x80000000, SZ_128M, 0);
+}
diff --git a/arch/arm/boards/omap343xdsp/Makefile b/arch/arm/boards/omap343xdsp/Makefile
index dcfc293..88c223a 100644
--- a/arch/arm/boards/omap343xdsp/Makefile
+++ b/arch/arm/boards/omap343xdsp/Makefile
@@ -1 +1,3 @@
 obj-y += board.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/omap343xdsp/lowlevel.c b/arch/arm/boards/omap343xdsp/lowlevel.c
new file mode 100644
index 0000000..134839e
--- /dev/null
+++ b/arch/arm/boards/omap343xdsp/lowlevel.c
@@ -0,0 +1,14 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/silicon.h>
+
+void __naked reset(void)
+{
+	omap3_invalidate_dcache();
+
+	common_reset();
+
+	barebox_arm_entry(0x80000000, SZ_128M, 0);
+}
diff --git a/arch/arm/boards/omap3evm/Makefile b/arch/arm/boards/omap3evm/Makefile
index dcfc293..88c223a 100644
--- a/arch/arm/boards/omap3evm/Makefile
+++ b/arch/arm/boards/omap3evm/Makefile
@@ -1 +1,3 @@
 obj-y += board.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/omap3evm/lowlevel.c b/arch/arm/boards/omap3evm/lowlevel.c
new file mode 100644
index 0000000..ede3829
--- /dev/null
+++ b/arch/arm/boards/omap3evm/lowlevel.c
@@ -0,0 +1,10 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+void __naked reset(void)
+{
+	common_reset();
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
diff --git a/arch/arm/boards/phycard-a-l1/Makefile b/arch/arm/boards/phycard-a-l1/Makefile
index 7041e11..5565c3d 100644
--- a/arch/arm/boards/phycard-a-l1/Makefile
+++ b/arch/arm/boards/phycard-a-l1/Makefile
@@ -15,3 +15,5 @@
 #
 
 obj-y += pca-a-l1.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
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
diff --git a/arch/arm/mach-omap/include/mach/silicon.h b/arch/arm/mach-omap/include/mach/silicon.h
index 5ee1931..1dc4a15 100644
--- a/arch/arm/mach-omap/include/mach/silicon.h
+++ b/arch/arm/mach-omap/include/mach/silicon.h
@@ -28,6 +28,7 @@
 /* If Architecture specific init functions are present */
 #ifndef __ASSEMBLY__
 void omap3_core_init(void);
+void omap3_invalidate_dcache(void);
 #endif /* __ASSEMBLY__ */
 
 #endif /* __ASM_ARCH_OMAP_SILICON_H */
diff --git a/arch/arm/mach-omap/omap3_core.S b/arch/arm/mach-omap/omap3_core.S
index df7c5b4..bbb9461 100644
--- a/arch/arm/mach-omap/omap3_core.S
+++ b/arch/arm/mach-omap/omap3_core.S
@@ -38,10 +38,8 @@
 #include <mach/clocks.h>
 #include <asm/barebox-arm-head.h>
 
-#ifdef CONFIG_MACH_DO_LOWLEVEL_INIT
-ENTRY(reset)
+ENTRY(omap3_invalidate_dcache)
 	/* Invalidate all Dcaches */
-#ifndef CONFIG_CPU_V7_DCACHE_SKIP
 	/* If Arch specific ROM code SMI handling does not exist */
 	mrc	p15, 1, r0, c0, c0, 1	/* read clidr */
 	ands	r3, r0, #0x7000000	/* extract loc from clidr */
@@ -86,8 +84,7 @@ finished_inval:
 	mov	r10, #0			/* swith back to cache level 0 */
 	mcr	p15, 2, r10, c0, c0, 0	/* select current cache level in cssr */
 	isb
-#endif /* CONFIG_CPU_V7_DCACHE_SKIP */
+
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
