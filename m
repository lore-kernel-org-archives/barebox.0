Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9FJ1-0003YJ-BN
 for barebox@lists.infradead.org; Mon, 21 Jul 2014 15:15:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 21 Jul 2014 17:14:34 +0200
Message-Id: <1405955687-27433-11-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405955687-27433-1-git-send-email-s.hauer@pengutronix.de>
References: <1405955687-27433-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/23] USB: gadget: DFU: Move locally used defines/structs to
 dfu driver
To: barebox@lists.infradead.org

There's no reason to have them under include/

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/dfu.c | 66 +++++++++++++++++++++++++++++++++++++++++++++++
 include/usb/dfu.h        | 67 ------------------------------------------------
 2 files changed, 66 insertions(+), 67 deletions(-)

diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index 5252703..ac8ddb9 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -54,6 +54,72 @@
 #include <init.h>
 #include <fs.h>
 
+#define USB_DT_DFU			0x21
+
+struct usb_dfu_func_descriptor {
+	u_int8_t		bLength;
+	u_int8_t		bDescriptorType;
+	u_int8_t		bmAttributes;
+#define USB_DFU_CAN_DOWNLOAD	(1 << 0)
+#define USB_DFU_CAN_UPLOAD	(1 << 1)
+#define USB_DFU_MANIFEST_TOL	(1 << 2)
+#define USB_DFU_WILL_DETACH	(1 << 3)
+	u_int16_t		wDetachTimeOut;
+	u_int16_t		wTransferSize;
+	u_int16_t		bcdDFUVersion;
+} __attribute__ ((packed));
+
+#define USB_DT_DFU_SIZE			9
+
+#define USB_TYPE_DFU		(USB_TYPE_CLASS|USB_RECIP_INTERFACE)
+
+/* DFU class-specific requests (Section 3, DFU Rev 1.1) */
+#define USB_REQ_DFU_DETACH	0x00
+#define USB_REQ_DFU_DNLOAD	0x01
+#define USB_REQ_DFU_UPLOAD	0x02
+#define USB_REQ_DFU_GETSTATUS	0x03
+#define USB_REQ_DFU_CLRSTATUS	0x04
+#define USB_REQ_DFU_GETSTATE	0x05
+#define USB_REQ_DFU_ABORT	0x06
+
+struct dfu_status {
+	u_int8_t bStatus;
+	u_int8_t bwPollTimeout[3];
+	u_int8_t bState;
+	u_int8_t iString;
+} __attribute__((packed));
+
+#define DFU_STATUS_OK			0x00
+#define DFU_STATUS_errTARGET		0x01
+#define DFU_STATUS_errFILE		0x02
+#define DFU_STATUS_errWRITE		0x03
+#define DFU_STATUS_errERASE		0x04
+#define DFU_STATUS_errCHECK_ERASED	0x05
+#define DFU_STATUS_errPROG		0x06
+#define DFU_STATUS_errVERIFY		0x07
+#define DFU_STATUS_errADDRESS		0x08
+#define DFU_STATUS_errNOTDONE		0x09
+#define DFU_STATUS_errFIRMWARE		0x0a
+#define DFU_STATUS_errVENDOR		0x0b
+#define DFU_STATUS_errUSBR		0x0c
+#define DFU_STATUS_errPOR		0x0d
+#define DFU_STATUS_errUNKNOWN		0x0e
+#define DFU_STATUS_errSTALLEDPKT	0x0f
+
+enum dfu_state {
+	DFU_STATE_appIDLE		= 0,
+	DFU_STATE_appDETACH		= 1,
+	DFU_STATE_dfuIDLE		= 2,
+	DFU_STATE_dfuDNLOAD_SYNC	= 3,
+	DFU_STATE_dfuDNBUSY		= 4,
+	DFU_STATE_dfuDNLOAD_IDLE	= 5,
+	DFU_STATE_dfuMANIFEST_SYNC	= 6,
+	DFU_STATE_dfuMANIFEST		= 7,
+	DFU_STATE_dfuMANIFEST_WAIT_RST	= 8,
+	DFU_STATE_dfuUPLOAD_IDLE	= 9,
+	DFU_STATE_dfuERROR		= 10,
+};
+
 #define USB_DT_DFU_SIZE			9
 #define USB_DT_DFU			0x21
 
