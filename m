Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xl1S0-0006p9-Tw
 for barebox@lists.infradead.org; Sun, 02 Nov 2014 20:08:37 +0000
Received: from tellur.intern.lynxeye.de (p57B5E6E1.dip0.t-ipconnect.de
 [87.181.230.225]) by lynxeye.de (Postfix) with ESMTPA id 75F4826C2002
 for <barebox@lists.infradead.org>; Sun,  2 Nov 2014 21:06:49 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun,  2 Nov 2014 21:13:48 +0100
Message-Id: <1414959235-18095-7-git-send-email-dev@lynxeye.de>
In-Reply-To: <1414959235-18095-1-git-send-email-dev@lynxeye.de>
References: <1414959235-18095-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 06/13] clk: tegra: slow down MSELECT to 102MHz
To: barebox@lists.infradead.org

Don't know where I got the 204MHZ previously, but
102MHz is the official supported maximum.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
Overclocking MSELECT by 100% seems to lead to
PCIe failures. Much more on T124 than on T30.
---
 drivers/clk/tegra/clk-tegra124.c | 2 +-
 drivers/clk/tegra/clk-tegra30.c  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/tegra/clk-tegra124.c b/drivers/clk/tegra/clk-tegra124.c
index 514b22a..3530127 100644
--- a/drivers/clk/tegra/clk-tegra124.c
+++ b/drivers/clk/tegra/clk-tegra124.c
@@ -286,7 +286,7 @@ static struct tegra_clk_init_table init_table[] = {
 	{TEGRA124_CLK_PLL_P_OUT2,	TEGRA124_CLK_CLK_MAX,	48000000,	1},
 	{TEGRA124_CLK_PLL_P_OUT3,	TEGRA124_CLK_CLK_MAX,	102000000,	1},
 	{TEGRA124_CLK_PLL_P_OUT4,	TEGRA124_CLK_CLK_MAX,	204000000,	1},
-	{TEGRA124_CLK_MSELECT,		TEGRA124_CLK_PLL_P,	204000000,	1},
+	{TEGRA124_CLK_MSELECT,		TEGRA124_CLK_PLL_P,	102000000,	1},
 	{TEGRA124_CLK_UARTA,		TEGRA124_CLK_PLL_P,	0,		1},
 	{TEGRA124_CLK_UARTB,		TEGRA124_CLK_PLL_P,	0,		1},
 	{TEGRA124_CLK_UARTC,		TEGRA124_CLK_PLL_P,	0,		1},
diff --git a/drivers/clk/tegra/clk-tegra30.c b/drivers/clk/tegra/clk-tegra30.c
index 9997ab9..7210053 100644
--- a/drivers/clk/tegra/clk-tegra30.c
+++ b/drivers/clk/tegra/clk-tegra30.c
@@ -351,7 +351,7 @@ static struct tegra_clk_init_table init_table[] = {
 	{TEGRA30_CLK_PLL_P_OUT2,	TEGRA30_CLK_CLK_MAX,	48000000,	1},
 	{TEGRA30_CLK_PLL_P_OUT3,	TEGRA30_CLK_CLK_MAX,	102000000,	1},
 	{TEGRA30_CLK_PLL_P_OUT4,	TEGRA30_CLK_CLK_MAX,	204000000,	1},
-	{TEGRA30_CLK_MSELECT,		TEGRA30_CLK_PLL_P,	204000000,	1},
+	{TEGRA30_CLK_MSELECT,		TEGRA30_CLK_PLL_P,	102000000,	1},
 	{TEGRA30_CLK_UARTA,		TEGRA30_CLK_PLL_P,	0,		1},
 	{TEGRA30_CLK_UARTB,		TEGRA30_CLK_PLL_P,	0,		1},
 	{TEGRA30_CLK_UARTC,		TEGRA30_CLK_PLL_P,	0,		1},
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
