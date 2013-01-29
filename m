Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U06pD-0005Xl-Es
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 08:46:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Jan 2013 09:45:42 +0100
Message-Id: <1359449147-30145-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359449147-30145-1-git-send-email-s.hauer@pengutronix.de>
References: <1359449147-30145-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 07/12] USB ehci: Use dev_* for messages
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/host/ehci-hcd.c |   73 +++++++++++++++++++++++--------------------
 1 file changed, 39 insertions(+), 34 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index ad8cf2f..9cce6b6 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -148,7 +148,7 @@ static int ehci_reset(struct ehci_priv *ehci)
 	ehci_writel(&ehci->hcor->or_usbcmd, cmd);
 	ret = handshake(&ehci->hcor->or_usbcmd, CMD_RESET, 0, 250 * 1000);
 	if (ret < 0) {
-		printf("EHCI fail to reset\n");
+		dev_err(ehci->dev, "fail to reset\n");
 		goto out;
 	}
 
@@ -187,7 +187,7 @@ static int ehci_td_buffer(struct qTD *td, void *buf, size_t sz)
 	}
 
 	if (idx == 5) {
-		debug("out of buffer pointers (%u bytes left)\n", sz);
+		pr_debug("out of buffer pointers (%u bytes left)\n", sz);
 		return -1;
 	}
 
@@ -210,10 +210,10 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	int ret = 0, i;
 	uint64_t start, timeout_val;
 
