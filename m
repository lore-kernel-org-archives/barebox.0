Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6E9u-0004Nz-9M
 for barebox@lists.infradead.org; Fri, 06 Sep 2019 13:20:19 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri,  6 Sep 2019 15:20:03 +0200
Message-Id: <20190906132008.25309-3-m.tretter@pengutronix.de>
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
Subject: [PATCH v2 2/7] of: add support for devicetree overlays
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

The devicetree overlay support is based on the Linux driver for device
tree overlays, but many features that are not required in Barebox are
left out.

Unlike Linux, which applies the overlay to the live devicetree, Barebox
registers a fixup for the overlay which is applied with other fixups to
whatever tree is fixed. This is necessary to apply the overlay to
devicetrees that are passed to Linux, which might differ from the
devicetree that is currently live in Barebox.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>

---
Changelog:

v1->v2:
- export function for applying a device tree overlay
- define pr_fmt for overlay and resolver
- remove useless notifier.h
- document ownership of overlay memory
---
 drivers/of/Kconfig    |   9 ++
 drivers/of/Makefile   |   1 +
 drivers/of/overlay.c  | 209 +++++++++++++++++++++++++++++++
 drivers/of/resolver.c | 279 ++++++++++++++++++++++++++++++++++++++++++
 include/of.h          |  27 ++++
 5 files changed, 525 insertions(+)
 create mode 100644 drivers/of/overlay.c
 create mode 100644 drivers/of/resolver.c

diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index 24cf4465a8..1bb6639c5a 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -50,3 +50,12 @@ config OF_BAREBOX_ENV_IN_FS
 	help
 	  Allow the devie tree configuration of the barebox environment path
 	  to specify a file in filesystem, which will be mounted.
+
+config OF_OVERLAY
+	select OFTREE
+	bool "Devicetree overlays"
+	help
+	  Overlays allow to patch the devicetree. Unlike Linux, Barebox does
+	  not patch the live devicetree, but applies the overlays as fixup to
+	  the devicetree. Furthermore, overlays cannot be removed after they
+	  have been applied.
diff --git a/drivers/of/Makefile b/drivers/of/Makefile
index ec43870061..9c6f8de814 100644
--- a/drivers/of/Makefile
+++ b/drivers/of/Makefile
@@ -6,3 +6,4 @@ obj-y += partition.o
 obj-y += of_net.o
 obj-$(CONFIG_MTD) += of_mtd.o
 obj-$(CONFIG_OF_BAREBOX_DRIVERS) += barebox.o
