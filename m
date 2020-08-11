Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5W1E-00049M-4V
 for barebox@lists.infradead.org; Tue, 11 Aug 2020 15:16:57 +0000
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 11 Aug 2020 17:16:35 +0200
Message-Id: <20200811151637.17705-12-jmaselbas@kalray.eu>
In-Reply-To: <20200811151637.17705-1-jmaselbas@kalray.eu>
References: <20200811151637.17705-1-jmaselbas@kalray.eu>
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
Subject: [PATCH v4 11/13] usb: dwc2: Add structure for gadget driver
To: Barebox List <barebox@lists.infradead.org>
Cc: Jules Maselbas <jmaselbas@kalray.eu>, Ahmad Fatoum <a.fatoum@pengutronix.de>

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/core.h | 55 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
index a2ec3ff68..b188990a0 100644
--- a/drivers/usb/dwc2/core.h
+++ b/drivers/usb/dwc2/core.h
@@ -416,6 +416,49 @@ struct dwc2_hw_params {
 #define MAX_DEVICE			16
 #define MAX_ENDPOINT DWC2_MAX_EPS_CHANNELS
 
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
 	void __iomem *regs;
@@ -429,6 +472,18 @@ struct dwc2 {
 	u8 out_data_toggle[MAX_DEVICE][MAX_ENDPOINT];
 	int root_hub_devnum;
 #endif
+
+#ifdef CONFIG_USB_DWC2_GADGET
+	struct usb_gadget gadget;
+	struct dwc2_ep *eps_in[MAX_ENDPOINT];
+	struct dwc2_ep *eps_out[MAX_ENDPOINT];
+	struct usb_request *ctrl_req;
+	void *ep0_buff;
+	void *ctrl_buff;
+	enum dwc2_ep0_state ep0_state;
+	struct usb_gadget_driver *driver;
+	int num_eps;
+#endif
 };
 
 #define host_to_dwc2(ptr) container_of(ptr, struct dwc2, host)
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
