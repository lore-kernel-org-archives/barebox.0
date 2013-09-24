Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VOVe2-00051J-1L
 for barebox@lists.infradead.org; Tue, 24 Sep 2013 16:39:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 24 Sep 2013 18:39:01 +0200
Message-Id: <1380040741-23427-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] usb: make usb devices children of the corresponding host
To: barebox@lists.infradead.org

To be able to find usb devices in the hardware tree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/usb.c      | 2 ++
 drivers/usb/host/ehci-hcd.c | 1 +
 drivers/usb/host/ohci-hcd.c | 1 +
 include/usb/usb.h           | 1 +
 4 files changed, 5 insertions(+)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 36fc736..a7dbe2a 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -440,6 +440,8 @@ static int usb_new_device(struct usb_device *dev)
 
 	dev->dev.id = DEVICE_ID_SINGLE;
 
+	if (dev->host->hw_dev)
+		dev->dev.parent = dev->host->hw_dev;
 	register_device(&dev->dev);
 
 	/* now prode if the device is a hub */
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index f44f836..cb6a592 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -883,6 +883,7 @@ int ehci_register(struct device_d *dev, struct ehci_data *data)
 	ehci->qh_list = dma_alloc_coherent(sizeof(struct QH) * NUM_TD);
 	ehci->td = dma_alloc_coherent(sizeof(struct qTD) * NUM_TD);
 
+	host->hw_dev = dev;
 	host->init = ehci_init;
 	host->submit_int_msg = submit_int_msg;
 	host->submit_control_msg = submit_control_msg;
diff --git a/drivers/usb/host/ohci-hcd.c b/drivers/usb/host/ohci-hcd.c
index ad39bcf..8bf20d0 100644
--- a/drivers/usb/host/ohci-hcd.c
+++ b/drivers/usb/host/ohci-hcd.c
@@ -1794,6 +1794,7 @@ static int ohci_probe(struct device_d *dev)
 	ohci = xzalloc(sizeof(struct ohci));
 	host = &ohci->host;
 
+	host->hw_dev = dev;
 	host->init = ohci_init;
 	host->submit_int_msg = submit_int_msg;
 	host->submit_control_msg = submit_control_msg;
diff --git a/include/usb/usb.h b/include/usb/usb.h
index 95fb6f3..821724e 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -210,6 +210,7 @@ struct usb_host {
 
 	struct list_head list;
 
+	struct device_d *hw_dev;
 	int busnum;
 	int scanned;
 };
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
