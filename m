Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UeWQu-0000Za-Ng
 for barebox@lists.infradead.org; Mon, 20 May 2013 20:11:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 May 2013 22:11:24 +0200
Message-Id: <1369080684-11138-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369080684-11138-1-git-send-email-s.hauer@pengutronix.de>
References: <1369080684-11138-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] i2c: fsl: Add devicetree probe support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/busses/i2c-imx.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 9fcfd5c..c607bcb 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -545,6 +545,7 @@ static int __init i2c_fsl_probe(struct device_d *pdev)
 	i2c_fsl->adapter.master_xfer = i2c_fsl_xfer;
 	i2c_fsl->adapter.nr = pdev->id;
 	i2c_fsl->adapter.dev.parent = pdev;
+	i2c_fsl->adapter.dev.device_node = pdev->device_node;
 	i2c_fsl->base = dev_request_mem_region(pdev, 0);
 	i2c_fsl->dfsrr = -1;
 
@@ -572,8 +573,17 @@ fail:
 	return ret;
 }
 
+static __maybe_unused struct of_device_id imx_i2c_dt_ids[] = {
+	{
+		.compatible = "fsl,imx21-i2c",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d i2c_fsl_driver = {
 	.probe	= i2c_fsl_probe,
 	.name	= DRIVER_NAME,
+	.of_compatible = DRV_OF_COMPAT(imx_i2c_dt_ids),
 };
 device_platform_driver(i2c_fsl_driver);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
