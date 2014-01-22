Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x236.google.com ([2a00:1450:4008:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W66fM-0007KT-H8
 for barebox@lists.infradead.org; Wed, 22 Jan 2014 22:53:01 +0000
Received: by mail-bk0-f54.google.com with SMTP id u14so98101bkz.41
 for <barebox@lists.infradead.org>; Wed, 22 Jan 2014 14:52:38 -0800 (PST)
From: Philipp Zabel <philipp.zabel@gmail.com>
Date: Wed, 22 Jan 2014 23:52:36 +0100
Message-Id: <1390431156-4406-1-git-send-email-philipp.zabel@gmail.com>
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
Subject: [PATCH 4/4] net usb asix: add AX88772B USB ID
To: barebox@lists.infradead.org
Cc: Marek Vasut <marek.vasut@gmail.com>

Signed-off-by: Philipp Zabel <philipp.zabel@gmail.com>
---
 drivers/net/usb/asix.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/net/usb/asix.c b/drivers/net/usb/asix.c
index 085d728..b58db5d 100644
--- a/drivers/net/usb/asix.c
+++ b/drivers/net/usb/asix.c
@@ -692,6 +692,16 @@ static struct driver_info ax88772_info = {
 	.tx_fixup = asix_tx_fixup,
 };
 
+static struct driver_info ax88772b_info = {
+	.description = "ASIX AX88772B USB 2.0 Ethernet",
+	.bind = ax88772_bind,
+	.unbind = asix_unbind,
+        .flags = FLAG_ETHER | FLAG_FRAMING_AX,
+        .rx_fixup = asix_rx_fixup,
+        .tx_fixup = asix_tx_fixup,
+        .data = FLAG_EEPROM_MAC,
+};
+
 static const struct usb_device_id products [] = {
 {
 	// Linksys USB200M
@@ -773,6 +783,10 @@ static const struct usb_device_id products [] = {
 	// Cables-to-Go USB Ethernet Adapter
 	USB_DEVICE(0x0b95, 0x772a),
 	.driver_info = &ax88772_info,
+}, {
+	// LevelOne USB Fast Ethernet Adapter
+	USB_DEVICE(0x0b95, 0x772b),
+	.driver_info = &ax88772b_info,
 },
 	{ },		// END
 };
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
