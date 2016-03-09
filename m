Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward17h.cmail.yandex.net ([2a02:6b8:0:f35::a2])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1adbqE-0006n7-1k
 for barebox@lists.infradead.org; Wed, 09 Mar 2016 10:59:49 +0000
Received: from smtp2h.mail.yandex.net (smtp2h.mail.yandex.net
 [IPv6:2a02:6b8:0:f05::116])
 by forward17h.cmail.yandex.net (Yandex) with ESMTP id D1B8A21CBC
 for <barebox@lists.infradead.org>; Wed,  9 Mar 2016 13:59:08 +0300 (MSK)
From: Aleksey Kuleshov <rndfax@yandex.ru>
Date: Wed,  9 Mar 2016 13:49:54 +0300
Message-Id: <1457520594-30931-1-git-send-email-rndfax@yandex.ru>
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
Subject: [PATCH v2] ehci-hcd: remove useless timeout
To: barebox@lists.infradead.org
Cc: Aleksey Kuleshov <rndfax@yandex.ru>

This is just a regular iteration loop so no timeout needed

Signed-off-by: Aleksey Kuleshov <rndfax@yandex.ru>
---
 drivers/usb/host/ehci-hcd.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 8ea26e3..9c8613c 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -1183,7 +1183,6 @@ static int ehci_destroy_int_queue(struct usb_device *dev,
 	struct usb_host *host = dev->host;
 	struct ehci_priv *ehci = to_ehci(host);
 	struct QH *cur = ehci->periodic_queue;
-	uint64_t start;
 
 	if (disable_periodic(ehci) < 0) {
 		dev_err(&dev->dev,
@@ -1192,7 +1191,6 @@ static int ehci_destroy_int_queue(struct usb_device *dev,
 	}
 	ehci->periodic_schedules--;
 
-	start = get_time_ns();
 	while (!(cur->qh_link & cpu_to_hc32(QH_LINK_TERMINATE))) {
 		dev_dbg(&dev->dev,
 			"considering %p, with qh_link %x\n",
@@ -1205,12 +1203,6 @@ static int ehci_destroy_int_queue(struct usb_device *dev,
 			break;
 		}
 		cur = NEXT_QH(cur);
-		if (is_timeout_non_interruptible(start, 500 * MSECOND)) {
-			dev_err(&dev->dev,
-				"Timeout destroying interrupt endpoint queue\n");
-			result = -ETIMEDOUT;
-			goto out;
-		}
 	}
 
 	if (ehci->periodic_schedules > 0) {
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
