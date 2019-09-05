Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pMg-00074e-K7
 for barebox@lists.infradead.org; Thu, 05 Sep 2019 10:51:48 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu,  5 Sep 2019 12:51:39 +0200
Message-Id: <20190905105142.13681-5-m.tretter@pengutronix.de>
In-Reply-To: <20190905105142.13681-1-m.tretter@pengutronix.de>
References: <20190905105142.13681-1-m.tretter@pengutronix.de>
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
Subject: [PATCH 4/7] of: add iterator for overlays
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
 drivers/of/overlay.c | 45 ++++++++++++++++++++++++++++++++++++++++++++
 include/of.h         | 13 +++++++++++++
 2 files changed, 58 insertions(+)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index b9283e6a90..c413ad9849 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -185,6 +185,51 @@ static int of_overlay_fixup(struct device_node *root, void *data)
 	return 0;
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
index ac80dc3247..48f85c589d 100644
--- a/include/of.h
+++ b/include/of.h
@@ -876,6 +876,11 @@ static inline struct device_node *of_find_root_node(struct device_node *node)
 struct device_node *of_resolve_phandles(struct device_node *root,
 					const struct device_node *overlay);
 int of_register_overlay(struct device_node *overlay);
+int of_process_overlay(struct device_node *root,
+		    struct device_node *overlay,
+		    int (*process)(struct device_node *target,
+				   struct device_node *overlay, void *data),
+		    void *data);
 #else
 static inline struct device_node *of_resolve_phandles(struct device_node *root,
 					const struct device_node *overlay)
@@ -888,6 +893,14 @@ static inline int of_register_overlay(struct device_node *overlay)
 	return -ENOSYS;
 }
 
+int of_process_overlay(struct device_node *root,
+		    struct device_node *overlay,
+		    int (*process)(struct device_node *target,
+				   struct device_node *overlay, void *data),
+		    void *data)
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
