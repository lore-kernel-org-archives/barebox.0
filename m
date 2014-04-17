Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-f44.google.com ([209.85.220.44])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Waaff-0003o0-Tq
 for barebox@lists.infradead.org; Thu, 17 Apr 2014 00:59:20 +0000
Received: by mail-pa0-f44.google.com with SMTP id bj1so11620850pad.3
 for <barebox@lists.infradead.org>; Wed, 16 Apr 2014 17:58:55 -0700 (PDT)
Received: from [172.16.2.8] ([184.71.143.130])
 by mx.google.com with ESMTPSA id dy7sm118136648pad.9.2014.04.16.17.51.12
 for <barebox@lists.infradead.org>
 (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Wed, 16 Apr 2014 17:51:12 -0700 (PDT)
Message-ID: <534F257F.8000106@exegin.com>
Date: Wed, 16 Apr 2014 17:51:11 -0700
From: Owen Kirby <osk@exegin.com>
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
Subject: [PATCH] Fix AT91 UDC driver on boards without vbus.
To: barebox@lists.infradead.org

From 4ea2bd2e1ca18136d7cfd61643bc8d8187b1495f Mon Sep 17 00:00:00 2001
From: Owen Kirby <osk@exegin.com>
Date: Wed, 16 Apr 2014 17:45:18 -0700
Subject: [PATCH] Fix AT91 UDC driver on boards without vbus.

While porting Barebox to one of our boards, we found that the AT91 UDC driver
will fail to connect to USB hosts, and will spam the console with errors if
the VBUS pin isn't connected.

Signed-off-by: Owen Kirby <osk@exegin.com>
---
 drivers/usb/gadget/at91_udc.c |   20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
index 8ef1ad0..b66e949 100644
--- a/drivers/usb/gadget/at91_udc.c
+++ b/drivers/usb/gadget/at91_udc.c
@@ -1328,14 +1328,16 @@ int usb_gadget_poll(void)
 
 	if (!udc->udp_baseaddr)
 		return -ENODEV;
+    
+	if (gpio_is_valid(udc->board.vbus_pin)) {
+		value = gpio_get_value(udc->board.vbus_pin);
+		value ^= udc->board.vbus_active_low;
 
-	value = gpio_get_value(udc->board.vbus_pin);
-	value ^= udc->board.vbus_active_low;
-
-	udc->gpio_vbus_val = value;
+		udc->gpio_vbus_val = value;
 
-	if (!value)
-		return 0;
+		if (!value)
+			return 0;
+	}
 
 	value = at91_udp_read(udc, AT91_UDP_ISR) & (~(AT91_UDP_SOFINT));
 	if (value)
@@ -1501,14 +1503,14 @@ static int __init at91udc_probe(struct device_d *dev)
 		udc->vbus = gpio_get_value(udc->board.vbus_pin);
 		DBG(udc, "VBUS detection: host:%s \n",
 			udc->vbus ? "present":"absent");
+
+		dev_add_param_bool(dev, "vbus",
+			at91_udc_vbus_set, NULL, &udc->gpio_vbus_val, udc);
 	} else {
 		DBG(udc, "no VBUS detection, assuming always-on\n");
 		udc->vbus = 1;
 	}
 
-	dev_add_param_bool(dev, "vbus",
-			at91_udc_vbus_set, NULL, &udc->gpio_vbus_val, udc);
-
 	poller_register(&poller);
 
 	INFO(udc, "%s version %s\n", driver_name, DRIVER_VERSION);
-- 
1.7.9.5



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
