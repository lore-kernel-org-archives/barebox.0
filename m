Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8U1K-0008RW-Te
 for barebox@lists.infradead.org; Wed, 19 Aug 2020 19:45:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Aug 2020 21:45:06 +0200
Message-Id: <20200819194511.14005-2-s.hauer@pengutronix.de>
In-Reply-To: <20200819194511.14005-1-s.hauer@pengutronix.de>
References: <20200819194511.14005-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/7] clk: imx: clk-pll14xx: remove debug leftover
To: Barebox List <barebox@lists.infradead.org>

The printfs were never meant to go upstream. Remove them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk-pll14xx.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index 91e9624a60..6ba519516b 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -358,8 +358,7 @@ static void clk_pll14xx_unprepare(struct clk *clk)
 {
 	struct clk_pll14xx *pll = to_clk_pll14xx(clk);
 	u32 val;
-printf("%s %p\n", __func__, pll);
-printf("%s %p\n", __func__, pll->base);
+
 	/*
 	 * Set RST to 0, power down mode is enabled and
 	 * every digital block is reset
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
