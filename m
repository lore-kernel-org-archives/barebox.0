Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZQAUI-0007Zu-H3
 for barebox@lists.infradead.org; Fri, 14 Aug 2015 08:37:19 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 14 Aug 2015 10:36:44 +0200
Message-Id: <1439541405-15388-3-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1439541405-15388-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1439541405-15388-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 3/4] gpio: dw: fix copy&paste variable name
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

This is a DW driver not IMX; fix variable name.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/gpio/gpio-dw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-dw.c b/drivers/gpio/gpio-dw.c
index e582eb6d91ca..362f365fa6a1 100644
--- a/drivers/gpio/gpio-dw.c
+++ b/drivers/gpio/gpio-dw.c
@@ -99,7 +99,7 @@ static int dw_gpio_get_direction(struct gpio_chip *gc, unsigned offset)
 		GPIOF_DIR_OUT : GPIOF_DIR_IN;
 }
 
-static struct gpio_ops imx_gpio_ops = {
+static struct gpio_ops dw_gpio_ops = {
 	.direction_input = dw_gpio_direction_input,
 	.direction_output = dw_gpio_direction_output,
 	.get_direction = dw_gpio_get_direction,
@@ -118,7 +118,7 @@ static int dw_gpio_probe(struct device_d *dev)
 	if (IS_ERR(chip->regs))
 		return PTR_ERR(chip->regs);
 
-	chip->chip.ops = &imx_gpio_ops;
+	chip->chip.ops = &dw_gpio_ops;
 	if (dev->id < 0) {
 		chip->chip.base = of_alias_get_id(dev->device_node, "gpio");
 		if (chip->chip.base < 0)
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
