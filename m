Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VVkxR-0004L0-Td
 for barebox@lists.infradead.org; Mon, 14 Oct 2013 16:25:28 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Mon, 14 Oct 2013 18:24:53 +0200
Message-Id: <1381767893-13740-2-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1381767893-13740-1-git-send-email-jlu@pengutronix.de>
References: <1381767893-13740-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 2/2] of: implement overlay support
To: barebox@lists.infradead.org

This implements device tree overlay support as described in
http://thread.gmane.org/gmane.linux.ports.arm.omap/91556 and used
on BeagleBone boards. It can be used to load DT overlays at runtime,
which are then passed as a resolved tree to the kernel.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 commands/oftree.c     |  59 ++++++++-
 drivers/of/Kconfig    |   6 +
 drivers/of/Makefile   |   1 +
 drivers/of/overlay.c  | 272 +++++++++++++++++++++++++++++++++++++++
 drivers/of/resolver.c | 345 ++++++++++++++++++++++++++++++++++++++++++++++++++
 include/of.h          |  71 +++++++++++
 6 files changed, 752 insertions(+), 2 deletions(-)
 create mode 100644 drivers/of/overlay.c
 create mode 100644 drivers/of/resolver.c

diff --git a/commands/oftree.c b/commands/oftree.c
index 475f019..7c55edf 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -50,11 +50,14 @@ static int do_oftree(int argc, char *argv[])
 	int probe = 0;
 	int load = 0;
 	int save = 0;
+	int overlay = 0;
 	int free_of = 0;
 	int ret;
 	struct device_node *n, *root;
+	int ovinfo_cnt;
+	struct of_overlay_info *ovinfo;
 
-	while ((opt = getopt(argc, argv, "dpfn:ls")) > 0) {
+	while ((opt = getopt(argc, argv, "dpfn:los")) > 0) {
 		switch (opt) {
 		case 'l':
 			load = 1;
@@ -79,6 +82,9 @@ static int do_oftree(int argc, char *argv[])
 		case 's':
 			save = 1;
 			break;
+		case 'o':
+			overlay = 1;
+			break;
 		}
 	}
 
@@ -94,7 +100,7 @@ static int do_oftree(int argc, char *argv[])
 	if (optind < argc)
 		file = argv[optind];
 
-	if (!dump && !probe && !load && !save)
+	if (!dump && !probe && !load && !save && !overlay)
 		return COMMAND_ERROR_USAGE;
 
 	if (save) {
@@ -153,6 +159,54 @@ static int do_oftree(int argc, char *argv[])
 		}
 	}
 
