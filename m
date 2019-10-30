Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPkam-0008AG-IV
 for barebox@lists.infradead.org; Wed, 30 Oct 2019 09:48:42 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iPkag-0003b2-TX
 for barebox@lists.infradead.org; Wed, 30 Oct 2019 10:48:34 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 30 Oct 2019 10:48:34 +0100
Message-Id: <20191030094834.29610-1-l.stach@pengutronix.de>
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
Subject: [PATCH] OF: gpio: don't warn if ignored GPIO flag matches the behavior
To: barebox@lists.infradead.org

Port of the upstream accepted change to the Linux kernel.

Some devicetrees specify the ACTIVE_LOW flag in the fixed regulator GPIO
handle. While this has always been ignored, it's consistent with the
behavior of the regulator binding in the absence of the
"enable-active-high" DT property. It doesn't make much sense to print a
user visible warning for a configuration which is consistent, so only
print the warning if the GPIO flag contradicts the behavior dictated by
by the enable-active-high property.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/of/of_gpio.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/of/of_gpio.c b/drivers/of/of_gpio.c
index 9a8331ed185b..7cbeeaf69e30 100644
--- a/drivers/of/of_gpio.c
+++ b/drivers/of/of_gpio.c
@@ -19,18 +19,20 @@ static void of_gpio_flags_quirks(struct device_node *np,
 	     (!(strcmp(propname, "enable-gpio") &&
 		strcmp(propname, "enable-gpios")) &&
 	      of_device_is_compatible(np, "regulator-gpio")))) {
+		bool active_low = !of_property_read_bool(np,
+							 "enable-active-high");
 		/*
 		 * The regulator GPIO handles are specified such that the
 		 * presence or absence of "enable-active-high" solely controls
 		 * the polarity of the GPIO line. Any phandle flags must
 		 * be actively ignored.
 		 */
-		if (*flags & OF_GPIO_ACTIVE_LOW) {
+		if ((*flags & OF_GPIO_ACTIVE_LOW) && !active_low) {
 			pr_warn("%s GPIO handle specifies active low - ignored\n",
 				np->full_name);
 			*flags &= ~OF_GPIO_ACTIVE_LOW;
 		}
-		if (!of_property_read_bool(np, "enable-active-high"))
+		if (active_low)
 			*flags |= OF_GPIO_ACTIVE_LOW;
 	}
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
