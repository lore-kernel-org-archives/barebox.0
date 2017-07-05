Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dSp7L-00075F-AY
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 18:33:41 +0000
Date: Wed, 5 Jul 2017 20:33:15 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170705183315.GB17038@ravnborg.org>
References: <20170705182747.GB13920@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170705182747.GB13920@ravnborg.org>
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
Subject: [PATCH 2/3] gpio: fix null pointer exception when there is no oftree
To: barebox@lists.infradead.org, Alexander Kurz <akurz@blala.de>, Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

From d10f426e1b8cec7de257dabf59e7fe53a591b3c1 Mon Sep 17 00:00:00 2001
From: Sam Ravnborg <srn@skov.dk>
Date: Mon, 3 Jul 2017 22:07:41 +0200
Subject: [PATCH 2/3] gpio: fix null pointer exception when there is no oftree

In a system with oftree support enabled but with no oftree the
of_gpiochip_scan_hogs() would fail due to device_node equals NULL.

Check device_node and return with 0 in this situation, as this
mirrors what would have happened before we added support for gpio-hogs.

Use IS_ENABLED(CONFIG_OFDEVICE) to teach compiler to leave
out the of_* specific functions if not needed.

Fixes: 37e6bee7 ("gpiolib: Add support for GPIO "hog" nodes")
Signed-off-by: Alexander Kurz <akurz@blala.de>
Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/gpio/gpiolib.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index a3e17ada0..2bd8ef2a8 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -379,6 +379,9 @@ static int of_gpiochip_scan_hogs(struct gpio_chip *chip)
 	struct device_node *np;
 	int ret, i;
 
+	if (!chip->dev->device_node)
+		return 0;
+
 	for_each_available_child_of_node(chip->dev->device_node, np) {
 		if (!of_property_read_bool(np, "gpio-hog"))
 			continue;
@@ -416,7 +419,10 @@ int gpiochip_add(struct gpio_chip *chip)
 	for (i = chip->base; i < chip->base + chip->ngpio; i++)
 		gpio_desc[i].chip = chip;
 
-	return of_gpiochip_scan_hogs(chip);
+	if (IS_ENABLED(CONFIG_OFDEVICE))
+		return of_gpiochip_scan_hogs(chip);
+	else
+		return 0;
 }
 
 void gpiochip_remove(struct gpio_chip *chip)
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
