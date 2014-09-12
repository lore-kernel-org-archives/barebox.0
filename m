Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XSNrr-0003A4-Eo
 for barebox@lists.infradead.org; Fri, 12 Sep 2014 10:14:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Sep 2014 12:13:48 +0200
Message-Id: <1410516830-9403-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/10] resource: Let dev_request_mem_region_by_name return an
 error pointer
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c           | 4 ++--
 drivers/mtd/nand/nomadik_nand.c | 7 +++++++
 drivers/video/omap.c            | 3 ++-
 3 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 23f31ce..e61c6c5 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -308,11 +308,11 @@ void __iomem *dev_request_mem_region_by_name(struct device_d *dev, const char *n
 
 	res = dev_get_resource_by_name(dev, IORESOURCE_MEM, name);
 	if (IS_ERR(res))
-		return NULL;
+		return ERR_CAST(res);
 
 	res = request_iomem_region(dev_name(dev), res->start, res->end);
 	if (IS_ERR(res))
-		return NULL;
+		return ERR_CAST(res);
 
 	return (void __force __iomem *)res->start;
 }
diff --git a/drivers/mtd/nand/nomadik_nand.c b/drivers/mtd/nand/nomadik_nand.c
index fbd8ecd..8f37345 100644
--- a/drivers/mtd/nand/nomadik_nand.c
+++ b/drivers/mtd/nand/nomadik_nand.c
@@ -26,6 +26,7 @@
 #include <malloc.h>
 #include <init.h>
 
+#include <linux/err.h>
 #include <linux/types.h>
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/nand.h>
@@ -190,7 +191,11 @@ static int nomadik_nand_probe(struct device_d *dev)
 	}
 
 	host->cmd_va = dev_request_mem_region_by_name(dev, "nand_cmd");
+	if (IS_ERR(host->cmd_va))
+		return PTR_ERR(host->cmd_va);
 	host->addr_va = dev_request_mem_region_by_name(dev, "nand_addr");
+	if (IS_ERR(host->addr_va))
+		return PTR_ERR(host->addr_va);
 
 	/* Link all private pointers */
 	mtd = &host->mtd;
@@ -200,6 +205,8 @@ static int nomadik_nand_probe(struct device_d *dev)
 	mtd->parent = dev;
 
 	nand->IO_ADDR_W = nand->IO_ADDR_R = dev_request_mem_region_by_name(dev, "nand_data");
+	if (IS_ERR(nand->IO_ADDR_W))
+		return PTR_ERR(nand->IO_ADDR_W);
 	nand->cmd_ctrl = nomadik_cmd_ctrl;
 
 	nand->ecc.mode = NAND_ECC_HW;
diff --git a/drivers/video/omap.c b/drivers/video/omap.c
index 485cc75..bd66c92 100644
--- a/drivers/video/omap.c
+++ b/drivers/video/omap.c
@@ -29,6 +29,7 @@
 #include <malloc.h>
 #include <common.h>
 #include <clock.h>
+#include <linux/err.h>
 
 #include <mach/omap4-silicon.h>
 #include <mach/omap-fb.h>
@@ -442,7 +443,7 @@ static int omapfb_probe(struct device_d *dev)
 	fbi->dss   = dev_request_mem_region_by_name(dev, "omap4_dss");
 	fbi->dispc = dev_request_mem_region_by_name(dev, "omap4_dispc");
 
-	if (!fbi->dss || !fbi->dispc) {
+	if (IS_ERR(fbi->dss) || IS_ERR(fbi->dispc)) {
 		dev_err(dev, "Insufficient register description\n");
 		rc = -EINVAL;
 		goto out;
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
