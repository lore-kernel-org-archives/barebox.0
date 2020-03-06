Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA8V1-0005UN-5m
 for barebox@lists.infradead.org; Fri, 06 Mar 2020 08:38:28 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Fri,  6 Mar 2020 09:38:11 +0100
Message-Id: <20200306083810.8181-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH v2] of: overlay: rework error message for symbols
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Missing symbols for overlay or root tree are valid if the overlay only
adds paths to the device tree. The code handles this correctly, however
it still isues a WARNING for the missing symbols. Demote the warning to
info and move into the of_overlay_apply_symbols() function.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/of/overlay.c | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index de79e05cbc..fadd072970 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -105,7 +105,7 @@ static char *of_overlay_fix_path(struct device_node *root,
 	return basprintf("%s%s", target->full_name, path_tail);
 }
 
-static int of_overlay_apply_symbols(struct device_node *root,
+static void of_overlay_apply_symbols(struct device_node *root,
 				    struct device_node *overlay)
 {
 	const char *old_path;
@@ -115,12 +115,12 @@ static int of_overlay_apply_symbols(struct device_node *root,
 	struct device_node *overlay_symbols;
 
 	root_symbols = of_get_child_by_name(root, "__symbols__");
-	if (!root_symbols)
-		return -EINVAL;
-
 	overlay_symbols = of_get_child_by_name(overlay, "__symbols__");
-	if (!overlay_symbols)
-		return -EINVAL;
+
+	if (!overlay_symbols || !root_symbols) {
+		pr_info("overlay/root doesn't have a __symbols__ node\n");
+		return;
+	}
 
 	list_for_each_entry(prop, &overlay_symbols->properties, list) {
 		if (of_prop_cmp(prop->name, "name") == 0)
@@ -133,8 +133,6 @@ static int of_overlay_apply_symbols(struct device_node *root,
 			 prop->name, new_path);
 		of_property_write_string(root_symbols, prop->name, new_path);
 	}
-
-	return 0;
 }
 
 static int of_overlay_apply_fragment(struct device_node *root,
@@ -171,9 +169,7 @@ int of_overlay_apply_tree(struct device_node *root,
 		return -EINVAL;
 
 	/* Copy symbols from resolved overlay to base device tree */
-	err = of_overlay_apply_symbols(root, resolved);
-	if (err)
-		pr_warn("failed to copy symbols from overlay");
+	of_overlay_apply_symbols(root, resolved);
 
 	/* Copy nodes and properties from resolved overlay to root */
 	for_each_child_of_node(resolved, fragment) {
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
