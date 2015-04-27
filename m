Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from janus.medel.com ([195.189.166.130])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YmhKs-00069c-Gr
 for barebox@lists.infradead.org; Mon, 27 Apr 2015 11:36:29 +0000
From: Mayur Nande <Mayur.Nande@medel.com>
Date: Mon, 27 Apr 2015 11:36:01 +0000
Content-Language: en-US
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
Message-ID: <E1YmhKy-0006Jt-Op@bombadil.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] net: usb: asix: Add D-link DUB-E100 H/W Ver C1 support
To: "'barebox@lists.infradead.org'" <barebox@lists.infradead.org>

Hello!

This patch adds support for USB ethernet adapter D-Link DUB-E100 H/W Rev C1. I tested this on
Beagleboneblack Rev A6A and our custom h/w based on i.mx6 Phytec phycore module. More 
information about the adapter is here: 
http://us.dlink.com/products/connect/high-speed-usb-2-0-fast-ethernet-adapter/ 
 
Signed-off-by: Mayur Nande <mayur.nande@medel.com>
---
 drivers/net/usb/asix.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/usb/asix.c b/drivers/net/usb/asix.c
index 14a8c76..7cce5b9 100644
--- a/drivers/net/usb/asix.c
+++ b/drivers/net/usb/asix.c
@@ -846,6 +846,10 @@ static const struct usb_device_id products [] = {
 	// LevelOne USB Fast Ethernet Adapter
 	USB_DEVICE(0x0b95, 0x772b),
 	.driver_info = &ax88772b_info,
+}, {
+	// DLink DUB-E100 H/W Ver C1
+	USB_DEVICE(0x2001, 0x1a02),
+	.driver_info = &ax88772_info,
 },
 	{ },		// END
 };
--
1.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