+	if (overlay) {
+		if (!fdt) {
+			printf("no fdt given\n");
+			ret = -ENOENT;
+
+			goto out;
+		}
+
+		root = of_get_root_node();
+		if (!root) {
+			printf("no oftree loaded\n");
+			goto out;
+		}
+
+		n = of_unflatten_dtb(NULL, fdt);
+		if (IS_ERR(n))
+			ret = PTR_ERR(n);
+		else
+			ret = 0;
+		if (ret) {
+			printf("parse oftree: %s\n", strerror(-ret));
+			goto out;
+		}
+
+		ret = of_resolve(n);
+		if (ret) {
+			printf("resolve oftree overlay: %s\n", strerror(-ret));
+			of_delete_node(n);
+			goto out;
+		}
+
+		ret = of_build_overlay_info(n, &ovinfo_cnt, &ovinfo);
+		if (ret) {
+			printf("prepare oftree overlay: %s\n", strerror(-ret));
+			of_delete_node(n);
+			goto out;
+		}
+
+		ret = of_overlay(ovinfo_cnt, ovinfo);
+		if (ret) {
+			printf("apply oftree overlay: %s\n", strerror(-ret));
+			of_delete_node(n);
+			goto out;
+		}
+
+		of_delete_node(n);
+	}
+
 	if (dump) {
 		if (fdt) {
 			root = of_unflatten_dtb(NULL, fdt);
@@ -194,6 +248,7 @@ out:
 BAREBOX_CMD_HELP_START(oftree)
 BAREBOX_CMD_HELP_USAGE("oftree [OPTIONS] [DTB]\n")
 BAREBOX_CMD_HELP_OPT  ("-l",  "Load [DTB] to internal devicetree\n")
+BAREBOX_CMD_HELP_OPT  ("-o",  "Overlay [DTB] to internal devicetree\n")
 BAREBOX_CMD_HELP_OPT  ("-p",  "probe devices from stored devicetree\n")
 BAREBOX_CMD_HELP_OPT  ("-d",  "dump oftree from [DTB] or the parsed tree if no dtb is given\n")
 BAREBOX_CMD_HELP_OPT  ("-f",  "free stored devicetree\n")
diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index 6b893d7..fb2c480 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -7,6 +7,12 @@ config OFTREE_MEM_GENERIC
 	depends on PPC || ARM
 	def_bool y
 
+config OFTREE_OVERLAY
+	bool "OF tree overlay support"
+	depends on OFTREE
+	help
+	  Allows you to modify the live tree using overlays.
+
 config DTC
 	bool
 
diff --git a/drivers/of/Makefile b/drivers/of/Makefile
index a19a8af..f56db61 100644
--- a/drivers/of/Makefile
+++ b/drivers/of/Makefile
@@ -5,3 +5,4 @@ obj-y += partition.o
 obj-y += of_net.o
 obj-$(CONFIG_MTD) += of_mtd.o
 obj-$(CONFIG_OF_BAREBOX_DRIVERS) += barebox.o of_path.o
+obj-$(CONFIG_OFTREE_OVERLAY) += resolver.o overlay.o
diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
new file mode 100644
index 0000000..8e5a705
--- /dev/null
+++ b/drivers/of/overlay.c
@@ -0,0 +1,272 @@
+/*
+ * Functions for working with device tree overlays
+ *
+ * Copyright (C) 2012 Pantelis Antoniou <panto@antoniou-consulting.com>
+ * Copyright (C) 2012 Texas Instruments Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ */
+
+#include <common.h>
+#include <of.h>
+#include <errno.h>
+#include <malloc.h>
+#include <linux/kernel.h>
+#include <linux/string.h>
+#include <linux/ctype.h>
+#include <linux/string.h>
+#include <linux/err.h>
+
+/**
+ * Apply a single overlay node recursively.
+ *
+ * Property or node names that start with '-' signal that
+ * the property/node is to be removed.
+ *
+ * All the property notifiers are appropriately called.
+ * Note that the in case of an error the target node is left
+ * in a inconsistent state. Error recovery should be performed
+ * by recording the modification using the of notifiers.
+ */
+static int of_overlay_apply_one(struct device_node *target,
+		const struct device_node *overlay)
+{
+	const char *pname, *cname;
+	struct device_node *child, *tchild;
+	struct property *prop;
+	int remove;
+	const char *suffix;
+	int ret;
+
+	/* sanity checks */
+	if (target == NULL || overlay == NULL)
+		return -EINVAL;
+
+	for_each_property_of_node(overlay, prop) {
+		/* don't touch, 'name' */
+		if (of_prop_cmp(prop->name, "name") == 0)
+			continue;
+
+		/* default is add */
+		remove = 0;
+		pname = prop->name;
+		if (*pname == '-') {	/* skip, - notes removal */
+			pname++;
+			remove = 1;
+		}
+
+		of_delete_property(of_find_property(target, pname, NULL));
+
+		/* found? */
+		if (remove)
+			continue;
+
+		if (of_new_property(target, pname, prop->value, prop->length) == NULL)
+			return -ENOMEM;
+	}
+
+	for_each_child_of_node(overlay, child) {
+		/* default is add */
+		remove = 0;
+		cname = child->name;
+		if (*cname == '-') {	/* skip, - notes removal */
+			cname++;
+			remove = 1;
+		}
+
+		/* special case for nodes with a suffix */
+		suffix = strrchr(child->full_name, '@');
+		if (suffix != NULL) {
+			cname = child->name;
+			WARN_ON(cname == NULL);	/* sanity check */
+			if (cname == NULL)
+				continue;
+			if (*cname == '-')
+				cname++;
+		}
+
+		tchild = of_get_child_by_name(target, cname);
+		if (tchild != NULL) {
+			if (!remove) {
+				/* apply overlay recursively */
+				ret = of_overlay_apply_one(tchild, child);
+
+				if (ret != 0)
+					return ret;
+			} else {
+				of_delete_node(tchild);
+			}
+		} else {
+			if (!remove) {
+				/* create new child */
+				tchild = of_new_node(target, cname);
+				if (tchild == NULL)
+					return -ENOMEM;
+
+				/* apply the overlay */
+				ret = of_overlay_apply_one(tchild, child);
+				if (ret != 0) {
+					of_delete_node(tchild);
+					return ret;
+				}
+			}
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * of_overlay	- Apply @count overlays pointed at by @ovinfo_tab
+ * @count:	Number of of_overlay_info's
+ * @ovinfo_tab:	Array of overlay_info's to apply
+ *
+ * Applies the overlays given, while handling all error conditions
+ * appropriately. Either the operation succeeds, or if it fails the
+ * live tree is reverted to the state before the attempt.
+ * Returns 0, or an error if the overlay attempt failed.
+ */
+int of_overlay(int count, struct of_overlay_info *ovinfo_tab)
+{
+	struct of_overlay_info *ovinfo;
+	int i, err;
+
+	if (!ovinfo_tab)
+		return -EINVAL;
+
+	for (i = 0; i < count; i++) {
+		ovinfo = &ovinfo_tab[i];
+		err = of_overlay_apply_one(ovinfo->target, ovinfo->overlay);
+		if (err != 0) {
+			pr_err("%s: overlay failed '%s'\n",
+				__func__, ovinfo->target->full_name);
+			goto err_fail;
+		}
+	}
+
+	return 0;
+
+err_fail:
+	return err;
+}
+
+/**
+ * of_fill_overlay_info	- Fill an overlay info structure
+ * @info_node:	Device node containing the overlay
+ * @ovinfo:	Pointer to the overlay info structure to fill
+ *
+ * Fills an overlay info structure with the overlay information
+ * from a device node. This device node must have a target property
+ * which contains a phandle of the overlay target node, and an
+ * __overlay__ child node which has the overlay contents.
+ * Both ovinfo->target & ovinfo->overlay have their references taken.
+ *
+ * Returns 0 on success, or a negative error value.
+ */
+int of_fill_overlay_info(struct device_node *info_node,
+		struct of_overlay_info *ovinfo)
+{
+	u32 val;
+	int ret;
+
+	if (!info_node || !ovinfo)
+		return -EINVAL;
+
+	ret = of_property_read_u32(info_node, "target", &val);
+	if (ret != 0)
+		goto err_fail;
+
+	ovinfo->target = of_find_node_by_phandle(val);
+	if (ovinfo->target == NULL)
+		goto err_fail;
+
+	ovinfo->overlay = of_get_child_by_name(info_node, "__overlay__");
+	if (ovinfo->overlay == NULL)
+		goto err_fail;
+
+	return 0;
+
+err_fail:
+	memset(ovinfo, 0, sizeof(*ovinfo));
+	return -EINVAL;
+}
+
+/**
+ * of_build_overlay_info	- Build an overlay info array
+ * @tree:	Device node containing all the overlays
+ * @cntp:	Pointer to where the overlay info count will be help
+ * @ovinfop:	Pointer to the pointer of an overlay info structure.
+ *
+ * Helper function that given a tree containing overlay information,
+ * allocates and builds an overlay info array containing it, ready
+ * for use using of_overlay.
+ *
+ * Returns 0 on success with the @cntp @ovinfop pointers valid,
+ * while on error a negative error value is returned.
+ */
+int of_build_overlay_info(struct device_node *tree,
+		int *cntp, struct of_overlay_info **ovinfop)
+{
+	struct device_node *node;
+	struct of_overlay_info *ovinfo;
+	int cnt, err;
+
+	if (tree == NULL || cntp == NULL || ovinfop == NULL)
+		return -EINVAL;
+
+	/* worst case; every child is a node */
+	cnt = 0;
+	for_each_child_of_node(tree, node)
+		cnt++;
+
+	ovinfo = kzalloc(cnt * sizeof(*ovinfo), GFP_KERNEL);
+	if (ovinfo == NULL)
+		return -ENOMEM;
+
+	cnt = 0;
+	for_each_child_of_node(tree, node) {
+		memset(&ovinfo[cnt], 0, sizeof(*ovinfo));
+		err = of_fill_overlay_info(node, &ovinfo[cnt]);
+		if (err == 0)
+			cnt++;
+	}
+
+	/* if nothing filled, return error */
+	if (cnt == 0) {
+		kfree(ovinfo);
+		return -ENODEV;
+	}
+
+	*cntp = cnt;
+	*ovinfop = ovinfo;
+
+	return 0;
+}
+
+/**
+ * of_free_overlay_info	- Free an overlay info array
+ * @count:	Number of of_overlay_info's
+ * @ovinfo_tab:	Array of overlay_info's to free
+ *
+ * Releases the memory of a previously allocate ovinfo array
+ * by of_build_overlay_info.
+ * Returns 0, or an error if the arguments are bogus.
+ */
+int of_free_overlay_info(int count, struct of_overlay_info *ovinfo_tab)
+{
+	struct of_overlay_info *ovinfo;
+	int i;
+
+	if (!ovinfo_tab || count < 0)
+		return -EINVAL;
+
+	/* do it in reverse */
+	for (i = count - 1; i >= 0; i--) {
+		ovinfo = &ovinfo_tab[i];
+	}
+	kfree(ovinfo_tab);
+
+	return 0;
+}
diff --git a/drivers/of/resolver.c b/drivers/of/resolver.c
new file mode 100644
index 0000000..3a4367b
--- /dev/null
+++ b/drivers/of/resolver.c
@@ -0,0 +1,345 @@
+/*
+ * Functions for dealing with DT resolution
+ *
+ * Copyright (C) 2012 Pantelis Antoniou <panto@antoniou-consulting.com>
+ * Copyright (C) 2012 Texas Instruments Inc.
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ */
+
+#include <common.h>
+#include <of.h>
+#include <errno.h>
+#include <malloc.h>
+#include <linux/kernel.h>
+#include <linux/string.h>
+#include <linux/ctype.h>
+#include <linux/string.h>
+
+/**
+ * Adjust a subtree's phandle values by a given delta.
+ * Makes sure not to just adjust the device node's phandle value,
+ * but modify the phandle properties values as well.
+ */
+static void __of_adjust_tree_phandles(struct device_node *node,
+		int phandle_delta)
+{
+	struct device_node *child;
+	struct property *prop;
+	phandle phandle;
+
+	/* first adjust the node's phandle direct value */
+	if (node->phandle != 0 && node->phandle != OF_PHANDLE_ILLEGAL)
+		node->phandle += phandle_delta;
+
+	/* now adjust phandle & linux,phandle values */
+	for_each_property_of_node(node, prop) {
+		/* only look for these two */
+		if (of_prop_cmp(prop->name, "phandle") != 0 &&
+		    of_prop_cmp(prop->name, "linux,phandle") != 0)
+			continue;
+
+		/* must be big enough */
+		if (prop->length < 4)
+			continue;
+
+		/* read phandle value */
+		phandle = be32_to_cpu(*(uint32_t *)prop->value);
+		if (phandle == OF_PHANDLE_ILLEGAL)	/* unresolved */
+			continue;
+
+		/* adjust */
+		*(uint32_t *)prop->value = cpu_to_be32(node->phandle);
+	}
+
+	/* now do the children recursively */
+	for_each_child_of_node(node, child)
+		__of_adjust_tree_phandles(child, phandle_delta);
+}
+
+/**
+ * Adjust the local phandle references by the given phandle delta.
+ * Assumes the existances of a __local_fixups__ node at the root
+ * of the tree. Does not take any devtree locks so make sure you
+ * call this on a tree which is at the detached state.
+ */
+static int __of_adjust_tree_phandle_references(struct device_node *node,
+		int phandle_delta)
+{
+	phandle phandle;
+	struct device_node *refnode, *child;
+	struct property *rprop, *sprop;
+	char *propval, *propcur, *propend, *nodestr, *propstr, *s;
+	int offset, propcurlen;
+	int err;
+	bool found = false;
+
+	/* locate the symbols & fixups nodes on resolve */
+	for_each_child_of_node(node, child)
+		if (of_node_cmp(child->name, "__local_fixups__") == 0) {
+			found = true;
+			break;
+		}
+
+	/* no local fixups */
+	if (!found)
+		return 0;
+
+	/* find the local fixups property */
+	for_each_property_of_node(child, rprop) {
+		/* skip properties added automatically */
+		if (of_prop_cmp(rprop->name, "name") == 0)
+			continue;
+
+		/* make a copy */
+		propval = kmalloc(rprop->length, GFP_KERNEL);
+		if (propval == NULL) {
+			pr_err("%s: Could not copy value of '%s'\n",
+					__func__, rprop->name);
+			return -ENOMEM;
+		}
+		memcpy(propval, rprop->value, rprop->length);
+
+		propend = propval + rprop->length;
+		for (propcur = propval; propcur < propend;
+				propcur += propcurlen + 1) {
+
+			propcurlen = strlen(propcur);
+
+			nodestr = propcur;
+			s = strchr(propcur, ':');
+			if (s == NULL) {
+				pr_err("%s: Illegal symbol entry '%s' (1)\n",
+					__func__, propcur);
+				err = -EINVAL;
+				goto err_fail;
+			}
+			*s++ = '\0';
+
+			propstr = s;
+			s = strchr(s, ':');
+			if (s == NULL) {
+				pr_err("%s: Illegal symbol entry '%s' (2)\n",
+					__func__, (char *)rprop->value);
+				err = -EINVAL;
+				goto err_fail;
+			}
+
+			*s++ = '\0';
+			offset = simple_strtoul(s, NULL, 10);
+
+			/* look into the resolve node for the full path */
+			refnode = of_find_node_by_path_from(node, nodestr);
+			if (refnode == NULL) {
+				pr_warn("%s: Could not find refnode '%s'\n",
+					__func__, (char *)rprop->value);
+				continue;
+			}
+
+			/* now find the property */
+			found = false;
+			for_each_property_of_node(refnode, sprop)
+				if (of_prop_cmp(sprop->name, propstr) == 0) {
+					found = true;
+					break;
+				}
+
+			if (!found) {
+				pr_err("%s: Could not find property '%s'\n",
+					__func__, (char *)rprop->value);
+				err = -ENOENT;
+				goto err_fail;
+			}
+
+			phandle = be32_to_cpu(*(uint32_t *)
+					(sprop->value + offset));
+			*(uint32_t *)(sprop->value + offset) =
+				cpu_to_be32(phandle + phandle_delta);
+		}
+
+		kfree(propval);
+	}
+
+	return 0;
+
+err_fail:
+	kfree(propval);
+	return err;
+}
+
+/**
+ * of_resolve	- Resolve the given node against the live tree.
+ *
+ * @resolve:	Node to resolve
+ *
+ * Perform dynamic Device Tree resolution against the live tree
+ * to the given node to resolve. This depends on the live tree
+ * having a __symbols__ node, and the resolve node the __fixups__ &
+ * __local_fixups__ nodes (if needed).
+ * The result of the operation is a resolve node that it's contents
+ * are fit to be inserted or operate upon the live tree.
+ * Returns 0 on success or a negative error value on error.
+ */
+int of_resolve(struct device_node *resolve)
+{
+	struct device_node *child, *refnode;
+	struct device_node *root_sym, *resolve_sym, *resolve_fix;
+	struct property *rprop, *sprop;
+	const char *refpath;
+	char *propval, *propcur, *propend, *nodestr, *propstr, *s;
+	int offset, propcurlen;
+	phandle phandle, phandle_delta;
+	int err;
+	bool found = false;
+
+	/* the resolve node must exist, and be detached */
+	if (resolve == NULL) {
+		return -EINVAL;
+	}
+
+	/* first we need to adjust the phandles */
+	phandle_delta = of_get_tree_max_phandle(NULL) + 1;
+	__of_adjust_tree_phandles(resolve, phandle_delta);
+	err = __of_adjust_tree_phandle_references(resolve, phandle_delta);
+	if (err != 0)
+		return err;
+
+	root_sym = NULL;
+	resolve_sym = NULL;
+	resolve_fix = NULL;
+
+	/* this may fail (if no fixups are required) */
+	root_sym = of_find_node_by_path("/__symbols__");
+
+	/* locate the symbols & fixups nodes on resolve */
+	for_each_child_of_node(resolve, child) {
+		if (resolve_sym == NULL &&
+				of_node_cmp(child->name, "__symbols__") == 0)
+			resolve_sym = child;
+
+		if (resolve_fix == NULL &&
+				of_node_cmp(child->name, "__fixups__") == 0)
+			resolve_fix = child;
+
+		/* both found, don't bother anymore */
+		if (resolve_sym != NULL && resolve_fix != NULL)
+			break;
+	}
+
+	/* we do allow for the case where no fixups are needed */
+	if (resolve_fix == NULL)
+		goto merge_sym;
+
+	/* we need to fixup, but no root symbols... */
+	if (root_sym == NULL)
+		return -EINVAL;
+
+	for_each_property_of_node(resolve_fix, rprop) {
+		/* skip properties added automatically */
+		if (of_prop_cmp(rprop->name, "name") == 0)
+			continue;
+
+		err = of_property_read_string(root_sym,
+				rprop->name, &refpath);
+		if (err != 0) {
+			pr_err("%s: Could not find symbol '%s'\n",
+					__func__, rprop->name);
+			goto err_fail;
+		}
+
+		refnode = of_find_node_by_path(refpath);
+		if (refnode == NULL) {
+			pr_err("%s: Could not find node by path '%s'\n",
+					__func__, refpath);
+			err = -ENOENT;
+			goto err_fail;
+		}
+
+		phandle = refnode->phandle;
+
+		pr_debug("%s: %s phandle is 0x%08x\n",
+				__func__, rprop->name, phandle);
+
+		/* make a copy */
+		propval = kmalloc(rprop->length, GFP_KERNEL);
+		if (propval == NULL) {
+			pr_err("%s: Could not copy value of '%s'\n",
+					__func__, rprop->name);
+			err = -ENOMEM;
+			goto err_fail;
+		}
+
+		memcpy(propval, rprop->value, rprop->length);
+
+		propend = propval + rprop->length;
+		for (propcur = propval; propcur < propend;
+				propcur += propcurlen + 1) {
+			propcurlen = strlen(propcur);
+
+			nodestr = propcur;
+			s = strchr(propcur, ':');
+			if (s == NULL) {
+				pr_err("%s: Illegal symbol "
+					"entry '%s' (1)\n",
+					__func__, (char *)rprop->value);
+				kfree(propval);
+				err = -EINVAL;
+				goto err_fail;
+			}
+			*s++ = '\0';
+
+			propstr = s;
+			s = strchr(s, ':');
+			if (s == NULL) {
+				pr_err("%s: Illegal symbol "
+					"entry '%s' (2)\n",
+					__func__, (char *)rprop->value);
+				kfree(propval);
+				err = -EINVAL;
+				goto err_fail;
+			}
+
+			*s++ = '\0';
+			offset = simple_strtoul(s, NULL, 10);
+
+			/* look into the resolve node for the full path */
+			refnode = of_find_node_by_path_from(resolve, nodestr);
+			if (refnode == NULL) {
+				pr_err("%s: Could not find refnode '%s'\n",
+					__func__, (char *)rprop->value);
+				kfree(propval);
+				err = -ENOENT;
+				goto err_fail;
+			}
+
+			/* now find the property */
+			found = false;
+			for_each_property_of_node(refnode, sprop)
+				if (of_prop_cmp(sprop->name, propstr) == 0) {
+					found = true;
+					break;
+				}
+
+			if (!found) {
+				pr_err("%s: Could not find property '%s'\n",
+					__func__, (char *)rprop->value);
+				kfree(propval);
+				err = -ENOENT;
+				goto err_fail;
+			}
+
+			*(uint32_t *)(sprop->value + offset) =
+				cpu_to_be32(phandle);
+		}
+
+		kfree(propval);
+	}
+
+merge_sym:
+	return 0;
+
+err_fail:
+	return err;
+}
diff --git a/include/of.h b/include/of.h
index 3381e69..ea55669 100644
--- a/include/of.h
+++ b/include/of.h
@@ -592,6 +592,8 @@ static inline struct device_node *of_find_matching_node(
 #define for_each_available_child_of_node(parent, child) \
 	for (child = of_get_next_available_child(parent, NULL); child != NULL; \
 	     child = of_get_next_available_child(parent, child))
+#define for_each_property_of_node(dn, pp) \
+	list_for_each_entry(pp, &dn->properties, list)
 
 /**
  * of_property_read_bool - Findfrom a property
@@ -704,4 +706,73 @@ static inline struct device_node *of_find_root_node(struct device_node *node)
 
 	return node;
 }
+
+/* illegal phandle value (set when unresolved) */
+#define OF_PHANDLE_ILLEGAL      0xdeadbeef
+
+#ifdef CONFIG_OFTREE_OVERLAY
+
+extern int of_resolve(struct device_node *resolve);
+
+#else
+
+static inline int of_resolve(struct device_node *resolve)
+{
+	return -ENOSYS;
+}
+
+#endif
+
+/**
+ * Overlay support
+ */
+
+/**
+ * struct of_overlay_info       - Holds a single overlay info
+ * @target:     target of the overlay operation
+ * @overlay:    pointer to the overlay contents node
+ *
+ * Holds a single overlay state.
+ */
+struct of_overlay_info {
+	struct device_node *target;
+	struct device_node *overlay;
+};
+
+#ifdef CONFIG_OFTREE_OVERLAY
+
+extern int of_overlay(int count, struct of_overlay_info *ovinfo_tab);
+
+extern int of_fill_overlay_info(struct device_node *info_node,
+		struct of_overlay_info *ovinfo);
+extern int of_build_overlay_info(struct device_node *tree,
+		int *cntp, struct of_overlay_info **ovinfop);
+extern int of_free_overlay_info(int cnt, struct of_overlay_info *ovinfo);
+
+#else
+
+static inline int of_overlay(int count, struct of_overlay_info *ovinfo_tab)
+{
+	return -ENOSYS;
+}
+
+static inline int of_fill_overlay_info(struct device_node *info_node,
+		struct of_overlay_info *ovinfo)
+{
+	return -ENOSYS;
+}
+
+static inline int of_build_overlay_info(struct device_node *tree,
+		int *cntp, struct of_overlay_info **ovinfop)
+{
+	return -ENOSYS;
+}
+
+static inline int of_free_overlay_info(int cnt, struct of_overlay_info *ovinfo)
+{
+	return -ENOSYS;
+}
+
+#endif
+
 #endif /* __OF_H */
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
