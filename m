Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yn3Kz-0005fK-Jl
 for barebox@lists.infradead.org; Tue, 28 Apr 2015 11:06:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 28 Apr 2015 13:05:34 +0200
Message-Id: <1430219137-8294-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1430219137-8294-1-git-send-email-s.hauer@pengutronix.de>
References: <1430219137-8294-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] usb: musb: set controller->priv pointer
To: Barebox List <barebox@lists.infradead.org>

This is used by the detect callback but never initialized.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/musb/musb_barebox.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/musb/musb_barebox.c b/drivers/usb/musb/musb_barebox.c
index 6bc232b..b1f38c3 100644
--- a/drivers/usb/musb/musb_barebox.c
+++ b/drivers/usb/musb/musb_barebox.c
@@ -139,6 +139,7 @@ int musb_register(struct musb *musb)
 	host->submit_control_msg = submit_control_msg;
 	host->submit_bulk_msg = submit_bulk_msg;
 
+	musb->controller->priv = musb;
 	musb->controller->detect = musb_detect;
 	usb_register_host(host);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
