Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLlf-0002Hb-6H
 for barebox@lists.infradead.org; Wed, 22 May 2019 07:34:36 +0000
Received: by mail-pl1-x643.google.com with SMTP id g9so643422plm.6
 for <barebox@lists.infradead.org>; Wed, 22 May 2019 00:34:31 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 22 May 2019 00:34:06 -0700
Message-Id: <20190522073414.9308-11-andrew.smirnov@gmail.com>
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
Subject: [PATCH 10/18] usb: host: ehci: Simplify ehci_submit_async()'s epilogue
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Re-organize the epilogue of ehci_submit_async() to bail out early if
token is still marked as "active" and drop no longer necessary check
for "dev->status != USB_ST_NOT_PROC". While at it return -EIO instead
of -1 in the case of error.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 76 ++++++++++++++++++-------------------
 1 file changed, 38 insertions(+), 38 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 2b890cbc9..7194a48c0 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -272,6 +272,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	struct qTD *td;
 	uint32_t *tdp;
 	uint32_t endpt, token, usbsts;
+	uint32_t status;
 	uint32_t c, toggle;
 	int ret = 0;
 
@@ -425,50 +426,49 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	ehci->qh_list->qh_link = cpu_to_hc32((uint32_t)ehci->qh_list | QH_LINK_TYPE_QH);
 
 	token = hc32_to_cpu(qh->qt_token);
-	if (!(token & QT_TOKEN_STATUS_ACTIVE)) {
-		uint32_t status;
+	if (token & QT_TOKEN_STATUS_ACTIVE) {
+		dev->act_len = 0;
+		dev_dbg(ehci->dev, "dev=%u, usbsts=%#x, p[1]=%#x, p[2]=%#x\n",
+			dev->devnum, ehci_readl(&ehci->hcor->or_usbsts),
+			ehci_readl(&ehci->hcor->or_portsc[0]),
+			ehci_readl(&ehci->hcor->or_portsc[1]));
+		return -EIO;
+	}
 
-		dev_dbg(ehci->dev, "TOKEN=0x%08x\n", token);
+	dev_dbg(ehci->dev, "TOKEN=0x%08x\n", token);
 
-		status = QT_TOKEN_GET_STATUS(token);
-		status &= ~(QT_TOKEN_STATUS_SPLITXSTATE |
-			    QT_TOKEN_STATUS_PERR);
+	status = QT_TOKEN_GET_STATUS(token);
+	status &= ~(QT_TOKEN_STATUS_SPLITXSTATE |
+		    QT_TOKEN_STATUS_PERR);
 
-		switch (status) {
-		case 0:
-			toggle = QT_TOKEN_GET_DT(token);
-			usb_settoggle(dev, usb_pipeendpoint(pipe),
-				       usb_pipeout(pipe), toggle);
-			dev->status = 0;
-			break;
-		case QT_TOKEN_STATUS_HALTED:
-			dev->status = USB_ST_STALLED;
-			break;
-		case QT_TOKEN_STATUS_ACTIVE | QT_TOKEN_STATUS_DATBUFERR:
-		case QT_TOKEN_STATUS_DATBUFERR:
-			dev->status = USB_ST_BUF_ERR;
-			break;
-		case QT_TOKEN_STATUS_HALTED | QT_TOKEN_STATUS_BABBLEDET:
-		case QT_TOKEN_STATUS_BABBLEDET:
-			dev->status = USB_ST_BABBLE_DET;
-			break;
-		default:
-			dev->status = USB_ST_CRC_ERR;
-			if (status & QT_TOKEN_STATUS_HALTED)
-				dev->status |= USB_ST_STALLED;
+	switch (status) {
+	case 0:
+		toggle = QT_TOKEN_GET_DT(token);
+		usb_settoggle(dev, usb_pipeendpoint(pipe),
+			      usb_pipeout(pipe), toggle);
+		dev->status = 0;
+		break;
+	case QT_TOKEN_STATUS_HALTED:
+		dev->status = USB_ST_STALLED;
+		break;
+	case QT_TOKEN_STATUS_ACTIVE | QT_TOKEN_STATUS_DATBUFERR:
+	case QT_TOKEN_STATUS_DATBUFERR:
+		dev->status = USB_ST_BUF_ERR;
+		break;
+	case QT_TOKEN_STATUS_HALTED | QT_TOKEN_STATUS_BABBLEDET:
+	case QT_TOKEN_STATUS_BABBLEDET:
+		dev->status = USB_ST_BABBLE_DET;
+		break;
+	default:
+		dev->status = USB_ST_CRC_ERR;
+		if (status & QT_TOKEN_STATUS_HALTED)
+			dev->status |= USB_ST_STALLED;
 
-			break;
-		}
-		dev->act_len = length - QT_TOKEN_GET_TOTALBYTES(token);
-	} else {
-		dev->act_len = 0;
-		dev_dbg(ehci->dev, "dev=%u, usbsts=%#x, p[1]=%#x, p[2]=%#x\n",
-		      dev->devnum, ehci_readl(&ehci->hcor->or_usbsts),
-		      ehci_readl(&ehci->hcor->or_portsc[0]),
-		      ehci_readl(&ehci->hcor->or_portsc[1]));
+		break;
 	}
+	dev->act_len = length - QT_TOKEN_GET_TOTALBYTES(token);
 
-	return (dev->status != USB_ST_NOT_PROC) ? 0 : -1;
+	return 0;
 }
 
 #if defined(CONFIG_MACH_EFIKA_MX_SMARTBOOK) && defined(CONFIG_USB_ULPI)
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
