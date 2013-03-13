Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.til-technologies.net ([92.103.228.36]
 helo=mx.til-technologies.net)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFixB-0006XZ-Pn
 for barebox@lists.infradead.org; Wed, 13 Mar 2013 10:30:38 +0000
Message-ID: <51405596.8040000@til-technologies.fr>
Date: Wed, 13 Mar 2013 11:31:50 +0100
From: Cerrato Renaud <r.cerrato@til-technologies.fr>
MIME-Version: 1.0
References: <CA+7xNQ=XbCFAFrr1z+4rpDBirNHv7w_r+RZwGk-0x=G7Y=TBMA@mail.gmail.com>
In-Reply-To: <CA+7xNQ=XbCFAFrr1z+4rpDBirNHv7w_r+RZwGk-0x=G7Y=TBMA@mail.gmail.com>
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
Subject: Re: [PATCH 4/7] AT91 UDC, fix recursive poll()
To: barebox@lists.infradead.org

Inlined patch below.

Signed-off-by: Cerrato Renaud <r.cerrato@til-technologies.fr>
---
 drivers/usb/gadget/at91_udc.c |   14 ++++++++------
 drivers/usb/gadget/at91_udc.h |    1 +
 2 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
index 0654038..8ae9119 100644
--- a/drivers/usb/gadget/at91_udc.c
+++ b/drivers/usb/gadget/at91_udc.c
@@ -1340,22 +1340,24 @@ int usb_gadget_poll(void)
     struct at91_udc    *udc = &controller;
     u32 value;
 
-    if (!udc->udp_baseaddr)
+    if (!udc->udp_baseaddr || udc->poll_lock)
         return 0;
 
+    udc->poll_lock = 1;
+
     value = gpio_get_value(udc->board.vbus_pin);
     value ^= udc->board.vbus_active_low;
-
-    if (!value) {
-        at91_update_vbus(udc, value);
-        return 0;
-    }
     at91_update_vbus(udc, value);
 
+    if (!value)
+        goto exit;
+
     value = at91_udp_read(udc, AT91_UDP_ISR) & (~(AT91_UDP_SOFINT));
     if (value)
         at91_udc_irq(udc);
 
+exit:
+    udc->poll_lock = 0;
     return value;
 }
 
diff --git a/drivers/usb/gadget/at91_udc.h b/drivers/usb/gadget/at91_udc.h
index e592cc5..51145a9 100644
--- a/drivers/usb/gadget/at91_udc.h
+++ b/drivers/usb/gadget/at91_udc.h
@@ -127,6 +127,7 @@ struct at91_udc {
     unsigned            wait_for_config_ack:1;
     unsigned            selfpowered:1;
     unsigned            active_suspend:1;
+    unsigned            poll_lock:1;
     u8                addr;
     u32                gpio_vbus_val;
     struct at91_udc_data        board;
-- 
1.7.2.5


On 12/03/2013 17:03, Renaud C. wrote:
> I noticed some weird behavior using DFU gadget on AT91SAM9260 which worked 1 of 10 times. The bug was due to the usb_gadget_poll() being called while the previous call was still in progress : some USB calls may takes a lot of time (ex : DFU erase-then-write), resulting in the poller to be triggered again while still in the poll() function.
>
> This patch adds a poll lock to the AT91 UDC driver.
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
