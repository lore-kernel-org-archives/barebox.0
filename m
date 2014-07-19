Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X8Qkr-0003it-Aj
 for barebox@lists.infradead.org; Sat, 19 Jul 2014 09:16:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 19 Jul 2014 11:15:58 +0200
Message-Id: <1405761367-23724-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405761367-23724-1-git-send-email-s.hauer@pengutronix.de>
References: <1405761367-23724-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/12] USB: host: simplify usb_new_device
To: barebox@lists.infradead.org

usb_new_device tries to find the port number it is attached to
by iterating over the parents children and using the loop counter
index as port number. Instead, just use the portnr field in struct
usb_device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/usb.c | 23 +++++------------------
 1 file changed, 5 insertions(+), 18 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 710f611..4f5c0ed 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -297,7 +297,6 @@ static int usb_new_device(struct usb_device *dev)
 	int tmp;
 	void *buf;
 	struct usb_device_descriptor *desc;
-	int port = -1;
 	struct usb_device *parent = dev->parent;
 	unsigned short portstatus;
 	char str[16];
@@ -338,24 +337,10 @@ static int usb_new_device(struct usb_device *dev)
 
 	/* find the port number we're at */
 	if (parent) {
-		int j;
-
-		for (j = 0; j < parent->maxchild; j++) {
-			if (parent->children[j] == dev) {
-				port = j;
-				break;
-			}
-		}
-		if (port < 0) {
-			printf("%s: cannot locate device's port.\n", __func__);
-			err = -ENODEV;
-			goto err_out;
-		}
-
 		/* reset the port for the second time */
-		err = hub_port_reset(dev->parent, port, &portstatus);
+		err = hub_port_reset(dev->parent, dev->portnr - 1, &portstatus);
 		if (err < 0) {
-			printf("\n     Couldn't reset port %i\n", port);
+			printf("\n     Couldn't reset port %i\n", dev->portnr);
 			goto err_out;
 		}
 	}
@@ -433,7 +418,7 @@ static int usb_new_device(struct usb_device *dev)
 			   dev->serial, sizeof(dev->serial));
 
 	if (parent) {
-		sprintf(dev->dev.name, "%s-%d", parent->dev.name, port);
+		sprintf(dev->dev.name, "%s-%d", parent->dev.name, dev->portnr - 1);
 	} else {
 		sprintf(dev->dev.name, "usb%d", dev->host->busnum);
 	}
@@ -1108,6 +1093,8 @@ static void usb_hub_port_connect_change(struct usb_device *dev, int port)
 
 	dev->children[port] = usb;
 	usb->parent = dev;
+	usb->portnr = port + 1;
+
 	/* Run it through the hoops (find a driver, etc) */
 	if (usb_new_device(usb)) {
 		/* Woops, disable the port */
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
