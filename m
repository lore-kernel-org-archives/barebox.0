Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxqVE-0003qY-Dh
 for barebox@lists.infradead.org; Wed, 14 Aug 2019 10:27:37 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 14 Aug 2019 12:27:29 +0200
Message-Id: <20190814102729.23857-2-o.rempel@pengutronix.de>
In-Reply-To: <20190814102729.23857-1-o.rempel@pengutronix.de>
References: <20190814102729.23857-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 2/2] net: macb: extend support to Microchip SAMA5D2
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

Tested on Microchip SAMA5D27 SOM1 EK1

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/macb.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 0b3c909433..c4ab9efb63 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -770,6 +770,7 @@ static void macb_remove(struct device_d *dev)
 
 static const struct of_device_id macb_dt_ids[] = {
 	{ .compatible = "cdns,at91sam9260-macb",},
+	{ .compatible = "atmel,sama5d2-gem",},
 	{ .compatible = "atmel,sama5d3-gem",},
 	{ .compatible = "cdns,zynqmp-gem",},
 	{ /* sentinel */ }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
