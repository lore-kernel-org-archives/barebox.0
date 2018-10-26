Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gFyyy-0006v3-NO
 for barebox@lists.infradead.org; Fri, 26 Oct 2018 10:04:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Oct 2018 12:04:32 +0200
Message-Id: <20181026100432.27621-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] USB: gadget: prevent unnecessary warning message
To: Barebox List <barebox@lists.infradead.org>

The USB gadget autostart code issues a warning when no otg device
exists:

Cannot set parameter otg.mode: No such device

This is unnecessary since there may be no otg device at all, but only a
gadget device. Drop that warning by checking if there is a otg device
first.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/autostart.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/autostart.c b/drivers/usb/gadget/autostart.c
index f640a9667d..272b0ea8fa 100644
--- a/drivers/usb/gadget/autostart.c
+++ b/drivers/usb/gadget/autostart.c
@@ -35,6 +35,7 @@ static int fastboot_bbu;
 static int usbgadget_autostart(void)
 {
 	struct f_multi_opts *opts;
+	struct device_d *dev;
 	int ret;
 
 	if (!autostart)
@@ -61,7 +62,9 @@ static int usbgadget_autostart(void)
 		return 0;
 	}
 
-	setenv("otg.mode", "peripheral");
+	dev = get_device_by_name("otg");
+	if (dev)
+		dev_set_param(dev, "mode", "peripheral");
 
 	ret = usb_multi_register(opts);
 	if (ret)
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
