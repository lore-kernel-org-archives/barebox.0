Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XtfU9-0008P4-CB
 for barebox@lists.infradead.org; Wed, 26 Nov 2014 16:30:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Nov 2014 17:29:46 +0100
Message-Id: <1417019394-23683-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1417019394-23683-1-git-send-email-s.hauer@pengutronix.de>
References: <1417019394-23683-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/11] serial: i.MX: Use "per" clk
To: barebox@lists.infradead.org

Which is the correct clock for the baud rate.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_imx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index e379f29..21189cb 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -324,7 +324,7 @@ static int imx_serial_probe(struct device_d *dev)
 	cdev = &priv->cdev;
 	dev->priv = priv;
 
-	priv->clk = clk_get(dev, NULL);
+	priv->clk = clk_get(dev, "per");
 	if (IS_ERR(priv->clk)) {
 		ret = PTR_ERR(priv->clk);
 		goto err_free;
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
