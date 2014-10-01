Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XZPGZ-00080H-IT
 for barebox@lists.infradead.org; Wed, 01 Oct 2014 19:08:48 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Wed,  1 Oct 2014 21:14:14 +0200
Message-Id: <1412190855-14289-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1412190855-14289-1-git-send-email-dev@lynxeye.de>
References: <1412190855-14289-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 1/2] fixup! of: import pci range parser from linux
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
Correct dependencies and put function definitions under
correct ifdef to avoid build warnings/errors on systems
with PCI but without OF.
---
 drivers/of/Kconfig   |  1 +
 drivers/of/address.c |  4 ++--
 include/of_address.h | 22 +++++++++++++++-------
 3 files changed, 18 insertions(+), 9 deletions(-)

diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index 8195506..39cd138 100644
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
index 15f3ade..8018d78 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -179,7 +179,7 @@ static int of_bus_pci_translate(__be32 *addr, u64 offset, int na)
 }
 #endif /* CONFIG_OF_ADDRESS_PCI */
 
-#ifdef CONFIG_PCI
+#ifdef CONFIG_OF_PCI
 int of_pci_range_parser_init(struct of_pci_range_parser *parser,
 				struct device_node *node)
 {
@@ -245,7 +245,7 @@ struct of_pci_range *of_pci_range_parser_one(struct of_pci_range_parser *parser,
 	return range;
 }
 EXPORT_SYMBOL_GPL(of_pci_range_parser_one);
-#endif /* CONFIG_PCI */
+#endif /* CONFIG_OF_PCI */
 
 /*
  * Array of bus specific translators
diff --git a/include/of_address.h b/include/of_address.h
index f9c3c0f..cef785e 100644
--- a/include/of_address.h
+++ b/include/of_address.h
@@ -55,11 +55,7 @@ extern struct device_node *of_find_matching_node_by_address(
 	struct device_node *from, const struct of_device_id *matches,
 	u64 base_address);
 extern void __iomem *of_iomap(struct device_node *np, int index);
-extern int of_pci_range_parser_init(struct of_pci_range_parser *parser,
-			struct device_node *node);
-extern struct of_pci_range *of_pci_range_parser_one(
-			struct of_pci_range_parser *parser,
-			struct of_pci_range *range);
+
 #else /* CONFIG_OFTREE */
 
 static inline u64 of_translate_address(struct device_node *dev,
@@ -103,6 +99,20 @@ static inline void __iomem *of_iomap(struct device_node *np, int index)
 	return NULL;
 }
 
+#endif /* CONFIG_OFTREE */
+
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
+#endif /* CONFIG_OF_PCI */
 static inline int of_pci_range_parser_init(struct of_pci_range_parser *parser,
 			struct device_node *node)
 {
@@ -116,6 +126,4 @@ static inline struct of_pci_range *of_pci_range_parser_one(
 	return NULL;
 }
 
-#endif /* CONFIG_OFTREE */
-
 #endif /* __OF_ADDRESS_H */
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
