Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X8Qkr-0003j3-Ag
 for barebox@lists.infradead.org; Sat, 19 Jul 2014 09:16:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 19 Jul 2014 11:16:07 +0200
Message-Id: <1405761367-23724-13-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/12] USB: host: drop force rescan
To: barebox@lists.infradead.org

We can now detect changes in the USB device hierarchy properly, so
the 'force' option to the usb command is no longer necessary. We just
scan the busses each time the usb command is called.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/usb.c              |  9 +++------
 drivers/usb/core/usb.c      | 39 ++++++++++++---------------------------
 drivers/usb/host/ehci-hcd.c |  2 +-
 include/usb/usb.h           |  6 +++---
 4 files changed, 19 insertions(+), 37 deletions(-)

diff --git a/commands/usb.c b/commands/usb.c
index c158852..a37d503 100644
--- a/commands/usb.c
+++ b/commands/usb.c
@@ -112,13 +112,10 @@ static void usb_show_devices(bool tree)
 static int do_usb(int argc, char *argv[])
 {
 	int opt;
-	int force = 0, tree = 0, show = 0;
+	int tree = 0, show = 0;
 
-	while ((opt = getopt(argc, argv, "fts")) > 0) {
+	while ((opt = getopt(argc, argv, "ts")) > 0) {
 		switch (opt) {
-		case 'f':
-			force = 1;
-			break;
 		case 't':
 			tree = 1;
 			show = 1;
@@ -129,7 +126,7 @@ static int do_usb(int argc, char *argv[])
 		}
 	}
 
-	usb_rescan(force);
+	usb_rescan();
 
 	if (show)
 		usb_show_devices(tree);
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index faf509e..fdf9d94 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -492,50 +492,35 @@ struct usb_device *usb_alloc_new_device(void)
 	return usbdev;
 }
 
-int usb_host_detect(struct usb_host *host, int force)
+int usb_host_detect(struct usb_host *host)
 {
-	struct usb_device *dev, *tmp;
 	int ret;
 
-	if (host->scanned && !force)
-		return -EBUSY;
-
-	list_for_each_entry_safe(dev, tmp, &usb_device_list, list) {
-		if (dev->host != host)
-			continue;
+	if (!host->root_dev) {
+		ret = host->init(host);
+		if (ret)
+			return ret;
 
-		list_del(&dev->list);
-		unregister_device(&dev->dev);
-		free(dev->hub);
-		dma_free(dev->setup_packet);
-		dma_free(dev->descriptor);
-		free(dev);
+		host->root_dev = usb_alloc_new_device();
+		host->root_dev->dev.parent = host->hw_dev;
+		host->root_dev->host = host;
+		usb_new_device(host->root_dev);
 	}
 
-	ret = host->init(host);
-	if (ret)
-		return ret;
-
-	dev = usb_alloc_new_device();
-	dev->dev.parent = host->hw_dev;
-	dev->host = host;
-	usb_new_device(dev);
-
-	host->scanned = 1;
+	device_detect(&host->root_dev->dev);
 
 	return 0;
 }
 
-void usb_rescan(int force)
+void usb_rescan(void)
 {
 	struct usb_host *host;
 	int ret;
 
 	pr_info("USB: scanning bus for devices...\n");
-	dev_index = 0;
 
 	list_for_each_entry(host, &host_list, list) {
-		ret = usb_host_detect(host, force);
+		ret = usb_host_detect(host);
 		if (ret)
 			continue;
 	}
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index d30c3aa..9e30deb 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -871,7 +871,7 @@ static int ehci_detect(struct device_d *dev)
 {
 	struct ehci_priv *ehci = dev->priv;
 
-	return usb_host_detect(&ehci->host, 0);
+	return usb_host_detect(&ehci->host);
 }
 
 int ehci_register(struct device_d *dev, struct ehci_data *data)
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 34edbae..41f92c2 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -150,12 +150,12 @@ struct usb_host {
 
 	struct device_d *hw_dev;
 	int busnum;
-	int scanned;
+	struct usb_device *root_dev;
 };
 
 int usb_register_host(struct usb_host *);
 
-int usb_host_detect(struct usb_host *host, int force);
+int usb_host_detect(struct usb_host *host);
 
 int usb_set_protocol(struct usb_device *dev, int ifnum, int protocol);
 int usb_set_idle(struct usb_device *dev, int ifnum, int duration,
@@ -185,7 +185,7 @@ int usb_clear_halt(struct usb_device *dev, int pipe);
 int usb_string(struct usb_device *dev, int index, char *buf, size_t size);
 int usb_set_interface(struct usb_device *dev, int interface, int alternate);
 
-void usb_rescan(int force);
+void usb_rescan(void);
 
 /* big endian -> little endian conversion */
 /* some CPUs are already little endian e.g. the ARM920T */
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
