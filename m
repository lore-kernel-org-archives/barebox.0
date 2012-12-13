Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjC9R-0001nY-6A
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 17:00:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Dec 2012 18:00:36 +0100
Message-Id: <1355418044-27452-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1355418044-27452-1-git-send-email-s.hauer@pengutronix.de>
References: <1355418044-27452-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/9] USB ehci: Allow to register independently from device
To: barebox@lists.infradead.org

The EHCI core often is part of a otg core. Allow it to be registered
separately from another driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/host/ehci-hcd.c |   46 ++++++++++++++++++++++++++-----------------
 include/usb/ehci.h          |   17 ++++++++++++++--
 2 files changed, 43 insertions(+), 20 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index d8814aa..d6083e0 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -807,32 +807,18 @@ submit_int_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 	return -1;
 }
 
-static int ehci_probe(struct device_d *dev)
+int ehci_register(struct device_d *dev, struct ehci_data *data)
 {
 	struct usb_host *host;
 	struct ehci_priv *ehci;
 	uint32_t reg;
-	struct ehci_platform_data *pdata = dev->platform_data;
 
 	ehci = xzalloc(sizeof(struct ehci_priv));
 	host = &ehci->host;
 	dev->priv = ehci;
-
-	/* default to EHCI_HAS_TT to not change behaviour of boards
-	 * without platform_data
-	 */
-	if (pdata)
-		ehci->flags = pdata->flags;
-	else
-		ehci->flags = EHCI_HAS_TT;
-
-	if (dev->num_resources < 2) {
-		printf("echi: need 2 resources base and data");
-		return -ENODEV;
-	}
-
-	ehci->hccr = dev_request_mem_region(dev, 0);
-	ehci->hcor = dev_request_mem_region(dev, 1);
+	ehci->flags = data->flags;
+	ehci->hccr = data->hccr;
+	ehci->hcor = data->hcor;
 
 	ehci->qh_list = dma_alloc_coherent(sizeof(struct QH) * NUM_TD);
 	ehci->td = dma_alloc_coherent(sizeof(struct qTD) * NUM_TD);
@@ -854,6 +840,30 @@ static int ehci_probe(struct device_d *dev)
 	return 0;
 }
 
+static int ehci_probe(struct device_d *dev)
+{
+	struct ehci_data data;
+	struct ehci_platform_data *pdata = dev->platform_data;
+
+	/* default to EHCI_HAS_TT to not change behaviour of boards
+	 * without platform_data
+	 */
+	if (pdata)
+		data.flags = pdata->flags;
+	else
+		data.flags = EHCI_HAS_TT;
+
+	if (dev->num_resources < 2) {
+		printf("echi: need 2 resources base and data");
+		return -ENODEV;
+	}
+
+	data.hccr = dev_request_mem_region(dev, 0);
+	data.hcor = dev_request_mem_region(dev, 1);
+
+	return ehci_register(dev, &data);
+}
+
 static void ehci_remove(struct device_d *dev)
 {
 	struct ehci_priv *ehci = dev->priv;
diff --git a/include/usb/ehci.h b/include/usb/ehci.h
index 2ec862c..4377116 100644
--- a/include/usb/ehci.h
+++ b/include/usb/ehci.h
@@ -5,8 +5,21 @@
 
 struct ehci_platform_data {
 	unsigned long flags;
-	unsigned long hccr_offset;
-	unsigned long hcor_offset;
 };
 
+struct ehci_data {
+	void __iomem *hccr;
+	void __iomem *hcor;
+	unsigned long flags;
+};
+
+#ifdef CONFIG_USB_EHCI
+int ehci_register(struct device_d *dev, struct ehci_data *data);
+#else
+static inline int ehci_register(struct device_d *dev, struct ehci_data *data)
+{
+	return -ENOSYS;
+}
+#endif
+
 #endif  /* __USB_EHCI_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
