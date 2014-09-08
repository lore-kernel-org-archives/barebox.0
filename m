Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XQyvO-0002VO-NY
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 13:24:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Sep 2014 15:23:42 +0200
Message-Id: <1410182622-22876-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1410182622-22876-1-git-send-email-s.hauer@pengutronix.de>
References: <1410182622-22876-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] pinctrl: AT91: use alias_idx to calculate the base gpio
 number
To: barebox@lists.infradead.org

For the devicetree case alias_idx contains the gpio bank number.
dev->id has no meaning in this case.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pinctrl/pinctrl-at91.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index 3c194df..e77c8c4 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -651,7 +651,7 @@ static int at91_gpio_probe(struct device_d *dev)
 	at91_gpio->chip.ops = &at91_gpio_ops;
 	at91_gpio->chip.ngpio = MAX_NB_GPIO_PER_BANK;
 	at91_gpio->chip.dev = dev;
-	at91_gpio->chip.base = dev->id * MAX_NB_GPIO_PER_BANK;
+	at91_gpio->chip.base = alias_idx * MAX_NB_GPIO_PER_BANK;
 
 	ret = gpiochip_add(&at91_gpio->chip);
 	if (ret) {
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
