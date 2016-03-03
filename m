Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward16h.cmail.yandex.net ([87.250.230.158])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abSq9-0004r2-EH
 for barebox@lists.infradead.org; Thu, 03 Mar 2016 12:58:51 +0000
Received: from smtp2h.mail.yandex.net (smtp2h.mail.yandex.net [84.201.187.145])
 by forward16h.cmail.yandex.net (Yandex) with ESMTP id 1C77220118
 for <barebox@lists.infradead.org>; Thu,  3 Mar 2016 15:58:12 +0300 (MSK)
From: Aleksey Kuleshov <rndfax@yandex.ru>
Date: Thu,  3 Mar 2016 15:48:52 +0300
Message-Id: <1457009332-27205-1-git-send-email-rndfax@yandex.ru>
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
Subject: [PATCH] ehci-hcd: remove useless timeout
To: barebox@lists.infradead.org
Cc: Aleksey Kuleshov <rndfax@yandex.ru>

---
 drivers/usb/host/ehci-hcd.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 862444b..9327015 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -1189,7 +1189,6 @@ static int ehci_destroy_int_queue(struct usb_device *dev,
 	struct usb_host *host = dev->host;
 	struct ehci_priv *ehci = to_ehci(host);
 	struct QH *cur = ehci->periodic_queue;
-	uint64_t start;
 
 	if (disable_periodic(ehci) < 0) {
 		dev_err(&dev->dev,
@@ -1198,7 +1197,6 @@ static int ehci_destroy_int_queue(struct usb_device *dev,
 	}
 	ehci->periodic_schedules--;
 
-	start = get_time_ns();
 	while (!(cur->qh_link & cpu_to_hc32(QH_LINK_TERMINATE))) {
 		dev_dbg(&dev->dev,
 			"considering %p, with qh_link %x\n",
@@ -1211,12 +1209,6 @@ static int ehci_destroy_int_queue(struct usb_device *dev,
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
