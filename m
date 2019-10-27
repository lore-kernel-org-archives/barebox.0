Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOrnw-0005aI-Bj
 for barebox@lists.infradead.org; Sun, 27 Oct 2019 23:18:37 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Oct 2019 00:18:26 +0100
Message-Id: <20191027231832.10247-2-a.fatoum@pengutronix.de>
In-Reply-To: <20191027231832.10247-1-a.fatoum@pengutronix.de>
References: <20191027231832.10247-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 2/8] pinctrl: demote dev_info on successful probes to
 dev_dbg
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The SoC's pin controller is virtually always built and probed, so
there's is little information to gain from the fact it was successfully
probed. Have the success message show up as debug message to reduce probe
clutter like this:

	NOTICE: stm32-pinctrl soc:pin-controller@50002000.of: pinctrl/gpio driver registered
	NOTICE: stm32-pinctrl soc:pin-controller-z@54004000.of: pinctrl/gpio driver registered

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pinctrl/pinctrl-at91-pio4.c | 4 ++--
 drivers/pinctrl/pinctrl-bcm2835.c   | 2 +-
 drivers/pinctrl/pinctrl-stm32.c     | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-at91-pio4.c b/drivers/pinctrl/pinctrl-at91-pio4.c
index 9bc259f84cca..b527114f1ba0 100644
--- a/drivers/pinctrl/pinctrl-at91-pio4.c
+++ b/drivers/pinctrl/pinctrl-at91-pio4.c
@@ -260,7 +260,7 @@ static int pinctrl_at91_pio4_gpiochip_add(struct device_d *dev,
 		return ret;
 	}
 
-	dev_info(dev, "gpio driver registered\n");
+	dev_dbg(dev, "gpio driver registered\n");
 
 	return 0;
 }
@@ -290,7 +290,7 @@ static int pinctrl_at91_pio4_probe(struct device_d *dev)
 	if (ret)
 		return ret;
 
-	dev_info(dev, "pinctrl driver registered\n");
+	dev_dbg(dev, "pinctrl driver registered\n");
 
 	if (of_get_property(np, "gpio-controller", NULL))
 		return pinctrl_at91_pio4_gpiochip_add(dev, pinctrl);
diff --git a/drivers/pinctrl/pinctrl-bcm2835.c b/drivers/pinctrl/pinctrl-bcm2835.c
index 5fd5740e8184..b8e9b60372e3 100644
--- a/drivers/pinctrl/pinctrl-bcm2835.c
+++ b/drivers/pinctrl/pinctrl-bcm2835.c
@@ -171,7 +171,7 @@ static int bcm2835_gpio_probe(struct device_d *dev)
 		goto err;
 	}
 
-	dev_info(dev, "probed gpiochip%d with base %d\n", dev->id, bcmgpio->chip.base);
+	dev_dbg(dev, "probed gpiochip%d with base %d\n", dev->id, bcmgpio->chip.base);
 
 	if (IS_ENABLED(CONFIG_PINCTRL)) {
 		ret = pinctrl_register(&bcmgpio->pctl);
diff --git a/drivers/pinctrl/pinctrl-stm32.c b/drivers/pinctrl/pinctrl-stm32.c
index ab121998a37f..c199d74846e8 100644
--- a/drivers/pinctrl/pinctrl-stm32.c
+++ b/drivers/pinctrl/pinctrl-stm32.c
@@ -401,7 +401,7 @@ static int stm32_pinctrl_probe(struct device_d *dev)
 		}
 	}
 
-	dev_info(dev, "pinctrl/gpio driver registered\n");
+	dev_dbg(dev, "pinctrl/gpio driver registered\n");
 
 	return 0;
 }
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
