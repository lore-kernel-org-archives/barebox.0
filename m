Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X5Vmt-0004eJ-UL
 for barebox@lists.infradead.org; Fri, 11 Jul 2014 08:02:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Jul 2014 10:02:11 +0200
Message-Id: <1405065733-31407-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405065733-31407-1-git-send-email-s.hauer@pengutronix.de>
References: <1405065733-31407-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] serial: imx: Determine device name from device tree
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_imx.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index cb10627..474bfaf 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -313,6 +313,7 @@ static int imx_serial_probe(struct device_d *dev)
 	uint32_t val;
 	struct imx_serial_devtype_data *devtype;
 	int ret;
+	const char *devname;
 
 	ret = dev_get_drvdata(dev, (unsigned long *)&devtype);
 	if (ret)
@@ -337,6 +338,9 @@ static int imx_serial_probe(struct device_d *dev)
 	cdev->flush = imx_serial_flush;
 	cdev->setbrg = imx_serial_setbaudrate;
 	cdev->linux_console_name = "ttymxc";
+	devname = of_alias_get(dev->device_node);
+	if (devname)
+		cdev->devname = xstrdup(devname);
 
 	imx_serial_init_port(cdev);
 
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
