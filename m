Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22a.google.com ([2a00:1450:4010:c03::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZYzUf-0008K7-WD
 for barebox@lists.infradead.org; Mon, 07 Sep 2015 16:42:10 +0000
Received: by lanb10 with SMTP id b10so54391736lan.3
 for <barebox@lists.infradead.org>; Mon, 07 Sep 2015 09:41:47 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Mon,  7 Sep 2015 19:43:53 +0300
Message-Id: <1441644233-26311-1-git-send-email-pmamonov@gmail.com>
In-Reply-To: <1441641223.28391.11.camel@pengutronix.de>
References: <1441641223.28391.11.camel@pengutronix.de>
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
Subject: [PATCHv3] ata: intf_platform_ide: add OF bindings
To: l.stach@pengutronix.de, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/ata/intf_platform_ide.c | 34 +++++++++++++++++++++++++++++-----
 1 file changed, 29 insertions(+), 5 deletions(-)

diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_ide.c
index 0d392d8..ab633c0 100644
--- a/drivers/ata/intf_platform_ide.c
+++ b/drivers/ata/intf_platform_ide.c
@@ -29,6 +29,7 @@
 #include <ata_drive.h>
 #include <platform_ide.h>
 #include <linux/err.h>
+#include <of.h>
 
 /**
  * Setup the register specific addresses for an ATA like divice
@@ -85,8 +86,22 @@ static int platform_ide_probe(struct device_d *dev)
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
+	} else {
 		dev_err(dev, "No platform data. Cannot continue\n");
 		return -EINVAL;
 	}
@@ -123,9 +138,9 @@ static int platform_ide_probe(struct device_d *dev)
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
@@ -136,9 +151,18 @@ static int platform_ide_probe(struct device_d *dev)
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
