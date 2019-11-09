Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTRkM-0007FN-BK
 for barebox@lists.infradead.org; Sat, 09 Nov 2019 14:29:51 +0000
Received: from astat.fritz.box (a89-183-91-60.net-htp.de [89.183.91.60])
 by lynxeye.de (Postfix) with ESMTPA id DA5B4E7425C
 for <barebox@lists.infradead.org>; Sat,  9 Nov 2019 15:28:42 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sat,  9 Nov 2019 15:28:27 +0100
Message-Id: <20191109142837.82409-8-dev@lynxeye.de>
In-Reply-To: <20191109142837.82409-1-dev@lynxeye.de>
References: <20191109142837.82409-1-dev@lynxeye.de>
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
Subject: [PATCH v2 08/18] net: macb: add Zynq compatible
To: barebox@lists.infradead.org

Add compatible for the GEM on the Zynq 7000 device.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/net/macb.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index df1e606454b1..4850e60c49ab 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -792,6 +792,7 @@ static const struct of_device_id macb_dt_ids[] = {
 	{ .compatible = "cdns,at91sam9260-macb",},
 	{ .compatible = "atmel,sama5d2-gem",},
 	{ .compatible = "atmel,sama5d3-gem",},
+	{ .compatible = "cdns,zynq-gem",},
 	{ .compatible = "cdns,zynqmp-gem",},
 	{ /* sentinel */ }
 };
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
