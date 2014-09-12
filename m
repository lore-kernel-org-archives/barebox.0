Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XSNrr-00039t-Ei
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 10:14:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Sep 2014 12:13:41 +0200
Message-Id: <1410516830-9403-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1410516830-9403-1-git-send-email-s.hauer@pengutronix.de>
References: <1410516830-9403-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/10] ata: platform_ide: cleanup resource requesting
To: barebox@lists.infradead.org

- use dev_request_mem_region to simplify code
- check return values and bail out

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ata/intf_platform_ide.c | 47 +++++++++++++++++++----------------------
 1 file changed, 22 insertions(+), 25 deletions(-)

diff --git a/drivers/ata/intf_platform_ide.c b/drivers/ata/intf_platform_ide.c
index ecc2546..b3faf47 100644
--- a/drivers/ata/intf_platform_ide.c
+++ b/drivers/ata/intf_platform_ide.c
@@ -81,7 +81,7 @@ static int platform_ide_probe(struct device_d *dev)
 	int rc;
 	struct ide_port_info *pdata = dev->platform_data;
 	struct ide_port *ide;
-	void *reg_base, *alt_base;
+	void *reg_base, *alt_base = NULL;
 	struct resource *reg, *alt;
 	int mmio;
 
@@ -90,35 +90,32 @@ static int platform_ide_probe(struct device_d *dev)
 		return -EINVAL;
 	}
 
-	alt = NULL;
-	reg = dev_get_resource(dev, IORESOURCE_MEM, 0);
-	mmio = (reg != NULL);
-	if (reg != NULL) {
-		reg = request_iomem_region(dev_name(dev), reg->start,
-					   reg->end);
-		alt = dev_get_resource(dev, IORESOURCE_MEM, 1);
-		if (alt != NULL)
-			alt = request_iomem_region(dev_name(dev), alt->start,
-						   alt->end);
+	reg_base = dev_request_mem_region(dev, 0);
+	mmio = (reg_base != NULL);
+	if (mmio) {
+		alt_base = dev_request_mem_region(dev, 1);
 	} else {
 		reg = dev_get_resource(dev, IORESOURCE_IO, 0);
-		if (reg != NULL) {
-			reg = request_ioport_region(dev_name(dev), reg->start,
-						    reg->end);
-			alt = dev_get_resource(dev, IORESOURCE_IO, 1);
-			if (alt != NULL)
-				alt = request_ioport_region(dev_name(dev),
-							    alt->start,
-							    alt->end);
+		if (!reg)
+			return -ENODEV;
+
+		reg = request_ioport_region(dev_name(dev), reg->start,
+					    reg->end);
+		if (!reg)
+			return -ENODEV;
+
+		reg_base = (void __force __iomem *) reg->start;
+
+		alt = dev_get_resource(dev, IORESOURCE_IO, 1);
+		if (alt) {
+			alt = request_ioport_region(dev_name(dev),
+						    alt->start,
+						    alt->end);
+			if (!alt)
+				return -ENODEV;
 		}
 	}
 
-	reg_base = (reg != NULL ? (void __force __iomem *) reg->start : NULL);
-	alt_base = (alt != NULL ? (void __force __iomem *) alt->start : NULL);
-
-	if (!reg_base)
-		return -ENODEV;
-
 	ide = xzalloc(sizeof(*ide));
 	ide->io.mmio = mmio;
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
