Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1ZYyZB-0007kS-Nh
 for barebox@lists.infradead.org; Mon, 07 Sep 2015 15:42:46 +0000
Received: by lbbmp1 with SMTP id mp1so41032549lbb.1
 for <barebox@lists.infradead.org>; Mon, 07 Sep 2015 08:42:22 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Mon,  7 Sep 2015 18:44:23 +0300
Message-Id: <1441640663-25293-1-git-send-email-pmamonov@gmail.com>
In-Reply-To: <20150903181352.GK18700@pengutronix.de>
References: <20150903181352.GK18700@pengutronix.de>
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
Subject: [PATCHv2] ata: intf_platform_ide: add OF bindings
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/ata/intf_platform_ide.c | 36 +++++++++++++++++++++++++++++++-----
 1 file changed, 31 insertions(+), 5 deletions(-)

diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_ide.c
index 0d392d8..e46c2c8 100644
--- a/drivers/ata/intf_platform_ide.c
+++ b/drivers/ata/intf_platform_ide.c
@@ -29,6 +29,7 @@
 #include <ata_drive.h>
 #include <platform_ide.h>
 #include <linux/err.h>
+#include <of.h>
 
 /**
  * Setup the register specific addresses for an ATA like divice
@@ -85,8 +86,24 @@ static int platform_ide_probe(struct device_d *dev)
 	void *reg_base, *alt_base = NULL;
 	struct resource *reg, *alt;
 	int mmio = 0;
-
-	if (pdata == NULL) {
+	struct device_node *dn = dev->device_node;
+	unsigned ioport_shift = 0;
+	int dataif_be = 0;
+	void (*reset)(int) = NULL;
+
+	if (pdata) {
+		ioport_shift = pdata->ioport_shift;
+		dataif_be = pdata->dataif_be;
+		reset = pdata->reset;
+	} else if (dn) {
+		/* try to get platform data from the device tree */
+		u32 tmp32;
+
+		if (of_property_read_u32(dn, "reg-shift", &tmp32) == 0)
+			ioport_shift = (unsigned)tmp32;
+		if (of_property_read_bool(dn, "dataif-be"))
+			dataif_be = 1;
+	} else {
 		dev_err(dev, "No platform data. Cannot continue\n");
 		return -EINVAL;
 	}
@@ -123,9 +140,9 @@ static int platform_ide_probe(struct device_d *dev)
 	ide = xzalloc(sizeof(*ide));
 	ide->io.mmio = mmio;
 
-	platform_ide_setup_port(reg_base, alt_base, &ide->io, pdata->ioport_shift);
-	ide->io.reset = pdata->reset;
-	ide->io.dataif_be = pdata->dataif_be;
+	platform_ide_setup_port(reg_base, alt_base, &ide->io, ioport_shift);
+	ide->io.reset = reset;
+	ide->io.dataif_be = dataif_be;
 
 	rc = ide_port_register(ide);
 	if (rc != 0) {
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
