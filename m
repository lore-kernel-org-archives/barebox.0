Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZZeto-0003Lw-Se
 for barebox@lists.infradead.org; Wed, 09 Sep 2015 12:54:53 +0000
Received: by lbbmp1 with SMTP id mp1so5093463lbb.1
 for <barebox@lists.infradead.org>; Wed, 09 Sep 2015 05:54:30 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Wed,  9 Sep 2015 15:56:39 +0300
Message-Id: <1441803399-1790-1-git-send-email-pmamonov@gmail.com>
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
Subject: [PATCH] usb: ehci-hcd: use is_timeout_non_interruptible()
To: barebox@lists.infradead.org, s.hauer@pengutronix.de
Cc: Peter Mamonov <pmamonov@gmail.com>

Use is_timeout_non_interruptible() intead of is_timeout()
to avoid re-entering ehci-hcd functions from pollers,
registered by usb drivers.

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 1077ac4..7ca77bf 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -137,7 +137,7 @@ static int handshake(uint32_t *ptr, uint32_t mask, uint32_t done, int usec)
 		result &= mask;
 		if (result == done)
 			return 0;
-		if (is_timeout(start, usec * USECOND))
+		if (is_timeout_non_interruptible(start, usec * USECOND))
 			return -ETIMEDOUT;
 	}
 }
@@ -357,7 +357,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	do {
 		token = hc32_to_cpu(vtd->qt_token);
 		token = hc32_to_cpu(__raw_readl((void *)&vtd->qt_token));
-		if (is_timeout(start, timeout_val)) {
+		if (is_timeout_non_interruptible(start, timeout_val)) {
 			/* Disable async schedule. */
 			cmd = ehci_readl(&ehci->hcor->or_usbcmd);
 			cmd &= ~CMD_ASE;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
