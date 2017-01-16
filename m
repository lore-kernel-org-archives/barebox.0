Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT4t2-0005cF-0k
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 10:51:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Jan 2017 11:50:53 +0100
Message-Id: <20170116105108.13617-9-s.hauer@pengutronix.de>
In-Reply-To: <20170116105108.13617-1-s.hauer@pengutronix.de>
References: <20170116105108.13617-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/23] usb: imx: Make usb-misc multi instance safe
To: Barebox List <barebox@lists.infradead.org>

i.MX7 has two usbmisc devices, so we cannot use global instance
variables anymore. Create a driver private data struct for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/imx/chipidea-imx.c |  9 +++++++--
 drivers/usb/imx/imx-usb-misc.c | 34 +++++++++++++++++++++-------------
 include/usb/chipidea-imx.h     |  4 ++--
 3 files changed, 30 insertions(+), 17 deletions(-)

diff --git a/drivers/usb/imx/chipidea-imx.c b/drivers/usb/imx/chipidea-imx.c
index ed00ff4a1..f4354876c 100644
--- a/drivers/usb/imx/chipidea-imx.c
+++ b/drivers/usb/imx/chipidea-imx.c
@@ -37,6 +37,7 @@ struct imx_chipidea {
 	unsigned long flags;
 	uint32_t mode;
 	int portno;
+	struct device_d *usbmisc;
 	enum usb_phy_interface phymode;
 	struct param_d *param_mode;
 	int role_registered;
@@ -67,7 +68,7 @@ static int imx_chipidea_port_init(void *drvdata)
 			return ret;
 	}
 
-	ret = imx_usbmisc_port_init(ci->portno, ci->flags);
+	ret = imx_usbmisc_port_init(ci->usbmisc, ci->portno, ci->flags);
 	if (ret)
 		dev_err(ci->dev, "misc init failed: %s\n", strerror(-ret));
 
@@ -79,7 +80,7 @@ static int imx_chipidea_port_post_init(void *drvdata)
 	struct imx_chipidea *ci = drvdata;
 	int ret;
 
-	ret = imx_usbmisc_port_post_init(ci->portno, ci->flags);
+	ret = imx_usbmisc_port_post_init(ci->usbmisc, ci->portno, ci->flags);
 	if (ret)
 		dev_err(ci->dev, "post misc init failed: %s\n", strerror(-ret));
 
@@ -95,6 +96,10 @@ static int imx_chipidea_probe_dt(struct imx_chipidea *ci)
 					"#index-cells", 0, &out_args))
 		return -ENODEV;
 
+	ci->usbmisc = of_find_device_by_node(out_args.np);
+	if (!ci->usbmisc)
+		return -ENODEV;
+
 	ci->portno = out_args.args[0];
 	ci->flags = MXC_EHCI_MODE_UTMI_8BIT;
 
diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
index 7c18ca2a1..16fb38018 100644
--- a/drivers/usb/imx/imx-usb-misc.c
+++ b/drivers/usb/imx/imx-usb-misc.c
@@ -43,6 +43,11 @@ struct imx_usb_misc_data {
 	int (*post_init)(void __iomem *base, int port, unsigned int flags);
 };
 
+struct imx_usb_misc_priv {
+	struct imx_usb_misc_data *data;
+	void __iomem *base;
+};
+
 static __maybe_unused int mx25_initialize_usb_hw(void __iomem *base, int port, unsigned int flags)
 {
 	unsigned int v;
@@ -524,35 +529,37 @@ static __maybe_unused struct of_device_id imx_usbmisc_dt_ids[] = {
 	},
 };
 
-static struct imx_usb_misc_data *imxusbmisc_data;
-static void __iomem *usbmisc_base;
-
-int imx_usbmisc_port_init(int port, unsigned flags)
+int imx_usbmisc_port_init(struct device_d *dev, int port, unsigned flags)
 {
-	if (!imxusbmisc_data)
+	struct imx_usb_misc_priv *usbmisc = dev->priv;
+
+	if (!usbmisc)
 		return -ENODEV;
 
-	if (!imxusbmisc_data->init)
+	if (!usbmisc->data->init)
 		return 0;
 
-	return imxusbmisc_data->init(usbmisc_base, port, flags);
+	return usbmisc->data->init(usbmisc->base, port, flags);
 }
 
-int imx_usbmisc_port_post_init(int port, unsigned flags)
+int imx_usbmisc_port_post_init(struct device_d *dev, int port, unsigned flags)
 {
-	if (!imxusbmisc_data)
+	struct imx_usb_misc_priv *usbmisc = dev->priv;
+
+	if (!usbmisc)
 		return -ENODEV;
 
-	if (!imxusbmisc_data->post_init)
+	if (!usbmisc->data->post_init)
 		return 0;
 
-	return imxusbmisc_data->post_init(usbmisc_base, port, flags);
+	return usbmisc->data->post_init(usbmisc->base, port, flags);
 }
 
 static int imx_usbmisc_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	struct imx_usb_misc_data *devtype;
+	struct imx_usb_misc_priv *usbmisc = dev->priv;
 	int ret;
 
 	ret = dev_get_drvdata(dev, (const void **)&devtype);
@@ -562,9 +569,10 @@ static int imx_usbmisc_probe(struct device_d *dev)
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
-	usbmisc_base = IOMEM(iores->start);
 
-	imxusbmisc_data = devtype;
+	usbmisc = xzalloc(sizeof(*usbmisc));
+	usbmisc->base = IOMEM(iores->start);
+	usbmisc->data = devtype;
 
 	return 0;
 }
diff --git a/include/usb/chipidea-imx.h b/include/usb/chipidea-imx.h
index 64f086af6..640ae0694 100644
--- a/include/usb/chipidea-imx.h
+++ b/include/usb/chipidea-imx.h
@@ -48,7 +48,7 @@ struct imxusb_platformdata {
 	enum imx_usb_mode mode;
 };
 
-int imx_usbmisc_port_init(int port, unsigned flags);
-int imx_usbmisc_port_post_init(int port, unsigned flags);
+int imx_usbmisc_port_init(struct device_d *dev, int port, unsigned flags);
+int imx_usbmisc_port_post_init(struct device_d *dev, int port, unsigned flags);
 
 #endif /* __USB_CHIPIDEA_IMX_H */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
