Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZcRY-0008U0-2B
 for barebox@lists.infradead.org; Fri, 15 May 2020 15:40:17 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Fri, 15 May 2020 17:39:47 +0200
Message-Id: <20200515153947.31109-1-cleger@kalray.eu>
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
Subject: [PATCH] clocksource: kvx: remove unused variable np.
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>

Remove unused variable np from probe function.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 drivers/clocksource/kvx_timer.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/clocksource/kvx_timer.c b/drivers/clocksource/kvx_timer.c
index f16d77b9d..4125ddbee 100644
--- a/drivers/clocksource/kvx_timer.c
+++ b/drivers/clocksource/kvx_timer.c
@@ -27,7 +27,6 @@ static int kvx_timer_probe(struct device_d *dev)
 {
 	struct clk *clk;
 	uint32_t clk_freq;
-	struct device_node *np = dev->device_node;
 
 	/* Get clock frequency */
 	clk = clk_get(dev, NULL);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
