Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gPCJA-0002Ok-VV
 for barebox@lists.infradead.org; Tue, 20 Nov 2018 20:07:44 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Tue, 20 Nov 2018 21:07:11 +0100
Message-Id: <20181120200714.3692-7-linux@rempel-privat.de>
In-Reply-To: <20181120200714.3692-1-linux@rempel-privat.de>
References: <20181120200714.3692-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 6/9] usb: at91_udc: remove useless NULL check
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

if _ep or ep is NULL, we would get at least in two places
before this test a NULL pointer dereference.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 drivers/usb/gadget/at91_udc.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
index 729f75212..243656d44 100644
--- a/drivers/usb/gadget/at91_udc.c
+++ b/drivers/usb/gadget/at91_udc.c
@@ -288,8 +288,7 @@ static int at91_ep_enable(struct usb_ep *_ep,
 	u16		maxpacket;
 	u32		tmp;
 
-	if (!_ep || !ep
-			|| !desc || ep->desc
+	if (!desc || ep->desc
 			|| _ep->name == ep0name
 			|| desc->bDescriptorType != USB_DT_ENDPOINT
 			|| (maxpacket = le16_to_cpu(desc->wMaxPacketSize)) == 0
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
