Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irKoA-0002EL-J0
 for barebox@lists.infradead.org; Tue, 14 Jan 2020 11:56:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 14 Jan 2020 12:56:26 +0100
Message-Id: <20200114115626.1553-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] usb: ehci: Do not use memset on dma coherent memory
To: Barebox List <barebox@lists.infradead.org>
Cc: EAlbert@data-modul.com

memset is an optimized operation that at least on ARM64 may only be
called on cached memory, see 32e8842c40 ("ARM: lib64: Make string
functions aware of MMU configuration"). To avoid crashes in the ehci
driver we no longer call memset on memory allocated with
dma_alloc_coherent(), but use a simple memzero32 function instead.

Reported-by: Elmar Albert <EAlbert@data-modul.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/host/ehci-hcd.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index f3be177ceb..417ae5df75 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -137,6 +137,15 @@ static struct descriptor {
 
 #define ehci_is_TDI()	(ehci->flags & EHCI_HAS_TT)
 
+static void memzero32(void *ptr, size_t size)
+{
+	uint32_t *ptr32 = ptr;
+	int i;
+
+	for (i = 0; i < size / sizeof(uint32_t); i++)
+		ptr32[i] = 0x0;
+}
+
 static int handshake(uint32_t *ptr, uint32_t mask, uint32_t done, int usec)
 {
 	uint32_t result;
@@ -237,7 +246,7 @@ static int ehci_prepare_qtd(struct device_d *dev,
 		if (ret)
 			return ret;
 	} else {
-		memset(td->qt_buffer, 0, sizeof(td->qt_buffer));
+		memzero32(td->qt_buffer, sizeof(td->qt_buffer));
 	}
 
 	return 0;
@@ -318,7 +327,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	qh->qh_endpt2 = cpu_to_hc32(endpt);
 	qh->qh_curtd = 0;
 	qh->qt_token = 0;
-	memset(qh->qt_buffer, 0, sizeof(qh->qt_buffer));
+	memzero32(qh->qt_buffer, sizeof(qh->qt_buffer));
 
 	tdp = &qh->qt_next;
 
@@ -854,7 +863,7 @@ static int ehci_init(struct usb_host *host)
 	 */
 	ehci->periodic_schedules = 0;
 	periodic = ehci->periodic_queue;
-	memset(periodic, 0, sizeof(*periodic));
+	memzero32(periodic, sizeof(*periodic));
 	periodic->qh_link = cpu_to_hc32(QH_LINK_TERMINATE);
 	periodic->qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
 	periodic->qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
-- 
2.25.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
