Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dXwPV-0001LS-Ue
 for barebox@lists.infradead.org; Wed, 19 Jul 2017 21:21:36 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Wed, 19 Jul 2017 23:21:00 +0200
Message-Id: <20170719212104.2613-2-sam@ravnborg.org>
In-Reply-To: <20170719212013.GA1675@ravnborg.org>
References: <20170719212013.GA1675@ravnborg.org>
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
Subject: [PATCH 2/6] macb: fix clock probing with DT
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

With DT enabled the following was logged:

   macb fffbc000.ethernet: no macb_clk
   macb fffbc000.ethernet: probe failed: Invalid argument

The clock probed was with the name used in a non-DT setup.
Fix so we use a proper name ("pclk") with DT, and keep
current fuctionality without DT.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Acked-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/net/macb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 739a3dfbe..7721bcb56 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -666,7 +666,7 @@ static int macb_probe(struct device_d *dev)
 			macb->miibus.dev.device_node = mdiobus;
 
 		macb->phy_addr = -1;
-		pclk_name = NULL;
+		pclk_name = "pclk";
 	} else {
 		dev_err(dev, "macb: no platform_data\n");
 		return -ENODEV;
@@ -681,7 +681,7 @@ static int macb_probe(struct device_d *dev)
 	 * Do some basic initialization so that we at least can talk
 	 * to the PHY
 	 */
-	macb->pclk = clk_get(dev, "macb_clk");
+	macb->pclk = clk_get(dev, pclk_name);
 	if (IS_ERR(macb->pclk)) {
 		dev_err(dev, "no macb_clk\n");
 		return PTR_ERR(macb->pclk);
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
