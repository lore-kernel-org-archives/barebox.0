Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gFyV6-0000mn-QT
 for barebox@lists.infradead.org; Fri, 26 Oct 2018 09:34:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Oct 2018 11:33:32 +0200
Message-Id: <20181026093338.22751-3-s.hauer@pengutronix.de>
In-Reply-To: <20181026093338.22751-1-s.hauer@pengutronix.de>
References: <20181026093338.22751-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/8] usb: host: ehci: rename ehci_priv to ehci_host
To: Barebox List <barebox@lists.infradead.org>

As we are going to export the structure as a cookie to others
rename it to ehci_host.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/host/ehci-hcd.c | 42 ++++++++++++++++++-------------------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 9bbdda365c..c20d4392d2 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -34,7 +34,7 @@
 
 #include "ehci.h"
 
-struct ehci_priv {
+struct ehci_host {
 	int rootdev;
 	struct device_d *dev;
 	struct ehci_hccr *hccr;
@@ -63,7 +63,7 @@ struct int_queue {
 	struct qTD *tds;
 };
 
-#define to_ehci(ptr) container_of(ptr, struct ehci_priv, host)
+#define to_ehci(ptr) container_of(ptr, struct ehci_host, host)
 
 #define NUM_QH	2
 #define NUM_TD	3
@@ -155,7 +155,7 @@ static int handshake(uint32_t *ptr, uint32_t mask, uint32_t done, int usec)
 	}
 }
 
-static int ehci_reset(struct ehci_priv *ehci)
+static int ehci_reset(struct ehci_host *ehci)
 {
 	uint32_t cmd;
 	uint32_t tmp;
@@ -218,7 +218,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 		   int length, struct devrequest *req, int timeout_ms)
 {
 	struct usb_host *host = dev->host;
-	struct ehci_priv *ehci = to_ehci(host);
+	struct ehci_host *ehci = to_ehci(host);
 	struct QH *qh;
 	struct qTD *td;
 	volatile struct qTD *vtd;
@@ -460,7 +460,7 @@ fail:
  * boards.
  * See http://lists.infradead.org/pipermail/linux-arm-kernel/2011-January/037341.html
  */
-static void ehci_powerup_fixup(struct ehci_priv *ehci)
+static void ehci_powerup_fixup(struct ehci_host *ehci)
 {
 	void *viewport = (void *)ehci->hcor + 0x30;
 
@@ -471,12 +471,12 @@ static void ehci_powerup_fixup(struct ehci_priv *ehci)
 			viewport);
 }
 #else
-static inline void ehci_powerup_fixup(struct ehci_priv *ehci)
+static inline void ehci_powerup_fixup(struct ehci_host *ehci)
 {
 }
 #endif
 
-static void pass_to_companion(struct ehci_priv *ehci, int port)
+static void pass_to_companion(struct ehci_host *ehci, int port)
 {
 	uint32_t *status_reg = (uint32_t *)&ehci->hcor->or_portsc[port - 1];
 	uint32_t reg = ehci_readl(status_reg);
@@ -493,7 +493,7 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 		 int length, struct devrequest *req)
 {
 	struct usb_host *host = dev->host;
-	struct ehci_priv *ehci = to_ehci(host);
+	struct ehci_host *ehci = to_ehci(host);
 	uint8_t tmpbuf[4];
 	u16 typeReq;
 	void *srcptr = NULL;
@@ -772,7 +772,7 @@ unknown:
 }
 
 /* force HC to halt state from unknown (EHCI spec section 2.3) */
