Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5W1D-00049C-Ov
 for barebox@lists.infradead.org; Tue, 11 Aug 2020 15:16:54 +0000
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 11 Aug 2020 17:16:33 +0200
Message-Id: <20200811151637.17705-10-jmaselbas@kalray.eu>
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
Subject: [PATCH v4 09/13] usb: dwc2: host: Rewrite dwc2_hc_init
To: Barebox List <barebox@lists.infradead.org>
Cc: Jules Maselbas <jmaselbas@kalray.eu>, Ahmad Fatoum <a.fatoum@pengutronix.de>

Removed the uses of a table to convert the usb endpoint type for
the controller.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/host.c | 47 +++++++++++++++++++++++------------------
 1 file changed, 27 insertions(+), 20 deletions(-)

diff --git a/drivers/usb/dwc2/host.c b/drivers/usb/dwc2/host.c
index 65fa95162..93bd69b02 100644
--- a/drivers/usb/dwc2/host.c
+++ b/drivers/usb/dwc2/host.c
@@ -7,13 +7,6 @@
 /* Use only HC channel 0. */
 #define DWC2_HC_CHANNEL			0
 
-static int dwc2_eptype[] = {
-	DXEPCTL_EPTYPE_ISO,
-	DXEPCTL_EPTYPE_INTERRUPT,
-	DXEPCTL_EPTYPE_CONTROL,
-	DXEPCTL_EPTYPE_BULK,
-};
-
 static int dwc2_do_split(struct dwc2 *dwc2, struct usb_device *dev)
 {
 	uint32_t hprt0 = dwc2_readl(dwc2, HPRT0);
@@ -80,15 +73,32 @@ static void dwc2_hc_enable_ints(struct dwc2 *dwc2, uint8_t hc)
  * @param regs Programming view of DWC2 controller
  * @param hc Information needed to initialize the host channel
  */
-static void dwc2_hc_init(struct dwc2 *dwc2, uint8_t hc,
-		struct usb_device *dev, uint8_t dev_addr, uint8_t ep_num,
-		uint8_t ep_is_in, uint32_t ep_type, uint16_t max_packet)
+static void dwc2_hc_init(struct dwc2 *dwc2, struct usb_device *dev, u8 hc,
+			 unsigned long pipe, int is_in)
 {
-	uint32_t hcchar = (dev_addr << HCCHAR_DEVADDR_SHIFT) |
-			  (ep_num << HCCHAR_EPNUM_SHIFT) |
-			  (ep_is_in ? HCCHAR_EPDIR : 0) |
-			  ep_type |
-			  (max_packet << HCCHAR_MPS_SHIFT);
+	int addr = usb_pipedevice(pipe);
+	int endp = usb_pipeendpoint(pipe);
+	int type = usb_pipetype(pipe);
+	int mps = usb_maxpacket(dev, pipe);
+	uint32_t hcchar = (addr << HCCHAR_DEVADDR_SHIFT) |
+			  (endp << HCCHAR_EPNUM_SHIFT) |
+			  (is_in ? HCCHAR_EPDIR : 0) |
+			  (mps << HCCHAR_MPS_SHIFT);
+
+	switch (type) {
+	case PIPE_ISOCHRONOUS:
+		hcchar |= DXEPCTL_EPTYPE_ISO;
+		break;
+	case PIPE_INTERRUPT:
+		hcchar |= DXEPCTL_EPTYPE_INTERRUPT;
+		break;
+	case PIPE_CONTROL:
+		hcchar |= DXEPCTL_EPTYPE_CONTROL;
+		break;
+	case PIPE_BULK:
+		hcchar |= DXEPCTL_EPTYPE_BULK;
+		break;
+	}
 
 	if (dev->speed == USB_SPEED_LOW)
 		hcchar |= HCCHAR_LSPDDEV;
@@ -213,10 +223,7 @@ static int dwc2_submit_packet(struct dwc2 *dwc2, struct usb_device *dev, u8 hc,
 			      unsigned long pipe, u8 *pid, int in, void *buf,
 			      int len)
 {
-	int devnum = usb_pipedevice(pipe);
-	int ep = usb_pipeendpoint(pipe);
 	int mps = usb_maxpacket(dev, pipe);
-	int eptype = dwc2_eptype[usb_pipetype(pipe)];
 	int do_split = dwc2_do_split(dwc2, dev);
 	int complete_split = 0;
 	int done = 0;
@@ -237,7 +244,7 @@ static int dwc2_submit_packet(struct dwc2 *dwc2, struct usb_device *dev, u8 hc,
 	max_xfer_len = num_packets * mps;
 
 	/* Initialize channel */
-	dwc2_hc_init(dwc2, hc, dev, devnum, ep, in, eptype, mps);
+	dwc2_hc_init(dwc2, dev, hc, pipe, in);
 
 	/* Check if the target is a FS/LS device behind a HS hub */
 	if (do_split) {
@@ -268,7 +275,7 @@ static int dwc2_submit_packet(struct dwc2 *dwc2, struct usb_device *dev, u8 hc,
 			dwc2_writel(dwc2, hcsplt, HCSPLT(hc));
 		}
 
-		if (eptype == DXEPCTL_EPTYPE_INTERRUPT) {
+		if (usb_pipeint(pipe)) {
 			int uframe_num = dwc2_readl(dwc2, HFNUM);
 
 			if (!(uframe_num & 0x1))
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
