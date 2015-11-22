Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22d.google.com ([2a00:1450:4010:c04::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a0aeQ-00051g-CT
 for barebox@lists.infradead.org; Sun, 22 Nov 2015 19:50:19 +0000
Received: by lbblt2 with SMTP id lt2so86129318lbb.3
 for <barebox@lists.infradead.org>; Sun, 22 Nov 2015 11:49:56 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 22 Nov 2015 22:49:52 +0300
Message-Id: <1448221792-14823-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] net: usb: asix: fix 'no previous prototype' warning
To: barebox@lists.infradead.org

Here is the warning message:

    drivers/net/usb/asix.c:427:5: warning: no previous prototype for 'asix_rx_fixup_internal' [-Wmissing-prototypes]
     int asix_rx_fixup_internal(struct usbnet *dev, void *buf, int len,
         ^

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/net/usb/asix.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/usb/asix.c b/drivers/net/usb/asix.c
index ff80398..3ca27ff 100644
--- a/drivers/net/usb/asix.c
+++ b/drivers/net/usb/asix.c
@@ -424,7 +424,7 @@ static int ax88172_get_ethaddr(struct eth_device *edev, unsigned char *adr)
 	return 0;
 }
 
-int asix_rx_fixup_internal(struct usbnet *dev, void *buf, int len,
+static int asix_rx_fixup_internal(struct usbnet *dev, void *buf, int len,
 			   struct asix_rx_fixup_info *rx)
 {
 	int offset = 0;
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
