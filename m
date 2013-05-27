Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x231.google.com ([2a00:1450:4008:c01::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uh5SG-0008On-A2
 for barebox@lists.infradead.org; Mon, 27 May 2013 21:59:49 +0000
Received: by mail-bk0-f49.google.com with SMTP id na1so2501469bkb.8
 for <barebox@lists.infradead.org>; Mon, 27 May 2013 14:59:27 -0700 (PDT)
From: Philipp Zabel <philipp.zabel@gmail.com>
Date: Mon, 27 May 2013 23:59:12 +0200
Message-Id: <1369691952-3603-3-git-send-email-philipp.zabel@gmail.com>
In-Reply-To: <1369691952-3603-1-git-send-email-philipp.zabel@gmail.com>
References: <1369691952-3603-1-git-send-email-philipp.zabel@gmail.com>
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
Subject: [PATCH 3/3] USB: imx-usb-phy: add device tree support
To: barebox@lists.infradead.org

Signed-off-by: Philipp Zabel <philipp.zabel@gmail.com>
---
 drivers/usb/imx/imx-usb-phy.c |   15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
index ce9c93f..8eb832e 100644
--- a/drivers/usb/imx/imx-usb-phy.c
+++ b/drivers/usb/imx/imx-usb-phy.c
@@ -93,13 +93,26 @@ err_free:
 	return ret;
 };
 
+static __maybe_unused struct of_device_id imx_usbphy_dt_ids[] = {
+	{
+		.compatible = "fsl,imx23-usbphy",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d imx_usbphy_driver = {
 	.name   = "imx-usb-phy",
 	.probe  = imx_usbphy_probe,
+	.of_compatible = DRV_OF_COMPAT(imx_usbphy_dt_ids),
 };
 
 static int imx_usbphy_init(void)
 {
 	return platform_driver_register(&imx_usbphy_driver);
 }
-coredevice_initcall(imx_usbphy_init);
+/*
+ * Make sure this is initialized after gpt, since we
+ * need timers for the udelay in imx_usbphy_enable.
+ */
+fs_initcall(imx_usbphy_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
