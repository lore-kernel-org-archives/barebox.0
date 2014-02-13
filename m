Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WE4q4-0006pB-7C
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 22:33:00 +0000
Received: from tellur.localdomain (p57B5F67D.dip0.t-ipconnect.de
 [87.181.246.125]) by lynxeye.de (Postfix) with ESMTPA id 8EB9118B4261
 for <barebox@lists.infradead.org>; Thu, 13 Feb 2014 23:31:22 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 13 Feb 2014 23:32:50 +0100
Message-Id: <1392330771-21671-7-git-send-email-dev@lynxeye.de>
In-Reply-To: <1392330771-21671-1-git-send-email-dev@lynxeye.de>
References: <1392330771-21671-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 6/7] tegra: set AHB clock rate early
To: barebox@lists.infradead.org

Avoids glitches in later starup phases.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/tegra20-car.h | 4 ++++
 arch/arm/mach-tegra/tegra_avp_init.c           | 3 +++
 2 files changed, 7 insertions(+)

diff --git a/arch/arm/mach-tegra/include/mach/tegra20-car.h b/arch/arm/mach-tegra/include/mach/tegra20-car.h
index a5441de..161e3d8 100644
--- a/arch/arm/mach-tegra/include/mach/tegra20-car.h
+++ b/arch/arm/mach-tegra/include/mach/tegra20-car.h
@@ -112,6 +112,10 @@
 #define CRC_SUPER_SDIV_DIVISOR_SHIFT	0
 #define CRC_SUPER_SDIV_DIVISOR_MASK	(0xff << CRC_SUPER_SDIV_DIVISOR_SHIFT)
 
+#define CRC_CLK_SYSTEM_RATE		0x030
+#define CRC_CLK_SYSTEM_RATE_AHB_SHIFT	4
+#define CRC_CLK_SYSTEM_RATE_APB_SHIFT	0
+
 #define CRC_CLK_CPU_CMPLX		0x04c
 #define CRC_CLK_CPU_CMPLX_CPU3_CLK_STP	(1 << 11)
 #define CRC_CLK_CPU_CMPLX_CPU2_CLK_STP	(1 << 10)
diff --git a/arch/arm/mach-tegra/tegra_avp_init.c b/arch/arm/mach-tegra/tegra_avp_init.c
index 9f8ccf3..4dd1330 100644
--- a/arch/arm/mach-tegra/tegra_avp_init.c
+++ b/arch/arm/mach-tegra/tegra_avp_init.c
@@ -149,6 +149,9 @@ static void start_cpu0_clocks(void)
 	       TEGRA_CLK_RESET_BASE + CRC_SCLK_BURST_POLICY);
 	writel(CRC_SUPER_SDIV_ENB, TEGRA_CLK_RESET_BASE + CRC_SUPER_SCLK_DIV);
 
+	writel(1 << CRC_CLK_SYSTEM_RATE_AHB_SHIFT,
+	       TEGRA_CLK_RESET_BASE + CRC_CLK_SYSTEM_RATE);
+
 	/* deassert clock stop for cpu 0 */
 	reg = readl(TEGRA_CLK_RESET_BASE + CRC_CLK_CPU_CMPLX);
 	reg &= ~CRC_CLK_CPU_CMPLX_CPU0_CLK_STP;
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
