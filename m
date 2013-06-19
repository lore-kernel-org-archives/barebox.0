Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x229.google.com ([2a00:1450:4008:c01::229])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpEPZ-00064l-4S
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 09:10:45 +0000
Received: by mail-bk0-f41.google.com with SMTP id jc3so2229626bkc.0
 for <barebox@lists.infradead.org>; Wed, 19 Jun 2013 02:10:09 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 19 Jun 2013 11:09:48 +0200
Message-Id: <1371632991-1504-20-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1371576607-8090-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 19/22] OF: base: remove of_tree_for_each_node from public
 API
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This patch converts users of of_tree_for_each_node to recently added
for_eacg_compatible_node helper. Also of_tree_for_each_node is removed
from public OF API.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 arch/arm/boards/at91sam9x5ek/hw_version.c |   10 +++-------
 arch/arm/boards/highbank/init.c           |   16 ++++++----------
 drivers/of/base.c                         |    8 ++++++++
 include/of.h                              |    8 --------
 4 files changed, 17 insertions(+), 25 deletions(-)

diff --git a/arch/arm/boards/at91sam9x5ek/hw_version.c b/arch/arm/boards/at91sam9x5ek/hw_version.c
index 91af331..426bd35 100644
--- a/arch/arm/boards/at91sam9x5ek/hw_version.c
+++ b/arch/arm/boards/at91sam9x5ek/hw_version.c
@@ -234,13 +234,9 @@ static int cm_cogent_fixup(struct device_node *root)
 	int ret;
 	struct device_node *node;
 
-	of_tree_for_each_node(node, root) {
-		struct device_node *slotnode;
-
-		if (!of_device_is_compatible(node, "atmel,hsmci"))
-			continue;
-
-		slotnode = of_find_child_by_name(node, "slot");
+	for_each_compatible_node(node, NULL, "atmel,hsmci") {
+		struct device_node *slotnode =
+			of_find_child_by_name(node, "slot");
 		if (!slotnode)
 			continue;
 
diff --git a/arch/arm/boards/highbank/init.c b/arch/arm/boards/highbank/init.c
index 1aa713b..46ecc88 100644
--- a/arch/arm/boards/highbank/init.c
+++ b/arch/arm/boards/highbank/init.c
@@ -35,19 +35,15 @@ static int hb_fixup(struct device_node *root)
 	__be32 latency;
 
 	if (!(reg & HB_PWRDOM_STAT_SATA)) {
-		of_tree_for_each_node(node, root) {
-			if (of_device_is_compatible(node, "calxeda,hb-ahci"))
-				of_set_property(node, "status", "disabled",
-						sizeof("disabled"), 1);
-		}
+		for_each_compatible_node(node, NULL, "calxeda,hb-ahci")
+			of_set_property(node, "status", "disabled",
+					sizeof("disabled"), 1);
 	}
 
 	if (!(reg & HB_PWRDOM_STAT_EMMC)) {
-		of_tree_for_each_node(node, root) {
-			if (of_device_is_compatible(node, "calxeda,hb-sdhci"))
-				of_set_property(node, "status", "disabled",
-						sizeof("disabled"), 1);
-		}
+		for_each_compatible_node(node, NULL, "calxeda,hb-sdhci")
+			of_set_property(node, "status", "disabled",
+					sizeof("disabled"), 1);
 	}
 
 	if ((opp_table[0] >> 16) != HB_OPP_VERSION)
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 3e7a488..c8497f4 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -28,6 +28,14 @@
 #include <linux/amba/bus.h>
 #include <linux/err.h>
 
+/*
+ * Iterate over all nodes of a tree. As a devicetree does not
+ * have a dedicated list head, the start node (usually the root
+ * node) will not be iterated over.
+ */
+#define of_tree_for_each_node(node, root) \
+	list_for_each_entry(node, &root->list, list)
+
 /**
  * struct alias_prop - Alias property in 'aliases' node
  * @link:	List node to link the structure in aliases_lookup list
diff --git a/include/of.h b/include/of.h
index 30b5be5..2ef00be 100644
--- a/include/of.h
+++ b/include/of.h
@@ -85,14 +85,6 @@ int of_modalias_node(struct device_node *node, char *modalias, int len);
 #define device_node_for_nach_child(node, child) \
 	list_for_each_entry(child, &node->children, parent_list)
 
-/*
- * Iterate over all nodes of a tree. As a devicetree does not
- * have a dedicated list head, the start node (usually the root
- * node) will not be iterated over.
- */
-#define of_tree_for_each_node(node, root) \
-	list_for_each_entry(node, &root->list, list)
-
 /* Helper to read a big number; size is in cells (not bytes) */
 static inline u64 of_read_number(const __be32 *cell, int size)
 {
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
