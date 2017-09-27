Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dx8P5-0000yJ-0q
 for barebox@lists.infradead.org; Wed, 27 Sep 2017 09:13:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Sep 2017 11:12:45 +0200
Message-Id: <20170927091245.9476-5-s.hauer@pengutronix.de>
In-Reply-To: <20170927091245.9476-1-s.hauer@pengutronix.de>
References: <20170927091245.9476-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] usbgadget: unregister when usb_composite_probe() fails
To: Barebox List <barebox@lists.infradead.org>
Cc: Oleksij Rempel <ore@pengutronix.de>

When usb_multi_register() returns an error it can't be called again
as we do not unregister the driver properly. Fix this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/multi.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/multi.c b/drivers/usb/gadget/multi.c
index 6385c16186..6eeeb4e982 100644
--- a/drivers/usb/gadget/multi.c
+++ b/drivers/usb/gadget/multi.c
@@ -234,6 +234,8 @@ static struct usb_composite_driver multi_driver = {
 
 int usb_multi_register(struct f_multi_opts *opts)
 {
+	int ret;
+
 	if (gadget_multi_opts) {
 		pr_err("USB multi gadget already registered\n");
 		return -EBUSY;
@@ -241,7 +243,13 @@ int usb_multi_register(struct f_multi_opts *opts)
 
 	gadget_multi_opts = opts;
 
-	return usb_composite_probe(&multi_driver);
+	ret = usb_composite_probe(&multi_driver);
+	if (ret) {
+		usb_composite_unregister(&multi_driver);
+		gadget_multi_opts = NULL;
+	}
+
+	return ret;
 }
 
 void usb_multi_unregister(void)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
