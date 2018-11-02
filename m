Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gIVQ8-0003a9-TN
 for barebox@lists.infradead.org; Fri, 02 Nov 2018 09:07:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  2 Nov 2018 10:06:56 +0100
Message-Id: <20181102090656.2495-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] net: macb: Add compatible for atmel,sama5d3-gem
To: Barebox List <barebox@lists.infradead.org>

The macb driver works with the gigabit MAC found on Atmel sama5d3 SoCs.
Add a compatible for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/macb.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index b2957b7d29..1c5752d10e 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -728,6 +728,7 @@ static void macb_remove(struct device_d *dev)
 
 static const struct of_device_id macb_dt_ids[] = {
 	{ .compatible = "cdns,at91sam9260-macb",},
+	{ .compatible = "atmel,sama5d3-gem",},
 	{ /* sentinel */ }
 };
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
