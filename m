Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UtOqd-0002Z7-Gk
 for barebox@lists.infradead.org; Sun, 30 Jun 2013 21:07:54 +0000
Received: from tellur.localdomain (p54832945.dip0.t-ipconnect.de
 [84.131.41.69]) by lynxeye.de (Postfix) with ESMTPA id A723D18B4268
 for <barebox@lists.infradead.org>; Sun, 30 Jun 2013 23:06:54 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 30 Jun 2013 23:08:47 +0200
Message-Id: <1372626529-23443-5-git-send-email-dev@lynxeye.de>
In-Reply-To: <1372626529-23443-1-git-send-email-dev@lynxeye.de>
References: <1372626529-23443-1-git-send-email-dev@lynxeye.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 5/7] tegra: deduplicate clk defines
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/tegra20-car.h | 90 +++++++++-----------------
 arch/arm/mach-tegra/tegra_avp_init.c           |  6 +-
 2 files changed, 33 insertions(+), 63 deletions(-)

diff --git a/arch/arm/mach-tegra/include/mach/tegra20-car.h b/arch/arm/mach-tegra/include/mach/tegra20-car.h
index 5669732..54c74c7 100644
--- a/arch/arm/mach-tegra/include/mach/tegra20-car.h
+++ b/arch/arm/mach-tegra/include/mach/tegra20-car.h
@@ -111,68 +111,38 @@
 #define CRC_PLLX_MISC_VCOCON_MASK	(0xf << CRC_PLLX_MISC_VCOCON_SHIFT)
 
 #define CRC_RST_DEV_L_SET		0x300
-#define CRC_RST_DEV_L_SET_CACHE2	(1 << 31)
-#define CRC_RST_DEV_L_SET_VCP		(1 << 29)
-#define CRC_RST_DEV_L_SET_HOST1X	(1 << 28)
-#define CRC_RST_DEV_L_SET_DISP1		(1 << 27)
-#define CRC_RST_DEV_L_SET_DISP2		(1 << 26)
-#define CRC_RST_DEV_L_SET_IDE		(1 << 25)
-#define CRC_RST_DEV_L_SET_3D		(1 << 24)
-#define CRC_RST_DEV_L_SET_ISP		(1 << 23)
-#define CRC_RST_DEV_L_SET_USBD		(1 << 22)
-#define CRC_RST_DEV_L_SET_2D		(1 << 21)
-#define CRC_RST_DEV_L_SET_VI		(1 << 20)
-#define CRC_RST_DEV_L_SET_EPP		(1 << 19)
-#define CRC_RST_DEV_L_SET_I2S2		(1 << 18)
-#define CRC_RST_DEV_L_SET_PWM		(1 << 17)
-#define CRC_RST_DEV_L_SET_TWC		(1 << 16)
-#define CRC_RST_DEV_L_SET_SDMMC4	(1 << 15)
-#define CRC_RST_DEV_L_SET_SDMMC1	(1 << 14)
-#define CRC_RST_DEV_L_SET_NDFLASH	(1 << 13)
-#define CRC_RST_DEV_L_SET_I2C1		(1 << 12)
-#define CRC_RST_DEV_L_SET_I2S1		(1 << 11)
-#define CRC_RST_DEV_L_SET_SPDIF		(1 << 10)
-#define CRC_RST_DEV_L_SET_SDMMC2	(1 << 9)
-#define CRC_RST_DEV_L_SET_GPIO		(1 << 8)
-#define CRC_RST_DEV_L_SET_UART2		(1 << 7)
-#define CRC_RST_DEV_L_SET_UART1		(1 << 6)
-#define CRC_RST_DEV_L_SET_TMR		(1 << 5)
-#define CRC_RST_DEV_L_SET_AC97		(1 << 3)
-#define CRC_RST_DEV_L_SET_SYS		(1 << 2)
-#define CRC_RST_DEV_L_SET_COP		(1 << 1)
-#define CRC_RST_DEV_L_SET_CPU		(1 << 0)
+#define CRC_RST_DEV_L_CACHE2		(1 << 31)
+#define CRC_RST_DEV_L_VCP		(1 << 29)
+#define CRC_RST_DEV_L_HOST1X		(1 << 28)
+#define CRC_RST_DEV_L_DISP1		(1 << 27)
+#define CRC_RST_DEV_L_DISP2		(1 << 26)
+#define CRC_RST_DEV_L_IDE		(1 << 25)
+#define CRC_RST_DEV_L_3D		(1 << 24)
+#define CRC_RST_DEV_L_ISP		(1 << 23)
+#define CRC_RST_DEV_L_USBD		(1 << 22)
+#define CRC_RST_DEV_L_2D		(1 << 21)
+#define CRC_RST_DEV_L_VI		(1 << 20)
+#define CRC_RST_DEV_L_EPP		(1 << 19)
+#define CRC_RST_DEV_L_I2S2		(1 << 18)
+#define CRC_RST_DEV_L_PWM		(1 << 17)
+#define CRC_RST_DEV_L_TWC		(1 << 16)
+#define CRC_RST_DEV_L_SDMMC4		(1 << 15)
+#define CRC_RST_DEV_L_SDMMC1		(1 << 14)
+#define CRC_RST_DEV_L_NDFLASH		(1 << 13)
+#define CRC_RST_DEV_L_I2C1		(1 << 12)
+#define CRC_RST_DEV_L_I2S1		(1 << 11)
+#define CRC_RST_DEV_L_SPDIF		(1 << 10)
+#define CRC_RST_DEV_L_SDMMC2		(1 << 9)
+#define CRC_RST_DEV_L_GPIO		(1 << 8)
+#define CRC_RST_DEV_L_UART2		(1 << 7)
+#define CRC_RST_DEV_L_UART1		(1 << 6)
+#define CRC_RST_DEV_L_TMR		(1 << 5)
+#define CRC_RST_DEV_L_AC97		(1 << 3)
+#define CRC_RST_DEV_L_SYS		(1 << 2)
+#define CRC_RST_DEV_L_COP		(1 << 1)
+#define CRC_RST_DEV_L_CPU		(1 << 0)
 
 #define CRC_RST_DEV_L_CLR		0x304
