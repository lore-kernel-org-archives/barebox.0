Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x231.google.com ([2a00:1450:4008:c01::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uh5SG-0008Ol-9D
 for barebox@lists.infradead.org; Mon, 27 May 2013 21:59:49 +0000
Received: by mail-bk0-f49.google.com with SMTP id na1so2501461bkb.8
 for <barebox@lists.infradead.org>; Mon, 27 May 2013 14:59:24 -0700 (PDT)
From: Philipp Zabel <philipp.zabel@gmail.com>
Date: Mon, 27 May 2013 23:59:10 +0200
Message-Id: <1369691952-3603-1-git-send-email-philipp.zabel@gmail.com>
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
Subject: [PATCH 1/3] USB: imx-usb-misc: add device tree support
To: barebox@lists.infradead.org

Signed-off-by: Philipp Zabel <philipp.zabel@gmail.com>
---
 drivers/usb/imx/imx-usb-misc.c |   43 ++++++++++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/drivers/usb/imx/imx-usb-misc.c b/drivers/usb/imx/imx-usb-misc.c
index 901ced4..b9c6fb9 100644
--- a/drivers/usb/imx/imx-usb-misc.c
+++ b/drivers/usb/imx/imx-usb-misc.c
@@ -506,10 +506,53 @@ static int imx_usbmisc_probe(struct device_d *dev)
 	return 0;
 }
 
+static __maybe_unused struct of_device_id imx_usbmisc_dt_ids[] = {
+#ifdef CONFIG_ARCH_IMX25
+	{
+		.compatible = "fsl,imx25-usbmisc",
+		.data = (unsigned long)&mx25_data,
+	},
+#endif
+#if defined(CONFIG_ARCH_IMX27) || defined(CONFIG_ARCH_IMX31)
+	{
+		.compatible = "fsl,imx27-usbmisc",
+		.data = (unsigned long)&mx27_mx31_data,
+	},
+#endif
+#ifdef CONFIG_ARCH_IMX35
+	{
+		.compatible = "fsl,imx35-usbmisc",
+		.data = (unsigned long)&mx35_data,
+	},
+#endif
+#ifdef CONFIG_ARCH_IMX51
+	{
+		.compatible = "fsl,imx51-usbmisc",
+		.data = (unsigned long)&mx5_data,
+	},
+#endif
+#ifdef CONFIG_ARCH_IMX53
+	{
+		.name = "fsl,imx53-usbmisc",
+		.data = (unsigned long)&mx5_data,
+	},
+#endif
+#ifdef CONFIG_ARCH_IMX6
+	{
+		.compatible = "fsl,imx6q-usbmisc",
+		.data = (unsigned long)&mx6_data,
+	},
+#endif
+	{
+		/* sentinel */
+	}
+};
+
 static struct driver_d imx_usbmisc_driver = {
 	.name   = "imx-usbmisc",
 	.probe  = imx_usbmisc_probe,
 	.id_table = imx_usbmisc_ids,
+	.of_compatible = DRV_OF_COMPAT(imx_usbmisc_dt_ids),
 };
 
 static int imx_usbmisc_init(void)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
