Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFgZw-0001rM-Uz
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 06:54:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Apr 2012 08:53:47 +0200
Message-Id: <1333608829-13213-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1333608829-13213-1-git-send-email-s.hauer@pengutronix.de>
References: <1333608829-13213-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/5] USB gadget pxa: Fix compiler warning
To: barebox@lists.infradead.org

Fixes:

drivers/usb/gadget/pxa27x_udc.c:1263:13: warning: 'pxa27x_change_interface' defined but not used [-Wunused-function]

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/pxa27x_udc.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/pxa27x_udc.c b/drivers/usb/gadget/pxa27x_udc.c
index 26be29d..87dcfac 100644
--- a/drivers/usb/gadget/pxa27x_udc.c
+++ b/drivers/usb/gadget/pxa27x_udc.c
@@ -1260,7 +1260,7 @@ static void pxa27x_change_configuration(struct pxa_udc *udc, int config)
 	udc->driver->setup(&udc->gadget, &req);
 }
 
-static void pxa27x_change_interface(struct pxa_udc *udc, int iface, int alt)
+static void __maybe_unused pxa27x_change_interface(struct pxa_udc *udc, int iface, int alt)
 {
 	struct usb_ctrlrequest  req;
 
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
