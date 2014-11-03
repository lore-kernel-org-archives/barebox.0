Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XlQOn-0006JE-Qd
 for barebox@lists.infradead.org; Mon, 03 Nov 2014 22:47:00 +0000
Received: from tellur.intern.lynxeye.de (p57B5E6E1.dip0.t-ipconnect.de
 [87.181.230.225]) by lynxeye.de (Postfix) with ESMTPA id 452C626C2002
 for <barebox@lists.infradead.org>; Mon,  3 Nov 2014 23:45:18 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon,  3 Nov 2014 23:52:24 +0100
Message-Id: <1415055144-6119-12-git-send-email-dev@lynxeye.de>
In-Reply-To: <1415055144-6119-1-git-send-email-dev@lynxeye.de>
References: <1415055144-6119-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 12/12] clk: tegra: don't enable UART clocks by default
To: barebox@lists.infradead.org

Now that we are registering a proper driver for the
UARTs we no longer need to enable the clocks unconditionally.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/clk/tegra/clk-tegra124.c |  8 ++++----
 drivers/clk/tegra/clk-tegra20.c  | 10 +++++-----
 drivers/clk/tegra/clk-tegra30.c  | 10 +++++-----
 3 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/clk/tegra/clk-tegra124.c b/drivers/clk/tegra/clk-tegra124.c
index d597a23..7a2f7c0 100644
--- a/drivers/clk/tegra/clk-tegra124.c
+++ b/drivers/clk/tegra/clk-tegra124.c
@@ -322,10 +322,10 @@ static struct tegra_clk_init_table init_table[] = {
 	{TEGRA124_CLK_PLL_P_OUT3,	TEGRA124_CLK_CLK_MAX,	102000000,	1},
 	{TEGRA124_CLK_PLL_P_OUT4,	TEGRA124_CLK_CLK_MAX,	204000000,	1},
 	{TEGRA124_CLK_MSELECT,		TEGRA124_CLK_PLL_P,	102000000,	1},
-	{TEGRA124_CLK_UARTA,		TEGRA124_CLK_PLL_P,	0,		1},
-	{TEGRA124_CLK_UARTB,		TEGRA124_CLK_PLL_P,	0,		1},
-	{TEGRA124_CLK_UARTC,		TEGRA124_CLK_PLL_P,	0,		1},
-	{TEGRA124_CLK_UARTD,		TEGRA124_CLK_PLL_P,	0,		1},
+	{TEGRA124_CLK_UARTA,		TEGRA124_CLK_PLL_P,	0,		0},
+	{TEGRA124_CLK_UARTB,		TEGRA124_CLK_PLL_P,	0,		0},
+	{TEGRA124_CLK_UARTC,		TEGRA124_CLK_PLL_P,	0,		0},
+	{TEGRA124_CLK_UARTD,		TEGRA124_CLK_PLL_P,	0,		0},
 	{TEGRA124_CLK_SDMMC1,		TEGRA124_CLK_PLL_P,	48000000,	0},
 	{TEGRA124_CLK_SDMMC2,		TEGRA124_CLK_PLL_P,	48000000,	0},
 	{TEGRA124_CLK_SDMMC3,		TEGRA124_CLK_PLL_P,	48000000,	0},
diff --git a/drivers/clk/tegra/clk-tegra20.c b/drivers/clk/tegra/clk-tegra20.c
index 5b4365d..2ff42d8 100644
--- a/drivers/clk/tegra/clk-tegra20.c
+++ b/drivers/clk/tegra/clk-tegra20.c
@@ -324,11 +324,11 @@ static struct tegra_clk_init_table init_table[] = {
 	{TEGRA20_CLK_PLL_P_OUT4,	TEGRA20_CLK_CLK_MAX,	24000000,	1},
 	{TEGRA20_CLK_PLL_C,		TEGRA20_CLK_CLK_MAX,	600000000,	1},
 	{TEGRA20_CLK_PLL_C_OUT1,	TEGRA20_CLK_CLK_MAX,	120000000,	1},
-	{TEGRA20_CLK_UARTA,		TEGRA20_CLK_PLL_P,	0,		1},
-	{TEGRA20_CLK_UARTB,		TEGRA20_CLK_PLL_P,	0,		1},
-	{TEGRA20_CLK_UARTC,		TEGRA20_CLK_PLL_P,	0,		1},
-	{TEGRA20_CLK_UARTD,		TEGRA20_CLK_PLL_P,	0,		1},
-	{TEGRA20_CLK_UARTE,		TEGRA20_CLK_PLL_P,	0,		1},
+	{TEGRA20_CLK_UARTA,		TEGRA20_CLK_PLL_P,	0,		0},
+	{TEGRA20_CLK_UARTB,		TEGRA20_CLK_PLL_P,	0,		0},
+	{TEGRA20_CLK_UARTC,		TEGRA20_CLK_PLL_P,	0,		0},
+	{TEGRA20_CLK_UARTD,		TEGRA20_CLK_PLL_P,	0,		0},
+	{TEGRA20_CLK_UARTE,		TEGRA20_CLK_PLL_P,	0,		0},
 	{TEGRA20_CLK_SDMMC1,		TEGRA20_CLK_PLL_P,	48000000,	0},
 	{TEGRA20_CLK_SDMMC2,		TEGRA20_CLK_PLL_P,	48000000,	0},
 	{TEGRA20_CLK_SDMMC3,		TEGRA20_CLK_PLL_P,	48000000,	0},
diff --git a/drivers/clk/tegra/clk-tegra30.c b/drivers/clk/tegra/clk-tegra30.c
index 7210053..46fd6dd 100644
--- a/drivers/clk/tegra/clk-tegra30.c
+++ b/drivers/clk/tegra/clk-tegra30.c
@@ -352,11 +352,11 @@ static struct tegra_clk_init_table init_table[] = {
 	{TEGRA30_CLK_PLL_P_OUT3,	TEGRA30_CLK_CLK_MAX,	102000000,	1},
 	{TEGRA30_CLK_PLL_P_OUT4,	TEGRA30_CLK_CLK_MAX,	204000000,	1},
 	{TEGRA30_CLK_MSELECT,		TEGRA30_CLK_PLL_P,	102000000,	1},
-	{TEGRA30_CLK_UARTA,		TEGRA30_CLK_PLL_P,	0,		1},
-	{TEGRA30_CLK_UARTB,		TEGRA30_CLK_PLL_P,	0,		1},
-	{TEGRA30_CLK_UARTC,		TEGRA30_CLK_PLL_P,	0,		1},
-	{TEGRA30_CLK_UARTD,		TEGRA30_CLK_PLL_P,	0,		1},
-	{TEGRA30_CLK_UARTE,		TEGRA30_CLK_PLL_P,	0,		1},
+	{TEGRA30_CLK_UARTA,		TEGRA30_CLK_PLL_P,	0,		0},
+	{TEGRA30_CLK_UARTB,		TEGRA30_CLK_PLL_P,	0,		0},
+	{TEGRA30_CLK_UARTC,		TEGRA30_CLK_PLL_P,	0,		0},
+	{TEGRA30_CLK_UARTD,		TEGRA30_CLK_PLL_P,	0,		0},
+	{TEGRA30_CLK_UARTE,		TEGRA30_CLK_PLL_P,	0,		0},
 	{TEGRA30_CLK_SDMMC1,		TEGRA30_CLK_PLL_P,	48000000,	0},
 	{TEGRA30_CLK_SDMMC2,		TEGRA30_CLK_PLL_P,	48000000,	0},
 	{TEGRA30_CLK_SDMMC3,		TEGRA30_CLK_PLL_P,	48000000,	0},
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
