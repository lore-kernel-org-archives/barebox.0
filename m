Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XaTF5-00055N-1V
 for barebox@lists.infradead.org; Sat, 04 Oct 2014 17:35:41 +0000
Received: from tellur.intern.lynxeye.de (p57B5E0B8.dip0.t-ipconnect.de
 [87.181.224.184]) by lynxeye.de (Postfix) with ESMTPA id F006126C2009
 for <barebox@lists.infradead.org>; Sat,  4 Oct 2014 19:34:04 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sat,  4 Oct 2014 19:40:21 +0200
Message-Id: <1412444425-2569-16-git-send-email-dev@lynxeye.de>
In-Reply-To: <1412444425-2569-1-git-send-email-dev@lynxeye.de>
References: <1412444425-2569-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v2 15/19] of: import pci range parser from linux
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/of/Kconfig   |  1 +
 drivers/of/address.c | 68 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/of_address.h | 57 +++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 126 insertions(+)

diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index 97a1d93..97378ab 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -30,6 +30,7 @@ config OF_GPIO
 config OF_PCI
 	bool
 	depends on PCI
+	select OF_ADDRESS_PCI
 	help
 	  OpenFirmware PCI bus accessors
 
diff --git a/drivers/of/address.c b/drivers/of/address.c
index b3cbb15..8018d78 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -179,6 +179,74 @@ static int of_bus_pci_translate(__be32 *addr, u64 offset, int na)
 }
 #endif /* CONFIG_OF_ADDRESS_PCI */
 
+#ifdef CONFIG_OF_PCI
+int of_pci_range_parser_init(struct of_pci_range_parser *parser,
+				struct device_node *node)
+{
+	const int na = 3, ns = 2;
+	int rlen;
+
+	parser->node = node;
+	parser->pna = of_n_addr_cells(node);
+	parser->np = parser->pna + na + ns;
+
+	parser->range = of_get_property(node, "ranges", &rlen);
+	if (parser->range == NULL)
+		return -ENOENT;
+
+	parser->end = parser->range + rlen / sizeof(__be32);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_pci_range_parser_init);
+
+struct of_pci_range *of_pci_range_parser_one(struct of_pci_range_parser *parser,
+						struct of_pci_range *range)
+{
+	const int na = 3, ns = 2;
+
+	if (!range)
+		return NULL;
+
+	if (!parser->range || parser->range + parser->np > parser->end)
+		return NULL;
+
+	range->pci_space = parser->range[0];
+	range->flags = of_bus_pci_get_flags(parser->range);
+	range->pci_addr = of_read_number(parser->range + 1, ns);
+	range->cpu_addr = of_translate_address(parser->node,
+				parser->range + na);
+	range->size = of_read_number(parser->range + parser->pna + na, ns);
+
+	parser->range += parser->np;
+
+	/* Now consume following elements while they are contiguous */
+	while (parser->range + parser->np <= parser->end) {
+		u32 flags, pci_space;
+		u64 pci_addr, cpu_addr, size;
+
+		pci_space = be32_to_cpup(parser->range);
+		flags = of_bus_pci_get_flags(parser->range);
+		pci_addr = of_read_number(parser->range + 1, ns);
+		cpu_addr = of_translate_address(parser->node,
+				parser->range + na);
+		size = of_read_number(parser->range + parser->pna + na, ns);
+
+		if (flags != range->flags)
+			break;
+		if (pci_addr != range->pci_addr + range->size ||
+		    cpu_addr != range->cpu_addr + range->size)
+			break;
+
+		range->size += size;
+		parser->range += parser->np;
+	}
+
+	return range;
+}
+EXPORT_SYMBOL_GPL(of_pci_range_parser_one);
+#endif /* CONFIG_OF_PCI */
+
 /*
  * Array of bus specific translators
  */
diff --git a/include/of_address.h b/include/of_address.h
index 9022ab7..ebf3ec2 100644
--- a/include/of_address.h
+++ b/include/of_address.h
@@ -4,6 +4,38 @@
 #include <common.h>
 #include <of.h>
 
+struct of_pci_range_parser {
+	struct device_node *node;
+	const __be32 *range;
+	const __be32 *end;
+	int np;
+	int pna;
+};
+
+struct of_pci_range {
+	u32 pci_space;
+	u64 pci_addr;
+	u64 cpu_addr;
+	u64 size;
+	u32 flags;
+};
+
+#define for_each_of_pci_range(parser, range) \
+	for (; of_pci_range_parser_one(parser, range);)
+
+static inline void of_pci_range_to_resource(struct of_pci_range *range,
+					    struct device_node *np,
+					    struct resource *res)
+{
+	res->flags = range->flags;
+	res->start = range->cpu_addr;
+	res->end = range->cpu_addr + range->size - 1;
+	res->parent = NULL;
+	INIT_LIST_HEAD(&res->children);
+	INIT_LIST_HEAD(&res->sibling);
+	res->name = np->full_name;
+}
+
 #ifndef pci_address_to_pio
 static inline unsigned long pci_address_to_pio(phys_addr_t addr) { return -1; }
 #endif
@@ -69,4 +101,29 @@ static inline void __iomem *of_iomap(struct device_node *np, int index)
 
 #endif /* CONFIG_OFTREE */
 
+#ifdef CONFIG_OF_PCI
+
+extern int of_pci_range_parser_init(struct of_pci_range_parser *parser,
+			struct device_node *node);
+
+extern struct of_pci_range *of_pci_range_parser_one(
+			struct of_pci_range_parser *parser,
+			struct of_pci_range *range);
+
+#else
+
+static inline int of_pci_range_parser_init(struct of_pci_range_parser *parser,
+			struct device_node *node)
+{
+	return -1;
+}
+
+static inline struct of_pci_range *of_pci_range_parser_one(
+					struct of_pci_range_parser *parser,
+					struct of_pci_range *range)
+{
+	return NULL;
+}
+#endif /* CONFIG_OF_PCI */
+
 #endif /* __OF_ADDRESS_H */
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
