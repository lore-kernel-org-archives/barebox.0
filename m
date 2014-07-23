Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22f.google.com ([2a00:1450:400c:c05::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9wxp-0006IQ-17
 for barebox@lists.infradead.org; Wed, 23 Jul 2014 13:52:15 +0000
Received: by mail-wi0-f175.google.com with SMTP id ho1so7828801wib.8
 for <barebox@lists.infradead.org>; Wed, 23 Jul 2014 06:51:49 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 23 Jul 2014 15:51:46 +0200
Message-Id: <1406123512-26489-6-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406123512-26489-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406123512-26489-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 05/10] USB: Move FooRequest defines and add class requests
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

{Device,Interface,Endpoint}Requests are currently defined in private
ehci.h but are also useful for other drivers than ehci-hcd. Move them
to usb/usb_defs.h and also add some more class requests.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
---
 drivers/usb/host/ehci.h | 16 ----------------
 include/usb/usb_defs.h  | 26 ++++++++++++++++++++++++++
 2 files changed, 26 insertions(+), 16 deletions(-)

diff --git a/drivers/usb/host/ehci.h b/drivers/usb/host/ehci.h
index 5d899cc2ec08..b1e768b49304 100644
--- a/drivers/usb/host/ehci.h
+++ b/drivers/usb/host/ehci.h
@@ -22,22 +22,6 @@
 #define CONFIG_SYS_USB_EHCI_MAX_ROOT_PORTS	16
 #endif
 
-/* (shifted) direction/type/recipient from the USB 2.0 spec, table 9.2 */
-#define DeviceRequest \
-	((USB_DIR_IN | USB_TYPE_STANDARD | USB_RECIP_DEVICE) << 8)
-
-#define DeviceOutRequest \
-	((USB_DIR_OUT | USB_TYPE_STANDARD | USB_RECIP_DEVICE) << 8)
-
-#define InterfaceRequest \
-	((USB_DIR_IN | USB_TYPE_STANDARD | USB_RECIP_INTERFACE) << 8)
-
-#define EndpointRequest \
-	((USB_DIR_IN | USB_TYPE_STANDARD | USB_RECIP_INTERFACE) << 8)
-
-#define EndpointOutRequest \
-	((USB_DIR_OUT | USB_TYPE_STANDARD | USB_RECIP_INTERFACE) << 8)
-
 /*
  * Register Space.
  */
diff --git a/include/usb/usb_defs.h b/include/usb/usb_defs.h
index ace20e430d14..461f7dbf4e96 100644
--- a/include/usb/usb_defs.h
+++ b/include/usb/usb_defs.h
@@ -238,4 +238,30 @@
 #define HUB_CHANGE_LOCAL_POWER	0x0001
 #define HUB_CHANGE_OVERCURRENT	0x0002
 
+/* (shifted) direction/type/recipient from the USB 2.0 spec, table 9.2 */
+#define DeviceRequest \
+	((USB_DIR_IN | USB_TYPE_STANDARD | USB_RECIP_DEVICE) << 8)
+
+#define DeviceOutRequest \
+	((USB_DIR_OUT | USB_TYPE_STANDARD | USB_RECIP_DEVICE) << 8)
+
+#define InterfaceRequest \
+	((USB_DIR_IN | USB_TYPE_STANDARD | USB_RECIP_INTERFACE) << 8)
+
+#define EndpointRequest \
+	((USB_DIR_IN | USB_TYPE_STANDARD | USB_RECIP_INTERFACE) << 8)
+
+#define EndpointOutRequest \
+	((USB_DIR_OUT | USB_TYPE_STANDARD | USB_RECIP_INTERFACE) << 8)
+
+/* class requests from the USB 2.0 hub spec, table 11-15 */
+/* GetBusState and SetHubDescriptor are optional, omitted */
+#define ClearHubFeature		(0x2000 | USB_REQ_CLEAR_FEATURE)
+#define ClearPortFeature	(0x2300 | USB_REQ_CLEAR_FEATURE)
+#define GetHubDescriptor	(0xa000 | USB_REQ_GET_DESCRIPTOR)
+#define GetHubStatus		(0xa000 | USB_REQ_GET_STATUS)
+#define GetPortStatus		(0xa300 | USB_REQ_GET_STATUS)
+#define SetHubFeature		(0x2000 | USB_REQ_SET_FEATURE)
+#define SetPortFeature		(0x2300 | USB_REQ_SET_FEATURE)
+
 #endif /*_USB_DEFS_H_ */
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
