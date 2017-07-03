Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dS7s3-0001OD-2C
 for barebox@lists.infradead.org; Mon, 03 Jul 2017 20:23:01 +0000
Date: Mon, 3 Jul 2017 22:22:34 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170703202234.GB15480@ravnborg.org>
References: <20170703161922.GA24614@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170703161922.GA24614@ravnborg.org>
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
Subject: [PATCH 2/2] gpio: fix null pointer exception when there is no oftree
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

From 500c564285890fd0c9c47dc68f7fe6bc916e4589 Mon Sep 17 00:00:00 2001
From: Sam Ravnborg <srn@skov.dk>
Date: Mon, 3 Jul 2017 22:07:41 +0200
Subject: [PATCH 2/2] gpio: fix null pointer exception when there is no oftree

In a system with oftree support enabled but with no oftree the
of_gpiochip_scan_hogs() would fail due to device_node equals NULL.

Check device_node and return with 0 in this situation, as this
mirrors what would have happened before we added support for gpio-hogs.

Fixes: 37e6bee7 ("gpiolib: Add support for GPIO "hog" nodes")
Cc: Alexander Kurz <akurz@blala.de>
Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---


Alexander posted a patch to fix this problem earlier this week.
I only looked at it after I had cooked up this patch.

Not too happy about the approach here, but seems to me to be
the best way.

Also the two static functions in this file may be wrapped in
#ifdef CONFIG_OFTREE
#else
static int of_gpiochip_scan_hogs(struct gpio_chip *chip) { return 0; }
#endif
Or maybe moved to of/of_gpio.c?

So they do not waste binary size with no OFTREE support.
I could not from existing code base see what was the preferred
approach here, likely because I looked in the wrong places.

	Sam



 drivers/gpio/gpiolib.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index a3e17ada0..2d0b778c8 100644
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
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
