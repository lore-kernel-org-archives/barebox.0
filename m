Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iITbj-00032g-TN
 for barebox@lists.infradead.org; Thu, 10 Oct 2019 08:15:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id C993127E121B
 for <barebox@lists.infradead.org>; Thu, 10 Oct 2019 10:15:31 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Thu, 10 Oct 2019 10:15:00 +0200
Message-Id: <20191010081503.15254-3-jmaselbas@kalray.eu>
In-Reply-To: <20191010081503.15254-1-jmaselbas@kalray.eu>
References: <20191010081503.15254-1-jmaselbas@kalray.eu>
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
Subject: [PATCH 3/6] usb: string: Use dma_alloc instead of a local buffer
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>

Stack allocated buffer can cause difficulties for some SoCs
use dma_alloc as done in usb_new_device.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/core/usb.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index d29cd1328..e14b89b5e 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -902,7 +902,6 @@ static int usb_string_sub(struct usb_device *dev, unsigned int langid,
  */
 int usb_string(struct usb_device *dev, int index, char *buf, size_t size)
 {
-	unsigned char mybuf[USB_BUFSIZ];
 	unsigned char *tbuf;
 	int err;
 	unsigned int u, idx;
@@ -910,7 +909,7 @@ int usb_string(struct usb_device *dev, int index, char *buf, size_t size)
 	if (size <= 0 || !buf || !index)
 		return -1;
 	buf[0] = 0;
-	tbuf = &mybuf[0];
+	tbuf = dma_alloc(USB_BUFSIZ);
 
 	/* get langid for strings if it's not yet known */
 	if (!dev->have_langid) {
@@ -918,10 +917,12 @@ int usb_string(struct usb_device *dev, int index, char *buf, size_t size)
 		if (err < 0) {
 			pr_debug("error getting string descriptor 0 " \
 				   "(error=%lx)\n", dev->status);
-			return -1;
+			err = -1;
+			goto error;
 		} else if (tbuf[0] < 4) {
 			pr_debug("string descriptor 0 too short\n");
-			return -1;
+			err = -1;
+			goto error;
 		} else {
 			dev->have_langid = -1;
 			dev->string_langid = tbuf[2] | (tbuf[3] << 8);
@@ -934,7 +935,7 @@ int usb_string(struct usb_device *dev, int index, char *buf, size_t size)
 
 	err = usb_string_sub(dev, dev->string_langid, index, tbuf);
 	if (err < 0)
-		return err;
+		goto error;
 
 	size--;		/* leave room for trailing NULL char in output buffer */
 	for (idx = 0, u = 2; u < err; u += 2) {
@@ -947,6 +948,10 @@ int usb_string(struct usb_device *dev, int index, char *buf, size_t size)
 	}
 	buf[idx] = 0;
 	err = idx;
+
+error:
+	dma_free(tbuf);
+
 	return err;
 }
 
-- 
2.21.0.196.g041f5ea


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