-static int ehci_halt(struct ehci_priv *ehci)
+static int ehci_halt(struct ehci_host *ehci)
 {
 	u32	temp = ehci_readl(&ehci->hcor->or_usbsts);
 
@@ -792,7 +792,7 @@ static int ehci_halt(struct ehci_priv *ehci)
 
 static int ehci_init(struct usb_host *host)
 {
-	struct ehci_priv *ehci = to_ehci(host);
+	struct ehci_host *ehci = to_ehci(host);
 	uint32_t reg;
 	uint32_t cmd;
 	int ret = 0;
@@ -902,7 +902,7 @@ submit_bulk_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 		int length, int timeout)
 {
 	struct usb_host *host = dev->host;
-	struct ehci_priv *ehci = to_ehci(host);
+	struct ehci_host *ehci = to_ehci(host);
 
 	if (usb_pipetype(pipe) != PIPE_BULK) {
 		dev_dbg(ehci->dev, "non-bulk pipe (type=%lu)", usb_pipetype(pipe));
@@ -916,7 +916,7 @@ submit_control_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 		   int length, struct devrequest *setup, int timeout)
 {
 	struct usb_host *host = dev->host;
-	struct ehci_priv *ehci = to_ehci(host);
+	struct ehci_host *ehci = to_ehci(host);
 
 	if (usb_pipetype(pipe) != PIPE_CONTROL) {
 		dev_dbg(ehci->dev, "non-control pipe (type=%lu)", usb_pipetype(pipe));
@@ -932,7 +932,7 @@ submit_control_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 }
 
 static int
-disable_periodic(struct ehci_priv *ehci)
+disable_periodic(struct ehci_host *ehci)
 {
 	uint32_t cmd;
 	struct ehci_hcor *hcor = ehci->hcor;
@@ -954,7 +954,7 @@ disable_periodic(struct ehci_priv *ehci)
 #define NEXT_QH(qh) (struct QH *)((unsigned long)hc32_to_cpu((qh)->qh_link) & ~0x1f)
 
 static int
-enable_periodic(struct ehci_priv *ehci)
+enable_periodic(struct ehci_host *ehci)
 {
 	uint32_t cmd;
 	struct ehci_hcor *hcor = ehci->hcor;
@@ -1018,7 +1018,7 @@ static struct int_queue *ehci_create_int_queue(struct usb_device *dev,
 			void *buffer, int interval)
 {
 	struct usb_host *host = dev->host;
-	struct ehci_priv *ehci = to_ehci(host);
+	struct ehci_host *ehci = to_ehci(host);
 	struct int_queue *result = NULL;
 	uint32_t i;
 	struct QH *list = ehci->periodic_queue;
@@ -1187,7 +1187,7 @@ static int ehci_destroy_int_queue(struct usb_device *dev,
 {
 	int result = -EINVAL;
 	struct usb_host *host = dev->host;
-	struct ehci_priv *ehci = to_ehci(host);
+	struct ehci_host *ehci = to_ehci(host);
 	struct QH *cur = ehci->periodic_queue;
 
 	if (disable_periodic(ehci) < 0) {
@@ -1230,7 +1230,7 @@ submit_int_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 	       int length, int interval)
 {
 	struct usb_host *host = dev->host;
-	struct ehci_priv *ehci = to_ehci(host);
+	struct ehci_host *ehci = to_ehci(host);
 	struct int_queue *queue;
 	uint64_t start;
 	void *backbuffer;
@@ -1275,7 +1275,7 @@ submit_int_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 
 static int ehci_detect(struct device_d *dev)
 {
-	struct ehci_priv *ehci = dev->priv;
+	struct ehci_host *ehci = dev->priv;
 
 	return usb_host_detect(&ehci->host);
 }
@@ -1283,10 +1283,10 @@ static int ehci_detect(struct device_d *dev)
 int ehci_register(struct device_d *dev, struct ehci_data *data)
 {
 	struct usb_host *host;
-	struct ehci_priv *ehci;
+	struct ehci_host *ehci;
 	uint32_t reg;
 
-	ehci = xzalloc(sizeof(struct ehci_priv));
+	ehci = xzalloc(sizeof(struct ehci_host));
 	host = &ehci->host;
 	dev->priv = ehci;
 	ehci->flags = data->flags;
@@ -1369,7 +1369,7 @@ static int ehci_probe(struct device_d *dev)
 
 static void ehci_remove(struct device_d *dev)
 {
-	struct ehci_priv *ehci = dev->priv;
+	struct ehci_host *ehci = dev->priv;
 	ehci_halt(ehci);
 }
 
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
