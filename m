Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rh0qP-0000O0-EI
 for barebox@lists.infradead.org; Sat, 31 Dec 2011 15:27:40 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id C286BDC37C5
 for <barebox@lists.infradead.org>; Sat, 31 Dec 2011 16:28:30 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 31 Dec 2011 16:21:37 +0100
Message-Id: <1325344898-7076-11-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20111231151655.GB945@game.jcrosoft.org>
References: <20111231151655.GB945@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 11/12] at91_udc: update vbus param only if updated
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/usb/gadget/at91_udc.c |   17 +++++++++++++++--
 drivers/usb/gadget/at91_udc.h |    1 +
 2 files changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
index 9277427..bb0d614 100644
--- a/drivers/usb/gadget/at91_udc.c
+++ b/drivers/usb/gadget/at91_udc.c
@@ -1315,6 +1315,19 @@ static struct at91_udc controller = {
 
 static void at91_udc_irq (void *_udc);
 
+static void at91_update_vbus(struct at91_udc *udc, u32 value)
+{
+	if (value == udc->gpio_vbus_val)
+		return;
+
+	if (value)
+		dev_set_param(udc->dev, "vbus", "1");
+	else
+		dev_set_param(udc->dev, "vbus", "0");
+
+	udc->gpio_vbus_val = value;
+}
+
 int usb_gadget_poll(void)
 {
 	struct at91_udc	*udc = &controller;
@@ -1327,10 +1340,10 @@ int usb_gadget_poll(void)
 	value ^= udc->board.vbus_active_low;
 
 	if (!value) {
-		dev_set_param(udc->dev, "vbus", "0");
+		at91_update_vbus(udc, value);
 		return 0;
 	}
-	dev_set_param(udc->dev, "vbus", "1");
+	at91_update_vbus(udc, value);
 
 	value = at91_udp_read(udc, AT91_UDP_ISR) & (~(AT91_UDP_SOFINT));
 	if (value)
diff --git a/drivers/usb/gadget/at91_udc.h b/drivers/usb/gadget/at91_udc.h
index 21aaf39..e592cc5 100644
--- a/drivers/usb/gadget/at91_udc.h
+++ b/drivers/usb/gadget/at91_udc.h
@@ -128,6 +128,7 @@ struct at91_udc {
 	unsigned			selfpowered:1;
 	unsigned			active_suspend:1;
 	u8				addr;
+	u32				gpio_vbus_val;
 	struct at91_udc_data		board;
 	struct clk			*iclk, *fclk;
 	struct device_d			*dev;
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
