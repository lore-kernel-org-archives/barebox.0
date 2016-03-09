Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward16h.cmail.yandex.net ([2a02:6b8:0:f35::a1])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1adbqt-0007Pl-KB
 for barebox@lists.infradead.org; Wed, 09 Mar 2016 11:00:29 +0000
Received: from smtp3h.mail.yandex.net (smtp3h.mail.yandex.net [84.201.186.20])
 by forward16h.cmail.yandex.net (Yandex) with ESMTP id 29609219A1
 for <barebox@lists.infradead.org>; Wed,  9 Mar 2016 14:00:04 +0300 (MSK)
From: Aleksey Kuleshov <rndfax@yandex.ru>
Date: Wed,  9 Mar 2016 13:50:54 +0300
Message-Id: <1457520654-31116-1-git-send-email-rndfax@yandex.ru>
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
Subject: [PATCH v2] ehci-hcd: preserve DTC in QH for interrupt transactions
To: barebox@lists.infradead.org
Cc: Aleksey Kuleshov <rndfax@yandex.ru>

In Linux ehci-q Data Toggle Control bit for interrupt transactions
is preserved in Queue Head (EHCI 3.6.2). So don't set 14's bit in
qh_endpt1 and don't manage toggle bit anywhere in int transactions.

This fixes an idle issue for USB keyboards, where keys
were physically changed but barebox haven't seen them in polling
until the next USB keyboard polling occurs.

Signed-off-by: Aleksey Kuleshov <rndfax@yandex.ru>
---
 drivers/usb/host/ehci-hcd.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 9c8613c..b0bf922 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -1005,7 +1005,7 @@ static struct int_queue *ehci_create_int_queue(struct usb_device *dev,
 	struct usb_host *host = dev->host;
 	struct ehci_priv *ehci = to_ehci(host);
 	struct int_queue *result = NULL;
-	uint32_t i, toggle;
+	uint32_t i;
 	struct QH *list = ehci->periodic_queue;
 
 	/*
@@ -1057,8 +1057,6 @@ static struct int_queue *ehci_create_int_queue(struct usb_device *dev,
 	memset(result->first, 0, sizeof(struct QH) * queuesize);
 	memset(result->tds, 0, sizeof(struct qTD) * queuesize);
 
-	toggle = usb_gettoggle(dev, usb_pipeendpoint(pipe), usb_pipeout(pipe));
-
 	for (i = 0; i < queuesize; i++) {
 		struct QH *qh = result->first + i;
 		struct qTD *td = result->tds + i;
@@ -1073,7 +1071,6 @@ static struct int_queue *ehci_create_int_queue(struct usb_device *dev,
 		qh->qh_endpt1 =
 			cpu_to_hc32((0 << 28) | /* No NAK reload (ehci 4.9) */
 			(usb_maxpacket(dev, pipe) << 16) | /* MPS */
-			(1 << 14) |
 			QH_ENDPT1_EPS(ehci_encode_speed(dev->speed)) |
 			(usb_pipeendpoint(pipe) << 8) | /* Endpoint Number */
 			(usb_pipedevice(pipe) << 0));
@@ -1092,7 +1089,6 @@ static struct int_queue *ehci_create_int_queue(struct usb_device *dev,
 			"communication direction is '%s'\n",
 			usb_pipein(pipe) ? "in" : "out");
 		td->qt_token = cpu_to_hc32(
-			QT_TOKEN_DT(toggle) |
 			(elementsize << 16) |
 			((usb_pipein(pipe) ? 1 : 0) << 8) | /* IN/OUT token */
 			0x80); /* active */
@@ -1108,7 +1104,6 @@ static struct int_queue *ehci_create_int_queue(struct usb_device *dev,
 		    cpu_to_hc32((td->qt_buffer[0] + 0x4000) & ~0xfff);
 
 		*buf = buffer + i * elementsize;
-		toggle ^= 1;
 	}
 
 	if (ehci->periodic_schedules > 0) {
@@ -1144,8 +1139,7 @@ static void *ehci_poll_int_queue(struct usb_device *dev,
 {
 	struct QH *cur = queue->current;
 	struct qTD *cur_td;
-	uint32_t token, toggle;
-	unsigned long pipe = queue->pipe;
+	uint32_t token;
 
 	/* depleted queue */
 	if (cur == NULL) {
@@ -1162,9 +1156,6 @@ static void *ehci_poll_int_queue(struct usb_device *dev,
 		return NULL;
 	}
 
-	toggle = QT_TOKEN_GET_DT(token);
-	usb_settoggle(dev, usb_pipeendpoint(pipe), usb_pipeout(pipe), toggle);
-
 	if (!(cur->qh_link & QH_LINK_TERMINATE))
 		queue->current++;
 	else
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
