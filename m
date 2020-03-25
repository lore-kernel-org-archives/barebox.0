Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH5Bj-00053T-Fr
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 12:31:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Mar 2020 13:30:57 +0100
Message-Id: <20200325123111.9612-11-s.hauer@pengutronix.de>
In-Reply-To: <20200325123111.9612-1-s.hauer@pengutronix.de>
References: <20200325123111.9612-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/24] usb: hub: Parse and save TT details from device
 descriptor
To: Barebox List <barebox@lists.infradead.org>

Adoption of U-Boot commit 5624dfd5aa91c244519ec60b40b4a42b4d9a43ca:

| commit 5624dfd5aa91c244519ec60b40b4a42b4d9a43ca
| Author: Bin Meng <bmeng.cn@gmail.com>
| Date:   Wed Jul 19 21:51:16 2017 +0800
|
|     usb: hub: Parse and save TT details from device descriptor
|
|     A high speed hub has a special responsibility to handle full speed/
|     low speed devices connected on downstream ports. In this case, the
|     hub must isolate the high speed signaling environment from the full
|     speed/low speed signaling environment with the help of Transaction
|     Translator (TT). TT details are provided by hub descriptors and we
|     parse and save it to hub uclass_priv for later use.
|
|     Signed-off-by: Bin Meng <bmeng.cn@gmail.com>
|     Reviewed-by: Simon Glass <sjg@chromium.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/hub.c | 52 +++++++++++++++++++++++++++++++++++++++++-
 include/usb/usb.h      | 11 +++++++++
 2 files changed, 62 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/core/hub.c b/drivers/usb/core/hub.c
index 6d664e80bb..7c7a325291 100644
--- a/drivers/usb/core/hub.c
+++ b/drivers/usb/core/hub.c
@@ -388,7 +388,7 @@ static int usb_hub_configure(struct usb_device *dev)
 	unsigned char buffer[USB_BUFSIZ], *bitmap;
 	struct usb_hub_descriptor *descriptor;
 	struct usb_hub_status *hubsts;
-	int i;
+	int i, ret;
 	struct usb_hub_device *hub;
 
 	hub = xzalloc(sizeof (*hub));
@@ -468,6 +468,56 @@ static int usb_hub_configure(struct usb_device *dev)
 		break;
 	}
 
+	switch (dev->descriptor->bDeviceProtocol) {
+	case USB_HUB_PR_FS:
+		break;
+	case USB_HUB_PR_HS_SINGLE_TT:
+		dev_dbg(&dev->dev, "Single TT\n");
+		break;
+	case USB_HUB_PR_HS_MULTI_TT:
+		ret = usb_set_interface(dev, 0, 1);
+		if (ret == 0) {
+			dev_dbg(&dev->dev, "TT per port\n");
+			hub->tt.multi = true;
+		} else {
+			dev_dbg(&dev->dev, "Using single TT (err %d)\n", ret);
+		}
+		break;
+	case USB_HUB_PR_SS:
+		/* USB 3.0 hubs don't have a TT */
+		break;
+	default:
+		dev_dbg(&dev->dev, "Unrecognized hub protocol %d\n",
+		      dev->descriptor->bDeviceProtocol);
+		break;
+	}
+
+	/* Note 8 FS bit times == (8 bits / 12000000 bps) ~= 666ns */
+	switch (hub->desc.wHubCharacteristics & HUB_CHAR_TTTT) {
+	case HUB_TTTT_8_BITS:
+		if (dev->descriptor->bDeviceProtocol != 0) {
+			hub->tt.think_time = 666;
+			dev_dbg(&dev->dev, "TT requires at most %d FS bit times (%d ns)\n",
+			      8, hub->tt.think_time);
+		}
+		break;
+	case HUB_TTTT_16_BITS:
+		hub->tt.think_time = 666 * 2;
+		dev_dbg(&dev->dev, "TT requires at most %d FS bit times (%d ns)\n",
+		      16, hub->tt.think_time);
+		break;
+	case HUB_TTTT_24_BITS:
+		hub->tt.think_time = 666 * 3;
+		dev_dbg(&dev->dev, "TT requires at most %d FS bit times (%d ns)\n",
+		      24, hub->tt.think_time);
+		break;
+	case HUB_TTTT_32_BITS:
+		hub->tt.think_time = 666 * 4;
+		dev_dbg(&dev->dev, "TT requires at most %d FS bit times (%d ns)\n",
+		      32, hub->tt.think_time);
+		break;
+	}
+
 	dev_dbg(&dev->dev, "power on to power good time: %dms\n",
 			descriptor->bPwrOn2PwrGood * 2);
 	dev_dbg(&dev->dev, "hub controller current requirement: %dmA\n",
diff --git a/include/usb/usb.h b/include/usb/usb.h
index a9c34cdde4..94506fa525 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -306,6 +306,16 @@ void usb_rescan(void);
 #define usb_pipecontrol(pipe)	(usb_pipetype((pipe)) == PIPE_CONTROL)
 #define usb_pipebulk(pipe)	(usb_pipetype((pipe)) == PIPE_BULK)
 
+/*
+ * As of USB 2.0, full/low speed devices are segregated into trees.
+ * One type grows from USB 1.1 host controllers (OHCI, UHCI etc).
+ * The other type grows from high speed hubs when they connect to
+ * full/low speed devices using "Transaction Translators" (TTs).
+ */
+struct usb_tt {
+	bool		multi;		/* true means one TT per port */
+	unsigned	think_time;	/* think time in ns */
+};
 
 /*************************************************************************
  * Hub Stuff
@@ -316,6 +326,7 @@ struct usb_hub_device {
 	uint64_t connect_timeout; /* Device connection timeout in ns */
 	uint64_t query_delay; /* Device query delay in ns */
 	int overcurrent_count[USB_MAXCHILDREN]; /* Over-current counter */
+	struct usb_tt tt; /* Transaction Translator */
 };
 
 /**
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
