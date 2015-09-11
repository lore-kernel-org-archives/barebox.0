Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZaS5U-00088q-9q
 for barebox@lists.infradead.org; Fri, 11 Sep 2015 17:26:13 +0000
Received: by lahg1 with SMTP id g1so22289151lah.1
 for <barebox@lists.infradead.org>; Fri, 11 Sep 2015 10:25:50 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Fri, 11 Sep 2015 20:27:55 +0300
Message-Id: <1441992476-11703-3-git-send-email-pmamonov@gmail.com>
In-Reply-To: <1441992476-11703-1-git-send-email-pmamonov@gmail.com>
References: <1441992476-11703-1-git-send-email-pmamonov@gmail.com>
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
Subject: [RFC v2 2/3] WIP: usb: ehci-hcd: use non-interruptible version of
 mdelay()
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index c9bf703..3d89ec5 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -133,6 +133,14 @@ static struct descriptor {
 	},
 };
 
+static inline void mdelay_ni(unsigned long msecs)
+{
+	uint64_t start = get_time_ns();
+
+	while (!is_timeout_non_interruptible(start, msecs * MSECOND))
+		;
+}
+
 #define ehci_is_TDI()	(ehci->flags & EHCI_HAS_TT)
 
 static int handshake(uint32_t *ptr, uint32_t mask, uint32_t done, int usec)
@@ -673,7 +681,7 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 				 * root
 				 */
 				ehci_powerup_fixup(ehci);
-				mdelay(50);
+				mdelay_ni(50);
 				ehci->portreset |= 1 << port;
 				/* terminate the reset */
 				ehci_writel(status_reg, reg & ~EHCI_PS_PR);
@@ -736,7 +744,7 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 		goto unknown;
 	}
 
-	mdelay(1);
+	mdelay_ni(1);
 	len = min3(srclen, (int)le16_to_cpu(req->length), length);
 	if (srcptr != NULL && len > 0)
 		memcpy(buffer, srcptr, len);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
