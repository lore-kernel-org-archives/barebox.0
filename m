Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h5qqn-0006br-Em
 for barebox@lists.infradead.org; Mon, 18 Mar 2019 11:54:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 18 Mar 2019 12:54:33 +0100
Message-Id: <20190318115433.31104-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] of: Fix reproducible names for #address-cells != 1
To: Barebox List <barebox@lists.infradead.org>
Cc: Bastian Krause <bst@pengutronix.de>

For the new "fixed-partitions" binding we ignore the partitions
subnode for creating reproducible names and set node to its parent.
To get the number of address cells we must call of_n_addr_cells()
before setting node to its parent though, not afterwards. With the
current behaviour we always get OF_ROOT_NODE_ADDR_CELLS_DEFAULT (=1).
This happens to work then the partitioned device is less than 4GiB
in size. On bigger devices #address-cells = <2> is chosen by the
mtd partition fixup code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reported-by: Bastian Krause <bst@pengutronix.de>
---
 drivers/of/base.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index b082f0c656..318ba72cb0 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2274,6 +2274,8 @@ char *of_get_reproducible_name(struct device_node *node)
 		return basprintf("[0x%llx]", addr);
 	}
 
+	na = of_n_addr_cells(node);
+
 	/*
 	 * Special workaround for the of partition binding. In the old binding
 	 * the partitions are directly under the hardware devicenode whereas in
@@ -2286,8 +2288,6 @@ char *of_get_reproducible_name(struct device_node *node)
 		node = node->parent;
 	}
 
-	na = of_n_addr_cells(node);
-
 	offset = of_read_number(reg, na);
 
 	str = of_get_reproducible_name(node->parent);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
