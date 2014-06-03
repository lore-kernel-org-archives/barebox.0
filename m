Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrvPG-000563-LX
 for barebox@lists.infradead.org; Tue, 03 Jun 2014 20:34:03 +0000
Received: from tellur.localdomain (p57B5FCD3.dip0.t-ipconnect.de
 [87.181.252.211]) by lynxeye.de (Postfix) with ESMTPA id 5D6C618B4275
 for <barebox@lists.infradead.org>; Tue,  3 Jun 2014 22:31:28 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Jun 2014 22:35:00 +0200
Message-Id: <1401827717-6420-14-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 13/30] tegra: fix MESLECT clock enable
To: barebox@lists.infradead.org

Don't disable clk to unrelated devices in the process.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/include/mach/tegra30-car.h | 2 ++
 arch/arm/mach-tegra/tegra_avp_init.c           | 2 +-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-tegra/include/mach/tegra30-car.h b/arch/arm/mach-tegra/include/mach/tegra30-car.h
index 286a2a6..c8f6c9f 100644
--- a/arch/arm/mach-tegra/include/mach/tegra30-car.h
+++ b/arch/arm/mach-tegra/include/mach/tegra30-car.h
@@ -31,3 +31,5 @@
 #define CRC_RST_DEV_V_MSELECT		(1 << 3)
 
 #define CRC_RST_DEV_V_CLR		0x434
+
+#define CRC_CLK_OUT_ENB_V_SET		0x440
diff --git a/arch/arm/mach-tegra/tegra_avp_init.c b/arch/arm/mach-tegra/tegra_avp_init.c
index 3d21963..d25c1dd 100644
--- a/arch/arm/mach-tegra/tegra_avp_init.c
+++ b/arch/arm/mach-tegra/tegra_avp_init.c
@@ -177,7 +177,7 @@ static void start_cpu0_clocks(void)
 		       CRC_CLK_SOURCE_MSEL_SRC_SHIFT),
 		       TEGRA_CLK_RESET_BASE + CRC_CLK_SOURCE_MSEL);
 		writel(CRC_CLK_OUT_ENB_V_MSELECT,
-		       TEGRA_CLK_RESET_BASE + CRC_CLK_OUT_ENB_V);
+		       TEGRA_CLK_RESET_BASE + CRC_CLK_OUT_ENB_V_SET);
 		tegra_ll_delay_usec(3);
 		writel(CRC_RST_DEV_V_MSELECT,
 		       TEGRA_CLK_RESET_BASE + CRC_RST_DEV_V_CLR);
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
