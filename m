Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwMKb-0003qm-7V
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 07:30:28 +0000
Received: by mail-pg1-x542.google.com with SMTP id b2so5689746pgl.9
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2019 23:30:13 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 19 Feb 2019 23:29:30 -0800
Message-Id: <20190220072930.14300-26-andrew.smirnov@gmail.com>
In-Reply-To: <20190220072930.14300-1-andrew.smirnov@gmail.com>
References: <20190220072930.14300-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 25/25] usb: usb251xb: add usb data lane port swap feature
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of Linux patch https://patchwork.kernel.org/patch/10766235/

  The HW can swap the USB differential-pair (D+/D-) for each port
  separately. So the USB signals can be re-aligned with a misplaced
  USB connector on the PCB.

  Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
  Reviewed-by: Richard Leitner <richard.leitner@skidata.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/misc/usb251xb.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/misc/usb251xb.c b/drivers/usb/misc/usb251xb.c
index 0b721f6d4..97f55efa8 100644
--- a/drivers/usb/misc/usb251xb.c
+++ b/drivers/usb/misc/usb251xb.c
@@ -340,12 +340,14 @@ static int usb251xb_get_ofdata(struct usb251xb *hub,
 	struct device_d *dev = hub->dev;
 	struct device_node *np = dev->device_node;
 	int len, err, i;
-	u32 property_u32 = 0;
+	u32 port, property_u32 = 0;
 	const u32 *cproperty_u32;
 	const char *cproperty_char;
 	enum of_gpio_flags of_flags;
 	unsigned long flags = GPIOF_OUT_INIT_ACTIVE;
 	char str[USB251XB_STRING_BUFSIZE / 2];
+	struct property *prop;
+	const __be32 *p;
 
 	if (!np) {
 		dev_err(dev, "failed to get ofdata\n");
@@ -556,6 +558,16 @@ static int usb251xb_get_ofdata(struct usb251xb *hub,
 			      (wchar_t *)hub->serial,
 			      USB251XB_STRING_BUFSIZE);
 
+	/*
+	 * The datasheet documents the register as 'Port Swap' but the register
+	 * controls the USB DP/DM signal swapping
+	 */
+	hub->port_swap = USB251XB_DEF_PORT_SWAP;
+	of_property_for_each_u32(np, "swap-dx-lanes", prop, p, port) {
+		if ((port >= 0) && (port <= data->port_cnt))
+			hub->port_swap |= BIT(port);
+	}
+
 	/* The following parameters are currently not exposed to devicetree, but
 	 * may be as soon as needed.
 	 */
@@ -563,7 +575,6 @@ static int usb251xb_get_ofdata(struct usb251xb *hub,
 	hub->boost_up = USB251XB_DEF_BOOST_UP;
 	hub->boost_57 = USB251XB_DEF_BOOST_57;
 	hub->boost_14 = USB251XB_DEF_BOOST_14;
-	hub->port_swap = USB251XB_DEF_PORT_SWAP;
 	hub->port_map12 = USB251XB_DEF_PORT_MAP_12;
 	hub->port_map34 = USB251XB_DEF_PORT_MAP_34;
 	hub->port_map56 = USB251XB_DEF_PORT_MAP_56;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
