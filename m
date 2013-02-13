Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3.mail.ru ([94.100.176.131])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5ain-0007AO-Cd
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 11:41:55 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed, 13 Feb 2013 15:41:36 +0400
Message-Id: <1360755704-24105-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH v2 1/9] ARM: clps711x: Rework lowlevel initialization code
To: barebox@lists.infradead.org

This is a rework of CLPS711X low level initialization code which includes:
- Prepare for changing CPU PLL multiplier from board lowlevel code.
- Decrease initial memory size to 8MB. It is minimal known size.
- Fix SDRAM initialization comment about size.
- Turn off all peripherals on startup.
- Skip PLL initialization if CPU is running from external 13 MHz clock.
- Use correct CPU speed for older CPUs without PLL.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/clep7212/lowlevel.c |   53 +++++++++++++++++++++--------------
 1 files changed, 32 insertions(+), 21 deletions(-)

diff --git a/arch/arm/boards/clep7212/lowlevel.c b/arch/arm/boards/clep7212/lowlevel.c
index b4d1bf1..fcee5bf 100644
--- a/arch/arm/boards/clep7212/lowlevel.c
+++ b/arch/arm/boards/clep7212/lowlevel.c
@@ -17,41 +17,52 @@
 
 #include <mach/clps711x.h>
 
-#define MAIN_CLOCK		3686400
-#define CPU_SPEED		92160000
-#define BUS_SPEED		(CPU_SPEED / 2)
-
-#define PLL_VALUE		(((CPU_SPEED * 2) / MAIN_CLOCK) << 24)
-#define SDRAM_REFRESH_RATE	(64 * (BUS_SPEED / (8192 * 1000)))
-
 void __naked __bare_init barebox_arm_reset_vector(void)
 {
-	u32 tmp;
+	const u32 pllmult = 50;
+	u32 cpu, bus;
 
 	arm_cpu_lowlevel_init();
 
-	/* Setup base clock */
+	/* Setup base clocking, Enable SDQM pins  */
 	writel(SYSCON3_CLKCTL0 | SYSCON3_CLKCTL1, SYSCON3);
 	asm("nop");
 
-	/* Setup PLL */
-	writel(PLL_VALUE, PLLW);
-	asm("nop");
+	/* Check if we running from external 13 MHz clock */
+	if (!(readl(SYSFLG2) & SYSFLG2_CKMODE)) {
+		/* Setup PLL */
+		writel(pllmult << 24, PLLW);
+		asm("nop");
+
+		/* Check for old CPUs without PLL */
+		if ((readl(PLLR) >> 24) != pllmult)
+			cpu = 73728000;
+		else
+			cpu = pllmult * 3686400;
+
+		if (cpu >= 36864000)
+			bus = cpu /2;
+		else
+			bus = 36864000 / 2;
+	} else
+		bus = 13000000;
 
 	/* CLKEN select, SDRAM width=32 */
 	writel(SYSCON2_CLKENSL, SYSCON2);
 
-	/* Enable SDQM pins */
-	tmp = readl(SYSCON3);
-	tmp &= ~SYSCON3_ENPD67;
-	writel(tmp, SYSCON3);
+	/* Setup SDRAM params (64MB, 16Bit*2, CAS=3) */
+	writel(SDCONF_CASLAT_3 | SDCONF_SIZE_256 | SDCONF_WIDTH_16 |
+	       SDCONF_CLKCTL | SDCONF_ACTIVE, SDCONF);
 
 	/* Setup Refresh Rate (64ms 8K Blocks) */
-	writel(SDRAM_REFRESH_RATE, SDRFPR);
+	writel((64 * bus) / (8192 * 1000), SDRFPR);
 
-	/* Setup SDRAM (32MB, 16Bit*2, CAS=3) */
-	writel(SDCONF_CASLAT_3 | SDCONF_SIZE_256 | SDCONF_WIDTH_16 |
-	       SDCONF_CLKCTL | SDCONF_ACTIVE, SDCONF);
+	/* Disable UART, IrDa, LCD */
+	writel(0, SYSCON1);
+	/* Disable PWM */
+	writew(0, PMPCON);
+	/* Disable LED flasher */
+	writew(0, LEDFLSH);
 
-	barebox_arm_entry(SDRAM0_BASE, SZ_32M, 0);
+	barebox_arm_entry(SDRAM0_BASE, SZ_8M, 0);
 }
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
