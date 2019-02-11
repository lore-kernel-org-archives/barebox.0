Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtEJf-0006hm-ES
 for barebox@lists.infradead.org; Mon, 11 Feb 2019 16:20:21 +0000
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 11 Feb 2019 17:20:13 +0100
Message-Id: <20190211162013.5320-2-m.felsch@pengutronix.de>
In-Reply-To: <20190211162013.5320-1-m.felsch@pengutronix.de>
References: <20190211162013.5320-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 2/2] memory: of_fixup: adapt to new memory layout
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de

Since kernel 4.16 the memory nodes got a @<reg> suffix so the fixup
won't work correctly anymore, because instead of adapting the extisting
one it creates a new node.

To be compatible with the old and new layout delete the found memory
node and create a new one. The new node follows the new @<reg> style.

The patch also renames the node element to root to make it more clear.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/memory.c | 24 ++++++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index 00fa7c50ff..5402acab8e 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -224,7 +224,7 @@ int memory_bank_first_find_space(resource_size_t *retstart,
 
 #ifdef CONFIG_OFTREE
 
-static int of_memory_fixup(struct device_node *node, void *unused)
+static int of_memory_fixup(struct device_node *root, void *unused)
 {
 	struct memory_bank *bank;
 	int err;
@@ -232,7 +232,23 @@ static int of_memory_fixup(struct device_node *node, void *unused)
 	struct device_node *memnode;
 	u8 tmp[16 * 16]; /* Up to 64-bit address + 64-bit size */
 
-	memnode = of_create_node(node, "/memory");
+	/*
+	 * Since kernel 4.16 the memory node got a @<reg> suffix. To support
+	 * the old and the new style delete any found memory node and add it
+	 * again to be sure that the memory node exists only once. It shouldn't
+	 * bother older kernels if the memory node has this suffix so adding it
+	 * following the new style.
+	 */
+
+	memnode = of_find_node_by_name(root, "memory");
+	if (!memnode)
+		memnode = of_find_node_by_type(root, "memory");
+
+	if (memnode)
+		of_delete_node(memnode);
+
+	/* At this moment we don't know the <reg> val */
+	memnode = of_create_node(root, "/memory");
 	if (!memnode)
 		return -ENOMEM;
 
@@ -256,6 +272,10 @@ static int of_memory_fixup(struct device_node *node, void *unused)
 		return err;
 	}
 
+	/* now adapt the node name */
+	of_rename_node(memnode, basprintf("memory@%llx",
+				 of_read_number((u32 *)tmp, addr_cell_len)));
+
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
