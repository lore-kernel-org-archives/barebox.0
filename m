Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22f.google.com ([2a00:1450:4010:c04::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WxjtW-0005nD-NY
 for barebox@lists.infradead.org; Thu, 19 Jun 2014 21:29:19 +0000
Received: by mail-lb0-f175.google.com with SMTP id q8so1830519lbi.34
 for <barebox@lists.infradead.org>; Thu, 19 Jun 2014 14:28:56 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 20 Jun 2014 01:28:38 +0400
Message-Id: <1403213320-28750-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1403213320-28750-1-git-send-email-antonynpavlov@gmail.com>
References: <1403213320-28750-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/4] i2c: versatile: add devicetree support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/i2c/busses/i2c-versatile.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/i2c/busses/i2c-versatile.c b/drivers/i2c/busses/i2c-versatile.c
index d395e1d..4fead61 100644
--- a/drivers/i2c/busses/i2c-versatile.c
+++ b/drivers/i2c/busses/i2c-versatile.c
@@ -84,6 +84,7 @@ static int i2c_versatile_probe(struct device_d *dev)
 
 	i2c->adap.algo_data = &i2c->algo;
 	i2c->adap.dev.parent = dev;
+	i2c->adap.dev.device_node = dev->device_node;
 	i2c->algo = i2c_versatile_algo;
 	i2c->algo.data = i2c;
 
@@ -99,8 +100,14 @@ static int i2c_versatile_probe(struct device_d *dev)
 	return ret;
 }
 
+static struct of_device_id i2c_versatile_match[] = {
+	{ .compatible = "arm,versatile-i2c", },
+	{},
+};
+
 static struct driver_d i2c_versatile_driver = {
 	.name	= "versatile-i2c",
 	.probe	= i2c_versatile_probe,
+	.of_compatible = DRV_OF_COMPAT(i2c_versatile_match),
 };
 device_platform_driver(i2c_versatile_driver);
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
