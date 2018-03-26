Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f0T4c-0000jz-Bn
 for barebox@lists.infradead.org; Mon, 26 Mar 2018 14:26:12 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Mon, 26 Mar 2018 16:25:56 +0200
Message-Id: <20180326142556.27727-1-p.zabel@pengutronix.de>
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
Subject: [PATCH] of: partition: fix typo when writing #address-cells
To: barebox@lists.infradead.org

On > 4 GiB eMMC devices, barebox writes a 32-bit address and a 64-bit
size into the partition reg property, because #address-cells is
accidentally written as '#addres-cells'. This causes a fallback to
32-bit address size. Fix the typo and thereby of_partition_fixup for
64-bit partitions.

Fixes: a2fa18f9f483 ("mtd: of: Make used partition binding configurable")
Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/of/partition.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 6f9651a9e4..aa6e601b7f 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -190,7 +190,7 @@ static int of_partition_fixup(struct device_node *root, void *ctx)
 	if (ret)
 		return ret;
 
-	of_property_write_u32(partnode, "#addres-cells", n_cells);
+	of_property_write_u32(partnode, "#address-cells", n_cells);
 	if (ret)
 		return ret;
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
