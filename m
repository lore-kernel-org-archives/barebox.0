Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtZhu-0005wf-Qz
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 15:10:48 +0000
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Tue, 12 Feb 2019 16:10:41 +0100
Message-Id: <20190212151041.17507-2-m.felsch@pengutronix.de>
In-Reply-To: <20190212151041.17507-1-m.felsch@pengutronix.de>
References: <20190212151041.17507-1-m.felsch@pengutronix.de>
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
Subject: [PATCH v2 2/2] memory: of_fixup: adapt to new memory layout
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de

Since kernel 4.16 the memory nodes got a @<reg> suffix so the fixup
won't work correctly anymore, because instead of adapting the extisting
one the fixup creates a new node and keeps the old (maybe incorrect)
node.

To be compatible with the old and new layout delete the found memory
node and create a new one. The new node follows the new @<reg> style.

The patch also renames the node parameter to make it clearer.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Note:
I've tested the patch on a customer board with one memory bank and on
the imx53 loco-r board with two memory banks. The fixup applies
correctly on both boards. Now I have two memory nodes on the imx53
loco-r board instead of one compared to the upstream dts.

Changelog:
v2:
 - delete all memory nodes, not just the first found
 - add one /memory node per bank, previous one /memory node for all
   banks

 common/memory.c | 75 +++++++++++++++++++++++++++++++++++++------------
 1 file changed, 57 insertions(+), 18 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index 00fa7c50ff..21b2b4f63a 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -224,39 +224,78 @@ int memory_bank_first_find_space(resource_size_t *retstart,
 
 #ifdef CONFIG_OFTREE
 
-static int of_memory_fixup(struct device_node *node, void *unused)
+static int of_memory_fixup(struct device_node *root, void *unused)
 {
 	struct memory_bank *bank;
 	int err;
-	int addr_cell_len, size_cell_len, len = 0;
-	struct device_node *memnode;
-	u8 tmp[16 * 16]; /* Up to 64-bit address + 64-bit size */
+	int addr_cell_len, size_cell_len;
+	struct device_node *memnode, *tmp, *np;
+	char *memnode_name;
 
-	memnode = of_create_node(node, "/memory");
-	if (!memnode)
-		return -ENOMEM;
+	/*
+	 * Since kernel 4.16 the memory node got a @<reg> suffix. To support
+	 * the old and the new style delete any found memory node and add it
+	 * again to be sure that the memory node exists only once. It shouldn't
+	 * bother older kernels if the memory node has this suffix so adding it
+	 * following the new style.
+	 */
 
-	err = of_property_write_string(memnode, "device_type", "memory");
-	if (err)
-		return err;
+	for_each_child_of_node_safe(root, tmp, np) {
+		const char *device_type;
 
-	addr_cell_len = of_n_addr_cells(memnode);
-	size_cell_len = of_n_size_cells(memnode);
+		err = of_property_read_string(np, "device_type", &device_type);
+		if (err || of_node_cmp("memory", device_type))
+			continue;
+
+		/* delete every found memory node */
+		of_delete_node(np);
+	}
+
+	addr_cell_len = of_n_addr_cells(root);
+	size_cell_len = of_n_size_cells(root);
 
 	for_each_memory_bank(bank) {
-		of_write_number(tmp + len, bank->start, addr_cell_len);
+		u8 tmp[16]; /* Up to 64-bit address + 64-bit size */
+		int len = 0;
+
+		/* Create a /memory node for each bank */
+		memnode_name = basprintf("/memory@%lx", bank->start);
+		if (!memnode_name) {
+			err = -ENOMEM;
+			goto err_out;
+		}
+
+		memnode = of_create_node(root, memnode_name);
+		if (!memnode) {
+			err = -ENOMEM;
+			goto err_free;
+		}
+
+		err = of_property_write_string(memnode, "device_type",
+					       "memory");
+		if (err)
+			goto err_free;
+
+		of_write_number(tmp, bank->start, addr_cell_len);
 		len += addr_cell_len * 4;
 		of_write_number(tmp + len, bank->size, size_cell_len);
 		len += size_cell_len * 4;
-	}
 
-	err = of_set_property(memnode, "reg", tmp, len, 1);
-	if (err) {
-		pr_err("could not set reg %s.\n", strerror(-err));
-		return err;
+		err = of_set_property(memnode, "reg", tmp, len, 1);
+		if (err) {
+			pr_err("could not set reg %s.\n", strerror(-err));
+			goto err_free;
+		}
+
+		free(memnode_name);
 	}
 
 	return 0;
+
+err_free:
+	free(memnode_name);
+err_out:
+	return err;
 }
 
 static int of_register_memory_fixup(void)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
