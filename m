Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6BJ-0005Tr-2S
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 10:46:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 12:46:19 +0200
Message-Id: <1348483583-12586-11-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/14] ARM i.MX1: Add function to setup chipselect
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/scb9328/scb9328.c          |   19 ++++++-------------
 arch/arm/mach-imx/imx1.c                   |    8 ++++++++
 arch/arm/mach-imx/include/mach/imx1-regs.h |   15 ---------------
 arch/arm/mach-imx/include/mach/weim.h      |    2 ++
 4 files changed, 16 insertions(+), 28 deletions(-)

diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index 9bd9a7c..c83132a 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -22,6 +22,7 @@
 #include <mach/imx-regs.h>
 #include <asm/armlinux.h>
 #include <mach/gpio.h>
+#include <mach/weim.h>
 #include <io.h>
 #include <partition.h>
 #include <fs.h>
@@ -70,19 +71,11 @@ static int scb9328_devices_init(void)
 /* CS3 becomes CS3 by clearing reset default bit 1 in FMCR */
 	FMCR = 0x1;
 
-	CS0U = 0x000F2000;
-	CS0L = 0x11110d01;
-
-	CS1U = 0x000F0a00;
-	CS1L = 0x11110601;
-	CS2U = 0x0;
-	CS2L = 0x0;
-	CS3U = 0x000FFFFF;
-	CS3L = 0x00000303;
-	CS4U = 0x000F0a00;
-	CS4L = 0x11110301;
-	CS5U = 0x00008400;
-	CS5L = 0x00000D03;
+	imx1_setup_eimcs(0, 0x000F2000, 0x11110d01);
+	imx1_setup_eimcs(1, 0x000F0a00, 0x11110601);
+	imx1_setup_eimcs(3, 0x000FFFFF, 0x00000303);
+	imx1_setup_eimcs(4, 0x000F0a00, 0x11110301);
+	imx1_setup_eimcs(5, 0x00008400, 0x00000D03);
 
 	add_cfi_flash_device(DEVICE_ID_DYNAMIC, 0x10000000, 16 * 1024 * 1024, 0);
 	add_dm9000_device(DEVICE_ID_DYNAMIC, 0x16000000, 0x16000004,
diff --git a/arch/arm/mach-imx/imx1.c b/arch/arm/mach-imx/imx1.c
index e6fba16..536a9ad 100644
--- a/arch/arm/mach-imx/imx1.c
+++ b/arch/arm/mach-imx/imx1.c
@@ -13,7 +13,15 @@
 
 #include <common.h>
 #include <init.h>
+#include <io.h>
 #include <mach/imx-regs.h>
+#include <mach/weim.h>
+
+void imx1_setup_eimcs(size_t cs, unsigned upper, unsigned lower)
+{
+	writel(upper, MX1_EIM_BASE_ADDR + cs * 8);
+	writel(lower, MX1_EIM_BASE_ADDR + 4 + cs * 8);
+}
 
 static int imx1_init(void)
 {
diff --git a/arch/arm/mach-imx/include/mach/imx1-regs.h b/arch/arm/mach-imx/include/mach/imx1-regs.h
index 0e07dcd..cb60c84 100644
--- a/arch/arm/mach-imx/include/mach/imx1-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx1-regs.h
@@ -86,21 +86,6 @@
 
 #define CSCR_MPLL_RESTART (1<<21)
 
-/* Chip Select Registers */
-#define CS0U __REG(MX1_EIM_BASE_ADDR)        /* Chip Select 0 Upper Register */
-#define CS0L __REG(MX1_EIM_BASE_ADDR + 0x4)  /* Chip Select 0 Lower Register */
-#define CS1U __REG(MX1_EIM_BASE_ADDR + 0x8)  /* Chip Select 1 Upper Register */
-#define CS1L __REG(MX1_EIM_BASE_ADDR + 0xc)  /* Chip Select 1 Lower Register */
-#define CS2U __REG(MX1_EIM_BASE_ADDR + 0x10) /* Chip Select 2 Upper Register */
-#define CS2L __REG(MX1_EIM_BASE_ADDR + 0x14) /* Chip Select 2 Lower Register */
-#define CS3U __REG(MX1_EIM_BASE_ADDR + 0x18) /* Chip Select 3 Upper Register */
-#define CS3L __REG(MX1_EIM_BASE_ADDR + 0x1c) /* Chip Select 3 Lower Register */
-#define CS4U __REG(MX1_EIM_BASE_ADDR + 0x20) /* Chip Select 4 Upper Register */
-#define CS4L __REG(MX1_EIM_BASE_ADDR + 0x24) /* Chip Select 4 Lower Register */
-#define CS5U __REG(MX1_EIM_BASE_ADDR + 0x28) /* Chip Select 5 Upper Register */
-#define CS5L __REG(MX1_EIM_BASE_ADDR + 0x2c) /* Chip Select 5 Lower Register */
-#define EIM  __REG(MX1_EIM_BASE_ADDR + 0x30) /* EIM Configuration Register */
-
 /* assignements for GPIO alternate/primary functions */
 
 /* FIXME: This list is not completed. The correct directions are
diff --git a/arch/arm/mach-imx/include/mach/weim.h b/arch/arm/mach-imx/include/mach/weim.h
index bc9b51e..a15726f 100644
--- a/arch/arm/mach-imx/include/mach/weim.h
+++ b/arch/arm/mach-imx/include/mach/weim.h
@@ -4,4 +4,6 @@
 void imx27_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
 		unsigned additional);
 
+void imx1_setup_eimcs(size_t cs, unsigned upper, unsigned lower);
+
 #endif /* __MACH_WEIM_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
