Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gFyV6-0000mM-Qa
 for barebox@lists.infradead.org; Fri, 26 Oct 2018 09:33:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Oct 2018 11:33:34 +0200
Message-Id: <20181026093338.22751-5-s.hauer@pengutronix.de>
In-Reply-To: <20181026093338.22751-1-s.hauer@pengutronix.de>
References: <20181026093338.22751-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/8] usb: host: ehci: add ehci_unregister()
To: Barebox List <barebox@lists.infradead.org>

ehci_register() allocates data and registers a ehci host. Add
ehci_unregister() to properly halt the controller and to free the memory
again.. To do so, change ehci_register() to return the ehci host rather
than an error code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/host/ehci-atmel.c  | 10 +++++++++-
 drivers/usb/host/ehci-hcd.c    | 23 +++++++++++++++++++----
 drivers/usb/imx/chipidea-imx.c | 11 ++++++++---
 include/usb/ehci.h             | 14 +++++++++++---
 4 files changed, 47 insertions(+), 11 deletions(-)

diff --git a/drivers/usb/host/ehci-atmel.c b/drivers/usb/host/ehci-atmel.c
index 1132879c9b..bfa235d954 100644
--- a/drivers/usb/host/ehci-atmel.c
+++ b/drivers/usb/host/ehci-atmel.c
@@ -30,6 +30,7 @@
 #include "ehci.h"
 
 struct atmel_ehci_priv {
+	struct ehci_host *ehci;
 	struct device_d *dev;
 	struct clk *iclk;
 	struct clk *uclk;
@@ -66,6 +67,7 @@ static int atmel_ehci_probe(struct device_d *dev)
 	struct ehci_data data;
 	struct atmel_ehci_priv *atehci;
 	const char *uclk_name;
+	struct ehci_host *ehci;
 
 	uclk_name = (dev->device_node) ? "usb_clk" : "uhpck";
 
@@ -99,7 +101,13 @@ static int atmel_ehci_probe(struct device_d *dev)
 		return PTR_ERR(iores);
 	data.hccr = IOMEM(iores->start);
 
-	return ehci_register(dev, &data);
+	ehci = ehci_register(dev, &data);
+	if (IS_ERR(ehci))
+		return PTR_ERR(ehci);
+
+	atehci->ehci = ehci;
+
+	return 0;
 }
 
 static void atmel_ehci_remove(struct device_d *dev)
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index c20d4392d2..59268bf5ec 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -1280,7 +1280,7 @@ static int ehci_detect(struct device_d *dev)
 	return usb_host_detect(&ehci->host);
 }
 
-int ehci_register(struct device_d *dev, struct ehci_data *data)
+struct ehci_host *ehci_register(struct device_d *dev, struct ehci_data *data)
 {
 	struct usb_host *host;
 	struct ehci_host *ehci;
@@ -1328,7 +1328,16 @@ int ehci_register(struct device_d *dev, struct ehci_data *data)
 	reg = HC_VERSION(ehci_readl(&ehci->hccr->cr_capbase));
 	dev_info(dev, "USB EHCI %x.%02x\n", reg >> 8, reg & 0xff);
 
-	return 0;
+	return ehci;
+}
+
+void ehci_unregister(struct ehci_host *ehci)
+{
+	ehci_halt(ehci);
+
+	usb_unregister_host(&ehci->host);
+
+	free(ehci);
 }
 
 static int ehci_probe(struct device_d *dev)
@@ -1337,6 +1346,7 @@ static int ehci_probe(struct device_d *dev)
 	struct ehci_data data = {};
 	struct ehci_platform_data *pdata = dev->platform_data;
 	struct device_node *dn = dev->device_node;
+	struct ehci_host *ehci;
 
 	if (pdata)
 		data.flags = pdata->flags;
@@ -1364,13 +1374,18 @@ static int ehci_probe(struct device_d *dev)
 	else
 		data.hcor = NULL;
 
-	return ehci_register(dev, &data);
+	ehci = ehci_register(dev, &data);
+	if (IS_ERR(ehci))
+		return PTR_ERR(ehci);
+
+	return 0;
 }
 
 static void ehci_remove(struct device_d *dev)
 {
 	struct ehci_host *ehci = dev->priv;
-	ehci_halt(ehci);
+
+	ehci_unregister(ehci);
 }
 
 static __maybe_unused struct of_device_id ehci_platform_dt_ids[] = {
diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index 3e3e6a365f..a8914e25b6 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -46,6 +46,7 @@ struct imx_chipidea {
 	struct phy *phy;
 	struct usb_phy *usbphy;
 	struct clk *clk;
+	struct ehci_host *ehci;
 };
 
 static int imx_chipidea_port_init(void *drvdata)
@@ -184,14 +185,18 @@ static int ci_register_role(struct imx_chipidea *ci)
 
 	if (ci->mode == IMX_USB_MODE_HOST) {
 		if (IS_ENABLED(CONFIG_USB_EHCI)) {
+			struct ehci_host *ehci;
+
 			ci->role_registered = IMX_USB_MODE_HOST;
 			ret = regulator_enable(ci->vbus);
 			if (ret)
 				return ret;
 
-			ret = ehci_register(ci->dev, &ci->data);
-			if (!ret)
-				return 0;
+			ehci = ehci_register(ci->dev, &ci->data);
+			if (IS_ERR(ehci))
+				return PTR_ERR(ehci);
+
+			ci->ehci = ehci;
 
 			regulator_disable(ci->vbus);
 		} else {
diff --git a/include/usb/ehci.h b/include/usb/ehci.h
index 1008e92f02..5bce3ab110 100644
--- a/include/usb/ehci.h
+++ b/include/usb/ehci.h
@@ -19,12 +19,20 @@ struct ehci_data {
 	void *drvdata;
 };
 
+struct ehci_host;
+
 #ifdef CONFIG_USB_EHCI
-int ehci_register(struct device_d *dev, struct ehci_data *data);
+struct ehci_host *ehci_register(struct device_d *dev, struct ehci_data *data);
+void ehci_unregister(struct ehci_host *);
 #else
-static inline int ehci_register(struct device_d *dev, struct ehci_data *data)
+static inline struct ehci_host *ehci_register(struct device_d *dev,
+					      struct ehci_data *data)
+{
+	return ERR_PTR(-ENOSYS);
+}
+
+static inline void ehci_unregister(struct ehci_host *)
 {
-	return -ENOSYS;
 }
 #endif
 
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
