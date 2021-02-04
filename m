Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l7cCt-0007mg-Dj
 for barebox@lists.infradead.org; Thu, 04 Feb 2021 10:49:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  4 Feb 2021 11:49:48 +0100
Message-Id: <20210204104948.30500-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] gpio: orion: Do not overwrite device id
To: Barebox List <barebox@lists.infradead.org>

The driver has no busyness manipulating the id field in the given device
struct. Leave it untouched.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/gpio/gpio-orion.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/gpio/gpio-orion.c b/drivers/gpio/gpio-orion.c
index 63ef966edf..ba2729d1f0 100644
--- a/drivers/gpio/gpio-orion.c
+++ b/drivers/gpio/gpio-orion.c
@@ -91,10 +91,7 @@ static int orion_gpio_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	struct orion_gpio_chip *gpio;
-
-	dev->id = of_alias_get_id(dev->device_node, "gpio");
-	if (dev->id < 0)
-		return dev->id;
+	int id;
 
 	gpio = xzalloc(sizeof(*gpio));
 	iores = dev_request_mem_resource(dev, 0);
@@ -105,7 +102,12 @@ static int orion_gpio_probe(struct device_d *dev)
 	gpio->regs = IOMEM(iores->start);
 	gpio->chip.dev = dev;
 	gpio->chip.ops = &orion_gpio_ops;
-	gpio->chip.base = dev->id * 32;
+
+	id = of_alias_get_id(dev->device_node, "gpio");
+	if (id < 0)
+		return id;
+
+	gpio->chip.base = id * 32;
 	gpio->chip.ngpio = 32;
 	of_property_read_u32(dev->device_node, "ngpios", &gpio->chip.ngpio);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