diff --git a/include/usb/dfu.h b/include/usb/dfu.h
index 4617534..db50437 100644
--- a/include/usb/dfu.h
+++ b/include/usb/dfu.h
@@ -39,71 +39,4 @@ struct usb_dfu_pdata {
 
 int usb_dfu_register(struct usb_dfu_pdata *);
 
-#define USB_DT_DFU			0x21
-
-struct usb_dfu_func_descriptor {
-	u_int8_t		bLength;
-	u_int8_t		bDescriptorType;
-	u_int8_t		bmAttributes;
-#define USB_DFU_CAN_DOWNLOAD	(1 << 0)
-#define USB_DFU_CAN_UPLOAD	(1 << 1)
-#define USB_DFU_MANIFEST_TOL	(1 << 2)
-#define USB_DFU_WILL_DETACH	(1 << 3)
-	u_int16_t		wDetachTimeOut;
-	u_int16_t		wTransferSize;
-	u_int16_t		bcdDFUVersion;
-} __attribute__ ((packed));
-
-#define USB_DT_DFU_SIZE			9
-
-#define USB_TYPE_DFU		(USB_TYPE_CLASS|USB_RECIP_INTERFACE)
-
-/* DFU class-specific requests (Section 3, DFU Rev 1.1) */
-#define USB_REQ_DFU_DETACH	0x00
-#define USB_REQ_DFU_DNLOAD	0x01
-#define USB_REQ_DFU_UPLOAD	0x02
-#define USB_REQ_DFU_GETSTATUS	0x03
-#define USB_REQ_DFU_CLRSTATUS	0x04
-#define USB_REQ_DFU_GETSTATE	0x05
-#define USB_REQ_DFU_ABORT	0x06
-
-struct dfu_status {
-	u_int8_t bStatus;
-	u_int8_t bwPollTimeout[3];
-	u_int8_t bState;
-	u_int8_t iString;
-} __attribute__((packed));
-
-#define DFU_STATUS_OK			0x00
-#define DFU_STATUS_errTARGET		0x01
-#define DFU_STATUS_errFILE		0x02
-#define DFU_STATUS_errWRITE		0x03
-#define DFU_STATUS_errERASE		0x04
-#define DFU_STATUS_errCHECK_ERASED	0x05
-#define DFU_STATUS_errPROG		0x06
-#define DFU_STATUS_errVERIFY		0x07
-#define DFU_STATUS_errADDRESS		0x08
-#define DFU_STATUS_errNOTDONE		0x09
-#define DFU_STATUS_errFIRMWARE		0x0a
-#define DFU_STATUS_errVENDOR		0x0b
-#define DFU_STATUS_errUSBR		0x0c
-#define DFU_STATUS_errPOR		0x0d
-#define DFU_STATUS_errUNKNOWN		0x0e
-#define DFU_STATUS_errSTALLEDPKT	0x0f
-
-enum dfu_state {
-	DFU_STATE_appIDLE		= 0,
-	DFU_STATE_appDETACH		= 1,
-	DFU_STATE_dfuIDLE		= 2,
-	DFU_STATE_dfuDNLOAD_SYNC	= 3,
-	DFU_STATE_dfuDNBUSY		= 4,
-	DFU_STATE_dfuDNLOAD_IDLE	= 5,
-	DFU_STATE_dfuMANIFEST_SYNC	= 6,
-	DFU_STATE_dfuMANIFEST		= 7,
-	DFU_STATE_dfuMANIFEST_WAIT_RST	= 8,
-	DFU_STATE_dfuUPLOAD_IDLE	= 9,
-	DFU_STATE_dfuERROR		= 10,
-};
-
 #endif /* _USB_DFU_H */
-
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
