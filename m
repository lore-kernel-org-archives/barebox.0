Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp12.mail.ru ([94.100.176.89])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIMiN-0002dw-FN
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 16:17:45 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 12 Apr 2012 20:20:18 +0400
Message-Id: <1334247624-24896-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/7] i.MX51: Allow to pass cpu clock to lowlevel init
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c |    2 +-
 arch/arm/boards/freescale-mx51-pdk/board.c        |    2 +-
 arch/arm/mach-imx/imx51.c                         |   13 +++++++++++--
 arch/arm/mach-imx/include/mach/imx5.h             |    2 +-
 4 files changed, 14 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
index 6de8f1f..06a994a 100644
--- a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
+++ b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
@@ -139,7 +139,7 @@ static int eukrea_cpuimx51_console_init(void)
 {
 	mxc_iomux_v3_setup_multiple_pads(eukrea_cpuimx51_pads, ARRAY_SIZE(eukrea_cpuimx51_pads));
 
-	imx51_init_lowlevel();
+	imx51_init_lowlevel(800);
 
 	writel(0, 0x73fa8228);
 	writel(0, 0x73fa822c);
diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index 6e8b418..76d99ff 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -244,7 +244,7 @@ static int f3s_devices_init(void)
 	babbage_power_init();
 
 	console_flush();
-	imx51_init_lowlevel();
+	imx51_init_lowlevel(800);
 	clock_notifier_call_chain();
 
 	armlinux_set_bootparams((void *)0x90000100);
diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index 02704c1..4cfd03b 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -186,7 +186,7 @@ coredevice_initcall(imx51_boot_save_loc);
 #define setup_pll_455(base)	imx5_setup_pll((base), 455,  (( 9 << 4) + ((2 - 1) << 0)), (48 - 1), 23)
 #define setup_pll_216(base)	imx5_setup_pll((base), 216,  (( 6 << 4) + ((3 - 1) << 0)), ( 4 - 1),  3)
 
-void imx51_init_lowlevel(void)
+void imx51_init_lowlevel(unsigned int cpufreq_mhz)
 {
 	void __iomem *ccm = (void __iomem *)MX51_CCM_BASE_ADDR;
 	u32 r;
@@ -220,7 +220,16 @@ void imx51_init_lowlevel(void)
 	/* Switch ARM to step clock */
 	writel(0x4, ccm + MX5_CCM_CCSR);
 
-	setup_pll_800((void __iomem *)MX51_PLL1_BASE_ADDR);
+	switch (cpufreq_mhz) {
+	case 600:
+		setup_pll_600((void __iomem *)MX51_PLL1_BASE_ADDR);
+		break;
+	default:
+		/* Default maximum 800MHz */
+		setup_pll_800((void __iomem *)MX51_PLL1_BASE_ADDR);
+		break;
+	}
+
 	setup_pll_665((void __iomem *)MX51_PLL3_BASE_ADDR);
 
 	/* Switch peripheral to PLL 3 */
diff --git a/arch/arm/mach-imx/include/mach/imx5.h b/arch/arm/mach-imx/include/mach/imx5.h
index c33f75e..4c19d28 100644
--- a/arch/arm/mach-imx/include/mach/imx5.h
+++ b/arch/arm/mach-imx/include/mach/imx5.h
@@ -1,8 +1,8 @@
 #ifndef __MACH_MX5_H
 #define __MACH_MX5_H
 
+void imx51_init_lowlevel(unsigned int cpufreq_mhz);
 void imx53_init_lowlevel(unsigned int cpufreq_mhz);
-void imx51_init_lowlevel(void);
 void imx5_setup_pll(void __iomem *base, int freq, u32 op, u32 mfd, u32 mfn);
 void imx5_init_lowlevel(void);
 
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
