Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLlY-00029b-0O
 for barebox@lists.infradead.org; Wed, 22 May 2019 07:34:25 +0000
Received: by mail-pl1-x643.google.com with SMTP id g9so643257plm.6
 for <barebox@lists.infradead.org>; Wed, 22 May 2019 00:34:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 22 May 2019 00:33:58 -0700
Message-Id: <20190522073414.9308-3-andrew.smirnov@gmail.com>
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
Subject: [PATCH 02/18] usb: host: ehci: Share code to enable/disable async
 schedule
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 39 +++++++++++++++++++------------------
 1 file changed, 20 insertions(+), 19 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 54ab32830..4ccaec743 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -213,6 +213,23 @@ static int ehci_td_buffer(struct qTD *td, void *buf, size_t sz)
 	return 0;
 }
 
+static int ehci_enable_async_schedule(struct ehci_host *ehci, bool enable)
+{
+	uint32_t cmd, done;
+
+	cmd = ehci_readl(&ehci->hcor->or_usbcmd);
+	if (enable) {
+		cmd |= CMD_ASE;
+		done = STD_ASS;
+	} else {
+		cmd &= ~CMD_ASE;
+		done = 0;
+	}
+	ehci_writel(&ehci->hcor->or_usbcmd, cmd);
+
+	return handshake(&ehci->hcor->or_usbsts, STD_ASS, done, 100 * 1000);
+}
+
 static int
 ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 		   int length, struct devrequest *req, int timeout_ms)
@@ -225,7 +242,6 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	uint32_t *tdp;
 	uint32_t endpt, token, usbsts;
 	uint32_t c, toggle;
-	uint32_t cmd;
 	int ret = 0, i;
 	uint64_t start, timeout_val;
 
@@ -353,11 +369,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	ehci_writel(&ehci->hcor->or_usbsts, (usbsts & 0x3f));
 
 	/* Enable async. schedule. */
-	cmd = ehci_readl(&ehci->hcor->or_usbcmd);
-	cmd |= CMD_ASE;
-	ehci_writel(&ehci->hcor->or_usbcmd, cmd);
-
-	ret = handshake(&ehci->hcor->or_usbsts, STD_ASS, STD_ASS, 100 * 1000);
+	ret = ehci_enable_async_schedule(ehci, true);
 	if (ret < 0) {
 		dev_err(ehci->dev, "fail timeout STD_ASS set\n");
 		goto fail;
@@ -370,12 +382,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	do {
 		token = hc32_to_cpu(vtd->qt_token);
 		if (is_timeout_non_interruptible(start, timeout_val)) {
-			/* Disable async schedule. */
-			cmd = ehci_readl(&ehci->hcor->or_usbcmd);
-			cmd &= ~CMD_ASE;
-			ehci_writel(&ehci->hcor->or_usbcmd, cmd);
-
-			ret = handshake(&ehci->hcor->or_usbsts, STD_ASS, 0, 100 * 1000);
+			ehci_enable_async_schedule(ehci, false);
 			ehci_writel(&qh->qt_token, 0);
 			return -ETIMEDOUT;
 		}
@@ -391,13 +398,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 		}
 	}
 
-	/* Disable async schedule. */
-	cmd = ehci_readl(&ehci->hcor->or_usbcmd);
-	cmd &= ~CMD_ASE;
-	ehci_writel(&ehci->hcor->or_usbcmd, cmd);
-
-	ret = handshake(&ehci->hcor->or_usbsts, STD_ASS, 0,
-			100 * 1000);
+	ret = ehci_enable_async_schedule(ehci, false);
 	if (ret < 0) {
 		dev_err(ehci->dev, "fail timeout STD_ASS reset\n");
 		goto fail;
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
