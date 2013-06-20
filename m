Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpfUl-0007uW-63
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 14:05:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jun 2013 16:05:25 +0200
Message-Id: <1371737125-18820-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371737125-18820-1-git-send-email-s.hauer@pengutronix.de>
References: <1371737125-18820-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] usb: ehci: implement detect callback
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/host/ehci-hcd.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 7c389aa..840aa1a 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -847,6 +847,13 @@ submit_int_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 	return -1;
 }
 
+static int ehci_detect(struct device_d *dev)
+{
+	struct ehci_priv *ehci = dev->priv;
+
+	return usb_host_detect(&ehci->host, 0);
+}
+
 int ehci_register(struct device_d *dev, struct ehci_data *data)
 {
 	struct usb_host *host;
@@ -882,6 +889,8 @@ int ehci_register(struct device_d *dev, struct ehci_data *data)
 		ehci_reset(ehci);
 	}
 
+	dev->detect = ehci_detect;
+
 	usb_register_host(host);
 
 	reg = HC_VERSION(ehci_readl(&ehci->hccr->cr_capbase));
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