-	debug("dev=%p, pipe=%lx, buffer=%p, length=%d, req=%p\n", dev, pipe,
+	dev_dbg(ehci->dev, "pipe=%lx, buffer=%p, length=%d, req=%p\n", pipe,
 	      buffer, length, req);
 	if (req != NULL)
-		debug("req=%u (%#x), type=%u (%#x), value=%u (%#x), index=%u\n",
+		dev_dbg(ehci->dev, "(req=%u (%#x), type=%u (%#x), value=%u (%#x), index=%u\n",
 		      req->request, req->request,
 		      req->requesttype, req->requesttype,
 		      le16_to_cpu(req->value), le16_to_cpu(req->value),
@@ -258,7 +258,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 		    (0 << 15) | (0 << 12) | (3 << 10) | (2 << 8) | (0x80 << 0);
 		td->qt_token = cpu_to_hc32(token);
 		if (ehci_td_buffer(td, req, sizeof(*req)) != 0) {
-			debug("unable construct SETUP td\n");
+			dev_dbg(ehci->dev, "unable construct SETUP td\n");
 			goto fail;
 		}
 		*tdp = cpu_to_hc32((uint32_t) td);
@@ -280,7 +280,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 		    ((usb_pipein(pipe) ? 1 : 0) << 8) | (0x80 << 0);
 		td->qt_token = cpu_to_hc32(token);
 		if (ehci_td_buffer(td, buffer, length) != 0) {
-			printf("unable construct DATA td\n");
+			dev_err(ehci->dev, "unable construct DATA td\n");
 			goto fail;
 		}
 		*tdp = cpu_to_hc32((uint32_t) td);
@@ -325,7 +325,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 
 	ret = handshake(&ehci->hcor->or_usbsts, STD_ASS, STD_ASS, 100 * 1000);
 	if (ret < 0) {
-		printf("EHCI fail timeout STD_ASS set\n");
+		dev_err(ehci->dev, "fail timeout STD_ASS set\n");
 		goto fail;
 	}
 
@@ -364,7 +364,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	ret = handshake(&ehci->hcor->or_usbsts, STD_ASS, 0,
 			100 * 1000);
 	if (ret < 0) {
-		printf("EHCI fail timeout STD_ASS reset\n");
+		dev_err(ehci->dev, "fail timeout STD_ASS reset\n");
 		goto fail;
 	}
 
@@ -372,7 +372,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 
 	token = hc32_to_cpu(qh->qt_token);
 	if (!(token & 0x80)) {
-		debug("TOKEN=0x%08x\n", token);
+		dev_dbg(ehci->dev, "TOKEN=0x%08x\n", token);
 		switch (token & 0xfc) {
 		case 0:
 			toggle = token >> 31;
@@ -398,7 +398,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 		dev->act_len = length - ((token >> 16) & 0x7fff);
 	} else {
 		dev->act_len = 0;
-		debug("dev=%u, usbsts=%#x, p[1]=%#x, p[2]=%#x\n",
+		dev_dbg(ehci->dev, "dev=%u, usbsts=%#x, p[1]=%#x, p[2]=%#x\n",
 		      dev->devnum, ehci_readl(&ehci->hcor->or_usbsts),
 		      ehci_readl(&ehci->hcor->or_portsc[0]),
 		      ehci_readl(&ehci->hcor->or_portsc[1]));
@@ -407,7 +407,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	return (dev->status != USB_ST_NOT_PROC) ? 0 : -1;
 
 fail:
-	printf("fail1\n");
+	dev_err(ehci->dev, "fail1\n");
 	td = (void *)hc32_to_cpu(qh->qt_next);
 	while (td != (void *)QT_NEXT_TERMINATE) {
 		qh->qt_next = td->qt_next;
@@ -461,14 +461,14 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 	uint32_t *status_reg;
 
 	if (le16_to_cpu(req->index) >= CONFIG_SYS_USB_EHCI_MAX_ROOT_PORTS) {
-		printf("The request port(%d) is not configured\n",
+		dev_err(ehci->dev, "The request port(%d) is not configured\n",
 			le16_to_cpu(req->index) - 1);
 		return -1;
 	}
 	status_reg = (uint32_t *)&ehci->hcor->or_portsc[le16_to_cpu(req->index) - 1];
 	srclen = 0;
 
-	debug("req=%u (%#x), type=%u (%#x), value=%u, index=%u\n",
+	dev_dbg(ehci->dev, "req=%u (%#x), type=%u (%#x), value=%u, index=%u\n",
 	      req->request, req->request,
 	      req->requesttype, req->requesttype,
 	      le16_to_cpu(req->value), le16_to_cpu(req->index));
@@ -479,17 +479,17 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 	case DeviceRequest | USB_REQ_GET_DESCRIPTOR:
 		switch (le16_to_cpu(req->value) >> 8) {
 		case USB_DT_DEVICE:
-			debug("USB_DT_DEVICE request\n");
+			dev_dbg(ehci->dev, "USB_DT_DEVICE request\n");
 			srcptr = &descriptor.device;
 			srclen = 0x12;
 			break;
 		case USB_DT_CONFIG:
-			debug("USB_DT_CONFIG config\n");
+			dev_dbg(ehci->dev, "USB_DT_CONFIG config\n");
 			srcptr = &descriptor.config;
 			srclen = 0x19;
 			break;
 		case USB_DT_STRING:
-			debug("USB_DT_STRING config\n");
+			dev_dbg(ehci->dev, "USB_DT_STRING config\n");
 			switch (le16_to_cpu(req->value) & 0xff) {
 			case 0:	/* Language */
 				srcptr = "\4\3\1\0";
@@ -506,34 +506,34 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 				srclen = 42;
 				break;
 			default:
-				debug("unknown value DT_STRING %x\n",
+				dev_dbg(ehci->dev, "unknown value DT_STRING %x\n",
 					le16_to_cpu(req->value));
 				goto unknown;
 			}
 			break;
 		default:
-			debug("unknown value %x\n", le16_to_cpu(req->value));
+			dev_dbg(ehci->dev, "unknown value %x\n", le16_to_cpu(req->value));
 			goto unknown;
 		}
 		break;
 	case ((USB_DIR_IN | USB_RT_HUB) << 8) | USB_REQ_GET_DESCRIPTOR:
 		switch (le16_to_cpu(req->value) >> 8) {
 		case USB_DT_HUB:
-			debug("USB_DT_HUB config\n");
+			dev_dbg(ehci->dev, "USB_DT_HUB config\n");
 			srcptr = &descriptor.hub;
 			srclen = 0x8;
 			break;
 		default:
-			debug("unknown value %x\n", le16_to_cpu(req->value));
+			dev_dbg(ehci->dev, "unknown value %x\n", le16_to_cpu(req->value));
 			goto unknown;
 		}
 		break;
 	case USB_REQ_SET_ADDRESS | (USB_RECIP_DEVICE << 8):
-		debug("USB_REQ_SET_ADDRESS\n");
+		dev_dbg(ehci->dev, "USB_REQ_SET_ADDRESS\n");
 		ehci->rootdev = le16_to_cpu(req->value);
 		break;
 	case DeviceOutRequest | USB_REQ_SET_CONFIGURATION:
-		debug("USB_REQ_SET_CONFIGURATION\n");
+		dev_dbg(ehci->dev, "USB_REQ_SET_CONFIGURATION\n");
 		/* Nothing to do */
 		break;
 	case USB_REQ_GET_STATUS | ((USB_DIR_IN | USB_RT_HUB) << 8):
@@ -563,7 +563,7 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 			if (!ret)
 				tmpbuf[0] |= USB_PORT_STAT_RESET;
 			else
-				printf("port(%d) reset error\n",
+				dev_err(ehci->dev, "port(%d) reset error\n",
 					le16_to_cpu(req->index) - 1);
 		}
 		if (reg & EHCI_PS_PP)
@@ -616,7 +616,7 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 			    !ehci_is_TDI() &&
 			    EHCI_PS_IS_LOWSPEED(reg)) {
 				/* Low speed device, give up ownership. */
-				debug("port %d low speed --> companion\n",
+				dev_dbg(ehci->dev, "port %d low speed --> companion\n",
 				      req->index - 1);
 				reg |= EHCI_PS_PO;
 				ehci_writel(status_reg, reg);
@@ -648,13 +648,13 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 					ehci->portreset |=
 						1 << le16_to_cpu(req->index);
 				else
-					printf("port(%d) reset error\n",
+					dev_err(ehci->dev, "port(%d) reset error\n",
 						le16_to_cpu(req->index) - 1);
 
 			}
 			break;
 		default:
-			debug("unknown feature %x\n", le16_to_cpu(req->value));
+			dev_dbg(ehci->dev, "unknown feature %x\n", le16_to_cpu(req->value));
 			goto unknown;
 		}
 		/* unblock posted writes */
@@ -682,7 +682,7 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 			ehci->portreset &= ~(1 << le16_to_cpu(req->index));
 			break;
 		default:
-			debug("unknown feature %x\n", le16_to_cpu(req->value));
+			dev_dbg(ehci->dev, "unknown feature %x\n", le16_to_cpu(req->value));
 			goto unknown;
 		}
 		ehci_writel(status_reg, reg);
@@ -690,7 +690,7 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 		(void) ehci_readl(&ehci->hcor->or_usbcmd);
 		break;
 	default:
-		debug("Unknown request\n");
+		dev_dbg(ehci->dev, "Unknown request\n");
 		goto unknown;
 	}
 
@@ -699,14 +699,14 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 	if (srcptr != NULL && len > 0)
 		memcpy(buffer, srcptr, len);
 	else
-		debug("Len is 0\n");
+		dev_dbg(ehci->dev, "Len is 0\n");
 
 	dev->act_len = len;
 	dev->status = 0;
 	return 0;
 
 unknown:
-	debug("requesttype=%x, request=%x, value=%x, index=%x, length=%x\n",
+	dev_dbg(ehci->dev, "requesttype=%x, request=%x, value=%x, index=%x, length=%x\n",
 	      req->requesttype, req->request, le16_to_cpu(req->value),
 	      le16_to_cpu(req->index), le16_to_cpu(req->length));
 
@@ -793,9 +793,11 @@ static int
 submit_bulk_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 		int length, int timeout)
 {
+	struct usb_host *host = dev->host;
+	struct ehci_priv *ehci = to_ehci(host);
 
 	if (usb_pipetype(pipe) != PIPE_BULK) {
-		debug("non-bulk pipe (type=%lu)", usb_pipetype(pipe));
+		dev_dbg(ehci->dev, "non-bulk pipe (type=%lu)", usb_pipetype(pipe));
 		return -1;
 	}
 	return ehci_submit_async(dev, pipe, buffer, length, NULL);
@@ -809,7 +811,7 @@ submit_control_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 	struct ehci_priv *ehci = to_ehci(host);
 
 	if (usb_pipetype(pipe) != PIPE_CONTROL) {
-		debug("non-control pipe (type=%lu)", usb_pipetype(pipe));
+		dev_dbg(ehci->dev, "non-control pipe (type=%lu)", usb_pipetype(pipe));
 		return -1;
 	}
 
@@ -825,7 +827,10 @@ static int
 submit_int_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 	       int length, int interval)
 {
-	debug("dev=%p, pipe=%lu, buffer=%p, length=%d, interval=%d",
+	struct usb_host *host = dev->host;
+	struct ehci_priv *ehci = to_ehci(host);
+
+	dev_dbg(ehci->dev, "dev=%p, pipe=%lu, buffer=%p, length=%d, interval=%d",
 	      dev, pipe, buffer, length, interval);
 	return -1;
 }
@@ -878,7 +883,7 @@ static int ehci_probe(struct device_d *dev)
 		data.flags = EHCI_HAS_TT;
 
 	if (dev->num_resources < 2) {
-		printf("echi: need 2 resources base and data");
+		dev_err(dev, "need 2 resources base and data");
 		return -ENODEV;
 	}
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
