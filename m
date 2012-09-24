Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6BJ-0005Tu-9J
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 10:46:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 12:46:21 +0200
Message-Id: <1348483583-12586-13-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/14] ARM i.MX31: Add function to setup chipselect
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm037/pcm037.c             |   24 +++++++++---------------
 arch/arm/mach-imx/imx31.c                   |   10 ++++++++++
 arch/arm/mach-imx/include/mach/imx31-regs.h |    8 --------
 arch/arm/mach-imx/include/mach/weim.h       |    3 +++
 4 files changed, 22 insertions(+), 23 deletions(-)

diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index a63bd23..1a1688d 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -29,6 +29,7 @@
 #include <asm/armlinux.h>
 #include <asm-generic/sections.h>
 #include <mach/gpio.h>
+#include <mach/weim.h>
 #include <io.h>
 #include <asm/mmu.h>
 #include <partition.h>
@@ -165,21 +166,14 @@ postmmu_initcall(pcm037_mmu_init);
 
 static int imx31_devices_init(void)
 {
-	__REG(CSCR_U(0)) = 0x0000cf03; /* CS0: Nor Flash */
-	__REG(CSCR_L(0)) = 0x10000d03;
-	__REG(CSCR_A(0)) = 0x00720900;
-
-	__REG(CSCR_U(1)) = 0x0000df06; /* CS1: Network Controller */
-	__REG(CSCR_L(1)) = 0x444a4541;
-	__REG(CSCR_A(1)) = 0x44443302;
-
-	__REG(CSCR_U(4)) = 0x0000d843; /* CS4: SRAM */
-	__REG(CSCR_L(4)) = 0x22252521;
-	__REG(CSCR_A(4)) = 0x22220a00;
-
-	__REG(CSCR_U(5)) = 0x0000DCF6; /* CS5: SJA1000 */
-	__REG(CSCR_L(5)) = 0x444A0301;
-	__REG(CSCR_A(5)) = 0x44443302;
+	/* CS0: Nor Flash */
+	imx31_setup_weimcs(0, 0x0000cf03, 0x10000d03, 0x00720900);
+	/* CS1: Network Controller */
+	imx31_setup_weimcs(1, 0x0000df06, 0x444a4541, 0x44443302);
+	/* CS4: SRAM */
+	imx31_setup_weimcs(4, 0x0000d843, 0x22252521, 0x22220a00);
+	/* CS5: SJA1000 */
+	imx31_setup_weimcs(4, 0x0000DCF6, 0x444A0301, 0x44443302);
 
 	/*
 	 * Up to 32MiB NOR type flash, connected to
diff --git a/arch/arm/mach-imx/imx31.c b/arch/arm/mach-imx/imx31.c
index 60745a7..11d8f49 100644
--- a/arch/arm/mach-imx/imx31.c
+++ b/arch/arm/mach-imx/imx31.c
@@ -14,7 +14,17 @@
 #include <common.h>
 #include <init.h>
 #include <sizes.h>
+#include <io.h>
 #include <mach/imx-regs.h>
+#include <mach/weim.h>
+
+void imx31_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
+		unsigned additional)
+{
+	writel(upper, MX31_WEIM_BASE_ADDR + (cs * 0x10) + 0x0);
+	writel(lower, MX31_WEIM_BASE_ADDR + (cs * 0x10) + 0x4);
+	writel(additional, MX31_WEIM_BASE_ADDR + (cs * 0x10) + 0x8);
+}
 
 static int imx31_init(void)
 {
diff --git a/arch/arm/mach-imx/include/mach/imx31-regs.h b/arch/arm/mach-imx/include/mach/imx31-regs.h
index e912665..57f65da 100644
--- a/arch/arm/mach-imx/include/mach/imx31-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx31-regs.h
@@ -175,14 +175,6 @@
 #include "esdctl.h"
 
 /*
- * Chip Select Registers
- */
-#define WEIM_BASE	0xb8002000
-#define CSCR_U(x)	(WEIM_BASE + (x) * 0x10)
-#define CSCR_L(x)	(WEIM_BASE + 4 + (x) * 0x10)
-#define CSCR_A(x)	(WEIM_BASE + 8 + (x) * 0x10)
-
-/*
  * ???????????
  */
 #define IOMUXC_GPR	(IOMUXC_BASE + 0x8)
diff --git a/arch/arm/mach-imx/include/mach/weim.h b/arch/arm/mach-imx/include/mach/weim.h
index c9fa301..40e7b6e 100644
--- a/arch/arm/mach-imx/include/mach/weim.h
+++ b/arch/arm/mach-imx/include/mach/weim.h
@@ -4,6 +4,9 @@
 void imx27_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
 		unsigned additional);
 
+void imx31_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
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
