Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iITbj-00032f-Sr
 for barebox@lists.infradead.org; Thu, 10 Oct 2019 08:15:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id C20A227E1136
 for <barebox@lists.infradead.org>; Thu, 10 Oct 2019 10:15:31 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Thu, 10 Oct 2019 10:15:01 +0200
Message-Id: <20191010081503.15254-4-jmaselbas@kalray.eu>
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
Subject: [PATCH 4/6] usb: string: Use le16_to_cpu for langid
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>

This might fix an endianness bug when the cpu is big-endian
as the string_langid will be converted with `cpu_to_le16` when
sending a control message to get a string descriptor.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/core/usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index e14b89b5e..5dc7993ac 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -925,7 +925,7 @@ int usb_string(struct usb_device *dev, int index, char *buf, size_t size)
 			goto error;
 		} else {
 			dev->have_langid = -1;
-			dev->string_langid = tbuf[2] | (tbuf[3] << 8);
+			dev->string_langid = le16_to_cpu(*((__le16 *)&buf[2]));
 				/* always use the first langid listed */
 			pr_debug("USB device number %d default " \
 				   "language ID 0x%x\n",
-- 
2.21.0.196.g041f5ea


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
