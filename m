Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x232.google.com ([2607:f8b0:400e:c00::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1acmi6-0007t2-HR
 for barebox@lists.infradead.org; Mon, 07 Mar 2016 04:23:59 +0000
Received: by mail-pf0-x232.google.com with SMTP id 129so28000322pfw.1
 for <barebox@lists.infradead.org>; Sun, 06 Mar 2016 20:23:37 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  6 Mar 2016 20:21:49 -0800
Message-Id: <1457324509-24857-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH] !fixup driver: replace dev_request_mem_region with
 dev_request_mem_resource
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

It looks like Coccinelle script failed to add register file
initialization code at least in two places

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/i2c/busses/i2c-imx.c  | 1 +
 drivers/usb/imx/imx-usb-phy.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 1017971..e407896 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -610,6 +610,7 @@ static int __init i2c_fsl_probe(struct device_d *pdev)
 		ret = PTR_ERR(iores);
 		goto fail;
 	}
+	i2c_fsl->base = IOMEM(iores->start);
 
 	i2c_fsl_init_recovery(i2c_fsl, pdev);
 
diff --git a/drivers/usb/imx/imx-usb-phy.c b/drivers/usb/imx/imx-usb-phy.c
index 3306bd4..33e27da 100644
--- a/drivers/usb/imx/imx-usb-phy.c
+++ b/drivers/usb/imx/imx-usb-phy.c
@@ -76,6 +76,7 @@ static int imx_usbphy_probe(struct device_d *dev)
 		ret = PTR_ERR(iores);
 		goto err_free;
 	}
+	imxphy->base = IOMEM(iores->start);
 
 	imxphy->clk = clk_get(dev, NULL);
 	if (IS_ERR(imxphy->clk)) {
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
