Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UOq9U-0001MR-DW
 for barebox@lists.infradead.org; Sun, 07 Apr 2013 14:01:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun,  7 Apr 2013 16:00:54 +0200
Message-Id: <1365343255-26497-21-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
References: <1365343255-26497-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 20/21] USB gadget at91: Use dev_add_param_bool for vbus
 parameter
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/at91_udc.c | 23 +++++++----------------
 1 file changed, 7 insertions(+), 16 deletions(-)

diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
index 917ec4d..a11379c 100644
--- a/drivers/usb/gadget/at91_udc.c
+++ b/drivers/usb/gadget/at91_udc.c
@@ -1316,17 +1316,9 @@ static struct at91_udc controller = {
 
 static void at91_udc_irq (void *_udc);
 
-static void at91_update_vbus(struct at91_udc *udc, u32 value)
+static int at91_udc_vbus_set(struct param_d *p, void *priv)
 {
-	if (value == udc->gpio_vbus_val)
-		return;
-
-	if (value)
-		dev_set_param(udc->dev, "vbus", "1");
-	else
-		dev_set_param(udc->dev, "vbus", "0");
-
-	udc->gpio_vbus_val = value;
+	return -EROFS;
 }
 
 int usb_gadget_poll(void)
@@ -1340,11 +1332,10 @@ int usb_gadget_poll(void)
 	value = gpio_get_value(udc->board.vbus_pin);
 	value ^= udc->board.vbus_active_low;
 
-	if (!value) {
-		at91_update_vbus(udc, value);
+	udc->gpio_vbus_val = value;
+
+	if (!value)
 		return 0;
-	}
-	at91_update_vbus(udc, value);
 
 	value = at91_udp_read(udc, AT91_UDP_ISR) & (~(AT91_UDP_SOFINT));
 	if (value)
@@ -1516,8 +1507,8 @@ static int __init at91udc_probe(struct device_d *dev)
 		udc->vbus = 1;
 	}
 
-	dev_add_param(dev, "vbus", NULL, NULL, 0);
-	dev_set_param(dev, "vbus", "0");
+	dev_add_param_bool(dev, "vbus",
+			at91_udc_vbus_set, NULL, &udc->gpio_vbus_val, udc);
 
 	poller_register(&poller);
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
