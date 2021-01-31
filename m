Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6JBQ-0004Di-D4
 for barebox@lists.infradead.org; Sun, 31 Jan 2021 20:18:59 +0000
Received: from geraet.fritz.box (unknown [87.123.110.69])
 (Authenticated sender: ahmad@a3f.at)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 5BA7A20009
 for <barebox@lists.infradead.org>; Sun, 31 Jan 2021 20:18:55 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Sun, 31 Jan 2021 21:18:46 +0100
Message-Id: <20210131201846.3440477-8-ahmad@a3f.at>
In-Reply-To: <20210131201846.3440477-1-ahmad@a3f.at>
References: <20210131201846.3440477-1-ahmad@a3f.at>
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
Subject: [PATCH 7/7] sound: add gpio-beeper support
To: barebox@lists.infradead.org

Add support for simple gpio-beepers.

Note that unlike with PWM buzzers, GPIO buzzers can't be controlled
in frequency and thus it doesn't make much sense to use the multiple
argument version of beep with them.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/sound/Kconfig       |  6 +++
 drivers/sound/Makefile      |  1 +
 drivers/sound/gpio-beeper.c | 77 +++++++++++++++++++++++++++++++++++++
 3 files changed, 84 insertions(+)
 create mode 100644 drivers/sound/gpio-beeper.c

diff --git a/drivers/sound/Kconfig b/drivers/sound/Kconfig
index 9b7bbd7e7a33..bf6f715200e0 100644
--- a/drivers/sound/Kconfig
+++ b/drivers/sound/Kconfig
@@ -20,6 +20,12 @@ config PWM_BEEPER
 	help
 	  Say Y here to get support for PWM based beeper devices.
 
+config GPIO_BEEPER
+	bool "GPIO beeper support"
+	depends on GPIOLIB && OFDEVICE
+	help
+	  Say Y here to get support for GPIO based beeper devices.
+
 config SYNTH_SQUARES
 	bool "Synthesize square waves only"
 	help
diff --git a/drivers/sound/Makefile b/drivers/sound/Makefile
index 468e5bee838d..57d9cbd332f7 100644
--- a/drivers/sound/Makefile
+++ b/drivers/sound/Makefile
@@ -2,3 +2,4 @@
 obj-y += core.o synth.o
 obj-$(CONFIG_SOUND_SDL)		+= sdl.o
 obj-$(CONFIG_PWM_BEEPER) 	+= pwm-beeper.o
+obj-$(CONFIG_GPIO_BEEPER)	+= gpio-beeper.o
diff --git a/drivers/sound/gpio-beeper.c b/drivers/sound/gpio-beeper.c
new file mode 100644
index 000000000000..86fd4a4ee67c
--- /dev/null
+++ b/drivers/sound/gpio-beeper.c
@@ -0,0 +1,77 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ *  Copyright (C) 2021, Ahmad Fatoum
+ */
+
+#include <common.h>
+#include <regulator.h>
+#include <sound.h>
+#include <of.h>
+#include <gpio.h>
+#include <of_gpio.h>
+
+struct gpio_beeper {
+	int gpio;
+	struct sound_card card;
+};
+
+static int gpio_beeper_beep(struct sound_card *card, unsigned freq, unsigned duration)
+{
+	struct gpio_beeper *beeper = container_of(card, struct gpio_beeper, card);
+
+	gpio_set_active(beeper->gpio, freq);
+	return 0;
+}
+
+static int gpio_beeper_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node;
+	struct gpio_beeper *beeper;
+	struct sound_card *card;
+	enum of_gpio_flags of_flags;
+	unsigned long gpio_flags = GPIOF_OUT_INIT_ACTIVE;
+	int ret, gpio;
+
+	gpio = of_get_named_gpio_flags(np, "gpios", 0, &of_flags);
+	if (!gpio_is_valid(gpio))
+		return gpio;
+
+	if (of_flags & OF_GPIO_ACTIVE_LOW)
+		gpio_flags |= GPIOF_ACTIVE_LOW;
+
+	ret = gpio_request_one(gpio, gpio_flags, "gpio-beeper");
+	if (ret) {
+		dev_err(dev, "failed to request gpio %d: %d\n", gpio, ret);
+		return ret;
+	}
+
+	beeper = xzalloc(sizeof(*beeper));
+	beeper->gpio = gpio;
+	dev->priv = beeper;
+
+	card = &beeper->card;
+	card->name = np->full_name;
+	card->beep = gpio_beeper_beep;
+
+	return sound_card_register(card);
+}
+
+static void gpio_beeper_suspend(struct device_d *dev)
+{
+	struct gpio_beeper *beeper = dev->priv;
+
+	gpio_beeper_beep(&beeper->card, 0, 0);
+}
+
+static const struct of_device_id gpio_beeper_match[] = {
+	{ .compatible = "gpio-beeper", },
+	{ },
+};
+
+static struct driver_d gpio_beeper_driver = {
+	.name		= "gpio-beeper",
+	.probe		= gpio_beeper_probe,
+	.remove		= gpio_beeper_suspend,
+	.of_compatible	= gpio_beeper_match,
+};
+device_platform_driver(gpio_beeper_driver);
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
