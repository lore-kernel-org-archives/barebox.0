Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UoVHp-0000uw-RM
 for barebox@lists.infradead.org; Mon, 17 Jun 2013 08:59:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Jun 2013 10:59:16 +0200
Message-Id: <1371459556-24073-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1371459556-24073-1-git-send-email-s.hauer@pengutronix.de>
References: <1371459556-24073-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ata: i.MX pata: Add devicetree probe support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/pata-imx.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/ata/pata-imx.c b/drivers/ata/pata-imx.c
index 5d44883..1cff856 100644
--- a/drivers/ata/pata-imx.c
+++ b/drivers/ata/pata-imx.c
@@ -152,6 +152,7 @@ static int imx_pata_probe(struct device_d *dev)
 	struct clk *clk;
 	void __iomem *base;
 	int ret;
+	const char *devname;
 
 	io = xzalloc(sizeof(struct ata_ioports));
 	base = dev_request_mem_region(dev, 0);
@@ -172,7 +173,13 @@ static int imx_pata_probe(struct device_d *dev)
 
 	pata_imx_set_bus_timing(base, clk_get_rate(clk), 4);
 
-	ret= ide_port_register(dev, io);
+	if (IS_ENABLED(CONFIG_OFDEVICE)) {
+		devname = of_alias_get(dev->device_node);
+		if (devname)
+			devname = xstrdup(devname);
+	}
+
+	ret = ide_port_register(dev, io, devname);
 	if (ret) {
 		dev_err(dev, "Cannot register IDE interface: %s\n",
 				strerror(-ret));
@@ -190,8 +197,15 @@ out_free:
 	return ret;
 }
 
+static __maybe_unused struct of_device_id imx_pata_dt_ids[] = {
+	{
+		.compatible = "fsl,imx27-pata",
+	},
+};
+
 static struct driver_d imx_pata_driver = {
 	.name   = "imx-pata",
 	.probe  = imx_pata_probe,
+	.of_compatible = DRV_OF_COMPAT(imx_pata_dt_ids),
 };
 device_platform_driver(imx_pata_driver);
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
