Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6BJ-0005Tt-9H
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 10:46:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 12:46:20 +0200
Message-Id: <1348483583-12586-12-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/14] ARM i.MX21: Add function to setup chipselect
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/imx21ads/imx21ads.c         |   27 +++++++++------------------
 arch/arm/mach-imx/imx21.c                   |    8 ++++++++
 arch/arm/mach-imx/include/mach/imx21-regs.h |   16 ----------------
 arch/arm/mach-imx/include/mach/weim.h       |    2 ++
 4 files changed, 19 insertions(+), 34 deletions(-)

diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
index 42b0162..22406be 100644
--- a/arch/arm/boards/imx21ads/imx21ads.c
+++ b/arch/arm/boards/imx21ads/imx21ads.c
@@ -27,6 +27,7 @@
 #include <asm/barebox-arm.h>
 #include <io.h>
 #include <mach/gpio.h>
+#include <mach/weim.h>
 #include <partition.h>
 #include <fs.h>
 #include <fcntl.h>
@@ -83,26 +84,16 @@ static int imx21ads_timing_init(void)
 
 	/* Configure External Interface Module */
 	/* CS0: burst flash */
-	CS0U = 0x00003E00;
-	CS0L = 0x00000E01;
+	imx21_setup_eimcs(0, 0x00003E00, 0x00000E01);
 
 	/* CS1: Ethernet controller, external UART, memory-mapped I/O (16-bit) */
-	CS1U = 0x00002000;
-	CS1L = 0x11118501;
-
-	/* CS2: disable (not available, since CSD0 in use) */
-	CS2U = 0x0;
-	CS2L = 0x0;
-
-	/* CS3: disable */
-	CS3U = 0x0;
-	CS3L = 0x0;
-	/* CS4: disable */
-	CS4U = 0x0;
-	CS4L = 0x0;
-	/* CS5: disable */
-	CS5U = 0x0;
-	CS5L = 0x0;
+	imx21_setup_eimcs(1, 0x00002000, 0x11118501);
+
+	/* CS2-CS5: disable */
+	imx21_setup_eimcs(2, 0x0, 0x0);
+	imx21_setup_eimcs(3, 0x0, 0x0);
+	imx21_setup_eimcs(4, 0x0, 0x0);
+	imx21_setup_eimcs(5, 0x0, 0x0);
 
 	temp = PCDR0;
 	temp &= ~0xF000;
diff --git a/arch/arm/mach-imx/imx21.c b/arch/arm/mach-imx/imx21.c
index 8d909ce..5448ca4 100644
--- a/arch/arm/mach-imx/imx21.c
+++ b/arch/arm/mach-imx/imx21.c
@@ -13,7 +13,15 @@
 
 #include <common.h>
 #include <init.h>
+#include <io.h>
 #include <mach/imx-regs.h>
+#include <mach/weim.h>
+
+void imx21_setup_eimcs(size_t cs, unsigned upper, unsigned lower)
+{
+	writel(upper, MX21_EIM_BASE_ADDR + cs * 8);
+	writel(lower, MX21_EIM_BASE_ADDR + 4 + cs * 8);
+}
 
 int imx_silicon_revision(void)
 {
diff --git a/arch/arm/mach-imx/include/mach/imx21-regs.h b/arch/arm/mach-imx/include/mach/imx21-regs.h
index 6f2000b..9952b8b 100644
--- a/arch/arm/mach-imx/include/mach/imx21-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx21-regs.h
@@ -108,22 +108,6 @@
 #define SDRST  __REG(MX21_X_MEMC_BASE_ADDR + 0x18) /* SDRAM Reset Register */
 #define SDMISC __REG(MX21_X_MEMC_BASE_ADDR + 0x14) /* SDRAM Miscellaneous Register */
 
-
-/* Chip Select Registers */
-#define CS0U __REG(MX21_EIM_BASE_ADDR + 0x00) /* Chip Select 0 Upper Register    */
-#define CS0L __REG(MX21_EIM_BASE_ADDR + 0x04) /* Chip Select 0 Lower Register    */
-#define CS1U __REG(MX21_EIM_BASE_ADDR + 0x08) /* Chip Select 1 Upper Register    */
-#define CS1L __REG(MX21_EIM_BASE_ADDR + 0x0C) /* Chip Select 1 Lower Register    */
-#define CS2U __REG(MX21_EIM_BASE_ADDR + 0x10) /* Chip Select 2 Upper Register    */
-#define CS2L __REG(MX21_EIM_BASE_ADDR + 0x14) /* Chip Select 2 Lower Register    */
-#define CS3U __REG(MX21_EIM_BASE_ADDR + 0x18) /* Chip Select 3 Upper Register    */
-#define CS3L __REG(MX21_EIM_BASE_ADDR + 0x1C) /* Chip Select 3 Lower Register    */
-#define CS4U __REG(MX21_EIM_BASE_ADDR + 0x20) /* Chip Select 4 Upper Register    */
-#define CS4L __REG(MX21_EIM_BASE_ADDR + 0x24) /* Chip Select 4 Lower Register    */
-#define CS5U __REG(MX21_EIM_BASE_ADDR + 0x28) /* Chip Select 5 Upper Register    */
-#define CS5L __REG(MX21_EIM_BASE_ADDR + 0x2C) /* Chip Select 5 Lower Register    */
-#define EIM  __REG(MX21_EIM_BASE_ADDR + 0x30) /* EIM Configuration Register      */
-
 /* PLL registers */
 #define CSCR		__REG(MX21_CCM_BASE_ADDR + 0x00) /* Clock Source Control Register       */
 #define MPCTL0		__REG(MX21_CCM_BASE_ADDR + 0x04) /* MCU PLL Control Register 0          */
diff --git a/arch/arm/mach-imx/include/mach/weim.h b/arch/arm/mach-imx/include/mach/weim.h
index a15726f..c9fa301 100644
--- a/arch/arm/mach-imx/include/mach/weim.h
+++ b/arch/arm/mach-imx/include/mach/weim.h
@@ -6,4 +6,6 @@ void imx27_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
 
 void imx1_setup_eimcs(size_t cs, unsigned upper, unsigned lower);
 
+void imx21_setup_eimcs(size_t cs, unsigned upper, unsigned lower);
+
 #endif /* __MACH_WEIM_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
