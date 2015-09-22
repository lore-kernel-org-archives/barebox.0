Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x230.google.com ([2a00:1450:4010:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZeQ3b-0005lK-7R
 for barebox@lists.infradead.org; Tue, 22 Sep 2015 16:04:39 +0000
Received: by lahg1 with SMTP id g1so18831483lah.1
 for <barebox@lists.infradead.org>; Tue, 22 Sep 2015 09:04:17 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Tue, 22 Sep 2015 18:58:33 +0300
Message-Id: <1442937514-19675-5-git-send-email-pmamonov@gmail.com>
In-Reply-To: <1442937514-19675-1-git-send-email-pmamonov@gmail.com>
References: <1442937514-19675-1-git-send-email-pmamonov@gmail.com>
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
Subject: [PATCH 4/5] usb: ehci-hcd: use mdelay_non_inerruptible()
To: barebox@lists.infradead.org
Cc: pmamonov@gmail.com

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index d6df7b8..03d6150 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -684,7 +684,7 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 				 * root
 				 */
 				ehci_powerup_fixup(ehci);
-				mdelay(50);
+				mdelay_non_interruptible(50);
 				ehci->portreset |= 1 << port;
 				/* terminate the reset */
 				ehci_writel(status_reg, reg & ~EHCI_PS_PR);
@@ -747,7 +747,7 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 		goto unknown;
 	}
 
-	mdelay(1);
+	mdelay_non_interruptible(1);
 	len = min3(srclen, (int)le16_to_cpu(req->length), length);
 	if (srcptr != NULL && len > 0)
 		memcpy(buffer, srcptr, len);
@@ -889,7 +889,7 @@ static int ehci_init(struct usb_host *host)
 	ehci_writel(&ehci->hcor->or_configflag, cmd);
 	/* unblock posted write */
 	cmd = ehci_readl(&ehci->hcor->or_usbcmd);
-	mdelay(5);
+	mdelay_non_interruptible(5);
 
 	ehci->rootdev = 0;
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
