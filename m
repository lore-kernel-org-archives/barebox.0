Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22c.google.com ([2a00:1450:4008:c01::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W66ds-0007GC-MR
 for barebox@lists.infradead.org; Wed, 22 Jan 2014 22:51:29 +0000
Received: by mail-bk0-f44.google.com with SMTP id mz12so98977bkb.17
 for <barebox@lists.infradead.org>; Wed, 22 Jan 2014 14:51:05 -0800 (PST)
From: Philipp Zabel <philipp.zabel@gmail.com>
Date: Wed, 22 Jan 2014 23:50:47 +0100
Message-Id: <1390431049-4236-3-git-send-email-philipp.zabel@gmail.com>
In-Reply-To: <1390431049-4236-1-git-send-email-philipp.zabel@gmail.com>
References: <1390431049-4236-1-git-send-email-philipp.zabel@gmail.com>
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
Subject: [PATCH 2/4] net usb asix: Use only 11 bits of header for data size
To: barebox@lists.infradead.org
Cc: Marek Vasut <marek.vasut@gmail.com>

From: Marek Vasut <marek.vasut@gmail.com>

The AX88772B uses only 11 bits of the header for the actual size. The other bits
are used for something else. This causes dmesg full of messages:

	asix_rx_fixup() Bad Header Length

This patch trims the check to only 11 bits. I believe on older chips, the
remaining 5 top bits are unused.

Signed-off-by: Marek Vasut <marek.vasut@gmail.com>
Signed-off-by: Philipp Zabel <philipp.zabel@gmail.com>
---
 drivers/net/usb/asix.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/usb/asix.c b/drivers/net/usb/asix.c
index 8b73bf9..003ebba 100644
--- a/drivers/net/usb/asix.c
+++ b/drivers/net/usb/asix.c
@@ -408,11 +408,11 @@ static int asix_rx_fixup(struct usbnet *dev, void *buf, int len)
 	len -= 4;
 
 	while (len > 0) {
-		if ((header & 0xffff) != ((~header >> 16) & 0xffff))
+		if ((header & 0x07ff) != ((~header >> 16) & 0x07ff))
 			dev_err(&dev->edev.dev, "asix_rx_fixup() Bad Header Length\n");
 
 		/* get the packet length */
-		size = (unsigned short) (header & 0x0000ffff);
+		size = (unsigned short) (header & 0x07ff);
 
 		if (size > 1514) {
 			dev_err(&dev->edev.dev, "asix_rx_fixup() Bad RX Length %d\n", size);
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
