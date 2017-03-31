Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctpCG-0005Ho-1n
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 05:34:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 07:33:14 +0200
Message-Id: <20170331053323.17821-6-s.hauer@pengutronix.de>
In-Reply-To: <20170331053323.17821-1-s.hauer@pengutronix.de>
References: <20170331053323.17821-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/14] of: partition: support 64bit partition sizes
To: Barebox List <barebox@lists.infradead.org>

Do not assume that #address-cells and #size-cells are
both 1. Parse them appropriately to support devices
> 4GuB.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/partition.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index f4d6c3322c..30df6b32d1 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -40,10 +40,11 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 	char *filename;
 	struct cdev *new;
 	const __be32 *reg;
-	unsigned long offset, size;
+	u64 offset, size;
 	const char *name;
 	int len;
 	unsigned long flags = 0;
+	int na, ns;
 
 	if (!node)
 		return NULL;
@@ -52,8 +53,16 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 	if (!reg)
 		return NULL;
 
-	offset = be32_to_cpu(reg[0]);
-	size = be32_to_cpu(reg[1]);
+	na = of_n_addr_cells(node);
+	ns = of_n_size_cells(node);
+
+	if (len < (na + ns) * sizeof(__be32)) {
+		pr_err("reg property too small in %s\n", node->full_name);
+		return NULL;
+	}
+
+	offset = of_read_number(reg, na);
+	size = of_read_number(reg + na, ns);
 
 	partname = of_get_property(node, "label", &len);
 	if (!partname)
@@ -63,7 +72,7 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 
 	name = (char *)partname;
 
-	debug("add partition: %s.%s 0x%08lx 0x%08lx\n", cdev->name, partname, offset, size);
+	debug("add partition: %s.%s 0x%08llx 0x%08llx\n", cdev->name, partname, offset, size);
 
 	if (of_get_property(node, "read-only", &len))
 		flags = DEVFS_PARTITION_READONLY;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
