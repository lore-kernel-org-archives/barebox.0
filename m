Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKrpP-0001Rm-Sm
 for barebox@lists.infradead.org; Wed, 06 Jul 2016 18:45:44 +0000
Received: from antimon.Speedport_W_504V_Typ_A (p5483101C.dip0.t-ipconnect.de
 [84.131.16.28]) by lynxeye.de (Postfix) with ESMTPA id 4630726C2002
 for <barebox@lists.infradead.org>; Wed,  6 Jul 2016 20:44:47 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed,  6 Jul 2016 20:44:35 +0200
Message-Id: <1467830680-5909-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1467830680-5909-1-git-send-email-dev@lynxeye.de>
References: <1467830680-5909-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 2/7] USB: gadget: composite: avoid possible NULL ptr
 dereference
To: barebox@lists.infradead.org

Check if g is valid before trying to dereference it.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/usb/gadget/composite.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/composite.c b/drivers/usb/gadget/composite.c
index 9e38ac4..1cfc49d 100644
--- a/drivers/usb/gadget/composite.c
+++ b/drivers/usb/gadget/composite.c
@@ -86,7 +86,7 @@ int config_ep_by_speed(struct usb_gadget *g,
 			struct usb_function *f,
 			struct usb_ep *_ep)
 {
-	struct usb_composite_dev	*cdev = get_gadget_data(g);
+	struct usb_composite_dev *cdev;
 	struct usb_endpoint_descriptor *chosen_desc = NULL;
 	struct usb_descriptor_header **speed_desc = NULL;
 
@@ -98,6 +98,8 @@ int config_ep_by_speed(struct usb_gadget *g,
 	if (!g || !f || !_ep)
 		return -EIO;
 
+	cdev = get_gadget_data(g);
+
 	/* select desired speed */
 	switch (g->speed) {
 	case USB_SPEED_SUPER:
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
