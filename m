Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x234.google.com ([2a00:1450:4010:c04::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZXWyC-0006jF-LC
 for barebox@lists.infradead.org; Thu, 03 Sep 2015 16:02:37 +0000
Received: by lbcjc2 with SMTP id jc2so27066262lbc.0
 for <barebox@lists.infradead.org>; Thu, 03 Sep 2015 09:02:14 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Thu,  3 Sep 2015 19:04:18 +0300
Message-Id: <1441296258-4610-1-git-send-email-pmamonov@gmail.com>
In-Reply-To: <20150903172455.586b781f0bab0f50bbe58585@gmail.com>
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
Subject: [PATCH] ata: intf_platform_ide: add OF bindings
To: antonynpavlov@gmail.com, barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/ata/intf_platform_ide.c | 30 ++++++++++++++++++++++++++++--
 1 file changed, 28 insertions(+), 2 deletions(-)

diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_ide.c
index 0d392d8..ba28f17 100644
--- a/drivers/ata/intf_platform_ide.c
+++ b/drivers/ata/intf_platform_ide.c
@@ -29,6 +29,7 @@
 #include <ata_drive.h>
 #include <platform_ide.h>
 #include <linux/err.h>
+#include <of.h>
 
 /**
  * Setup the register specific addresses for an ATA like divice
@@ -87,8 +88,24 @@ static int platform_ide_probe(struct device_d *dev)
 	int mmio = 0;
 
 	if (pdata == NULL) {
-		dev_err(dev, "No platform data. Cannot continue\n");
-		return -EINVAL;
+		/* try to get platform data from the device tree */
+		struct device_node *dn = dev->device_node;
+		u32 tmp32;
+
+		if (dn == NULL) {
+			dev_err(dev, "No platform data. Cannot continue\n");
+			return -EINVAL;
+		}
+
+		pdata = xzalloc(sizeof(struct ide_port_info));
+
+		if (of_property_read_bool(dn, "dataif-be"))
+			pdata->dataif_be = 1;
+
+		if (of_property_read_u32(dn, "reg-shift", &tmp32) == 0)
+			pdata->ioport_shift = (unsigned)tmp32;
+
+		device_add_data(dev, pdata, sizeof(struct ide_port_info));
 	}
 
 	reg_base = dev_request_mem_region(dev, 0);
@@ -136,9 +153,18 @@ static int platform_ide_probe(struct device_d *dev)
 	return rc;
 }
 
+static __maybe_unused struct of_device_id platform_ide_dt_ids[] = {
+	{
+		.compatible = "ata-generic",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d platform_ide_driver = {
 	.name   = "ide_intf",
 	.probe  = platform_ide_probe,
+	.of_compatible = DRV_OF_COMPAT(platform_ide_dt_ids),
 };
 device_platform_driver(platform_ide_driver);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
