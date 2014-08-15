Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XIDWk-00064O-49
 for barebox@lists.infradead.org; Fri, 15 Aug 2014 09:10:26 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Fri, 15 Aug 2014 11:10:03 +0200
Message-Id: <1408093803-17371-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: [PATCH] serial: imx: Fix for non-devicetree boards
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Commit 3843bfd0ab77eaf125ca617922927b61fc8ded74
"serial: imx: Determine device name from device tree"
broke this driver for non-devicetree boards, since
of_alias_get may not be called with a NULL pointer
as first argument.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/serial/serial_imx.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index 474bfaf..e379f29 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -338,9 +338,11 @@ static int imx_serial_probe(struct device_d *dev)
 	cdev->flush = imx_serial_flush;
 	cdev->setbrg = imx_serial_setbaudrate;
 	cdev->linux_console_name = "ttymxc";
-	devname = of_alias_get(dev->device_node);
-	if (devname)
-		cdev->devname = xstrdup(devname);
+	if (dev->device_node) {
+		devname = of_alias_get(dev->device_node);
+		if (devname)
+			cdev->devname = xstrdup(devname);
+	}
 
 	imx_serial_init_port(cdev);
 
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
