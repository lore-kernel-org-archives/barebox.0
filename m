Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1crG5P-0004pc-UJ
 for barebox@lists.infradead.org; Fri, 24 Mar 2017 03:40:25 +0000
Received: by mail-lf0-x244.google.com with SMTP id n78so228911lfi.3
 for <barebox@lists.infradead.org>; Thu, 23 Mar 2017 20:40:02 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 24 Mar 2017 06:39:54 +0300
Message-Id: <20170324033954.2364-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] net: phy: mdio-gpio.c: fix "no previous prototype" warning
To: barebox@lists.infradead.org

The patch fixes this compiler's warning:

drivers/net/phy/mdio-gpio.c:48:24: warning: no previous prototype
        for 'mdio_gpio_of_get_info' [-Wmissing-prototypes]
 struct mdio_gpio_info *mdio_gpio_of_get_info(struct device_d *dev)
                        ^

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/net/phy/mdio-gpio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/phy/mdio-gpio.c b/drivers/net/phy/mdio-gpio.c
index a839f2dee..a846fb28e 100644
--- a/drivers/net/phy/mdio-gpio.c
+++ b/drivers/net/phy/mdio-gpio.c
@@ -45,7 +45,7 @@ struct mdio_gpio_info {
 	int mdc_active_low, mdio_active_low, mdo_active_low;
 };
 
-struct mdio_gpio_info *mdio_gpio_of_get_info(struct device_d *dev)
+static struct mdio_gpio_info *mdio_gpio_of_get_info(struct device_d *dev)
 {
 	int ret;
 	enum of_gpio_flags flags;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
