Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrvOR-0004Wa-Cv
 for barebox@lists.infradead.org; Tue, 03 Jun 2014 20:33:11 +0000
Received: from tellur.localdomain (p57B5FCD3.dip0.t-ipconnect.de
 [87.181.252.211]) by lynxeye.de (Postfix) with ESMTPA id A6DA218B4261
 for <barebox@lists.infradead.org>; Tue,  3 Jun 2014 22:31:28 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Jun 2014 22:35:01 +0200
Message-Id: <1401827717-6420-15-git-send-email-dev@lynxeye.de>
In-Reply-To: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
References: <1401827717-6420-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 14/30] tegra: change cpu internal reset layout for Tegra124
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/tegra_avp_init.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-tegra/tegra_avp_init.c b/arch/arm/mach-tegra/tegra_avp_init.c
index d25c1dd..61cfa05 100644
--- a/arch/arm/mach-tegra/tegra_avp_init.c
+++ b/arch/arm/mach-tegra/tegra_avp_init.c
@@ -43,8 +43,12 @@ static void assert_maincomplex_reset(int num_cores)
 	u32 mask = 0;
 	int i;
 
-	for (i = 0; i < num_cores; i++)
-		mask |= 0x1111 << i;
+	for (i = 0; i < num_cores; i++) {
+		if (tegra_get_chiptype() >= TEGRA114)
+			mask |= 0x111001 << i;
+		else
+			mask |= 0x1111 << i;
+	}
 
 	writel(mask, TEGRA_CLK_RESET_BASE + CRC_RST_CPU_CMPLX_SET);
 	writel(CRC_RST_DEV_L_CPU, TEGRA_CLK_RESET_BASE + CRC_RST_DEV_L_SET);
@@ -53,7 +57,14 @@ static void assert_maincomplex_reset(int num_cores)
 /* release reset state of the first core of the main CPU complex */
 static void deassert_cpu0_reset(void)
 {
-	writel(0x1111, TEGRA_CLK_RESET_BASE + CRC_RST_CPU_CMPLX_CLR);
+	u32 reg;
+
+	if (tegra_get_chiptype() >= TEGRA114)
+		reg = 0x21fff00f;
+	else
+		reg = 0x1111;
+
+	writel(reg, TEGRA_CLK_RESET_BASE + CRC_RST_CPU_CMPLX_CLR);
 	writel(CRC_RST_DEV_L_CPU, TEGRA_CLK_RESET_BASE + CRC_RST_DEV_L_CLR);
 }
 
@@ -185,7 +196,7 @@ static void start_cpu0_clocks(void)
 
 	/* deassert clock stop for cpu 0 */
 	reg = readl(TEGRA_CLK_RESET_BASE + CRC_CLK_CPU_CMPLX);
-	reg &= ~CRC_CLK_CPU_CMPLX_CPU0_CLK_STP;
+	reg &= ~(0xf << 8);
 	writel(reg, TEGRA_CLK_RESET_BASE + CRC_CLK_CPU_CMPLX);
 
 	/* enable main CPU complex clock */
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
