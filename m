Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gFyV6-0000mL-QZ
 for barebox@lists.infradead.org; Fri, 26 Oct 2018 09:33:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Oct 2018 11:33:35 +0200
Message-Id: <20181026093338.22751-6-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/8] usb: host: ehci: do not use dev->priv
To: Barebox List <barebox@lists.infradead.org>

An ehci can be registered with ehci_register which is passed a struct
device_d *. In that case the priv pointer may already be used by the
caller, so we must not use it in the ehci code. At least for the Atmel
ehci driver this fixes a bug, here dev->priv is set two times to
different values.
Since we need dev->priv in the ehci code to get the controller in
ehci_detect() we can no longer implement that without the help of the
caller, hence we eport ehci_detect() and epect it to be called by
the code which registers a ehci host.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/host/ehci-atmel.c  |  8 ++++++++
 drivers/usb/host/ehci-hcd.c    | 17 +++++++++++------
 drivers/usb/imx/chipidea-imx.c | 10 ++++++++++
 include/usb/ehci.h             |  6 ++++++
 4 files changed, 35 insertions(+), 6 deletions(-)

diff --git a/drivers/usb/host/ehci-atmel.c b/drivers/usb/host/ehci-atmel.c
index bfa235d954..36c9166e74 100644
--- a/drivers/usb/host/ehci-atmel.c
+++ b/drivers/usb/host/ehci-atmel.c
@@ -60,6 +60,13 @@ static void atmel_stop_clock(struct atmel_ehci_priv *atehci)
 	clk_disable(atehci->uclk);
 }
 
+static int atmel_ehci_detect(struct device_d *dev)
+{
+	struct atmel_ehci_priv *atehci = dev->priv;
+
+	return ehci_detect(atehci->ehci);
+}
+
 static int atmel_ehci_probe(struct device_d *dev)
 {
 	int ret;
@@ -74,6 +81,7 @@ static int atmel_ehci_probe(struct device_d *dev)
 	atehci = xzalloc(sizeof(*atehci));
 	atehci->dev = dev;
 	dev->priv = atehci;
+	dev->detect = atmel_ehci_detect;
 
 	atehci->iclk = clk_get(dev, "ehci_clk");
 	if (IS_ERR(atehci->iclk)) {
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 59268bf5ec..87af95d2ed 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -1273,10 +1273,8 @@ submit_int_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 	return result;
 }
 
-static int ehci_detect(struct device_d *dev)
+int ehci_detect(struct ehci_host *ehci)
 {
-	struct ehci_host *ehci = dev->priv;
-
 	return usb_host_detect(&ehci->host);
 }
 
@@ -1288,7 +1286,6 @@ struct ehci_host *ehci_register(struct device_d *dev, struct ehci_data *data)
 
 	ehci = xzalloc(sizeof(struct ehci_host));
 	host = &ehci->host;
-	dev->priv = ehci;
 	ehci->flags = data->flags;
 	ehci->hccr = data->hccr;
 	ehci->dev = dev;
@@ -1321,8 +1318,6 @@ struct ehci_host *ehci_register(struct device_d *dev, struct ehci_data *data)
 		ehci_reset(ehci);
 	}
 
-	dev->detect = ehci_detect;
-
 	usb_register_host(host);
 
 	reg = HC_VERSION(ehci_readl(&ehci->hccr->cr_capbase));
@@ -1340,6 +1335,13 @@ void ehci_unregister(struct ehci_host *ehci)
 	free(ehci);
 }
 
+static int ehci_dev_detect(struct device_d *dev)
+{
+	struct ehci_host *ehci = dev->priv;
+
+	return ehci_detect(ehci);
+}
+
 static int ehci_probe(struct device_d *dev)
 {
 	struct resource *iores;
@@ -1378,6 +1380,9 @@ static int ehci_probe(struct device_d *dev)
 	if (IS_ERR(ehci))
 		return PTR_ERR(ehci);
 
+	dev->priv = ehci;
+	dev->detect = ehci_dev_detect;
+
 	return 0;
 }
 
diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index a8914e25b6..321a8ada3f 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -176,6 +176,13 @@ static int imx_chipidea_probe_dt(struct imx_chipidea *ci)
 	return 0;
 }
 
+static int ci_ehci_detect(struct device_d *dev)
+{
+	struct imx_chipidea *ci = dev->priv;
+
+	return ehci_detect(ci->ehci);
+}
+
 static int ci_register_role(struct imx_chipidea *ci)
 {
 	int ret;
@@ -198,6 +205,8 @@ static int ci_register_role(struct imx_chipidea *ci)
 
 			ci->ehci = ehci;
 
+			ci->dev->detect = ci_ehci_detect;
+
 			regulator_disable(ci->vbus);
 		} else {
 			dev_err(ci->dev, "Host support not available\n");
@@ -271,6 +280,7 @@ static int imx_chipidea_probe(struct device_d *dev)
 
 	ci = xzalloc(sizeof(*ci));
 	ci->dev = dev;
+	dev->priv = ci;
 	ci->role_registered = IMX_USB_MODE_OTG;
 
 	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node) {
diff --git a/include/usb/ehci.h b/include/usb/ehci.h
index 5bce3ab110..f9bf88c497 100644
--- a/include/usb/ehci.h
+++ b/include/usb/ehci.h
@@ -24,6 +24,7 @@ struct ehci_host;
 #ifdef CONFIG_USB_EHCI
 struct ehci_host *ehci_register(struct device_d *dev, struct ehci_data *data);
 void ehci_unregister(struct ehci_host *);
+int ehci_detect(struct ehci_host *ehci);
 #else
 static inline struct ehci_host *ehci_register(struct device_d *dev,
 					      struct ehci_data *data)
@@ -34,6 +35,11 @@ static inline struct ehci_host *ehci_register(struct device_d *dev,
 static inline void ehci_unregister(struct ehci_host *)
 {
 }
+
+static inline int ehci_detect(struct ehci_host *ehci)
+{
+	return 0;
+}
 #endif
 
 #endif  /* __USB_EHCI_H */
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
