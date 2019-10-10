Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iITbm-00034H-MN
 for barebox@lists.infradead.org; Thu, 10 Oct 2019 08:15:40 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 1A99F27E10B4
 for <barebox@lists.infradead.org>; Thu, 10 Oct 2019 10:15:32 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Thu, 10 Oct 2019 10:15:03 +0200
Message-Id: <20191010081503.15254-6-jmaselbas@kalray.eu>
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
Subject: [PATCH 6/6] usb: string: Minor changes
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>

This is mostly cosmetic changes except it adds a test in case
dma_alloc failed, the boolean have_langid will will now take the
value 1 when set (instead of -1) and now characters with a value
above 0x7f (outside ASCII range) will also be converted to '?'.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/core/usb.c | 51 +++++++++++++++++++++---------------------
 include/usb/usb.h      |  2 +-
 2 files changed, 26 insertions(+), 27 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index e34cb5bf2..cdcab6082 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -900,31 +900,32 @@ static int usb_string_sub(struct usb_device *dev, unsigned int langid,
  * Get string index and translate it to ascii.
  * returns string length (> 0) or error (< 0)
  */
-int usb_string(struct usb_device *dev, int index, char *buf, size_t size)
+int usb_string(struct usb_device *dev, int index, char *str, size_t size)
 {
-	unsigned char *tbuf;
-	int err;
-	unsigned int u, idx;
+	unsigned char *buf;
+	unsigned int i, u;
+	int ret;
+
+	buf = dma_alloc(USB_BUFSIZ);
 
-	if (!size || !buf || !index)
+	if (!size || !str || !buf || !index)
 		return -1;
-	buf[0] = 0;
-	tbuf = dma_alloc(USB_BUFSIZ);
+	str[0] = 0;
 
 	/* get langid for strings if it's not yet known */
 	if (!dev->have_langid) {
-		err = usb_string_sub(dev, 0, 0, tbuf);
-		if (err < 0) {
+		ret = usb_string_sub(dev, 0, 0, buf);
+		if (ret < 0) {
 			pr_debug("error getting string descriptor 0 " \
 				   "(error=%lx)\n", dev->status);
-			err = -1;
+			ret = -1;
 			goto error;
-		} else if (tbuf[0] < 4) {
+		} else if (buf[0] < 4) {
 			pr_debug("string descriptor 0 too short\n");
-			err = -1;
+			ret = -1;
 			goto error;
 		} else {
-			dev->have_langid = -1;
+			dev->have_langid = 1;
 			dev->string_langid = le16_to_cpu(*((__le16 *)&buf[2]));
 				/* always use the first langid listed */
 			pr_debug("USB device number %d default " \
@@ -933,26 +934,24 @@ int usb_string(struct usb_device *dev, int index, char *buf, size_t size)
 		}
 	}
 
-	err = usb_string_sub(dev, dev->string_langid, index, tbuf);
-	if (err < 0)
+	ret = usb_string_sub(dev, dev->string_langid, index, buf);
+	if (ret < 0)
 		goto error;
 
-	size--;		/* leave room for trailing NULL char in output buffer */
-	for (idx = 0, u = 2; u < err; u += 2) {
-		if (idx >= size)
-			break;
-		if (tbuf[u+1])			/* high byte */
-			buf[idx++] = '?';  /* non-ASCII character */
+	size--;	/* leave room for trailing NULL char in output buffer */
+	for (i = 0, u = 2; u < ret && i < size; i++, u += 2) {
+		if (buf[u] & 0x80 || buf[u + 1]) /* non-ASCII character */
+			str[i] = '?';
 		else
-			buf[idx++] = tbuf[u];
+			str[i] = buf[u];
 	}
-	buf[idx] = 0;
-	err = idx;
 
+	str[i] = 0;
+	ret = i;
 error:
-	dma_free(tbuf);
+	dma_free(buf);
 
-	return err;
+	return ret;
 }
 
 int usb_driver_register(struct usb_driver *drv)
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 4698308df..e9e708867 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -181,7 +181,7 @@ int usb_get_class_descriptor(struct usb_device *dev, int ifnum,
 			unsigned char type, unsigned char id, void *buf,
 			int size);
 int usb_clear_halt(struct usb_device *dev, int pipe);
-int usb_string(struct usb_device *dev, int index, char *buf, size_t size);
+int usb_string(struct usb_device *dev, int index, char *str, size_t size);
 int usb_set_interface(struct usb_device *dev, int interface, int alternate);
 
 void usb_rescan(void);
-- 
2.21.0.196.g041f5ea


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
