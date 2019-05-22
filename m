Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLlf-0002IG-L6
 for barebox@lists.infradead.org; Wed, 22 May 2019 07:34:36 +0000
Received: by mail-pg1-x544.google.com with SMTP id o11so678174pgm.13
 for <barebox@lists.infradead.org>; Wed, 22 May 2019 00:34:31 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 22 May 2019 00:34:07 -0700
Message-Id: <20190522073414.9308-12-andrew.smirnov@gmail.com>
In-Reply-To: <20190522073414.9308-1-andrew.smirnov@gmail.com>
References: <20190522073414.9308-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 11/18] usb: host: ehci: Drop needless assignments in
 ehci_submit_async()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Neither of those is necessary, since both will be overwritten further
down in the code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 7194a48c0..03ab56b30 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -274,7 +274,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	uint32_t endpt, token, usbsts;
 	uint32_t status;
 	uint32_t c, toggle;
-	int ret = 0;
+	int ret;
 
 
 	dev_dbg(ehci->dev, "pipe=%lx, buffer=%p, length=%d, req=%p\n", pipe,
@@ -323,7 +323,6 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	qh->qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
 	qh->qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
 
-	td = NULL;
 	tdp = &qh->qt_next;
 
 	toggle =
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
