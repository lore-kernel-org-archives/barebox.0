Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho6Wo-0006Fz-F4
 for barebox@lists.infradead.org; Thu, 18 Jul 2019 13:32:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Jul 2019 15:32:56 +0200
Message-Id: <20190718133256.21249-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] mtd: nand: Add ecc parameters as device parameters
To: Barebox List <barebox@lists.infradead.org>

The ecc strength/bytes/size values are useful informations sometimes,
add them as device parameters.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/nand_base.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index bf15e6ccee..5474d0db3c 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -3967,5 +3967,9 @@ int add_mtd_nand_device(struct mtd_info *mtd, char *devname)
 			   ARRAY_SIZE(bbt_type_strings),
 			   mtd);
 
+	dev_add_param_uint32_ro(&mtd->class_dev, "ecc.bytes", &chip->ecc.bytes, "%u");
+	dev_add_param_uint32_ro(&mtd->class_dev, "ecc.strength", &chip->ecc.strength, "%u");
+	dev_add_param_uint32_ro(&mtd->class_dev, "ecc.size", &chip->ecc.size, "%u");
+
 	return ret;
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
