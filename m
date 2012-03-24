Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp12.mail.ru ([94.100.176.89])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SBUaw-0000n2-JY
 for barebox@lists.infradead.org; Sat, 24 Mar 2012 17:17:40 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 24 Mar 2012 21:17:32 +0400
Message-Id: <1332609452-2200-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] i.MX27: Added helper for setup chipselect control register
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    8 +----
 arch/arm/boards/imx27ads/imx27ads.c               |   12 ++------
 arch/arm/boards/pcm038/pcm038.c                   |   12 ++------
 arch/arm/mach-imx/include/mach/imx27-regs.h       |   30 ++++++++------------
 4 files changed, 20 insertions(+), 42 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 6b233b2..4d2b482 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -185,9 +185,7 @@ static int eukrea_cpuimx27_devices_init(void)
 	};
 
 	/* configure 16 bit nor flash on cs0 */
-	CS0U = 0x00008F03;
-	CS0L = 0xA0330D01;
-	CS0A = 0x002208C0;
+	imx27_setup_weimcs(0, 0x00008F03, 0xA0330D01, 0x002208C0);
 
 	/* initialize gpios */
 	for (i = 0; i < ARRAY_SIZE(mode); i++)
@@ -233,9 +231,7 @@ static int eukrea_cpuimx27_console_init(void)
 #endif
 	/* configure 8 bit UART on cs3 */
 	FMCR &= ~0x2;
-	CS3U = 0x0000D603;
-	CS3L = 0x0D1D0D01;
-	CS3A = 0x00D20000;
+	imx27_setup_weimcs(3, 0x0000D603, 0x0D1D0D01, 0x00D20000);
 #ifdef CONFIG_DRIVER_SERIAL_NS16550
 	add_ns16550_device(-1, IMX_CS3_BASE + QUART_OFFSET, 0xf,
 			 IORESOURCE_MEM_16BIT, &quad_uart_serial_plat);
