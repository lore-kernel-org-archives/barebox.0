Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XQyvO-0002VN-NX
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 13:24:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Sep 2014 15:23:41 +0200
Message-Id: <1410182622-22876-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] pinctrl: AT91: Only use of_alias_get_id when probed from
 devicetree
To: barebox@lists.infradead.org

If probed from platform data we have to use dev->id instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pinctrl/pinctrl-at91.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
index e212f7a..3c194df 100644
--- a/drivers/pinctrl/pinctrl-at91.c
+++ b/drivers/pinctrl/pinctrl-at91.c
@@ -618,10 +618,15 @@ static int at91_gpio_probe(struct device_d *dev)
 	struct at91_gpio_chip *at91_gpio;
 	struct clk *clk;
 	int ret;
-	int alias_idx = of_alias_get_id(dev->device_node, "gpio");
+	int alias_idx;
 
 	BUG_ON(dev->id > MAX_GPIO_BANKS);
 
+	if (dev->device_node)
+		alias_idx = of_alias_get_id(dev->device_node, "gpio");
+	else
+		alias_idx = dev->id;
+
 	at91_gpio = &gpio_chip[alias_idx];
 
 	clk = clk_get(dev, NULL);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
