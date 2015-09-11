Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZaS5T-00088T-JW
 for barebox@lists.infradead.org; Fri, 11 Sep 2015 17:26:13 +0000
Received: by lbpo4 with SMTP id o4so43370630lbp.2
 for <barebox@lists.infradead.org>; Fri, 11 Sep 2015 10:25:49 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Fri, 11 Sep 2015 20:27:54 +0300
Message-Id: <1441992476-11703-2-git-send-email-pmamonov@gmail.com>
In-Reply-To: <1441992476-11703-1-git-send-email-pmamonov@gmail.com>
References: <1441992476-11703-1-git-send-email-pmamonov@gmail.com>
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
Subject: [RFC v2 1/3] usb: ehci-hcd: port periodic transactions implementation
 from the u-boot
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 426 +++++++++++++++++++++++++++++++++++++++++++-
 drivers/usb/host/ehci.h     |  15 +-
 2 files changed, 439 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 9d74d2f..c9bf703 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -48,6 +48,18 @@ struct ehci_priv {
 	int (*init)(void *drvdata);
 	int (*post_init)(void *drvdata);
 	void *drvdata;
+	int periodic_schedules;
+	struct QH *periodic_queue;
+	uint32_t *periodic_list;
+};
+
+struct int_queue {
+	int elementsize;
+	unsigned long pipe;
+	struct QH *first;
+	struct QH *current;
+	struct QH *last;
+	struct qTD *tds;
 };
 
 #define to_ehci(ptr) container_of(ptr, struct ehci_priv, host)
@@ -770,6 +782,8 @@ static int ehci_init(struct usb_host *host)
 	uint32_t reg;
 	uint32_t cmd;
 	int ret = 0;
+	struct QH *periodic;
+	int i;
 
 	ehci_halt(ehci);
 
@@ -800,6 +814,39 @@ static int ehci_init(struct usb_host *host)
 		ehci_writel(&ehci->hcor->or_asynclistaddr, ba);
 	}
 
+	/*
+	 * Set up periodic list
+	 * Step 1: Parent QH for all periodic transfers.
+	 */
+	ehci->periodic_schedules = 0;
+	periodic = ehci->periodic_queue;
+	memset(periodic, 0, sizeof(*periodic));
+	periodic->qh_link = cpu_to_hc32(QH_LINK_TERMINATE);
+	periodic->qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
+	periodic->qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
+
+	/*
+	 * Step 2: Setup frame-list: Every microframe, USB tries the same list.
+	 *         In particular, device specifications on polling frequency
+	 *         are disregarded. Keyboards seem to send NAK/NYet reliably
+	 *         when polled with an empty buffer.
+	 *
+	 *         Split Transactions will be spread across microframes using
+	 *         S-mask and C-mask.
+	 */
+	if (ehci->periodic_list == NULL)
+		ehci->periodic_list = memalign(4096, 1024 * 4);
+	if (!ehci->periodic_list)
+		return -ENOMEM;
+	for (i = 0; i < 1024; i++) {
+		ehci->periodic_list[i] = cpu_to_hc32((unsigned long)periodic
+						| QH_LINK_TYPE_QH);
+	}
+
+	/* Set periodic list base address */
+	ehci_writel(&ehci->hcor->or_periodiclistbase,
+		(unsigned long)ehci->periodic_list);
+
 	reg = ehci_readl(&ehci->hccr->cr_hcsparams);
 	descriptor.hub.bNbrPorts = HCS_N_PORTS(reg);
 
@@ -871,15 +918,390 @@ submit_control_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 }
 
 static int
