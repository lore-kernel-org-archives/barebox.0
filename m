Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zf9EI-00062O-K5
 for barebox@lists.infradead.org; Thu, 24 Sep 2015 16:18:43 +0000
Received: by lahh2 with SMTP id h2so68463576lah.0
 for <barebox@lists.infradead.org>; Thu, 24 Sep 2015 09:18:20 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Thu, 24 Sep 2015 19:20:27 +0300
Message-Id: <1443111628-12758-5-git-send-email-pmamonov@gmail.com>
In-Reply-To: <1443111628-12758-1-git-send-email-pmamonov@gmail.com>
References: <1443111628-12758-1-git-send-email-pmamonov@gmail.com>
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
Subject: [PATCH v7 4/5] usb: ehci-hcd: use mdelay_non_interruptible()
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index c5f2dda..c47d1de 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -688,7 +688,7 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 				 * root
 				 */
 				ehci_powerup_fixup(ehci);
-				mdelay(50);
+				mdelay_non_interruptible(50);
 				ehci->portreset |= 1 << port;
 				/* terminate the reset */
 				ehci_writel(status_reg, reg & ~EHCI_PS_PR);
@@ -751,7 +751,7 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 		goto unknown;
 	}
 
-	mdelay(1);
+	mdelay_non_interruptible(1);
 	len = min3(srclen, (int)le16_to_cpu(req->length), length);
 	if (srcptr != NULL && len > 0)
 		memcpy(buffer, srcptr, len);
@@ -893,7 +893,7 @@ static int ehci_init(struct usb_host *host)
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
