Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x236.google.com ([2a00:1450:4008:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uu5ER-0005s6-2P
 for barebox@lists.infradead.org; Tue, 02 Jul 2013 18:23:15 +0000
Received: by mail-bk0-f54.google.com with SMTP id it16so2453160bkc.41
 for <barebox@lists.infradead.org>; Tue, 02 Jul 2013 11:22:53 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue,  2 Jul 2013 20:14:31 +0200
Message-Id: <1372788879-11028-3-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1372152047-28134-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1372152047-28134-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v3 02/10] OF: convert of_translate_address to new API
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This converts existing of_translate_address to recently added API. In
contrast to existing behavior, the new function honors ranges properties
properly. It now allows reg properties to be set as offset with respect
to the correspoding parent node.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/of/address.c |    6 ++++++
 drivers/of/base.c    |   26 +-------------------------
 include/of.h         |    2 --
 include/of_address.h |    8 ++++++++
 4 files changed, 15 insertions(+), 27 deletions(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index 3e5387a..4cacdb1 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -278,6 +278,12 @@ static u64 __of_translate_address(struct device_node *dev,
 	return result;
 }
 
+u64 of_translate_address(struct device_node *dev, const __be32 *in_addr)
+{
+	return __of_translate_address(dev, in_addr, "ranges");
+}
+EXPORT_SYMBOL(of_translate_address);
+
 u64 of_translate_dma_address(struct device_node *dev, const __be32 *in_addr)
 {
 	return __of_translate_address(dev, in_addr, "dma-ranges");
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 63ff647..2778230 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -19,6 +19,7 @@
  */
 #include <common.h>
 #include <of.h>
+#include <of_address.h>
 #include <errno.h>
 #include <malloc.h>
 #include <init.h>
@@ -242,31 +243,6 @@ const char *of_alias_get(struct device_node *np)
 }
 EXPORT_SYMBOL_GPL(of_alias_get);
 
-u64 of_translate_address(struct device_node *node, const __be32 *in_addr)
-{
-	struct property *p;
-	u64 addr = be32_to_cpu(*in_addr);
-
-	while (1) {
-		int na, nc;
-
-		if (!node->parent)
-			return addr;
-
-		node = node->parent;
-		p = of_find_property(node, "ranges", NULL);
-		if (!p && node->parent)
-			return OF_BAD_ADDR;
-		of_bus_count_cells(node, &na, &nc);
-		if (na != 1 || nc != 1) {
-			printk("%s: #size-cells != 1 or #address-cells != 1 "
-					"currently not supported\n", node->name);
-			return OF_BAD_ADDR;
-		}
-	}
-}
-EXPORT_SYMBOL(of_translate_address);
-
 /*
  * of_find_node_by_phandle - Find a node given a phandle
  * @handle:    phandle of the node to find
diff --git a/include/of.h b/include/of.h
index b392ca9..e091326 100644
--- a/include/of.h
+++ b/include/of.h
@@ -101,8 +101,6 @@ int of_get_named_gpio(struct device_node *np,
 void of_print_property(const void *data, int len);
 void of_print_cmdline(struct device_node *root);
 
-u64 of_translate_address(struct device_node *node, const __be32 *in_addr);
-
 #define OF_ROOT_NODE_SIZE_CELLS_DEFAULT 1
 #define OF_ROOT_NODE_ADDR_CELLS_DEFAULT 1
 
diff --git a/include/of_address.h b/include/of_address.h
index a82e2e5..9022ab7 100644
--- a/include/of_address.h
+++ b/include/of_address.h
@@ -10,6 +10,8 @@ static inline unsigned long pci_address_to_pio(phys_addr_t addr) { return -1; }
 
 #ifdef CONFIG_OFTREE
 
+extern u64 of_translate_address(struct device_node *dev,
+				const __be32 *in_addr);
 extern u64 of_translate_dma_address(struct device_node *dev,
 				const __be32 *in_addr);
 extern bool of_can_translate_address(struct device_node *dev);
@@ -24,6 +26,12 @@ extern void __iomem *of_iomap(struct device_node *np, int index);
 
 #else /* CONFIG_OFTREE */
 
+static inline u64 of_translate_address(struct device_node *dev,
+				const __be32 *in_addr)
+{
+	return OF_BAD_ADDR;
+}
+
 static inline u64 of_translate_dma_address(struct device_node *dev,
 				const __be32 *in_addr)
 {
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
