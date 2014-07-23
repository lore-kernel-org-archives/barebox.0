Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x234.google.com ([2a00:1450:400c:c05::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9wxo-0006Hb-Qs
 for barebox@lists.infradead.org; Wed, 23 Jul 2014 13:52:15 +0000
Received: by mail-wi0-f180.google.com with SMTP id n3so2290103wiv.1
 for <barebox@lists.infradead.org>; Wed, 23 Jul 2014 06:51:50 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 23 Jul 2014 15:51:51 +0200
Message-Id: <1406123512-26489-11-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 10/10] USB: remove redundant defines from usb_defs.h
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

We imported a bunch of defines with ch9.h and ch11.h that are now
duplicated in usb_defs.h. Get rid of each duplicate in usb_defs.h
and prefer the ones from ch9.h and ch11.h.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
---
 include/usb/usb_defs.h | 117 -------------------------------------------------
 1 file changed, 117 deletions(-)

diff --git a/include/usb/usb_defs.h b/include/usb/usb_defs.h
index 461f7dbf4e96..8e32379c63cd 100644
--- a/include/usb/usb_defs.h
+++ b/include/usb/usb_defs.h
@@ -24,17 +24,6 @@
 
 /* USB constants */
 
-/* Device and/or Interface Class codes */
-#define USB_CLASS_PER_INTERFACE  0	/* for DeviceClass */
-#define USB_CLASS_AUDIO          1
-#define USB_CLASS_COMM           2
-#define USB_CLASS_HID            3
-#define USB_CLASS_PRINTER	       7
-#define USB_CLASS_MASS_STORAGE   8
-#define USB_CLASS_HUB            9
-#define USB_CLASS_DATA           10
-#define USB_CLASS_VENDOR_SPEC    0xff
-
 /* some HID sub classes */
 #define USB_SUB_HID_NONE        0
 #define USB_SUB_HID_BOOT        1
@@ -60,53 +49,14 @@
 #define US_PR_CBI              0		/* Control/Bulk/Interrupt */
 #define US_PR_BULK             0x50		/* bulk only */
 
-/* USB types */
-#define USB_TYPE_STANDARD   (0x00 << 5)
-#define USB_TYPE_CLASS      (0x01 << 5)
-#define USB_TYPE_VENDOR     (0x02 << 5)
-#define USB_TYPE_RESERVED   (0x03 << 5)
-
-/* USB recipients */
-#define USB_RECIP_DEVICE      0x00
-#define USB_RECIP_INTERFACE   0x01
-#define USB_RECIP_ENDPOINT    0x02
-#define USB_RECIP_OTHER       0x03
-
-/* USB directions */
-#define USB_DIR_OUT           0
-#define USB_DIR_IN            0x80
-
 /* Descriptor types */
-#define USB_DT_DEVICE        0x01
-#define USB_DT_CONFIG        0x02
-#define USB_DT_STRING        0x03
-#define USB_DT_INTERFACE     0x04
-#define USB_DT_ENDPOINT      0x05
-
 #define USB_DT_HID          (USB_TYPE_CLASS | 0x01)
 #define USB_DT_REPORT       (USB_TYPE_CLASS | 0x02)
 #define USB_DT_PHYSICAL     (USB_TYPE_CLASS | 0x03)
-#define USB_DT_HUB          (USB_TYPE_CLASS | 0x09)
 
 /* Descriptor sizes per descriptor type */
-#define USB_DT_DEVICE_SIZE      18
-#define USB_DT_CONFIG_SIZE      9
-#define USB_DT_INTERFACE_SIZE   9
-#define USB_DT_ENDPOINT_SIZE    7
-#define USB_DT_ENDPOINT_AUDIO_SIZE  9	/* Audio extension */
-#define USB_DT_HUB_NONVAR_SIZE  7
 #define USB_DT_HID_SIZE         9
 
-/* Endpoints */
-#define USB_ENDPOINT_NUMBER_MASK  0x0f	/* in bEndpointAddress */
-#define USB_ENDPOINT_DIR_MASK     0x80
-
-#define USB_ENDPOINT_XFERTYPE_MASK 0x03	/* in bmAttributes */
-#define USB_ENDPOINT_XFER_CONTROL  0
-#define USB_ENDPOINT_XFER_ISOC     1
-#define USB_ENDPOINT_XFER_BULK     2
-#define USB_ENDPOINT_XFER_INT      3
-
 /* USB Packet IDs (PIDs) */
 #define USB_PID_UNDEF_0             0xf0
 #define USB_PID_OUT                 0xe1
@@ -125,19 +75,6 @@
 #define USB_PID_STALL               0x1e
 #define USB_PID_UNDEF_F             0x0f
 
-/* Standard requests */
-#define USB_REQ_GET_STATUS          0x00
-#define USB_REQ_CLEAR_FEATURE       0x01
-#define USB_REQ_SET_FEATURE         0x03
-#define USB_REQ_SET_ADDRESS         0x05
-#define USB_REQ_GET_DESCRIPTOR      0x06
-#define USB_REQ_SET_DESCRIPTOR      0x07
-#define USB_REQ_GET_CONFIGURATION   0x08
-#define USB_REQ_SET_CONFIGURATION   0x09
-#define USB_REQ_GET_INTERFACE       0x0A
-#define USB_REQ_SET_INTERFACE       0x0B
-#define USB_REQ_SYNCH_FRAME         0x0C
-
 /* HID requests */
 #define USB_REQ_GET_REPORT          0x01
 #define USB_REQ_GET_IDLE            0x02
@@ -176,68 +113,14 @@
  */
 
 /*
- * Hub request types
- */
-
-#define USB_RT_HUB	(USB_TYPE_CLASS | USB_RECIP_DEVICE)
-#define USB_RT_PORT	(USB_TYPE_CLASS | USB_RECIP_OTHER)
-
-/*
- * Hub Class feature numbers
- */
-#define C_HUB_LOCAL_POWER   0
-#define C_HUB_OVER_CURRENT  1
-
-/*
  * Port feature numbers
  */
-#define USB_PORT_FEAT_CONNECTION     0
-#define USB_PORT_FEAT_ENABLE         1
-#define USB_PORT_FEAT_SUSPEND        2
-#define USB_PORT_FEAT_OVER_CURRENT   3
-#define USB_PORT_FEAT_RESET          4
-#define USB_PORT_FEAT_POWER          8
-#define USB_PORT_FEAT_LOWSPEED       9
 #define USB_PORT_FEAT_HIGHSPEED      10
-#define USB_PORT_FEAT_C_CONNECTION   16
-#define USB_PORT_FEAT_C_ENABLE       17
-#define USB_PORT_FEAT_C_SUSPEND      18
-#define USB_PORT_FEAT_C_OVER_CURRENT 19
-#define USB_PORT_FEAT_C_RESET        20
 
 /* wPortStatus bits */
-#define USB_PORT_STAT_CONNECTION    0x0001
-#define USB_PORT_STAT_ENABLE        0x0002
-#define USB_PORT_STAT_SUSPEND       0x0004
-#define USB_PORT_STAT_OVERCURRENT   0x0008
-#define USB_PORT_STAT_RESET         0x0010
-#define USB_PORT_STAT_POWER         0x0100
-#define USB_PORT_STAT_LOW_SPEED     0x0200
-#define USB_PORT_STAT_HIGH_SPEED    0x0400	/* support for EHCI */
 #define USB_PORT_STAT_SPEED	\
 	(USB_PORT_STAT_LOW_SPEED | USB_PORT_STAT_HIGH_SPEED)
 
-/* wPortChange bits */
-#define USB_PORT_STAT_C_CONNECTION  0x0001
-#define USB_PORT_STAT_C_ENABLE      0x0002
-#define USB_PORT_STAT_C_SUSPEND     0x0004
-#define USB_PORT_STAT_C_OVERCURRENT 0x0008
-#define USB_PORT_STAT_C_RESET       0x0010
-
-/* wHubCharacteristics (masks) */
-#define HUB_CHAR_LPSM               0x0003
-#define HUB_CHAR_COMPOUND           0x0004
-#define HUB_CHAR_OCPM               0x0018
-
-/*
- *Hub Status & Hub Change bit masks
- */
-#define HUB_STATUS_LOCAL_POWER	0x0001
-#define HUB_STATUS_OVERCURRENT	0x0002
-
-#define HUB_CHANGE_LOCAL_POWER	0x0001
-#define HUB_CHANGE_OVERCURRENT	0x0002
-
 /* (shifted) direction/type/recipient from the USB 2.0 spec, table 9.2 */
 #define DeviceRequest \
 	((USB_DIR_IN | USB_TYPE_STANDARD | USB_RECIP_DEVICE) << 8)
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
