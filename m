Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ek5DO-0005x3-UV
 for barebox@lists.infradead.org; Fri, 09 Feb 2018 09:43:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Feb 2018 10:43:13 +0100
Message-Id: <20180209094316.8523-7-s.hauer@pengutronix.de>
In-Reply-To: <20180209094316.8523-1-s.hauer@pengutronix.de>
References: <20180209094316.8523-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/9] usb: gadget: fastboot: fix typo
To: Barebox List <barebox@lists.infradead.org>

s/correspoinding/corresponding/

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index db9b906b2b..e474543e2c 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -71,7 +71,7 @@ struct fb_variable {
 struct f_fastboot {
 	struct usb_function func;
 
-	/* IN/OUT EP's and correspoinding requests */
+	/* IN/OUT EP's and corresponding requests */
 	struct usb_ep *in_ep, *out_ep;
 	struct usb_request *in_req, *out_req;
 	struct file_list *files;
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
