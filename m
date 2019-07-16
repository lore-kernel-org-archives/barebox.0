Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnKoU-0002un-Gj
 for barebox@lists.infradead.org; Tue, 16 Jul 2019 10:36:03 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 16 Jul 2019 12:35:55 +0200
Message-Id: <20190716103557.17446-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 1/3] OF: gpio: Add special quirk to parse regulator flags
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

To make fec work with devicetree on imx28-evk, partially port following
kernel patch:

|commit a603a2b8d86ee93ee2107da8ca75fd854fd4ff32
|Author: Linus Walleij <linus.walleij@linaro.org>
|Date:   Sat Dec 30 16:26:36 2017 +0100
|
|    gpio: of: Add special quirk to parse regulator flags
|
|    While most GPIOs are indicated to be active low or open drain using
|    their twocell flags, we have legacy regulator bindings to take into
|    account.
|
|    Add a quirk respecting the special boolean active-high and open
|    drain flags when parsing regulator nodes for GPIOs.
|
|    This makes it possible to get rid of duplicated inversion semantics
|    handling in the regulator core and any regulator drivers parsing
|    and handling this separately.
|
|    Unfortunately the old regulator inversion semantics are specified
|    such that the presence or absence of "enable-active-high" solely
|    controls the semantics, so we cannot deprecate this in favor
|    of the phandle-provided inversion flag, instead any such phandle
|    inversion flag provided in the second cell of a GPIO handle must be
|    actively ignored, so we print a warning to contain the situation
|    and make things easy for the users.
|
|    Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/of/of_gpio.c | 35 ++++++++++++++++++++++++++++++++++-
 1 file changed, 34 insertions(+), 1 deletion(-)

diff --git a/drivers/of/of_gpio.c b/drivers/of/of_gpio.c
index dc8ae22776..9a8331ed18 100644
--- a/drivers/of/of_gpio.c
+++ b/drivers/of/of_gpio.c
@@ -4,6 +4,37 @@
 #include <of_gpio.h>
 #include <gpio.h>
 
+static void of_gpio_flags_quirks(struct device_node *np,
+				 const char *propname,
+				 enum of_gpio_flags *flags,
+				 int index)
+{
+	/*
+	 * Some GPIO fixed regulator quirks.
+	 * Note that active low is the default.
+	 */
+	if (IS_ENABLED(CONFIG_REGULATOR) &&
+	    (of_device_is_compatible(np, "regulator-fixed") ||
+	     of_device_is_compatible(np, "reg-fixed-voltage") ||
+	     (!(strcmp(propname, "enable-gpio") &&
+		strcmp(propname, "enable-gpios")) &&
+	      of_device_is_compatible(np, "regulator-gpio")))) {
+		/*
+		 * The regulator GPIO handles are specified such that the
+		 * presence or absence of "enable-active-high" solely controls
+		 * the polarity of the GPIO line. Any phandle flags must
+		 * be actively ignored.
+		 */
+		if (*flags & OF_GPIO_ACTIVE_LOW) {
+			pr_warn("%s GPIO handle specifies active low - ignored\n",
+				np->full_name);
+			*flags &= ~OF_GPIO_ACTIVE_LOW;
+		}
+		if (!of_property_read_bool(np, "enable-active-high"))
+			*flags |= OF_GPIO_ACTIVE_LOW;
+	}
+}
+
 /**
  * of_get_named_gpio_flags() - Get a GPIO number and flags to use with GPIO API
  * @np:		device node to get GPIO from
@@ -46,8 +77,10 @@ int of_get_named_gpio_flags(struct device_node *np, const char *propname,
 		return ret;
 	}
 
-	if (flags)
+	if (flags) {
 		*flags = out_args.args[1];
+		of_gpio_flags_quirks(np, propname, flags, index);
+	}
 
 	return ret;
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
