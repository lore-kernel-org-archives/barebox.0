Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLla-0002Ap-Jl
 for barebox@lists.infradead.org; Wed, 22 May 2019 07:34:34 +0000
Received: by mail-pf1-x442.google.com with SMTP id s11so846012pfm.12
 for <barebox@lists.infradead.org>; Wed, 22 May 2019 00:34:26 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 22 May 2019 00:34:00 -0700
Message-Id: <20190522073414.9308-5-andrew.smirnov@gmail.com>
In-Reply-To: <20190522073414.9308-1-andrew.smirnov@gmail.com>
References: <20190522073414.9308-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 04/18] usb: host: ehci: Replace magic number with macros
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Import a number of missing macros from U-Boot and convert ehci-hcd to
use them instead of explicitly specifying magic shifts. No functional
change intended.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 96 +++++++++++++++++++++----------------
 drivers/usb/host/ehci.h     | 49 +++++++++++++++----
 2 files changed, 96 insertions(+), 49 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 0757ea44a..fadb403a9 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -259,31 +259,33 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	qh->qh_link = cpu_to_hc32((uint32_t)ehci->qh_list | QH_LINK_TYPE_QH);
 	c = (dev->speed != USB_SPEED_HIGH &&
 	     usb_pipeendpoint(pipe) == 0) ? 1 : 0;
-	endpt = (8 << 28) |
-	    (c << 27) |
-	    (usb_maxpacket(dev, pipe) << 16) |
-	    (0 << 15) |
-	    (1 << 14) |
-	    (usb_pipeendpoint(pipe) << 8) |
-	    (0 << 7) | (usb_pipedevice(pipe) << 0);
+	endpt = QH_ENDPT1_RL(8) | QH_ENDPT1_C(c) |
+		QH_ENDPT1_MAXPKTLEN(usb_maxpacket(dev, pipe)) |
+		QH_ENDPT1_H(0) |
+		QH_ENDPT1_DTC(QH_ENDPT1_DTC_DT_FROM_QTD) |
+		QH_ENDPT1_ENDPT(usb_pipeendpoint(pipe)) | QH_ENDPT1_I(0) |
+		QH_ENDPT1_DEVADDR(usb_pipedevice(pipe));
+
 	switch (dev->speed) {
 	case USB_SPEED_FULL:
-		endpt |= 0 << 12;
+		endpt |= QH_ENDPT1_EPS(0);
 		break;
 	case USB_SPEED_LOW:
-		endpt |= 1 << 12;
+		endpt |= QH_ENDPT1_EPS(1);
 		break;
 	case USB_SPEED_HIGH:
-		endpt |= 2 << 12;
+		endpt |= QH_ENDPT1_EPS(2);
 		break;
 	default:
 		return -EINVAL;
 	}
 
 	qh->qh_endpt1 = cpu_to_hc32(endpt);
-	endpt = (1 << 30) |
-	    (dev->portnr << 23) |
-	    (dev->parent->devnum << 16) | (0 << 8) | (0 << 0);
+	endpt = QH_ENDPT2_MULT(1) |
+		QH_ENDPT2_PORTNUM(dev->portnr) |
+		QH_ENDPT2_HUBADDR(dev->parent->devnum) |
+		QH_ENDPT2_UFCMASK(0) |
+		QH_ENDPT2_UFSMASK(0);
 	qh->qh_endpt2 = cpu_to_hc32(endpt);
 	qh->qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
 	qh->qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
@@ -299,9 +301,12 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 
 		td->qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
 		td->qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
