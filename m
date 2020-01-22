Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuIGd-000878-J2
 for barebox@lists.infradead.org; Wed, 22 Jan 2020 15:50:17 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 0984127E121B
 for <barebox@lists.infradead.org>; Wed, 22 Jan 2020 16:50:03 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Wed, 22 Jan 2020 16:49:47 +0100
Message-Id: <20200122154950.22746-7-jmaselbas@kalray.eu>
In-Reply-To: <20200122154950.22746-1-jmaselbas@kalray.eu>
References: <20200122154950.22746-1-jmaselbas@kalray.eu>
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
Subject: [RFC PATCH 6/9] usb: dwc2: Add structure for gadget driver
To: Barebox List <barebox@lists.infradead.org>
Cc: Jules Maselbas <jmaselbas@kalray.eu>

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/core.h | 52 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
index 56d5cbbfb..e25674558 100644
--- a/drivers/usb/dwc2/core.h
+++ b/drivers/usb/dwc2/core.h
@@ -421,6 +421,49 @@ enum usb_otg_state {
 	OTG_STATE_B_PERIPHERAL,
 };
 
+struct dwc2_ep {
+	struct usb_ep ep;
+	struct dwc2 *dwc2;
+	struct list_head queue;
+	struct dwc2_request *req;
+	char name[8];
+
+	unsigned int            size_loaded;
+	unsigned int            last_load;
+	unsigned short          fifo_size;
+	unsigned short		fifo_index;
+
+	u8 dir_in;
+	u8 epnum;
+	u8 mc;
+	u16 interval;
+
+	unsigned int            halted:1;
+	unsigned int            periodic:1;
+	unsigned int            isochronous:1;
+	unsigned int            send_zlp:1;
+	unsigned int            target_frame;
+#define TARGET_FRAME_INITIAL   0xFFFFFFFF
+	bool			frame_overrun;
+};
+
+struct dwc2_request {
+	struct usb_request req;
+	struct list_head queue;
+};
+
+/* Gadget ep0 states */
+enum dwc2_ep0_state {
+	DWC2_EP0_SETUP,
+	DWC2_EP0_DATA_IN,
+	DWC2_EP0_DATA_OUT,
+	DWC2_EP0_STATUS_IN,
+	DWC2_EP0_STATUS_OUT,
+};
+
+/* Size of control and EP0 buffers */
+#define DWC2_CTRL_BUFF_SIZE 8
+
 struct dwc2 {
 	struct device_d *dev;
 	struct usb_host host;
@@ -433,6 +476,15 @@ struct dwc2 {
 	void __iomem *regs;
 	int root_hub_devnum;
 
+	int num_eps;
+	struct dwc2_ep *eps_in[MAX_ENDPOINT];
+	struct dwc2_ep *eps_out[MAX_ENDPOINT];
+	struct usb_request *ctrl_req;
+	void *ep0_buff;
+	void *ctrl_buff;
+	enum dwc2_ep0_state ep0_state;
+	struct usb_gadget_driver *driver;
+
 	enum usb_dr_mode dr_mode;
 	enum usb_otg_state op_state;
 };
-- 
2.21.0.196.g041f5ea


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
