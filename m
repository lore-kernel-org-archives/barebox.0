Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WQIFK-0006bB-MX
 for barebox@lists.infradead.org; Wed, 19 Mar 2014 15:17:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Mar 2014 16:17:10 +0100
Message-Id: <1395242230-6947-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1395242230-6947-1-git-send-email-s.hauer@pengutronix.de>
References: <1395242230-6947-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] usb: gadget: propagate error code from
 usb_composite_register
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/dfu.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index 76b5def..d0f2155 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -703,7 +703,9 @@ int usb_dfu_register(struct usb_dfu_pdata *pdata)
 	strings_dev[STRING_MANUFACTURER_IDX].s = pdata->manufacturer;
 	strings_dev[STRING_PRODUCT_IDX].s = pdata->productname;
 
-	usb_composite_register(&dfu_driver);
+	ret = usb_composite_register(&dfu_driver);
+	if (ret)
+		return ret;
 
 	while (1) {
 		ret = usb_gadget_poll();
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