-		token = (0 << 31) |
-		    (sizeof(*req) << 16) |
-		    (0 << 15) | (0 << 12) | (3 << 10) | (2 << 8) | (0x80 << 0);
+		token = QT_TOKEN_DT(0) |
+			QT_TOKEN_TOTALBYTES(sizeof(*req)) |
+			QT_TOKEN_IOC(0) |
+			QT_TOKEN_CPAGE(0) | QT_TOKEN_CERR(3) |
+			QT_TOKEN_PID(QT_TOKEN_PID_SETUP) |
+			QT_TOKEN_STATUS(QT_TOKEN_STATUS_ACTIVE);
 		td->qt_token = cpu_to_hc32(token);
 		if (ehci_td_buffer(td, req, sizeof(*req)) != 0) {
 			dev_dbg(ehci->dev, "unable construct SETUP td\n");
@@ -318,12 +323,13 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 
 		td->qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
 		td->qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
-		token = (toggle << 31) |
-		    (length << 16) |
-		    ((req == NULL ? 1 : 0) << 15) |
-		    (0 << 12) |
-		    (3 << 10) |
-		    ((usb_pipein(pipe) ? 1 : 0) << 8) | (0x80 << 0);
+		token = QT_TOKEN_DT(toggle) |
+			QT_TOKEN_TOTALBYTES(length) |
+			QT_TOKEN_IOC(req == NULL) |
+			QT_TOKEN_CPAGE(0) | QT_TOKEN_CERR(3) |
+			QT_TOKEN_PID(usb_pipein(pipe) ?
+				     QT_TOKEN_PID_IN : QT_TOKEN_PID_OUT) |
+			QT_TOKEN_STATUS(QT_TOKEN_STATUS_ACTIVE);
 		td->qt_token = cpu_to_hc32(token);
 		if (ehci_td_buffer(td, buffer, length) != 0) {
 			dev_err(ehci->dev, "unable construct DATA td\n");
@@ -338,12 +344,13 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 
 		td->qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
 		td->qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
-		token = (toggle << 31) |
-		    (0 << 16) |
-		    (1 << 15) |
-		    (0 << 12) |
-		    (3 << 10) |
-		    ((usb_pipein(pipe) ? 0 : 1) << 8) | (0x80 << 0);
+		token = QT_TOKEN_DT(1) |
+			QT_TOKEN_TOTALBYTES(0) |
+			QT_TOKEN_IOC(1) |
+			QT_TOKEN_CPAGE(0) | QT_TOKEN_CERR(3) |
+			QT_TOKEN_PID(usb_pipein(pipe) ?
+				     QT_TOKEN_PID_OUT : QT_TOKEN_PID_IN) |
+			QT_TOKEN_STATUS(QT_TOKEN_STATUS_ACTIVE);
 		td->qt_token = cpu_to_hc32(token);
 		*tdp = cpu_to_hc32((uint32_t)td);
 		tdp = &td->qt_next;
@@ -400,33 +407,41 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	ehci->qh_list->qh_link = cpu_to_hc32((uint32_t)ehci->qh_list | QH_LINK_TYPE_QH);
 
 	token = hc32_to_cpu(qh->qt_token);
-	if (!(token & 0x80)) {
+	if (!(token & QT_TOKEN_STATUS_ACTIVE)) {
+		uint32_t status;
+
 		dev_dbg(ehci->dev, "TOKEN=0x%08x\n", token);
-		switch (token & 0xfc) {
+
+		status = QT_TOKEN_GET_STATUS(token);
+		status &= ~(QT_TOKEN_STATUS_SPLITXSTATE |
+			    QT_TOKEN_STATUS_PERR);
+
+		switch (status) {
 		case 0:
-			toggle = token >> 31;
+			toggle = QT_TOKEN_GET_DT(token);
 			usb_settoggle(dev, usb_pipeendpoint(pipe),
 				       usb_pipeout(pipe), toggle);
 			dev->status = 0;
 			break;
-		case 0x40:
+		case QT_TOKEN_STATUS_HALTED:
 			dev->status = USB_ST_STALLED;
 			break;
-		case 0xa0:
-		case 0x20:
+		case QT_TOKEN_STATUS_ACTIVE | QT_TOKEN_STATUS_DATBUFERR:
+		case QT_TOKEN_STATUS_DATBUFERR:
 			dev->status = USB_ST_BUF_ERR;
 			break;
-		case 0x50:
-		case 0x10:
+		case QT_TOKEN_STATUS_HALTED | QT_TOKEN_STATUS_BABBLEDET:
+		case QT_TOKEN_STATUS_BABBLEDET:
 			dev->status = USB_ST_BABBLE_DET;
 			break;
 		default:
 			dev->status = USB_ST_CRC_ERR;
-			if ((token & 0x40) == 0x40)
+			if (status & QT_TOKEN_STATUS_HALTED)
 				dev->status |= USB_ST_STALLED;
+
 			break;
 		}
-		dev->act_len = length - ((token >> 16) & 0x7fff);
+		dev->act_len = length - QT_TOKEN_GET_TOTALBYTES(token);
 	} else {
 		dev->act_len = 0;
 		dev_dbg(ehci->dev, "dev=%u, usbsts=%#x, p[1]=%#x, p[2]=%#x\n",
@@ -808,11 +823,12 @@ static int ehci_init(struct usb_host *host)
 	memset(ehci->qh_list, 0, sizeof(struct QH) * NUM_TD);
 
 	ehci->qh_list->qh_link = cpu_to_hc32((uint32_t)ehci->qh_list | QH_LINK_TYPE_QH);
-	ehci->qh_list->qh_endpt1 = cpu_to_hc32((1 << 15) | (USB_SPEED_HIGH << 12));
+	ehci->qh_list->qh_endpt1 = cpu_to_hc32(QH_ENDPT1_H(1) |
+					       QH_ENDPT1_EPS(USB_SPEED_HIGH));
 	ehci->qh_list->qh_curtd = cpu_to_hc32(QT_NEXT_TERMINATE);
 	ehci->qh_list->qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
 	ehci->qh_list->qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
-	ehci->qh_list->qt_token = cpu_to_hc32(0x40);
+	ehci->qh_list->qt_token = cpu_to_hc32(QT_TOKEN_STATUS_HALTED);
 
 	/* Set async. queue head pointer. */
 	ehci_writel(&ehci->hcor->or_asynclistaddr, (uint32_t)ehci->qh_list);
diff --git a/drivers/usb/host/ehci.h b/drivers/usb/host/ehci.h
index 5b0920d0e..f82b6a0d1 100644
--- a/drivers/usb/host/ehci.h
+++ b/drivers/usb/host/ehci.h
@@ -20,15 +20,6 @@
 
 #include <io.h>
 
-#define QH_ENDPT1_EPS(x)	(((x) & 0x3) << 12)	/* Endpoint Speed */
-#define QH_ENDPT2_PORTNUM(x)	(((x) & 0x7f) << 23)	/* Port Number */
-#define QH_ENDPT2_HUBADDR(x)	(((x) & 0x7f) << 16)	/* Hub Address */
-
-#define QT_TOKEN_DT(x)		(((x) & 0x1) << 31)	/* Data Toggle */
-#define QT_TOKEN_GET_STATUS(x)	(((x) >> 0) & 0xff)
-#define QT_TOKEN_STATUS_ACTIVE	0x80
-#define QT_TOKEN_GET_DT(x)	(((x) >> 31) & 0x1)
-
 #if !defined(CONFIG_SYS_USB_EHCI_MAX_ROOT_PORTS)
 #define CONFIG_SYS_USB_EHCI_MAX_ROOT_PORTS	16
 #endif
@@ -134,6 +125,27 @@ struct qTD {
 #define	QT_NEXT_TERMINATE	1
 	uint32_t qt_altnext;
 	uint32_t qt_token;
+#define QT_TOKEN_DT(x)		(((x) & 0x1) << 31)	/* Data Toggle */
+#define QT_TOKEN_GET_DT(x)		(((x) >> 31) & 0x1)
+#define QT_TOKEN_TOTALBYTES(x)	(((x) & 0x7fff) << 16)	/* Total Bytes to Transfer */
+#define QT_TOKEN_GET_TOTALBYTES(x)	(((x) >> 16) & 0x7fff)
+#define QT_TOKEN_IOC(x)		(((x) & 0x1) << 15)	/* Interrupt On Complete */
+#define QT_TOKEN_CPAGE(x)	(((x) & 0x7) << 12)	/* Current Page */
+#define QT_TOKEN_CERR(x)	(((x) & 0x3) << 10)	/* Error Counter */
+#define QT_TOKEN_PID(x)		(((x) & 0x3) << 8)	/* PID Code */
+#define QT_TOKEN_PID_OUT		0x0
+#define QT_TOKEN_PID_IN			0x1
+#define QT_TOKEN_PID_SETUP		0x2
+#define QT_TOKEN_STATUS(x)	(((x) & 0xff) << 0)	/* Status */
+#define QT_TOKEN_GET_STATUS(x)		(((x) >> 0) & 0xff)
+#define QT_TOKEN_STATUS_ACTIVE		0x80
+#define QT_TOKEN_STATUS_HALTED		0x40
+#define QT_TOKEN_STATUS_DATBUFERR	0x20
+#define QT_TOKEN_STATUS_BABBLEDET	0x10
+#define QT_TOKEN_STATUS_XACTERR		0x08
+#define QT_TOKEN_STATUS_MISSEDUFRAME	0x04
+#define QT_TOKEN_STATUS_SPLITXSTATE	0x02
+#define QT_TOKEN_STATUS_PERR		0x01
 	uint32_t qt_buffer[5];
 	unsigned long qtd_dma;
 	size_t length;
@@ -148,7 +160,26 @@ struct QH {
 #define	QH_LINK_TYPE_SITD	4
 #define	QH_LINK_TYPE_FSTN	6
 	uint32_t qh_endpt1;
+#define QH_ENDPT1_RL(x)		(((x) & 0xf) << 28)	/* NAK Count Reload */
+#define QH_ENDPT1_C(x)		(((x) & 0x1) << 27)	/* Control Endpoint Flag */
+#define QH_ENDPT1_MAXPKTLEN(x)	(((x) & 0x7ff) << 16)	/* Maximum Packet Length */
+#define QH_ENDPT1_H(x)		(((x) & 0x1) << 15)	/* Head of Reclamation List Flag */
+#define QH_ENDPT1_DTC(x)	(((x) & 0x1) << 14)	/* Data Toggle Control */
+#define QH_ENDPT1_DTC_IGNORE_QTD_TD	0x0
+#define QH_ENDPT1_DTC_DT_FROM_QTD	0x1
+#define QH_ENDPT1_EPS(x)	(((x) & 0x3) << 12)	/* Endpoint Speed */
+#define QH_ENDPT1_EPS_FS		0x0
+#define QH_ENDPT1_EPS_LS		0x1
+#define QH_ENDPT1_EPS_HS		0x2
+#define QH_ENDPT1_ENDPT(x)	(((x) & 0xf) << 8)	/* Endpoint Number */
+#define QH_ENDPT1_I(x)		(((x) & 0x1) << 7)	/* Inactivate on Next Transaction */
+#define QH_ENDPT1_DEVADDR(x)	(((x) & 0x7f) << 0)	/* Device Address */
 	uint32_t qh_endpt2;
+#define QH_ENDPT2_MULT(x)	(((x) & 0x3) << 30)	/* High-Bandwidth Pipe Multiplier */
+#define QH_ENDPT2_PORTNUM(x)	(((x) & 0x7f) << 23)	/* Port Number */
+#define QH_ENDPT2_HUBADDR(x)	(((x) & 0x7f) << 16)	/* Hub Address */
+#define QH_ENDPT2_UFCMASK(x)	(((x) & 0xff) << 8)	/* Split Completion Mask */
+#define QH_ENDPT2_UFSMASK(x)	(((x) & 0xff) << 0)	/* Interrupt Schedule Mask */
 	uint32_t qh_curtd;
 	 /* qtd overlay (hardware parts of a struct qTD) */
 	uint32_t qt_next;
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