+disable_periodic(struct ehci_priv *ehci)
+{
+	uint32_t cmd;
+	struct ehci_hcor *hcor = ehci->hcor;
+	int ret;
+
+	cmd = ehci_readl(&hcor->or_usbcmd);
+	cmd &= ~CMD_PSE;
+	ehci_writel(&hcor->or_usbcmd, cmd);
+
+	ret = handshake((uint32_t *)&hcor->or_usbsts,
+			STS_PSS, 0, 100 * 1000);
+	if (ret < 0) {
+		printf("EHCI failed: timeout when disabling periodic list\n");
+		return -ETIMEDOUT;
+	}
+	return 0;
+}
+
+#define NEXT_QH(qh) (struct QH *)((0xa0000000 | (unsigned long)hc32_to_cpu((qh)->qh_link)) & ~0x1f)
+
+static int
+enable_periodic(struct ehci_priv *ehci)
+{
+	uint32_t cmd;
+	struct ehci_hcor *hcor = ehci->hcor;
+	int ret;
+	uint64_t start;
+
+	cmd = ehci_readl(&hcor->or_usbcmd);
+	cmd |= CMD_PSE;
+	ehci_writel(&hcor->or_usbcmd, cmd);
+
+	ret = handshake((uint32_t *)&hcor->or_usbsts,
+			STS_PSS, STS_PSS, 100 * 1000);
+	if (ret < 0) {
+		printf("EHCI failed: timeout when enabling periodic list\n");
+		return -ETIMEDOUT;
+	}
+
+	start = get_time_ns();
+	while(!is_timeout_non_interruptible(start, 1 * MSECOND));
+
+	return 0;
+}
+
+static inline u8 ehci_encode_speed(enum usb_device_speed speed)
+{
+	#define QH_HIGH_SPEED	2
+	#define QH_FULL_SPEED	0
+	#define QH_LOW_SPEED	1
+	if (speed == USB_SPEED_HIGH)
+		return QH_HIGH_SPEED;
+	if (speed == USB_SPEED_LOW)
+		return QH_LOW_SPEED;
+	return QH_FULL_SPEED;
+}
+
+static void ehci_update_endpt2_dev_n_port(struct usb_device *udev,
+					  struct QH *qh)
+{
+	struct usb_device *ttdev;
+	int parent_devnum;
+
+	if (udev->speed != USB_SPEED_LOW && udev->speed != USB_SPEED_FULL)
+		return;
+
+	/*
+	 * For full / low speed devices we need to get the devnum and portnr of
+	 * the tt, so of the first upstream usb-2 hub, there may be usb-1 hubs
+	 * in the tree before that one!
+	 */
+
+//#ifdef CONFIG_DM_USB
+#if 0
+	/*
+	 * When called from usb-uclass.c: usb_scan_device() udev->dev points
+	 * to the parent udevice, not the actual udevice belonging to the
+	 * udev as the device is not instantiated yet. So when searching
+	 * for the first usb-2 parent start with udev->dev not
+	 * udev->dev->parent .
+	 */
+	struct udevice *parent;
+	struct usb_device *uparent;
+
+	ttdev = udev;
+	parent = udev->dev;
+	uparent = dev_get_parentdata(parent);
+
+	while (uparent->speed != USB_SPEED_HIGH) {
+		struct udevice *dev = parent;
+
+		if (device_get_uclass_id(dev->parent) != UCLASS_USB_HUB) {
+			printf("ehci: Error cannot find high-speed parent of usb-1 device\n");
+			return;
+		}
+
+		ttdev = dev_get_parentdata(dev);
+		parent = dev->parent;
+		uparent = dev_get_parentdata(parent);
+	}
+	parent_devnum = uparent->devnum;
+#else
+	ttdev = udev;
+	while (ttdev->parent && ttdev->parent->speed != USB_SPEED_HIGH)
+		ttdev = ttdev->parent;
+	if (!ttdev->parent)
+		return;
+	parent_devnum = ttdev->parent->devnum;
+#endif
+
+	qh->qh_endpt2 |= cpu_to_hc32(QH_ENDPT2_PORTNUM(ttdev->portnr) |
+				     QH_ENDPT2_HUBADDR(parent_devnum));
+}
+
+static struct int_queue *ehci_create_int_queue(struct usb_device *dev,
+			unsigned long pipe, int queuesize, int elementsize,
+			void *buffer, int interval)
+{
+	struct usb_host *host = dev->host;
+	struct ehci_priv *ehci = to_ehci(host);
+	struct int_queue *result = NULL;
+	uint32_t i, toggle;
+	struct QH *list = ehci->periodic_queue;
+
+	/*
+	 * Interrupt transfers requiring several transactions are not supported
+	 * because bInterval is ignored.
+	 *
+	 * Also, ehci_submit_async() relies on wMaxPacketSize being a power of 2
+	 * <= PKT_ALIGN if several qTDs are required, while the USB
+	 * specification does not constrain this for interrupt transfers. That
+	 * means that ehci_submit_async() would support interrupt transfers
+	 * requiring several transactions only as long as the transfer size does
+	 * not require more than a single qTD.
+	 */
+	if (elementsize > usb_maxpacket(dev, pipe)) {
+		pr_err("%s: xfers requiring several transactions are not supported.\n",
+		       __func__);
+		return NULL;
+	}
+
+	debug("Enter create_int_queue\n");
+	if (usb_pipetype(pipe) != PIPE_INTERRUPT) {
+		debug("non-interrupt pipe (type=%lu)", usb_pipetype(pipe));
+		return NULL;
+	}
+
+	/* limit to 4 full pages worth of data -
+	 * we can safely fit them in a single TD,
+	 * no matter the alignment
+	 */
+	if (elementsize >= 16384) {
+		debug("too large elements for interrupt transfers\n");
+		return NULL;
+	}
+
+	result = xzalloc(sizeof(*result));
+	if (!result) {
+		debug("ehci intr queue: out of memory\n");
+		goto fail1;
+	}
+	result->elementsize = elementsize;
+	result->pipe = pipe;
+	result->first = dma_alloc_coherent(sizeof(struct QH) * queuesize,
+					   DMA_ADDRESS_BROKEN);
+	if (!result->first) {
+		debug("ehci intr queue: out of memory\n");
+		goto fail2;
+	}
+	result->current = result->first;
+	result->last = result->first + queuesize - 1;
+	result->tds = dma_alloc_coherent(sizeof(struct qTD) * queuesize,
+					 DMA_ADDRESS_BROKEN);
+	if (!result->tds) {
+		debug("ehci intr queue: out of memory\n");
+		goto fail3;
+	}
+	memset(result->first, 0, sizeof(struct QH) * queuesize);
+	memset(result->tds, 0, sizeof(struct qTD) * queuesize);
+
+	toggle = usb_gettoggle(dev, usb_pipeendpoint(pipe), usb_pipeout(pipe));
+
+	for (i = 0; i < queuesize; i++) {
+		struct QH *qh = result->first + i;
+		struct qTD *td = result->tds + i;
+		void **buf = &qh->buffer;
+
+		qh->qh_link = cpu_to_hc32((unsigned long)(qh+1) | QH_LINK_TYPE_QH);
+		if (i == queuesize - 1)
+			qh->qh_link = cpu_to_hc32(QH_LINK_TERMINATE);
+
+		qh->qt_next = cpu_to_hc32((unsigned long)td);
+		qh->qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
+		qh->qh_endpt1 =
+			cpu_to_hc32((0 << 28) | /* No NAK reload (ehci 4.9) */
+			(usb_maxpacket(dev, pipe) << 16) | /* MPS */
+			(1 << 14) |
+			QH_ENDPT1_EPS(ehci_encode_speed(dev->speed)) |
+			(usb_pipeendpoint(pipe) << 8) | /* Endpoint Number */
+			(usb_pipedevice(pipe) << 0));
+		qh->qh_endpt2 = cpu_to_hc32((1 << 30) | /* 1 Tx per mframe */
+			(1 << 0)); /* S-mask: microframe 0 */
+		if (dev->speed == USB_SPEED_LOW ||
+				dev->speed == USB_SPEED_FULL) {
+			/* C-mask: microframes 2-4 */
+			qh->qh_endpt2 |= cpu_to_hc32((0x1c << 8));
+		}
+		ehci_update_endpt2_dev_n_port(dev, qh);
+
+		td->qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
+		td->qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
+		debug("communication direction is '%s'\n",
+		      usb_pipein(pipe) ? "in" : "out");
+		td->qt_token = cpu_to_hc32(
+			QT_TOKEN_DT(toggle) |
+			(elementsize << 16) |
+			((usb_pipein(pipe) ? 1 : 0) << 8) | /* IN/OUT token */
+			0x80); /* active */
+		td->qt_buffer[0] =
+		    cpu_to_hc32((unsigned long)buffer + i * elementsize);
+		td->qt_buffer[1] =
+		    cpu_to_hc32((td->qt_buffer[0] + 0x1000) & ~0xfff);
+		td->qt_buffer[2] =
+		    cpu_to_hc32((td->qt_buffer[0] + 0x2000) & ~0xfff);
+		td->qt_buffer[3] =
+		    cpu_to_hc32((td->qt_buffer[0] + 0x3000) & ~0xfff);
+		td->qt_buffer[4] =
+		    cpu_to_hc32((td->qt_buffer[0] + 0x4000) & ~0xfff);
+
+		*buf = buffer + i * elementsize;
+		toggle ^= 1;
+	}
+
+	if (ehci->periodic_schedules > 0) {
+		if (disable_periodic(ehci) < 0) {
+			debug("FATAL: periodic should never fail, but did");
+			goto fail3;
+		}
+	}
+
+	/* hook up to periodic list */
+	result->last->qh_link = list->qh_link;
+	list->qh_link = cpu_to_hc32((unsigned long)result->first | QH_LINK_TYPE_QH);
+
+	if (enable_periodic(ehci) < 0) {
+		debug("FATAL: periodic should never fail, but did");
+		goto fail3;
+	}
+	ehci->periodic_schedules++;
+
+	debug("Exit create_int_queue\n");
+	return result;
+fail3:
+	if (result->tds)
+		free(result->tds);
+fail2:
+	if (result->first)
+		free(result->first);
+	if (result)
+		free(result);
+fail1:
+	return NULL;
+}
+
+static void *ehci_poll_int_queue(struct usb_device *dev,
+				  struct int_queue *queue)
+{
+	struct QH *cur = queue->current;
+	struct qTD *cur_td;
+	uint32_t token, toggle;
+	unsigned long pipe = queue->pipe;
+
+	/* depleted queue */
+	if (cur == NULL) {
+		debug("Exit poll_int_queue with completed queue\n");
+		return NULL;
+	}
+	/* still active */
+	cur_td = &queue->tds[queue->current - queue->first];
+	token = hc32_to_cpu(cur_td->qt_token);
+	if (QT_TOKEN_GET_STATUS(token) & QT_TOKEN_STATUS_ACTIVE) {
+		debug("Exit poll_int_queue with no completed intr transfer. token is %x\n", token);
+		return NULL;
+	}
+
+	toggle = QT_TOKEN_GET_DT(token);
+	usb_settoggle(dev, usb_pipeendpoint(pipe), usb_pipeout(pipe), toggle);
+
+	if (!(cur->qh_link & QH_LINK_TERMINATE))
+		queue->current++;
+	else
+		queue->current = NULL;
+
+	debug("Exit poll_int_queue with completed intr transfer. token is %x at %p (first at %p)\n",
+	      token, cur, queue->first);
+	return cur->buffer;
+}
+
+static int ehci_destroy_int_queue(struct usb_device *dev,
+				   struct int_queue *queue)
+{
+	int result = -1;
+	struct usb_host *host = dev->host;
+	struct ehci_priv *ehci = to_ehci(host);
+	struct QH *cur = ehci->periodic_queue;
+	uint64_t start;
+
+	if (disable_periodic(ehci) < 0) {
+		debug("FATAL: periodic should never fail, but did");
+		goto out;
+	}
+	ehci->periodic_schedules--;
+
+	start = get_time_ns();
+	while (!(cur->qh_link & cpu_to_hc32(QH_LINK_TERMINATE))) {
+		debug("considering %p, with qh_link %x\n", cur, cur->qh_link);
+		if (NEXT_QH(cur) == queue->first) {
+			debug("found candidate. removing from chain\n");
+			cur->qh_link = queue->last->qh_link;
+			result = 0;
+			break;
+		}
+		cur = NEXT_QH(cur);
+		if (is_timeout_non_interruptible(start, 500 * MSECOND)) {
+			printf("Timeout destroying interrupt endpoint queue\n");
+			result = -1;
+			goto out;
+		}
+	}
+
+	if (ehci->periodic_schedules > 0) {
+		result = enable_periodic(ehci);
+		if (result < 0)
+			debug("FATAL: periodic should never fail, but did");
+	}
+
+out:
+	free(queue->tds);
+	free(queue->first);
+	free(queue);
+
+	return result;
+}
+
+static int
 submit_int_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 	       int length, int interval)
 {
 	struct usb_host *host = dev->host;
 	struct ehci_priv *ehci = to_ehci(host);
+	struct int_queue *queue;
+	uint64_t start;
+	void *backbuffer;
+	int result = 0, ret;
 
 	dev_dbg(ehci->dev, "dev=%p, pipe=%lu, buffer=%p, length=%d, interval=%d",
 	      dev, pipe, buffer, length, interval);
-	return -1;
+
+	queue = ehci_create_int_queue(dev, pipe, 1, length, buffer, interval);
+	if (!queue)
+		return -1;
+
+	start = get_time_ns();
+	while ((backbuffer = ehci_poll_int_queue(dev, queue)) == NULL)
+		if (is_timeout_non_interruptible(start, 
+						 USB_CNTL_TIMEOUT * MSECOND)) {
+			pr_err("Timeout poll on interrupt endpoint\n");
+			result = -ETIMEDOUT;
+			break;
+		}
+
+	if (backbuffer != buffer) {
+		pr_err("got wrong buffer back (%p instead of %p)\n",
+		      backbuffer, buffer);
+		return -EINVAL;
+	}
+
+	ret = ehci_destroy_int_queue(dev, queue);
+	if (ret < 0)
+		return ret;
+
+	/* everything worked out fine */
+	return result;
 }
 
 static int ehci_detect(struct device_d *dev)