diff --git a/arch/arm/boards/imx27ads/imx27ads.c b/arch/arm/boards/imx27ads/imx27ads.c
index e93f07a..7ffaeab 100644
--- a/arch/arm/boards/imx27ads/imx27ads.c
+++ b/arch/arm/boards/imx27ads/imx27ads.c
@@ -42,15 +42,11 @@ static struct fec_platform_data fec_info = {
 static int imx27ads_timing_init(void)
 {
 	/* configure cpld on cs4 */
-	CS4U = 0x0000DCF6;
-	CS4L = 0x444A4541;
-	CS4A = 0x44443302;
+	imx27_setup_weimcs(4, 0x0000DCF6, 0x444A4541, 0x44443302);
 
 	/* configure synchronous mode for
 	 * 16 bit nor flash on cs0 */
-	CS0U = 0x0000CC03;
-	CS0L = 0xa0330D01;
-	CS0A = 0x00220800;
+	imx27_setup_weimcs(0, 0x0000CC03, 0xa0330D01, 0x00220800);
 
 	writew(0x00f0, 0xc0000000);
 	writew(0x00aa, 0xc0000aaa);
@@ -59,9 +55,7 @@ static int imx27ads_timing_init(void)
 	writew(0x66ca, 0xc0000aaa);
 	writew(0x00f0, 0xc0000000);
 
-	CS0U = 0x23524E80;
-	CS0L = 0x10000D03;
-	CS0A = 0x00720900;
+	imx27_setup_weimcs(0, 0x23524E80, 0x10000D03, 0x00720900);
 
 	/* Select FEC data through data path */
 	writew(0x0020, IMX_CS4_BASE + 0x10);
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 8dd6521..e3293dc 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -224,19 +224,13 @@ static int pcm038_devices_init(void)
 	};
 
 	/* configure 16 bit nor flash on cs0 */
-	CS0U = 0x22C2CF00;
-	CS0L = 0x75000D01;
-	CS0A = 0x00000900;
+	imx27_setup_weimcs(0, 0x22C2CF00, 0x75000D01, 0x00000900);
 
 	/* configure SRAM on cs1 */
-	CS1U = 0x0000d843;
-	CS1L = 0x22252521;
-	CS1A = 0x22220a00;
+	imx27_setup_weimcs(1, 0x0000d843, 0x22252521, 0x22220a00);
 
 	/* configure SJA1000 on cs4 */
-	CS4U = 0x0000DCF6;
-	CS4L = 0x444A0301;
-	CS4A = 0x44443302;
+	imx27_setup_weimcs(4, 0x0000DCF6, 0x444A0301, 0x44443302);
 
 	/* initizalize gpios */
 	for (i = 0; i < ARRAY_SIZE(mode); i++)
diff --git a/arch/arm/mach-imx/include/mach/imx27-regs.h b/arch/arm/mach-imx/include/mach/imx27-regs.h
index b7bebae..6d5a509 100644
--- a/arch/arm/mach-imx/include/mach/imx27-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx27-regs.h
@@ -66,24 +66,9 @@
 #define GPCR_BOOT_8BIT_NAND_512		7
 
 /* Chip Select Registers */
-#define CS0U __REG(IMX_WEIM_BASE + 0x00) /* Chip Select 0 Upper Register    */
-#define CS0L __REG(IMX_WEIM_BASE + 0x04) /* Chip Select 0 Lower Register    */
-#define CS0A __REG(IMX_WEIM_BASE + 0x08) /* Chip Select 0 Addition Register */
-#define CS1U __REG(IMX_WEIM_BASE + 0x10) /* Chip Select 1 Upper Register    */
-#define CS1L __REG(IMX_WEIM_BASE + 0x14) /* Chip Select 1 Lower Register    */
-#define CS1A __REG(IMX_WEIM_BASE + 0x18) /* Chip Select 1 Addition Register */
-#define CS2U __REG(IMX_WEIM_BASE + 0x20) /* Chip Select 2 Upper Register    */
-#define CS2L __REG(IMX_WEIM_BASE + 0x24) /* Chip Select 2 Lower Register    */
-#define CS2A __REG(IMX_WEIM_BASE + 0x28) /* Chip Select 2 Addition Register */
-#define CS3U __REG(IMX_WEIM_BASE + 0x30) /* Chip Select 3 Upper Register    */
-#define CS3L __REG(IMX_WEIM_BASE + 0x34) /* Chip Select 3 Lower Register    */
-#define CS3A __REG(IMX_WEIM_BASE + 0x38) /* Chip Select 3 Addition Register */
-#define CS4U __REG(IMX_WEIM_BASE + 0x40) /* Chip Select 4 Upper Register    */
-#define CS4L __REG(IMX_WEIM_BASE + 0x44) /* Chip Select 4 Lower Register    */
-#define CS4A __REG(IMX_WEIM_BASE + 0x48) /* Chip Select 4 Addition Register */
-#define CS5U __REG(IMX_WEIM_BASE + 0x50) /* Chip Select 5 Upper Register    */
-#define CS5L __REG(IMX_WEIM_BASE + 0x54) /* Chip Select 5 Lower Register    */
-#define CS5A __REG(IMX_WEIM_BASE + 0x58) /* Chip Select 5 Addition Register */
+#define CSxU(x) __REG(IMX_WEIM_BASE + (cs * 0x10) + 0x00) /* Chip Select x Upper Register    */
+#define CSxL(x) __REG(IMX_WEIM_BASE + (cs * 0x10) + 0x04) /* Chip Select x Lower Register    */
+#define CSxA(x) __REG(IMX_WEIM_BASE + (cs * 0x10) + 0x08) /* Chip Select x Addition Register */
 #define EIM  __REG(IMX_WEIM_BASE + 0x60) /* WEIM Configuration Register     */
 
 #include "esdctl.h"
@@ -255,4 +240,13 @@
 #define IMX_CS4_BASE	0xD4000000
 #define IMX_CS5_BASE	0xD6000000
 
+static inline void imx27_setup_weimcs(size_t cs, unsigned upper, unsigned lower, unsigned addional)
+{
+	CSxU(cs) = upper;
+	CSxL(cs) = lower;
+	CSxA(cs) = addional;
+}
+
 #endif /* _IMX27_REGS_H */
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
