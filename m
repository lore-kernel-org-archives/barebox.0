Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iITbj-00032j-Sq
 for barebox@lists.infradead.org; Thu, 10 Oct 2019 08:15:37 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id E3F8427E116E
 for <barebox@lists.infradead.org>; Thu, 10 Oct 2019 10:15:31 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Thu, 10 Oct 2019 10:15:02 +0200
Message-Id: <20191010081503.15254-5-jmaselbas@kalray.eu>
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
Subject: [PATCH 5/6] usb: string: size_t is unsigned
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>

Testing if size_t is negative is not needed as size_t is unsigned.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/core/usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 5dc7993ac..e34cb5bf2 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -906,7 +906,7 @@ int usb_string(struct usb_device *dev, int index, char *buf, size_t size)
 	int err;
 	unsigned int u, idx;
 
-	if (size <= 0 || !buf || !index)
+	if (!size || !buf || !index)
 		return -1;
 	buf[0] = 0;
 	tbuf = dma_alloc(USB_BUFSIZ);
-- 
2.21.0.196.g041f5ea


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
