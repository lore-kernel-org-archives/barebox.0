Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6BJ-0005U0-9G
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 10:46:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 12:46:22 +0200
Message-Id: <1348483583-12586-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1348483583-12586-1-git-send-email-s.hauer@pengutronix.de>
References: <1348483583-12586-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/14] ARM i.MX35: Add function to setup chipselect
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx35-3-stack/3stack.c |   10 ++++------
 arch/arm/boards/guf-cupid/board.c               |    6 +++---
 arch/arm/boards/pcm043/pcm043.c                 |    5 ++---
 arch/arm/mach-imx/imx35.c                       |    9 +++++++++
 arch/arm/mach-imx/include/mach/imx35-regs.h     |    5 -----
 arch/arm/mach-imx/include/mach/weim.h           |    3 +++
 6 files changed, 21 insertions(+), 17 deletions(-)

diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
index 3d4a9cf..9a01424 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
@@ -39,6 +39,7 @@
 #include <generated/mach-types.h>
 
 #include <mach/gpio.h>
+#include <mach/weim.h>
 #include <mach/imx-nand.h>
 #include <mach/imx-regs.h>
 #include <mach/iomux-mx35.h>
@@ -140,9 +141,7 @@ static int f3s_devices_init(void)
 	uint32_t reg;
 
 	/* CS0: Nor Flash */
-	writel(0x0000cf03, CSCR_U(0));
-	writel(0x10000d03, CSCR_L(0));
-	writel(0x00720900, CSCR_A(0));
+	imx35_setup_weimcs(0, 0x0000cf03, 0x10000d03, 0x00720900);
 
 	reg = readl(MX35_CCM_BASE_ADDR + CCM_RCSR);
 	/* some fuses provide us vital information about connected hardware */
@@ -278,9 +277,8 @@ static int f3s_core_init(void)
 {
 	u32 reg;
 
-	writel(0x0000D843, CSCR_U(5)); /* CS5: smc9117 */
-	writel(0x22252521, CSCR_L(5));
-	writel(0x22220A00, CSCR_A(5));
+	/* CS5: smc9117 */
+	imx35_setup_weimcs(5, 0x0000D843, 0x22252521, 0x22220A00);
 
 	/* enable clock for I2C1 and FEC */
 	reg = readl(MX35_CCM_BASE_ADDR + CCM_CGR1);
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index 977d71c..933a9cd 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -36,6 +36,7 @@
 #include <fec.h>
 #include <fb.h>
 #include <asm/mmu.h>
+#include <mach/weim.h>
 #include <mach/imx-ipu-fb.h>
 #include <mach/imx-pll.h>
 #include <mach/iomux-mx35.h>
@@ -301,9 +302,8 @@ static int cupid_core_setup(void)
 	writel(0x0, MX35_MAX_BASE_ADDR + 0xc00);	/* for M4 */
 	writel(0x0, MX35_MAX_BASE_ADDR + 0xd00);	/* for M5 */
 
-	writel(0x0000DCF6, CSCR_U(0)); /* CS0: NOR Flash */
-	writel(0x444A4541, CSCR_L(0));
-	writel(0x44443302, CSCR_A(0));
+	/* CS0: NOR Flash */
+	imx35_setup_weimcs(0, 0x0000DCF6, 0x444A4541, 0x44443302);
 
 	/*
 	 * M3IF Control Register (M3IFCTL)
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 3b4ec77..09bc96a 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -38,6 +38,7 @@
 #include <fb.h>
 #include <led.h>
 #include <asm/mmu.h>
+#include <mach/weim.h>
 #include <mach/imx-ipu-fb.h>
 #include <mach/imx-pll.h>
 #include <mach/iomux-mx35.h>
@@ -122,9 +123,7 @@ static int imx35_devices_init(void)
 	uint32_t reg;
 
 	/* CS0: Nor Flash */
-	writel(0x22C0CF00, CSCR_U(0));
-	writel(0x75000D01, CSCR_L(0));
-	writel(0x00000900, CSCR_A(0));
+	imx35_setup_weimcs(5, 0x22C0CF00, 0x75000D01, 0x00000900);
 
 	led_gpio_register(&led0);
 
diff --git a/arch/arm/mach-imx/imx35.c b/arch/arm/mach-imx/imx35.c
index 2e94f17..2a9f576 100644
--- a/arch/arm/mach-imx/imx35.c
+++ b/arch/arm/mach-imx/imx35.c
@@ -15,10 +15,19 @@
 #include <sizes.h>
 #include <init.h>
 #include <io.h>
+#include <mach/weim.h>
 #include <mach/imx-regs.h>
 #include <mach/iim.h>
 #include <mach/generic.h>
 
+void imx35_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
+		unsigned additional)
+{
+	writel(upper, MX35_WEIM_BASE_ADDR + (cs * 0x10) + 0x0);
+	writel(lower, MX35_WEIM_BASE_ADDR + (cs * 0x10) + 0x4);
+	writel(additional, MX35_WEIM_BASE_ADDR + (cs * 0x10) + 0x8);
+}
+
 int imx_silicon_revision()
 {
 	uint32_t reg;
diff --git a/arch/arm/mach-imx/include/mach/imx35-regs.h b/arch/arm/mach-imx/include/mach/imx35-regs.h
index 223e629..773b414 100644
--- a/arch/arm/mach-imx/include/mach/imx35-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx35-regs.h
@@ -172,9 +172,4 @@
 #define PDR0_AUTO_CON		(1 << 0)
 #define PDR0_PER_SEL		(1 << 26)
 
-#define WEIM_BASE 0xb8002000
-#define CSCR_U(x)     (WEIM_BASE + (x) * 0x10)
-#define CSCR_L(x)     (WEIM_BASE + 4 + (x) * 0x10)
-#define CSCR_A(x)     (WEIM_BASE + 8 + (x) * 0x10)
-
 #endif /* __ASM_ARCH_MX35_REGS_H */
diff --git a/arch/arm/mach-imx/include/mach/weim.h b/arch/arm/mach-imx/include/mach/weim.h
index 40e7b6e..576f87c 100644
--- a/arch/arm/mach-imx/include/mach/weim.h
+++ b/arch/arm/mach-imx/include/mach/weim.h
@@ -7,6 +7,9 @@ void imx27_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
 void imx31_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
 		unsigned additional);
 
+void imx35_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
+		unsigned additional);
+
 void imx1_setup_eimcs(size_t cs, unsigned upper, unsigned lower);
 
 void imx21_setup_eimcs(size_t cs, unsigned upper, unsigned lower);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
