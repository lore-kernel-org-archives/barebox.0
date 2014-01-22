Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x233.google.com ([2a00:1450:4008:c01::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W66ds-0007GA-0F
 for barebox@lists.infradead.org; Wed, 22 Jan 2014 22:51:28 +0000
Received: by mail-bk0-f51.google.com with SMTP id w10so99130bkz.38
 for <barebox@lists.infradead.org>; Wed, 22 Jan 2014 14:51:03 -0800 (PST)
From: Philipp Zabel <philipp.zabel@gmail.com>
Date: Wed, 22 Jan 2014 23:50:46 +0100
Message-Id: <1390431049-4236-2-git-send-email-philipp.zabel@gmail.com>
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
Subject: [PATCH 1/4] net usb asix: Simplify condition in rx_fixup()
To: barebox@lists.infradead.org
Cc: Marek Vasut <marek.vasut@gmail.com>

From: Marek Vasut <marek.vasut@gmail.com>

Signed-off-by: Marek Vasut <marek.vasut@gmail.com>
Signed-off-by: Philipp Zabel <philipp.zabel@gmail.com>
---
 drivers/net/usb/asix.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/usb/asix.c b/drivers/net/usb/asix.c
index 5975e2a..8b73bf9 100644
--- a/drivers/net/usb/asix.c
+++ b/drivers/net/usb/asix.c
@@ -408,7 +408,7 @@ static int asix_rx_fixup(struct usbnet *dev, void *buf, int len)
 	len -= 4;
 
 	while (len > 0) {
-		if ((short)(header & 0x0000ffff) != ~((short)((header & 0xffff0000) >> 16)))
+		if ((header & 0xffff) != ((~header >> 16) & 0xffff))
 			dev_err(&dev->edev.dev, "asix_rx_fixup() Bad Header Length\n");
 
 		/* get the packet length */
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
