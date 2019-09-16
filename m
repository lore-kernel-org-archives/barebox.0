Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9qME-0006uI-Jm
 for barebox@lists.infradead.org; Mon, 16 Sep 2019 12:43:56 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1i9qM8-0008Po-G8
 for barebox@lists.infradead.org; Mon, 16 Sep 2019 14:43:48 +0200
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1i9qM8-0004Ee-67
 for barebox@lists.infradead.org; Mon, 16 Sep 2019 14:43:48 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 16 Sep 2019 14:43:41 +0200
Message-Id: <20190916124345.24244-2-s.trumtrar@pengutronix.de>
In-Reply-To: <20190916124345.24244-1-s.trumtrar@pengutronix.de>
References: <20190916124345.24244-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/6] usb: gadget: add usb_gadget_udc_reset function
To: Barebox List <barebox@lists.infradead.org>

Add a function to notify the udc core, that a bus reset occured.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 drivers/usb/gadget/udc-core.c | 15 +++++++++++++++
 include/usb/gadget.h          |  4 ++++
 2 files changed, 19 insertions(+)

diff --git a/drivers/usb/gadget/udc-core.c b/drivers/usb/gadget/udc-core.c
index e357456098ae..096f05ed48df 100644
--- a/drivers/usb/gadget/udc-core.c
+++ b/drivers/usb/gadget/udc-core.c
@@ -108,6 +108,21 @@ void usb_gadget_set_state(struct usb_gadget *gadget,
 }
 EXPORT_SYMBOL_GPL(usb_gadget_set_state);
 
+/**
+ * usb_gadget_udc_reset - notifies the udc core that bus reset occurs
+ * @gadget: The gadget which bus reset occurs
+ * @driver: The gadget driver we want to notify
+ *
+ * If the udc driver has bus reset handler, it needs to call this when the bus
+ * reset occurs, it notifies the gadget driver that the bus reset occurs as
+ * well as updates gadget state.
+ */
+void usb_gadget_udc_reset(struct usb_gadget *gadget,
+		struct usb_gadget_driver *driver)
+{
+	usb_gadget_set_state(gadget, USB_STATE_DEFAULT);
+}
+EXPORT_SYMBOL_GPL(usb_gadget_udc_reset);
 /* ------------------------------------------------------------------------- */
 
 /**
diff --git a/include/usb/gadget.h b/include/usb/gadget.h
index 80418a9cd447..afa11b2d9d8a 100644
--- a/include/usb/gadget.h
+++ b/include/usb/gadget.h
@@ -1018,6 +1018,10 @@ extern void usb_gadget_set_state(struct usb_gadget *gadget,
 
 /*-------------------------------------------------------------------------*/
 
+/* utility to tell udc core that the bus reset occurs */
+extern void usb_gadget_udc_reset(struct usb_gadget *gadget,
+				 struct usb_gadget_driver *driver);
+
 /* utility wrapping a simple endpoint selection policy */
 
 extern struct usb_ep *usb_ep_autoconfig(struct usb_gadget *,
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
