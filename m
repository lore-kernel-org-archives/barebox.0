Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gITqv-0004zG-BQ
 for barebox@lists.infradead.org; Fri, 02 Nov 2018 07:26:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  2 Nov 2018 08:26:31 +0100
Message-Id: <20181102072632.10654-3-s.hauer@pengutronix.de>
In-Reply-To: <20181102072632.10654-1-s.hauer@pengutronix.de>
References: <20181102072632.10654-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] net: macb: simplify private data allocation
To: Barebox List <barebox@lists.infradead.org>

Instead of allocating struct macb_device and a struct eth_device
separately just use the eth_device structure that is already embedded
in struct macb_device but currently unused.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/macb.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 28065e1e13..fe192f9bf4 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -618,9 +618,10 @@ static int macb_probe(struct device_d *dev)
 	const char *pclk_name;
 	u32 ncfgr;
 
-	edev = xzalloc(sizeof(struct eth_device) + sizeof(struct macb_device));
-	edev->priv = (struct macb_device *)(edev + 1);
-	macb = edev->priv;
+	macb = xzalloc(sizeof(*macb));
+	edev = &macb->netdev;
+	edev->priv = macb;
+	dev->priv = macb;
 
 	macb->dev = dev;
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
