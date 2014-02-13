Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDspB-0008Su-Ig
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 09:43:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 10:42:53 +0100
Message-Id: <1392284573-22410-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392284573-22410-1-git-send-email-s.hauer@pengutronix.de>
References: <1392284573-22410-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] USB gadget: dfu: propagate error from usb_gadget_poll
To: barebox@lists.infradead.org

So that the dfu command can bail out with an error when usb_gadget_poll
fails.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/dfu.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index e15fc41..5d6d400 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -682,6 +682,8 @@ static struct usb_composite_driver dfu_driver = {
 
 int usb_dfu_register(struct usb_dfu_pdata *pdata)
 {
+	int ret;
+
 	dfu_devs = pdata->alts;
 	dfu_num_alt = pdata->num_alts;
 	dfu_dev_descriptor.idVendor = pdata->idVendor;
@@ -692,7 +694,10 @@ int usb_dfu_register(struct usb_dfu_pdata *pdata)
 	usb_composite_register(&dfu_driver);
 
 	while (1) {
-		usb_gadget_poll();
+		ret = usb_gadget_poll();
+		if (ret < 0)
+			return ret;
+
 		if (ctrlc() || dfudetach)
 			goto out;
 	}
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