-#define CRC_RST_DEV_L_CLR_CACHE2	(1 << 31)
-#define CRC_RST_DEV_L_CLR_VCP		(1 << 29)
-#define CRC_RST_DEV_L_CLR_HOST1X	(1 << 28)
-#define CRC_RST_DEV_L_CLR_DISP1		(1 << 27)
-#define CRC_RST_DEV_L_CLR_DISP2		(1 << 26)
-#define CRC_RST_DEV_L_CLR_IDE		(1 << 25)
-#define CRC_RST_DEV_L_CLR_3D		(1 << 24)
-#define CRC_RST_DEV_L_CLR_ISP		(1 << 23)
-#define CRC_RST_DEV_L_CLR_USBD		(1 << 22)
-#define CRC_RST_DEV_L_CLR_2D		(1 << 21)
-#define CRC_RST_DEV_L_CLR_VI		(1 << 20)
-#define CRC_RST_DEV_L_CLR_EPP		(1 << 19)
-#define CRC_RST_DEV_L_CLR_I2S2		(1 << 18)
-#define CRC_RST_DEV_L_CLR_PWM		(1 << 17)
-#define CRC_RST_DEV_L_CLR_TWC		(1 << 16)
-#define CRC_RST_DEV_L_CLR_SDMMC4	(1 << 15)
-#define CRC_RST_DEV_L_CLR_SDMMC1	(1 << 14)
-#define CRC_RST_DEV_L_CLR_NDFLASH	(1 << 13)
-#define CRC_RST_DEV_L_CLR_I2C1		(1 << 12)
-#define CRC_RST_DEV_L_CLR_I2S1		(1 << 11)
-#define CRC_RST_DEV_L_CLR_SPDIF		(1 << 10)
-#define CRC_RST_DEV_L_CLR_SDMMC2	(1 << 9)
-#define CRC_RST_DEV_L_CLR_GPIO		(1 << 8)
-#define CRC_RST_DEV_L_CLR_UART2		(1 << 7)
-#define CRC_RST_DEV_L_CLR_UART1		(1 << 6)
-#define CRC_RST_DEV_L_CLR_TMR		(1 << 5)
-#define CRC_RST_DEV_L_CLR_AC97		(1 << 3)
-#define CRC_RST_DEV_L_CLR_SYS		(1 << 2)
-#define CRC_RST_DEV_L_CLR_COP		(1 << 1)
-#define CRC_RST_DEV_L_CLR_CPU		(1 << 0)
 
 #define CRC_RST_CPU_CMPLX_SET		0x340
 
diff --git a/arch/arm/mach-tegra/tegra_avp_init.c b/arch/arm/mach-tegra/tegra_avp_init.c
index 4823733..5099e91 100644
--- a/arch/arm/mach-tegra/tegra_avp_init.c
+++ b/arch/arm/mach-tegra/tegra_avp_init.c
@@ -54,14 +54,14 @@ static void assert_maincomplex_reset(int num_cores)
 		mask |= 0x1111 << i;
 
 	writel(mask, TEGRA_CLK_RESET_BASE + CRC_RST_CPU_CMPLX_SET);
-	writel(CRC_RST_DEV_L_SET_CPU, TEGRA_CLK_RESET_BASE + CRC_RST_DEV_L_SET);
+	writel(CRC_RST_DEV_L_CPU, TEGRA_CLK_RESET_BASE + CRC_RST_DEV_L_SET);
 }
 
 /* release reset state of the first core of the main CPU complex */
 static void deassert_cpu0_reset(void)
 {
 	writel(0x1111, TEGRA_CLK_RESET_BASE + CRC_RST_CPU_CMPLX_CLR);
-	writel(CRC_RST_DEV_L_CLR_CPU, TEGRA_CLK_RESET_BASE + CRC_RST_DEV_L_CLR);
+	writel(CRC_RST_DEV_L_CPU, TEGRA_CLK_RESET_BASE + CRC_RST_DEV_L_CLR);
 }
 
 /* stop all internal and external clocks to the main CPU complex */
@@ -220,7 +220,7 @@ void barebox_arm_reset_vector(void)
 	deassert_cpu0_reset();
 
 	/* assert AVP reset to stop execution here */
-	writel(CRC_RST_DEV_L_SET_COP, TEGRA_CLK_RESET_BASE + CRC_RST_DEV_L_SET);
+	writel(CRC_RST_DEV_L_COP, TEGRA_CLK_RESET_BASE + CRC_RST_DEV_L_SET);
 
 	unreachable();
 }
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
