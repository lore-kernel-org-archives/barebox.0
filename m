Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WZKSo-0001Fe-5v
 for barebox@lists.infradead.org; Sun, 13 Apr 2014 13:28:51 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p578FE321.dip0.t-ipconnect.de [87.143.227.33])
 by lynxeye.de (Postfix) with ESMTPA id 8E3AE18B425A
 for <barebox@lists.infradead.org>; Sun, 13 Apr 2014 15:27:54 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 13 Apr 2014 15:27:34 +0200
Message-Id: <1397395668-9325-5-git-send-email-dev@lynxeye.de>
In-Reply-To: <1397395668-9325-1-git-send-email-dev@lynxeye.de>
References: <1397395668-9325-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 04/18] tegra: source MSELECT clock from CLK_M
To: barebox@lists.infradead.org

We need to reprogram PLL_P at a later time, so
we have to make sure MSELECT is able to operate
correctly when we stop PLL_P.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/tegra_avp_init.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-tegra/tegra_avp_init.c b/arch/arm/mach-tegra/tegra_avp_init.c
index 3314db45724b..1afea445acbe 100644
--- a/arch/arm/mach-tegra/tegra_avp_init.c
+++ b/arch/arm/mach-tegra/tegra_avp_init.c
@@ -164,8 +164,8 @@ static void start_cpu0_clocks(void)
 		/* init MSELECT */
 		writel(CRC_RST_DEV_V_MSELECT,
 		       TEGRA_CLK_RESET_BASE + CRC_RST_DEV_V_SET);
-		writel((CRC_CLK_SOURCE_MSEL_SRC_PLLP <<
-		       CRC_CLK_SOURCE_MSEL_SRC_SHIFT) | 2,
+		writel((CRC_CLK_SOURCE_MSEL_SRC_CLKM <<
+		       CRC_CLK_SOURCE_MSEL_SRC_SHIFT),
 		       TEGRA_CLK_RESET_BASE + CRC_CLK_SOURCE_MSEL);
 		writel(CRC_CLK_OUT_ENB_V_MSELECT,
 		       TEGRA_CLK_RESET_BASE + CRC_CLK_OUT_ENB_V);
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
