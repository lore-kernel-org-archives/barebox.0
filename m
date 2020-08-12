Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout07.rmx.de ([94.199.90.95])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5mFC-00042k-I3
 for barebox@lists.infradead.org; Wed, 12 Aug 2020 08:36:24 +0000
From: Christian Eggers <ceggers@arri.de>
Date: Wed, 12 Aug 2020 10:35:59 +0200
Message-ID: <20200812083559.18189-1-ceggers@arri.de>
In-Reply-To: <20200811063325.GH9475@pengutronix.de>
References: <20200811063325.GH9475@pengutronix.de>
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
Subject: [PATCH] Revert "usb: host: ehci: Use to USBSTS to wait for transfer
 completion"
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, ceggers@arri.de

Since 6044d6c08e, some USB mass storage devices (in my case some USB
memory sticks and one SD card reader) are not detected anymore. Waiting
once for USBSTS::USBINT is not sufficient as it takes multiple USBINT
events until QT_TOKEN_STATUS_ACTIVE is cleared.

Fixes: 6044d6c08e ("usb: host: ehci: Use to USBSTS to wait for transfer completion")
Signed-off-by: Christian Eggers <ceggers@arri.de>
---
On Tue, Aug 11, 2020, Sascha Hauer wrote:
> I am fine with reverting 6044d6c08e, but let's give Andrey some time to
> react before doing this.

I'll be on holiday next week. So it send it now before it gets lost.

 drivers/usb/host/ehci-hcd.c | 21 ++++++++++++++-------
 drivers/usb/host/ehci.h     |  1 -
 2 files changed, 14 insertions(+), 8 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index ead63b2c9f..38999927c5 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -308,12 +308,14 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	dma_addr_t buffer_dma, req_dma;
 	struct QH *qh = &ehci->qh_list[1];
 	struct qTD *td;
+	volatile struct qTD *vtd;
 	uint32_t *tdp;
 	uint32_t endpt, token, usbsts;
 	uint32_t status;
 	uint32_t toggle;
 	bool c;
 	int ret;
+	uint64_t start, timeout_val;
 
 
 	dev_dbg(ehci->dev, "pipe=%lx, buffer=%p, length=%d, req=%p\n", pipe,
@@ -442,13 +444,18 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 		return ret;
 	}
 
-	ret = handshake(&ehci->hcor->or_usbsts, STS_USBINT, STS_USBINT,
-			timeout_ms * 1000);
-	if (ret < 0) {
-		ehci_enable_async_schedule(ehci, false);
-		ehci_writel(&qh->qt_token, 0);
-		return -ETIMEDOUT;
-	}
+	/* Wait for TDs to be processed. */
+	timeout_val = timeout_ms * MSECOND;
+	start = get_time_ns();
+	vtd = td;
+	do {
+		token = hc32_to_cpu(vtd->qt_token);
+		if (is_timeout_non_interruptible(start, timeout_val)) {
+			ehci_enable_async_schedule(ehci, false);
+			ehci_writel(&qh->qt_token, 0);
+			return -ETIMEDOUT;
+		}
+	} while (token & QT_TOKEN_STATUS_ACTIVE);
 
 	if (req)
 		dma_unmap_single(ehci->dev, req_dma, sizeof(*req),
diff --git a/drivers/usb/host/ehci.h b/drivers/usb/host/ehci.h
index e88e37e14c..4b9092d1fe 100644
--- a/drivers/usb/host/ehci.h
+++ b/drivers/usb/host/ehci.h
@@ -53,7 +53,6 @@ struct ehci_hcor {
 #define	STD_ASS		(1 << 15)
 #define STS_PSS         (1 << 14)
 #define STS_HALT	(1 << 12)
-#define STS_USBINT	BIT(0)
 	uint32_t or_usbintr;
 	uint32_t or_frindex;
 	uint32_t or_ctrldssegment;
-- 
Christian Eggers
Embedded software developer

Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRA 57918
Persoenlich haftender Gesellschafter: Arnold & Richter Cine Technik GmbH
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRB 54477
Geschaeftsfuehrer: Dr. Michael Neuhaeuser; Stephan Schenk; Walter Trauninger; Markus Zeiler


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
