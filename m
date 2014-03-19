Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WQIFK-0006bC-MW
 for barebox@lists.infradead.org; Wed, 19 Mar 2014 15:17:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Mar 2014 16:17:09 +0100
Message-Id: <1395242230-6947-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] usb: gadget: set composite to NULL when
 usb_gadget_register_driver fails
To: barebox@lists.infradead.org

From: Lucas Stach <dev@lynxeye.de>

So that it can be tried later again.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/composite.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/composite.c b/drivers/usb/gadget/composite.c
index 11b6c18..71d0ecf 100644
--- a/drivers/usb/gadget/composite.c
+++ b/drivers/usb/gadget/composite.c
@@ -994,6 +994,8 @@ static struct usb_gadget_driver composite_driver = {
  */
 int usb_composite_register(struct usb_composite_driver *driver)
 {
+	int ret;
+
 	if (!driver || !driver->dev || !driver->bind || composite)
 		return -EINVAL;
 
@@ -1002,7 +1004,12 @@ int usb_composite_register(struct usb_composite_driver *driver)
 	composite_driver.function =  (char *) driver->name;
 	composite = driver;
 
-	return usb_gadget_register_driver(&composite_driver);
+	ret = usb_gadget_register_driver(&composite_driver);
+
+	if (ret)
+		composite = NULL;
+
+	return ret;
 }
 
 /**
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
