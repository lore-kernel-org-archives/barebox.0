Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vnw1y-0006zt-E7
 for barebox@lists.infradead.org; Tue, 03 Dec 2013 19:53:19 +0000
Received: from tellur.localdomain (p54831992.dip0.t-ipconnect.de
 [84.131.25.146]) by lynxeye.de (Postfix) with ESMTPA id 2D11B18B4268
 for <barebox@lists.infradead.org>; Tue,  3 Dec 2013 20:52:21 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Dec 2013 20:56:57 +0100
Message-Id: <1386100622-8498-5-git-send-email-dev@lynxeye.de>
In-Reply-To: <1386100622-8498-1-git-send-email-dev@lynxeye.de>
References: <1386100622-8498-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 3/8] tegra: switch main CPU complex to PLLX early
To: barebox@lists.infradead.org

Running at 1GHz, rather than 13MHz certainly makes things a bit faster.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/tegra20-car.h | 32 ++++++++++++++++++++++++++
 arch/arm/mach-tegra/tegra_maincomplex_init.c   |  9 ++++++++
 2 files changed, 41 insertions(+)

diff --git a/arch/arm/mach-tegra/include/mach/tegra20-car.h b/arch/arm/mach-tegra/include/mach/tegra20-car.h
index d4ff6fb..64873d7 100644
--- a/arch/arm/mach-tegra/include/mach/tegra20-car.h
+++ b/arch/arm/mach-tegra/include/mach/tegra20-car.h
@@ -46,6 +46,38 @@
 #define CRC_CLK_OUT_ENB_L_AC97		(1 << 3)
 #define CRC_CLK_OUT_ENB_L_CPU		(1 << 0)
 
+#define CRC_CCLK_BURST_POLICY		0x020
+#define CRC_CCLK_BURST_POLICY_SYS_STATE_SHIFT	28
+#define CRC_CCLK_BURST_POLICY_SYS_STATE_FIQ	8
+#define CRC_CCLK_BURST_POLICY_SYS_STATE_IRQ	4
+#define CRC_CCLK_BURST_POLICY_SYS_STATE_RUN	2
+#define CRC_CCLK_BURST_POLICY_SYS_STATE_IDLE	1
+#define CRC_CCLK_BURST_POLICY_SYS_STATE_STDBY	0
+#define CRC_CCLK_BURST_POLICY_FIQ_SRC_SHIFT	12
+#define CRC_CCLK_BURST_POLICY_IRQ_SRC_SHIFT	8
+#define CRC_CCLK_BURST_POLICY_RUN_SRC_SHIFT	4
+#define CRC_CCLK_BURST_POLICY_IDLE_SRC_SHIFT	0
+#define CRC_CCLK_BURST_POLICY_SRC_CLKM		0
+#define CRC_CCLK_BURST_POLICY_SRC_PLLC_OUT0	1
+#define CRC_CCLK_BURST_POLICY_SRC_CLKS		2
+#define CRC_CCLK_BURST_POLICY_SRC_PLLM_OUT0	3
+#define CRC_CCLK_BURST_POLICY_SRC_PLLP_OUT0	4
+#define CRC_CCLK_BURST_POLICY_SRC_PLLP_OUT4	5
+#define CRC_CCLK_BURST_POLICY_SRC_PLLP_OUT3	6
+#define CRC_CCLK_BURST_POLICY_SRC_CLKD		7
+#define CRC_CCLK_BURST_POLICY_SRC_PLLX_OUT0	8
+
+#define CRC_SUPER_CCLK_DIV		0x024
+#define CRC_SUPER_CDIV_ENB		(1 << 31)
+#define CRC_SUPER_CDIV_DIS_FROM_COP_FIQ	(1 << 27)
+#define CRC_SUPER_CDIV_DIS_FROM_CPU_FIQ	(1 << 26)
+#define CRC_SUPER_CDIV_DIS_FROM_COP_IRQ	(1 << 25)
+#define CRC_SUPER_CDIV_DIS_FROM_CPU_IRQ	(1 << 24)
+#define CRC_SUPER_CDIV_DIVIDEND_SHIFT	8
+#define CRC_SUPER_CDIV_DIVIDEND_MASK	(0xff << CRC_SUPER_CDIV_DIVIDEND_SHIFT)
+#define CRC_SUPER_CDIV_DIVISOR_SHIFT	0
+#define CRC_SUPER_CDIV_DIVISOR_MASK	(0xff << CRC_SUPER_CDIV_DIVISOR_SHIFT)
+
 #define CRC_SCLK_BURST_POLICY		0x028
 #define CRC_SCLK_BURST_POLICY_SYS_STATE_SHIFT	28
 #define CRC_SCLK_BURST_POLICY_SYS_STATE_FIQ	8
diff --git a/arch/arm/mach-tegra/tegra_maincomplex_init.c b/arch/arm/mach-tegra/tegra_maincomplex_init.c
index b3d59ab..5aad1dd 100644
--- a/arch/arm/mach-tegra/tegra_maincomplex_init.c
+++ b/arch/arm/mach-tegra/tegra_maincomplex_init.c
@@ -20,6 +20,7 @@
 #include <asm/barebox-arm.h>
 #include <mach/lowlevel.h>
 #include <mach/tegra20-pmc.h>
+#include <mach/tegra20-car.h>
 
 void tegra_maincomplex_entry(void)
 {
@@ -27,6 +28,14 @@ void tegra_maincomplex_entry(void)
 
 	arm_cpu_lowlevel_init();
 
+	/* switch to PLLX */
+	writel(CRC_CCLK_BURST_POLICY_SYS_STATE_RUN <<
+	       CRC_CCLK_BURST_POLICY_SYS_STATE_SHIFT |
+	       CRC_CCLK_BURST_POLICY_SRC_PLLX_OUT0 <<
+	       CRC_CCLK_BURST_POLICY_RUN_SRC_SHIFT,
+	       TEGRA_CLK_RESET_BASE + CRC_CCLK_BURST_POLICY);
+	writel(CRC_SUPER_CDIV_ENB, TEGRA_CLK_RESET_BASE + CRC_SUPER_CCLK_DIV);
+
 	switch (tegra_get_chiptype()) {
 	case TEGRA20:
 		rambase = 0x0;
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
