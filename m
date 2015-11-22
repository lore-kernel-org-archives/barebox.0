Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22c.google.com ([2a00:1450:4010:c04::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a0ae8-0004tX-UB
 for barebox@lists.infradead.org; Sun, 22 Nov 2015 19:50:02 +0000
Received: by lbbsy6 with SMTP id sy6so85595628lbb.2
 for <barebox@lists.infradead.org>; Sun, 22 Nov 2015 11:49:38 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 22 Nov 2015 22:49:27 +0300
Message-Id: <1448221767-14769-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] net: usb: asix: make rx_fixup ax_skb buffer aligned
To: barebox@lists.infradead.org

ax_skb receive buffer unalignment leads to consequent
unalignment data access in network stack routines,
especially in net_checksum().

By-turn unalignment data accesses lead to performance penalty.
Moreover on classic MIPS CPUs without hardware unalignment access
support this leads to undesirable exceptions.

At the moment barebox on MIPS can't parry these unalignment access
exceptions, so the Asix USB Ethernet chips, that need receive
fixup workaround, are completely unusable on MIPS without this patch.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/net/usb/asix.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/usb/asix.c b/drivers/net/usb/asix.c
index 4c53a14..ff80398 100644
--- a/drivers/net/usb/asix.c
+++ b/drivers/net/usb/asix.c
@@ -158,7 +158,7 @@ struct asix_rx_fixup_info {
 	u16 size;
 	u16 offset;
 	bool split_head;
-	unsigned char ax_skb[RX_FIXUP_SIZE];
+	unsigned char ax_skb[RX_FIXUP_SIZE] __aligned(2);
 };
 
 struct asix_common_private {
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
