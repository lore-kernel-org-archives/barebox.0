Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLlZ-0002AV-Sg
 for barebox@lists.infradead.org; Wed, 22 May 2019 07:34:27 +0000
Received: by mail-pg1-x542.google.com with SMTP id f25so861179pgv.10
 for <barebox@lists.infradead.org>; Wed, 22 May 2019 00:34:25 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 22 May 2019 00:33:59 -0700
Message-Id: <20190522073414.9308-4-andrew.smirnov@gmail.com>
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
Subject: [PATCH 03/18] usb: host: ehci: Use to USBSTS to wait for transfer
 completion
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Since we already set up our last qTD to have IOC flag set we may as
well take advange of that and poll USBSTS to wait for transfer
completion. Doesn't change much, but allows us to drop a custom
polling loop and re-use handshake() instead.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 21 +++++++--------------
 drivers/usb/host/ehci.h     |  1 +
 2 files changed, 8 insertions(+), 14 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 4ccaec743..0757ea44a 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -238,12 +238,10 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	struct ehci_host *ehci = to_ehci(host);
 	struct QH *qh;
 	struct qTD *td;
-	volatile struct qTD *vtd;
 	uint32_t *tdp;
 	uint32_t endpt, token, usbsts;
 	uint32_t c, toggle;
 	int ret = 0, i;
-	uint64_t start, timeout_val;
 
 	dev_dbg(ehci->dev, "pipe=%lx, buffer=%p, length=%d, req=%p\n", pipe,
 	      buffer, length, req);
@@ -375,18 +373,13 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 		goto fail;
 	}
 
-	/* Wait for TDs to be processed. */
-	timeout_val = timeout_ms * MSECOND;
-	start = get_time_ns();
-	vtd = td;
-	do {
-		token = hc32_to_cpu(vtd->qt_token);
-		if (is_timeout_non_interruptible(start, timeout_val)) {
-			ehci_enable_async_schedule(ehci, false);
-			ehci_writel(&qh->qt_token, 0);
-			return -ETIMEDOUT;
-		}
-	} while (token & 0x80);
+	ret = handshake(&ehci->hcor->or_usbsts, STS_USBINT, STS_USBINT,
+			timeout_ms * 1000);
+	if (ret < 0) {
+		ehci_enable_async_schedule(ehci, false);
+		ehci_writel(&qh->qt_token, 0);
+		return -ETIMEDOUT;
+	}
 
 	if (IS_ENABLED(CONFIG_MMU)) {
 		for (i = 0; i < NUM_TD; i ++) {
diff --git a/drivers/usb/host/ehci.h b/drivers/usb/host/ehci.h
index 39de76374..5b0920d0e 100644
--- a/drivers/usb/host/ehci.h
+++ b/drivers/usb/host/ehci.h
@@ -62,6 +62,7 @@ struct ehci_hcor {
 #define	STD_ASS		(1 << 15)
 #define STS_PSS         (1 << 14)
 #define STS_HALT	(1 << 12)
+#define STS_USBINT	BIT(0)
 	uint32_t or_usbintr;
 	uint32_t or_frindex;
 	uint32_t or_ctrldssegment;
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