+obj-$(CONFIG_OF_OVERLAY) += overlay.o resolver.o
diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
new file mode 100644
index 0000000000..f6a0576183
--- /dev/null
+++ b/drivers/of/overlay.c
@@ -0,0 +1,209 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Functions for working with device tree overlays
+ *
+ * Copyright (C) 2012 Pantelis Antoniou <panto@antoniou-consulting.com>
+ * Copyright (C) 2012 Texas Instruments Inc.
+ * Copyright (C) 2019 Pengutronix, Michael Tretter <m.tretter@pengutronix.de>
+ */
+#define pr_fmt(fmt) "of_overlay: " fmt
+
+#include <common.h>
+#include <of.h>
+#include <errno.h>
+
+static struct device_node *find_target(struct device_node *root,
+				       struct device_node *fragment)
+{
+	struct device_node *node;
+	const char *path;
+	u32 phandle;
+	int ret;
+
+	ret = of_property_read_u32(fragment, "target", &phandle);
+	if (!ret) {
+		node = of_find_node_by_phandle_from(phandle, root);
+		if (!node)
+			pr_err("fragment %pOF: phandle 0x%x not found\n",
+			       fragment, phandle);
+		return node;
+	}
+
+	ret = of_property_read_string(fragment, "target-path", &path);
+	if (!ret) {
+		node = of_find_node_by_path_from(root, path);
+		if (!node)
+			pr_err("fragment %pOF: path '%s' not found\n",
+			       fragment, path);
+		return node;
+	}
+
+	pr_err("fragment %pOF: no target property\n", fragment);
+
+	return NULL;
+}
+
+static int of_overlay_apply(struct device_node *target,
+			    const struct device_node *overlay)
+{
+	struct device_node *child;
+	struct device_node *target_child;
+	struct property *prop;
+	int err;
+
+	if (target == NULL || overlay == NULL)
+		return -EINVAL;
+
+	list_for_each_entry(prop, &overlay->properties, list) {
+		if (of_prop_cmp(prop->name, "name") == 0)
+			continue;
+
+		err = of_set_property(target, prop->name, prop->value,
+				      prop->length, true);
+		if (err)
+			return err;
+	}
+
+	for_each_child_of_node(overlay, child) {
+		target_child = of_get_child_by_name(target, child->name);
+		if (!target_child)
+			target_child = of_new_node(target, child->name);
+		if (!target_child)
+			return -ENOMEM;
+
+		err = of_overlay_apply(target_child, child);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
+static char *of_overlay_fix_path(struct device_node *root,
+				 struct device_node *overlay, const char *path)
+{
+	struct device_node *fragment;
+	struct device_node *target;
+	const char *path_tail;
+	const char *prefix;
+
+	fragment = of_find_node_by_path_from(overlay, path);
+	while ((fragment = of_get_parent(fragment)) != NULL) {
+		if (of_get_child_by_name(fragment, "__overlay__"))
+			break;
+	}
+	if (!fragment)
+		return NULL;
+
+	target = find_target(root, fragment);
+	if (!target)
+		return NULL;
+
+	prefix = of_get_child_by_name(fragment, "__overlay__")->full_name;
+	path_tail = path + strlen(prefix);
+
+	return basprintf("%s%s", target->full_name, path_tail);
+}
+
+static int of_overlay_apply_symbols(struct device_node *root,
+				    struct device_node *overlay)
+{
+	const char *old_path;
+	char *new_path;
+	struct property *prop;
+	struct device_node *root_symbols;
+	struct device_node *overlay_symbols;
+
+	root_symbols = of_get_child_by_name(root, "__symbols__");
+	if (!root_symbols)
+		return -EINVAL;
+
+	overlay_symbols = of_get_child_by_name(overlay, "__symbols__");
+	if (!overlay_symbols)
+		return -EINVAL;
+
+	list_for_each_entry(prop, &overlay_symbols->properties, list) {
+		if (of_prop_cmp(prop->name, "name") == 0)
+			continue;
+
+		old_path = of_property_get_value(prop);
+		new_path = of_overlay_fix_path(root, overlay, old_path);
+
+		pr_debug("add symbol %s with new path %s\n",
+			 prop->name, new_path);
+		of_property_write_string(root_symbols, prop->name, new_path);
+	}
+
+	return 0;
+}
+
+static int of_overlay_apply_fragment(struct device_node *root,
+				     struct device_node *fragment)
+{
+	struct device_node *target;
+	struct device_node *overlay;
+
+	overlay = of_get_child_by_name(fragment, "__overlay__");
+	if (!overlay)
+		return 0;
+
+	target = find_target(root, fragment);
+	if (!target)
+		return -EINVAL;
+
+	return of_overlay_apply(target, overlay);
+}
+
+/**
+ * Apply the overlay on the passed devicetree root
+ * @root: the devicetree onto which the overlay will be applied
+ * @overlay: the devicetree to apply as an overlay
+ */
+int of_overlay_apply_tree(struct device_node *root,
+			  struct device_node *overlay)
+{
+	struct device_node *resolved;
+	struct device_node *fragment;
+	int err;
+
+	resolved = of_resolve_phandles(root, overlay);
+	if (!resolved)
+		return -EINVAL;
+
+	/* Copy symbols from resolved overlay to base device tree */
+	err = of_overlay_apply_symbols(root, resolved);
+	if (err)
+		pr_warn("failed to copy symbols from overlay");
+
+	/* Copy nodes and properties from resolved overlay to root */
+	for_each_child_of_node(resolved, fragment) {
+		err = of_overlay_apply_fragment(root, fragment);
+		if (err)
+			pr_warn("failed to apply %s", fragment->name);
+	}
+
+	of_delete_node(resolved);
+
+	return err;
+}
+
+static int of_overlay_fixup(struct device_node *root, void *data)
+{
+	struct device_node *overlay = data;
+
+	return of_overlay_apply_tree(root, overlay);
+}
+
+/**
+ * Register a devicetree overlay
+ *
+ * The overlay is not applied to the live device tree, but registered as fixup
+ * for the fixed up device tree. Therefore, drivers relying on the overlay
+ * must use the fixed device tree.
+ *
+ * The fixup takes ownership of the overlay.
+ */
+int of_register_overlay(struct device_node *overlay)
+{
+	return of_register_fixup(of_overlay_fixup, overlay);
+}
diff --git a/drivers/of/resolver.c b/drivers/of/resolver.c
new file mode 100644
index 0000000000..9107c1fbb6
--- /dev/null
+++ b/drivers/of/resolver.c
@@ -0,0 +1,279 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Functions for dealing with DT resolution
+ *
+ * Copyright (C) 2012 Pantelis Antoniou <panto@antoniou-consulting.com>
+ * Copyright (C) 2012 Texas Instruments Inc.
+ * Copyright (C) 2019 Pengutronix, Michael Tretter <m.tretter@pengutronix.de>
+ */
+#define pr_fmt(fmt) "of_resolver: " fmt
+
+#include <common.h>
+#include <of.h>
+#include <errno.h>
+
+/**
+ * Recursively update phandles in overlay by adding delta
+ */
+static void adjust_overlay_phandles(struct device_node *overlay, int delta)
+{
+	struct device_node *child;
+	struct property *prop;
+
+	if (overlay->phandle != 0)
+		overlay->phandle += delta;
+
+	list_for_each_entry(prop, &overlay->properties, list) {
+		if (of_prop_cmp(prop->name, "phandle") != 0 &&
+		    of_prop_cmp(prop->name, "linux,phandle") != 0)
+			continue;
+		if (prop->length < 4)
+			continue;
+
+		be32_add_cpu(prop->value, delta);
+	}
+
+	for_each_child_of_node(overlay, child)
+		adjust_overlay_phandles(child, delta);
+}
+
+/**
+ * Update all unresolved phandles in the overlay using prop_fixup
+ *
+ * prop_fixup contains a list of tuples of path:property_name:offset, each of
+ * which refers to a property that is phandle to a node in the base
+ * devicetree.
+ */
+static int update_usages_of_a_phandle_reference(struct device_node *overlay,
+						struct property *prop_fixup,
+						phandle phandle)
+{
+	struct device_node *refnode;
+	struct property *prop;
+	char *value, *cur, *end, *node_path, *prop_name, *s;
+	int offset, len;
+	int err = 0;
+
+	pr_debug("resolve references to %s to phandle 0x%x\n",
+		 prop_fixup->name, phandle);
+
+	value = kmemdup(prop_fixup->value, prop_fixup->length, GFP_KERNEL);
+	if (!value)
+		return -ENOMEM;
+
+	end = value + prop_fixup->length;
+	for (cur = value; cur < end; cur += len + 1) {
+		len = strlen(cur);
+
+		node_path = cur;
+		s = strchr(cur, ':');
+		if (!s) {
+			err = -EINVAL;
+			goto err_fail;
+		}
+		*s++ = '\0';
+
+		prop_name = s;
+		s = strchr(s, ':');
+		if (!s) {
+			err = -EINVAL;
+			goto err_fail;
+		}
+		*s++ = '\0';
+
+		err = kstrtoint(s, 10, &offset);
+		if (err)
+			goto err_fail;
+
+		refnode = of_find_node_by_path_from(overlay, node_path);
+		if (!refnode)
+			continue;
+
+		prop = of_find_property(refnode, prop_name, NULL);
+		if (!prop) {
+			err = -ENOENT;
+			goto err_fail;
+		}
+
+		if (offset < 0 || offset + sizeof(__be32) > prop->length) {
+			err = -EINVAL;
+			goto err_fail;
+		}
+
+		*(__be32 *)(prop->value + offset) = cpu_to_be32(phandle);
+	}
+
+err_fail:
+	kfree(value);
+
+	if (err)
+		pr_debug("failed to resolve references to %s\n",
+			 prop_fixup->name);
+
+	return err;
+}
+
+/*
+ * Adjust the local phandle references by the given phandle delta.
+ *
+ * Subtree @local_fixups, which is overlay node __local_fixups__,
+ * mirrors the fragment node structure at the root of the overlay.
+ *
+ * For each property in the fragments that contains a phandle reference,
+ * @local_fixups has a property of the same name that contains a list
+ * of offsets of the phandle reference(s) within the respective property
+ * value(s).  The values at these offsets will be fixed up.
+ */
+static int adjust_local_phandle_references(struct device_node *local_fixups,
+		struct device_node *overlay, int phandle_delta)
+{
+	struct device_node *child, *overlay_child;
+	struct property *prop_fix, *prop;
+	int err, i, count;
+	unsigned int off;
+
+	if (!local_fixups)
+		return 0;
+
+	list_for_each_entry(prop_fix, &local_fixups->properties, list) {
+		if (!of_prop_cmp(prop_fix->name, "name") ||
+		    !of_prop_cmp(prop_fix->name, "phandle") ||
+		    !of_prop_cmp(prop_fix->name, "linux,phandle"))
+			continue;
+
+		if ((prop_fix->length % sizeof(__be32)) != 0 ||
+		    prop_fix->length == 0)
+			return -EINVAL;
+		count = prop_fix->length / sizeof(__be32);
+
+		prop = of_find_property(overlay, prop_fix->name, NULL);
+		if (!prop)
+			return -EINVAL;
+
+		for (i = 0; i < count; i++) {
+			off = be32_to_cpu(((__be32 *)prop_fix->value)[i]);
+			if ((off + sizeof(__be32)) > prop->length)
+				return -EINVAL;
+
+			be32_add_cpu(prop->value + off, phandle_delta);
+		}
+	}
+
+	for_each_child_of_node(local_fixups, child) {
+		for_each_child_of_node(overlay, overlay_child)
+			if (!of_node_cmp(child->name, overlay_child->name))
+				break;
+		if (!overlay_child)
+			return -EINVAL;
+
+		err = adjust_local_phandle_references(child, overlay_child,
+				phandle_delta);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
+/**
+ * of_resolve_phandles - Resolve phandles in overlay based on root
+ *
+ * Rename phandles in overlay to avoid conflicts with the base devicetree and
+ * replace all phandles in the overlay with their renamed versions. Resolve
+ * phandles referring to nodes in the base devicetree with the phandle from
+ * the base devicetree.
+ *
+ * Returns a new device_node with resolved phandles which must be deleted by
+ * the caller of this function.
+ */
+struct device_node *of_resolve_phandles(struct device_node *root,
+					const struct device_node *overlay)
+{
+	struct device_node *result;
+	struct device_node *local_fixups;
+	struct device_node *refnode;
+	struct device_node *symbols;
+	struct device_node *overlay_fixups;
+	struct property *prop;
+	const char *refpath;
+	phandle delta;
+	int err;
+
+	result = of_copy_node(NULL, overlay);
+	if (!result)
+		return NULL;
+
+	delta = of_get_tree_max_phandle(root) + 1;
+
+	/*
+	 * Rename the phandles in the devicetree overlay to prevent conflicts
+	 * with the phandles in the base devicetree.
+	 */
+	adjust_overlay_phandles(result, delta);
+
+	/*
+	 * __local_fixups__ contains all locations in the overlay that refer
+	 * to a phandle defined in the overlay. We must update the references,
+	 * because we just adjusted the definitions.
+	 */
+	local_fixups = of_find_node_by_name(result, "__local_fixups__");
+	err = adjust_local_phandle_references(local_fixups, result, delta);
+	if (err) {
+		pr_err("failed to fix phandles in overlay\n");
+		goto err;
+	}
+
+	/*
+	 * __fixups__ contains all locations in the overlay that refer to a
+	 * phandle that is not defined in the overlay and should be defined in
+	 * the base device tree. We must update the references, because they
+	 * are otherwise undefined.
+	 */
+	overlay_fixups = of_find_node_by_name(result, "__fixups__");
+	if (!overlay_fixups) {
+		pr_debug("overlay does not contain phandles to base devicetree\n");
+		goto out;
+	}
+
+	symbols = of_find_node_by_path_from(root, "/__symbols__");
+	if (!symbols) {
+		pr_err("__symbols__ missing from base devicetree\n");
+		goto err;
+	}
+
+	list_for_each_entry(prop, &overlay_fixups->properties, list) {
+		if (!of_prop_cmp(prop->name, "name"))
+			continue;
+
+		err = of_property_read_string(symbols, prop->name, &refpath);
+		if (err) {
+			pr_err("cannot find node %s in base devicetree\n",
+			       prop->name);
+			goto err;
+		}
+
+		refnode = of_find_node_by_path_from(root, refpath);
+		if (!refnode) {
+			pr_err("cannot find path %s in base devicetree\n",
+			       refpath);
+			err = -EINVAL;
+			goto err;
+		}
+
+		err = update_usages_of_a_phandle_reference(result, prop,
+							   refnode->phandle);
+		if (err) {
+			pr_err("failed to update phandles for %s in overlay",
+			       prop->name);
+			goto err;
+		}
+	}
+
+out:
+	return result;
+err:
+	of_delete_node(result);
+
+	return NULL;
+
+}
diff --git a/include/of.h b/include/of.h
index b5f54dd4e5..1483c22db1 100644
--- a/include/of.h
+++ b/include/of.h
@@ -870,4 +870,31 @@ static inline struct device_node *of_find_root_node(struct device_node *node)
 
 	return node;
 }
+
+#ifdef CONFIG_OF_OVERLAY
+struct device_node *of_resolve_phandles(struct device_node *root,
+					const struct device_node *overlay);
+int of_overlay_apply_tree(struct device_node *root,
+			  struct device_node *overlay);
+int of_register_overlay(struct device_node *overlay);
+#else
+static inline struct device_node *of_resolve_phandles(struct device_node *root,
+					const struct device_node *overlay)
+{
+	return NULL;
+}
+
+static inline int of_overlay_apply_tree(struct device_node *root,
+					struct device_node *overlay)
+{
+	return -ENOSYS;
+}
+
+static inline int of_register_overlay(struct device_node *overlay)
+{
+	return -ENOSYS;
+}
+
+#endif
+
 #endif /* __OF_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
