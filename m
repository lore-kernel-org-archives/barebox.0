Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAuiC-00010s-H6
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 06:12:21 +0000
Received: from mail94.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 464101000B33
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 07:11:58 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 13 Jan 2015 07:11:49 +0100
Message-Id: <1421129509-30331-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH v2] console: allow to specify the device id
To: barebox@lists.infradead.org

so we can use dynamic number id with specific devname

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
v2:
add missing imx

Best Regards,
J.
 common/console.c              | 2 +-
 drivers/serial/serial_imx.c   | 4 +++-
 drivers/usb/gadget/u_serial.c | 1 +
 include/console.h             | 1 +
 net/netconsole.c              | 1 +
 5 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/common/console.c b/common/console.c
index c092621..0c32f06 100644
--- a/common/console.c
+++ b/common/console.c
@@ -194,7 +194,7 @@ int console_register(struct console_device *newcdev)
 		console_init_early();
 
 	if (newcdev->devname) {
-		dev->id = DEVICE_ID_SINGLE;
+		dev->id = newcdev->devid;
 		strcpy(dev->name, newcdev->devname);
 	} else {
 		dev->id = DEVICE_ID_DYNAMIC;
diff --git a/drivers/serial/serial_imx.c b/drivers/serial/serial_imx.c
index 21189cb..cd954c2 100644
--- a/drivers/serial/serial_imx.c
+++ b/drivers/serial/serial_imx.c
@@ -340,8 +340,10 @@ static int imx_serial_probe(struct device_d *dev)
 	cdev->linux_console_name = "ttymxc";
 	if (dev->device_node) {
 		devname = of_alias_get(dev->device_node);
-		if (devname)
+		if (devname) {
 			cdev->devname = xstrdup(devname);
+			cdev->devid = DEVICE_ID_SINGLE;
+		}
 	}
 
 	imx_serial_init_port(cdev);
diff --git a/drivers/usb/gadget/u_serial.c b/drivers/usb/gadget/u_serial.c
index 8c58746..1e5e809 100644
--- a/drivers/usb/gadget/u_serial.c
+++ b/drivers/usb/gadget/u_serial.c
@@ -530,6 +530,7 @@ int gserial_connect(struct gserial *gser, u8 port_num)
 	cdev->flush = serial_flush;
 	cdev->setbrg = serial_setbaudrate;
 	cdev->devname = "usbserial";
+	cdev->devid = DEVICE_ID_SINGLE;
 
 	status = console_register(cdev);
 	if (status)
diff --git a/include/console.h b/include/console.h
index beafb4d..72b4a44 100644
--- a/include/console.h
+++ b/include/console.h
@@ -47,6 +47,7 @@ struct console_device {
 	int (*set_active)(struct console_device *cdev, unsigned active);
 
 	char *devname;
+	int devid;
 
 	struct list_head list;
 
diff --git a/net/netconsole.c b/net/netconsole.c
index 99b9984..0ee6a76 100644
--- a/net/netconsole.c
+++ b/net/netconsole.c
@@ -154,6 +154,7 @@ static int netconsole_init(void)
 	cdev->putc = nc_putc;
 	cdev->getc = nc_getc;
 	cdev->devname = "netconsole";
+	cdev->devid = DEVICE_ID_SINGLE;
 	cdev->set_active = nc_set_active;
 
 	g_priv = priv;
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