@@ -914,6 +1336,8 @@ int ehci_register(struct device_d *dev, struct ehci_data *data)
 
 	ehci->qh_list = dma_alloc_coherent(sizeof(struct QH) * NUM_TD,
 					   DMA_ADDRESS_BROKEN);
+	ehci->periodic_queue = dma_alloc_coherent(sizeof(struct QH),
+					   DMA_ADDRESS_BROKEN);
 	ehci->td = dma_alloc_coherent(sizeof(struct qTD) * NUM_TD,
 				      DMA_ADDRESS_BROKEN);
 
diff --git a/drivers/usb/host/ehci.h b/drivers/usb/host/ehci.h
index d71d056..39de763 100644
--- a/drivers/usb/host/ehci.h
+++ b/drivers/usb/host/ehci.h
@@ -20,6 +20,15 @@
 
 #include <io.h>
 
+#define QH_ENDPT1_EPS(x)	(((x) & 0x3) << 12)	/* Endpoint Speed */
+#define QH_ENDPT2_PORTNUM(x)	(((x) & 0x7f) << 23)	/* Port Number */
+#define QH_ENDPT2_HUBADDR(x)	(((x) & 0x7f) << 16)	/* Hub Address */
+
+#define QT_TOKEN_DT(x)		(((x) & 0x1) << 31)	/* Data Toggle */
+#define QT_TOKEN_GET_STATUS(x)	(((x) >> 0) & 0xff)
+#define QT_TOKEN_STATUS_ACTIVE	0x80
+#define QT_TOKEN_GET_DT(x)	(((x) >> 31) & 0x1)
+
 #if !defined(CONFIG_SYS_USB_EHCI_MAX_ROOT_PORTS)
 #define CONFIG_SYS_USB_EHCI_MAX_ROOT_PORTS	16
 #endif
@@ -51,6 +60,7 @@ struct ehci_hcor {
 #define CMD_RUN		(1 << 0)		/* start/stop HC */
 	uint32_t or_usbsts;
 #define	STD_ASS		(1 << 15)
+#define STS_PSS         (1 << 14)
 #define STS_HALT	(1 << 12)
 	uint32_t or_usbintr;
 	uint32_t or_frindex;
@@ -148,7 +158,10 @@ struct QH {
 	 * Add dummy fill value to make the size of this struct
 	 * aligned to 32 bytes
 	 */
-	uint8_t fill[16];
+	union {
+		uint8_t fill[16];
+		void* buffer;
+	};
 };
 
 #endif /* USB_EHCI_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
