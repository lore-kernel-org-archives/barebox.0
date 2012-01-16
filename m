Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rmje9-0008BP-Om
 for barebox@lists.infradead.org; Mon, 16 Jan 2012 10:18:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Jan 2012 11:18:17 +0100
Message-Id: <1326709100-24106-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1326709100-24106-1-git-send-email-s.hauer@pengutronix.de>
References: <1326709100-24106-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/10] ARM omap3: reimplement setup_auxcr in pure asm
To: barebox@lists.infradead.org

This function consists of only inline asm statements, so
use assembly in the first place. Also makes sure that the
function is compiled in arm mode.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/Makefile        |    2 +-
 arch/arm/mach-omap/auxcr.S         |   16 ++++++++++++++++
 arch/arm/mach-omap/omap3_generic.c |   20 +-------------------
 3 files changed, 18 insertions(+), 20 deletions(-)
 create mode 100644 arch/arm/mach-omap/auxcr.S

diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index b219613..87078ae 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -21,7 +21,7 @@
 #
 obj-$(CONFIG_ARCH_OMAP) += syslib.o
 obj-$(CONFIG_OMAP_CLOCK_SOURCE_S32K) += s32k_clksource.o
-obj-$(CONFIG_ARCH_OMAP3) += omap3_core.o omap3_generic.o
+obj-$(CONFIG_ARCH_OMAP3) += omap3_core.o omap3_generic.o auxcr.o
 obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
 obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
 obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
diff --git a/arch/arm/mach-omap/auxcr.S b/arch/arm/mach-omap/auxcr.S
new file mode 100644
index 0000000..b5db773
--- /dev/null
+++ b/arch/arm/mach-omap/auxcr.S
@@ -0,0 +1,16 @@
+
+.arm
+.global setup_auxcr
+setup_auxcr:
+	mov	r12, #0x3
+	mrc	p15, 0, r0, c1, c0, 1
+	orr	r0, r0, #0x10		@ Enable ASA
+	orr	r0, r0, #1 << 5		@ Enable L1NEON
+	.word 0xE1600070		@ SMC
+	mov	r12, #0x2
+	mrc	p15, 1, r0, c9, c0, 2
+	@ Set PLD_FWD bit in L2AUXCR (Cortex-A8 erratum 725233 workaround)
+	orr	r0, r0, #1 << 27
+	.word 0xE1600070		@ SMC
+	bx	lr
+
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index 7219e28..fe7363a 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -419,25 +419,7 @@ static void watchdog_init(void)
  *
  * @return void
  */
-static void setup_auxcr(void)
-{
-	unsigned long i;
-	volatile unsigned int j;
-	/* Save r0, r12 and restore them after usage */
-	__asm__ __volatile__("mov %0, r12":"=r"(j));
-	__asm__ __volatile__("mov %0, r0":"=r"(i));
-
-	/* GP Device ROM code API usage here */
-	/* r12 = AUXCR Write function and r0 value */
-	__asm__ __volatile__("mov r12, #0x3");
-	__asm__ __volatile__("mrc p15, 0, r0, c1, c0, 1");
-	/* Enabling ASA */
-	__asm__ __volatile__("orr r0, r0, #0x10");
-	/* SMI instruction to call ROM Code API */
-	__asm__ __volatile__(".word 0xE1600070");
-	__asm__ __volatile__("mov r0, %0":"=r"(i));
-	__asm__ __volatile__("mov r12, %0":"=r"(j));
-}
+void setup_auxcr(void);
 
 /**
  * @brief Try to unlock the SRAM for general use
-- 
1.7.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
