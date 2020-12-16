Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kpWZ3-0004x8-1A
 for barebox@lists.infradead.org; Wed, 16 Dec 2020 13:09:57 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1kpWYx-0001fB-Ea
 for barebox@lists.infradead.org; Wed, 16 Dec 2020 14:09:51 +0100
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1kpWYx-0006ja-61
 for barebox@lists.infradead.org; Wed, 16 Dec 2020 14:09:51 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 16 Dec 2020 14:09:48 +0100
Message-Id: <20201216130949.25830-2-s.trumtrar@pengutronix.de>
In-Reply-To: <20201216130949.25830-1-s.trumtrar@pengutronix.de>
References: <20201216130949.25830-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/3] net: mdio:gpio: fix typos in dev_dbg
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/net/phy/mdio-gpio.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/phy/mdio-gpio.c b/drivers/net/phy/mdio-gpio.c
index affa31ae2c9b..80d2394f4b11 100644
--- a/drivers/net/phy/mdio-gpio.c
+++ b/drivers/net/phy/mdio-gpio.c
@@ -52,7 +52,7 @@ static struct mdio_gpio_info *mdio_gpio_of_get_info(struct device_d *dev)
 
 	ret = of_get_gpio_flags(dev->device_node, 0, &flags);
 	if (ret < 0) {
-		dev_dbg(dev, "failed to get MDC inforamtion from DT\n");
+		dev_dbg(dev, "failed to get MDC information from DT\n");
 		goto free_info;
 	}
 
@@ -61,7 +61,7 @@ static struct mdio_gpio_info *mdio_gpio_of_get_info(struct device_d *dev)
 
 	ret = of_get_gpio_flags(dev->device_node, 1, &flags);
 	if (ret < 0) {
-		dev_dbg(dev, "failed to get MDIO inforamtion from DT\n");
+		dev_dbg(dev, "failed to get MDIO information from DT\n");
 		goto free_info;
 	}
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
