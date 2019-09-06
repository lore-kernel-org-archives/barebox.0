Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6E9u-0004Ny-9H
 for barebox@lists.infradead.org; Fri, 06 Sep 2019 13:20:17 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri,  6 Sep 2019 15:20:05 +0200
Message-Id: <20190906132008.25309-5-m.tretter@pengutronix.de>
In-Reply-To: <20190906132008.25309-1-m.tretter@pengutronix.de>
References: <20190906132008.25309-1-m.tretter@pengutronix.de>
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
Subject: [PATCH v2 4/7] of: add iterator for overlays
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

Device tree overlays (the dto files) may contain multiple fragments for
different target nodes. Each fragment contains a __overlay__ node that
is applied to target node specified in the fragment.

Add a helper to call a function for each fragment in a device tree
overlay to avoid having device tree overlay internal information in
other modules.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>

---
Changelog:

v1->v2:
- add static inline for function stub
---
 drivers/of/overlay.c | 45 ++++++++++++++++++++++++++++++++++++++++++++
 include/of.h         | 13 +++++++++++++
 2 files changed, 58 insertions(+)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index f6a0576183..abfb3df9dc 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -194,6 +194,51 @@ static int of_overlay_fixup(struct device_node *root, void *data)
 	return of_overlay_apply_tree(root, overlay);
 }
 
+/**
+ * Iterate the overlay and call process for each fragment
+ *
+ * If process() fails for any fragment, the function will stop to process
+ * other fragments and return the error of the failed process() call.
+ */
+int of_process_overlay(struct device_node *root,
+		       struct device_node *overlay,
+		       int (*process)(struct device_node *target,
+				      struct device_node *overlay, void *data),
+		       void *data)
+{
+	struct device_node *resolved;
+	struct device_node *fragment;
+	int err = 0;
+
+	resolved = of_resolve_phandles(root, overlay);
+	if (!resolved)
+		return -EINVAL;
+
+	for_each_child_of_node(resolved, fragment) {
+		struct device_node *ovl;
+		struct device_node *target;
+
+		ovl = of_get_child_by_name(fragment, "__overlay__");
+		if (!ovl)
+			continue;
+
+		target = find_target(root, fragment);
+		if (!target)
+			continue;
+
+		err = process(target, ovl, data);
+		if (err) {
+			pr_warn("failed to process %s\n", fragment->name);
+			goto out;
+		}
+	}
+
+out:
+	of_delete_node(resolved);
+
+	return err;
+}
+
 /**
  * Register a devicetree overlay
  *
diff --git a/include/of.h b/include/of.h
index 1483c22db1..06dc9f61a5 100644
--- a/include/of.h
+++ b/include/of.h
@@ -877,6 +877,11 @@ struct device_node *of_resolve_phandles(struct device_node *root,
 int of_overlay_apply_tree(struct device_node *root,
 			  struct device_node *overlay);
 int of_register_overlay(struct device_node *overlay);
+int of_process_overlay(struct device_node *root,
+		    struct device_node *overlay,
+		    int (*process)(struct device_node *target,
+				   struct device_node *overlay, void *data),
+		    void *data);
 #else
 static inline struct device_node *of_resolve_phandles(struct device_node *root,
 					const struct device_node *overlay)
@@ -895,6 +900,14 @@ static inline int of_register_overlay(struct device_node *overlay)
 	return -ENOSYS;
 }
 
+static inline int of_process_overlay(struct device_node *root,
+				     struct device_node *overlay,
+				     int (*process)(struct device_node *target,
+						    struct device_node *overlay, void *data),
+				     void *data)
+{
+	return -ENOSYS;
+}
 #endif
 
 #endif /* __OF_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
