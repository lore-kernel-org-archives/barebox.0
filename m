Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx.til-technologies.net ([92.103.228.36])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFluq-0007Ln-22
 for barebox@lists.infradead.org; Wed, 13 Mar 2013 13:40:24 +0000
Message-ID: <51408214.1070304@til-technologies.fr>
Date: Wed, 13 Mar 2013 14:41:40 +0100
From: Cerrato Renaud <r.cerrato@til-technologies.fr>
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
Subject: [PATCH 2/5] at91udc: startup fix
To: barebox@lists.infradead.org

I noticed that depending on boot timings, the USB gadget weren't detected at all by hosts. After few hours of debugging and using the at91clk output, I found that the UDP clock wasn't enabled from time to time.

This patch fix the startup of UDC by adding a check into the at91_update_vbus().

Signed-off-by: Cerrato Renaud <r.cerrato@til-technologies.fr>
---
 drivers/usb/gadget/at91_udc.c |   10 ++++++++--
 1 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
index 3899db2..0654038 100644
--- a/drivers/usb/gadget/at91_udc.c
+++ b/drivers/usb/gadget/at91_udc.c
@@ -1327,6 +1327,12 @@ static void at91_update_vbus(struct at91_udc *udc, u32 value)
         dev_set_param(udc->dev, "vbus", "0");
 
     udc->gpio_vbus_val = value;
+    udc->vbus = value != 0;
+
+    if(udc->driver)
+        pullup(udc, udc->vbus);
+    else
+        pullup(udc, 0);
 }
 
 int usb_gadget_poll(void)
@@ -1508,7 +1514,7 @@ static int __init at91udc_probe(struct device_d *dev)
          * Get the initial state of VBUS - we cannot expect
          * a pending interrupt.
          */
-        udc->vbus = gpio_get_value(udc->board.vbus_pin);
+        udc->vbus = gpio_get_value(udc->board.vbus_pin) ^ udc->board.vbus_active_low;
         DBG(udc, "VBUS detection: host:%s \n",
             udc->vbus ? "present":"absent");
     } else {
@@ -1517,7 +1523,7 @@ static int __init at91udc_probe(struct device_d *dev)
     }
 
     dev_add_param(dev, "vbus", NULL, NULL, 0);
-    dev_set_param(dev, "vbus", "0");
+    dev_set_param(dev, "vbus", udc->vbus ? "1" : "0");
 
     poller_register(&poller);
 
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
