Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bpacb-00034s-3p
 for barebox@lists.infradead.org; Thu, 29 Sep 2016 12:39:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Sep 2016 14:38:54 +0200
Message-Id: <20160929123900.24853-3-s.hauer@pengutronix.de>
In-Reply-To: <20160929123900.24853-1-s.hauer@pengutronix.de>
References: <20160929123900.24853-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/9] usb: ehci: forward phy given in registration data to host
To: Barebox List <barebox@lists.infradead.org>

Allow to pass a phy in the registration data and forward it to
the usb_host structure.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/host/ehci-hcd.c | 1 +
 include/usb/ehci.h          | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 35cf6aa..f6e9099 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -1297,6 +1297,7 @@ int ehci_register(struct device_d *dev, struct ehci_data *data)
 
 	host->hw_dev = dev;
 	host->init = ehci_init;
+	host->usbphy = data->usbphy;
 	host->submit_int_msg = submit_int_msg;
 	host->submit_control_msg = submit_control_msg;
 	host->submit_bulk_msg = submit_bulk_msg;
diff --git a/include/usb/ehci.h b/include/usb/ehci.h
index 93f980d..1008e92 100644
--- a/include/usb/ehci.h
+++ b/include/usb/ehci.h
@@ -11,6 +11,7 @@ struct ehci_data {
 	void __iomem *hccr;
 	void __iomem *hcor;
 	unsigned long flags;
+	struct usb_phy *usbphy;
 
 	/* platform specific init functions */
 	int (*init)(void *drvdata);
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
