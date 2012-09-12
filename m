Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBtE9-0001vh-QW
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 20:08:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Sep 2012 22:06:34 +0200
Message-Id: <1347480407-16865-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1347480407-16865-1-git-send-email-s.hauer@pengutronix.de>
References: <1347480407-16865-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 02/15] of: add devicetree probing support
To: barebox@lists.infradead.org

This adds code to probe devices from a devicetree. Most helper
functions are directly imported from Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/oftree.c         |    4 +-
 drivers/Kconfig         |    1 +
 drivers/Makefile        |    1 +
 drivers/base/driver.c   |   25 +-
 drivers/base/platform.c |    5 +
 drivers/of/Kconfig      |    2 +
 drivers/of/Makefile     |    2 +
 drivers/of/base.c       |  802 +++++++++++++++++++++++++++++++++++++++++++++++
 drivers/of/gpio.c       |   28 ++
 include/driver.h        |   10 +
 include/of.h            |  104 ++++++
 11 files changed, 980 insertions(+), 4 deletions(-)
 create mode 100644 drivers/of/Kconfig
 create mode 100644 drivers/of/Makefile
 create mode 100644 drivers/of/base.c
 create mode 100644 drivers/of/gpio.c

diff --git a/common/oftree.c b/common/oftree.c
index 677e934..3e8c6f8 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -57,7 +57,7 @@ static int is_printable_string(const void *data, int len)
  * a string, concatenated strings, a byte, word, double word, or (if all
  * else fails) it is printed as a stream of bytes.
  */
-static void print_data(const void *data, int len)
+void of_print_property(const void *data, int len)
 {
 	int j;
 
@@ -169,7 +169,7 @@ int fdt_print(struct fdt_header *working_fdt, const char *pathp)
 				printf_indent(level, "%s;\n", pathp);
 			} else {
 				printf_indent(level, "%s = ", pathp);
-				print_data(nodep, len);
+				of_print_property(nodep, len);
 				printf(";\n");
 			}
 			break;
diff --git a/drivers/Kconfig b/drivers/Kconfig
index 70797c1..d0b5e3a 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -20,5 +20,6 @@ source "drivers/watchdog/Kconfig"
 source "drivers/pwm/Kconfig"
 source "drivers/dma/Kconfig"
 source "drivers/gpio/Kconfig"
+source "drivers/of/Kconfig"
 
 endmenu
diff --git a/drivers/Makefile b/drivers/Makefile
index 28a5cb8..d398a12 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -19,3 +19,4 @@ obj-y	+= misc/
 obj-y	+= dma/
 obj-y  += watchdog/
 obj-y	+= gpio/
+obj-$(CONFIG_OFDEVICE) += of/
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 4d6b250..e3a7bf2 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -116,9 +116,19 @@ int register_device(struct device_d *new_device)
 
 	debug ("register_device: %s\n", dev_name(new_device));
 
-	if (!new_device->bus) {
-//		dev_err(new_device, "no bus type associated. Needs fixup\n");
+	if (!new_device->bus)
 		new_device->bus = &platform_bus;
+
+	if (new_device->bus == &platform_bus && new_device->resource) {
+		struct device_d *dev;
+
+		for_each_device(dev) {
+			if (!dev->resource)
+				continue;
+			if (dev->resource->start == new_device->resource->start) {
+				return -EBUSY;
+			}
+		}
 	}
 
 	list_add_tail(&new_device->list, &device_list);
@@ -378,6 +388,11 @@ static int do_devinfo_subtree(struct device_d *dev, int depth)
 
 int dev_get_drvdata(struct device_d *dev, unsigned long *data)
 {
+	if (dev->of_id_entry) {
+		*data = dev->of_id_entry->data;
+		return 0;
+	}
+
 	if (dev->id_entry) {
 		*data = dev->id_entry->driver_data;
 		return 0;
@@ -435,6 +450,12 @@ static int do_devinfo(int argc, char *argv[])
 
 		list_for_each_entry(param, &dev->parameters, list)
 			printf("%16s = %s\n", param->name, dev_get_param(dev, param->name));
+#ifdef CONFIG_OFDEVICE
+		if (dev->device_node) {
+			printf("\ndevice node: %s\n", dev->device_node->full_name);
+			of_print_nodes(dev->device_node, 0);
+		}
+#endif
 	}
 
 	return 0;
diff --git a/drivers/base/platform.c b/drivers/base/platform.c
index 82d2521..9b0b1cc 100644
--- a/drivers/base/platform.c
+++ b/drivers/base/platform.c
@@ -21,9 +21,14 @@
  */
 #include <common.h>
 #include <driver.h>
+#include <errno.h>
 
 static int platform_match(struct device_d *dev, struct driver_d *drv)
 {
+	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node &&
+			drv->of_compatible)
+		return of_match(dev, drv);
+
 	if (!strcmp(dev->name, drv->name))
 		return 0;
 
diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
new file mode 100644
index 0000000..95f10d0
--- /dev/null
+++ b/drivers/of/Kconfig
@@ -0,0 +1,2 @@
+config OFDEVICE
+	bool
diff --git a/drivers/of/Makefile b/drivers/of/Makefile
new file mode 100644
index 0000000..b38d40b
--- /dev/null
+++ b/drivers/of/Makefile
@@ -0,0 +1,2 @@
+obj-y += base.o
+obj-y += gpio.o
diff --git a/drivers/of/base.c b/drivers/of/base.c
new file mode 100644
index 0000000..ebbaef8
--- /dev/null
+++ b/drivers/of/base.c
@@ -0,0 +1,802 @@
+/*
+ * base.c - basic devicetree functions
+ *
+ * Copyright (c) 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * based on Linux devicetree support
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+#include <common.h>
+#include <of.h>
+#include <errno.h>
+#include <libfdt.h>
+#include <malloc.h>
+#include <init.h>
+#include <linux/ctype.h>
+
+/**
+ * struct alias_prop - Alias property in 'aliases' node
+ * @link:	List node to link the structure in aliases_lookup list
+ * @alias:	Alias property name
+ * @np:		Pointer to device_node that the alias stands for
+ * @id:		Index value from end of alias name
+ * @stem:	Alias string without the index
+ *
+ * The structure represents one alias property of 'aliases' node as
+ * an entry in aliases_lookup list.
+ */
+struct alias_prop {
+	struct list_head link;
+	const char *alias;
+	struct device_node *np;
+	int id;
+	char stem[0];
+};
+
+static LIST_HEAD(aliases_lookup);
+
+static LIST_HEAD(phandle_list);
+
+static LIST_HEAD(allnodes);
+
+struct device_node *root_node;
+
+struct device_node *of_aliases;
+
+int of_n_addr_cells(struct device_node *np)
+{
+	const __be32 *ip;
+
+	do {
+		if (np->parent)
+			np = np->parent;
+		ip = of_get_property(np, "#address-cells", NULL);
+		if (ip)
+			return be32_to_cpup(ip);
+	} while (np->parent);
+	/* No #address-cells property for the root node */
+	return OF_ROOT_NODE_ADDR_CELLS_DEFAULT;
+}
+EXPORT_SYMBOL(of_n_addr_cells);
+
+int of_n_size_cells(struct device_node *np)
+{
+	const __be32 *ip;
+
+	do {
+		if (np->parent)
+			np = np->parent;
+		ip = of_get_property(np, "#size-cells", NULL);
+		if (ip)
+			return be32_to_cpup(ip);
+	} while (np->parent);
+	/* No #size-cells property for the root node */
+	return OF_ROOT_NODE_SIZE_CELLS_DEFAULT;
+}
+EXPORT_SYMBOL(of_n_size_cells);
+
+static void of_bus_default_count_cells(struct device_node *dev,
+				       int *addrc, int *sizec)
+{
+	if (addrc)
+		*addrc = of_n_addr_cells(dev);
+	if (sizec)
+		*sizec = of_n_size_cells(dev);
+}
+
+void of_bus_count_cells(struct device_node *dev,
+			int *addrc, int *sizec)
+{
+	of_bus_default_count_cells(dev, addrc, sizec);
+}
+
+struct property *of_find_property(const struct device_node *node, const char *name)
+{
+	struct property *p;
+
+	list_for_each_entry(p, &node->properties, list)
+		if (!strcmp(p->name, name))
+			return p;
+	return NULL;
+}
+EXPORT_SYMBOL(of_find_property);
+
+static void of_alias_add(struct alias_prop *ap, struct device_node *np,
+			 int id, const char *stem, int stem_len)
+{
+	ap->np = np;
+	ap->id = id;
+	strncpy(ap->stem, stem, stem_len);
+	ap->stem[stem_len] = 0;
+	list_add_tail(&ap->link, &aliases_lookup);
+	pr_debug("adding DT alias:%s: stem=%s id=%i node=%s\n",
+		 ap->alias, ap->stem, ap->id, np->full_name);
+}
+
+/**
+ * of_alias_scan - Scan all properties of 'aliases' node
+ *
+ * The function scans all the properties of 'aliases' node and populates
+ * the global lookup table with the properties.  It returns the
+ * number of alias_prop found, or error code in error case.
+ */
+void of_alias_scan(void)
+{
+	struct property *pp;
+
+	of_aliases = of_find_node_by_path("/aliases");
+	if (!of_aliases)
+		return;
+
+	list_for_each_entry(pp, &of_aliases->properties, list) {
+		const char *start = pp->name;
+		const char *end = start + strlen(start);
+		struct device_node *np;
+		struct alias_prop *ap;
+		int id, len;
+
+		/* Skip those we do not want to proceed */
+		if (!strcmp(pp->name, "name") ||
+		    !strcmp(pp->name, "phandle") ||
+		    !strcmp(pp->name, "linux,phandle"))
+			continue;
+
+		np = of_find_node_by_path(pp->value);
+		if (!np)
+			continue;
+
+		/* walk the alias backwards to extract the id and work out
+		 * the 'stem' string */
+		while (isdigit(*(end-1)) && end > start)
+			end--;
+		len = end - start;
+
+		id = simple_strtol(end, 0, 10);
+		if (id < 0)
+			continue;
+
+		/* Allocate an alias_prop with enough space for the stem */
+		ap = xzalloc(sizeof(*ap) + len + 1);
+		if (!ap)
+			continue;
+		ap->alias = start;
+		of_alias_add(ap, np, id, start, len);
+	}
+}
+
+/**
+ * of_alias_get_id - Get alias id for the given device_node
+ * @np:		Pointer to the given device_node
+ * @stem:	Alias stem of the given device_node
+ *
+ * The function travels the lookup table to get alias id for the given
+ * device_node and alias stem.  It returns the alias id if find it.
+ */
+int of_alias_get_id(struct device_node *np, const char *stem)
+{
+	struct alias_prop *app;
+	int id = -ENODEV;
+
+	list_for_each_entry(app, &aliases_lookup, link) {
+		if (strcmp(app->stem, stem) != 0)
+			continue;
+
+		if (np == app->np) {
+			id = app->id;
+			break;
+		}
+	}
+
+	return id;
+}
+EXPORT_SYMBOL_GPL(of_alias_get_id);
+
+u64 of_translate_address(struct device_node *node, const __be32 *in_addr)
+{
+	struct property *p;
+	u64 addr = be32_to_cpu(*in_addr);
+
+	while (1) {
+		int na, nc;
+
+		if (!node->parent)
+			return addr;
+
+		node = node->parent;
+		p = of_find_property(node, "ranges");
+		if (!p && node->parent)
+			return OF_BAD_ADDR;
+		of_bus_count_cells(node, &na, &nc);
+		if (na != 1 || nc != 1) {
+			printk("%s: #size-cells != 1 or #address-cells != 1 "
+					"currently not supported\n", node->name);
+			return OF_BAD_ADDR;
+		}
+	}
+}
+EXPORT_SYMBOL(of_translate_address);
+
+/*
+ * of_find_node_by_phandle - Find a node given a phandle
+ * @handle:    phandle of the node to find
+ */
+struct device_node *of_find_node_by_phandle(phandle phandle)
+{
+	struct device_node *node;
+
+	list_for_each_entry(node, &phandle_list, phandles)
+		if (node->phandle == phandle)
+			return node;
+	return NULL;
+}
+EXPORT_SYMBOL(of_find_node_by_phandle);
+
+/*
+ * Find a property with a given name for a given node
+ * and return the value.
+ */
+const void *of_get_property(const struct device_node *np, const char *name,
+			 int *lenp)
+{
+	struct property *pp = of_find_property(np, name);
+
+	if (!pp)
+		return NULL;
+
+	if (lenp)
+		*lenp = pp->length;
+
+	return pp ? pp->value : NULL;
+}
+EXPORT_SYMBOL(of_get_property);
+
+/** Checks if the given "compat" string matches one of the strings in
+ * the device's "compatible" property
+ */
+int of_device_is_compatible(const struct device_node *device,
+		const char *compat)
+{
+	const char *cp;
+	int cplen, l;
+
+	cp = of_get_property(device, "compatible", &cplen);
+	if (cp == NULL)
+		return 0;
+	while (cplen > 0) {
+		if (strcmp(cp, compat) == 0)
+			return 1;
+		l = strlen(cp) + 1;
+		cp += l;
+		cplen -= l;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL(of_device_is_compatible);
+
+int of_match(struct device_d *dev, struct driver_d *drv)
+{
+	struct of_device_id *id;
+
+	id = drv->of_compatible;
+
+	while (id->compatible) {
+		if (of_device_is_compatible(dev->device_node, id->compatible) == 1) {
+			dev->of_id_entry = id;
+			return 0;
+		}
+		id++;
+	}
+
+	return 1;
+}
+EXPORT_SYMBOL(of_match);
+
+/**
+ * of_property_read_u32_array - Find and read an array of 32 bit integers
+ * from a property.
+ *
+ * @np:		device node from which the property value is to be read.
+ * @propname:	name of the property to be searched.
+ * @out_value:	pointer to return value, modified only if return value is 0.
+ *
+ * Search for a property in a device node and read 32-bit value(s) from
+ * it. Returns 0 on success, -EINVAL if the property does not exist,
+ * -ENODATA if property does not have a value, and -EOVERFLOW if the
+ * property data isn't large enough.
+ *
+ * The out_value is modified only if a valid u32 value can be decoded.
+ */
+int of_property_read_u32_array(const struct device_node *np,
+			       const char *propname, u32 *out_values,
+			       size_t sz)
+{
+	struct property *prop = of_find_property(np, propname);
+	const __be32 *val;
+
+	if (!prop)
+		return -EINVAL;
+	if (!prop->value)
+		return -ENODATA;
+	if ((sz * sizeof(*out_values)) > prop->length)
+		return -EOVERFLOW;
+
+	val = prop->value;
+	while (sz--)
+		*out_values++ = be32_to_cpup(val++);
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_property_read_u32_array);
+
+/**
+ * of_parse_phandles_with_args - Find a node pointed by phandle in a list
+ * @np:		pointer to a device tree node containing a list
+ * @list_name:	property name that contains a list
+ * @cells_name:	property name that specifies phandles' arguments count
+ * @index:	index of a phandle to parse out
+ * @out_node:	optional pointer to device_node struct pointer (will be filled)
+ * @out_args:	optional pointer to arguments pointer (will be filled)
+ *
+ * This function is useful to parse lists of phandles and their arguments.
+ * Returns 0 on success and fills out_node and out_args, on error returns
+ * appropriate errno value.
+ *
+ * Example:
+ *
+ * phandle1: node1 {
+ * 	#list-cells = <2>;
+ * }
+ *
+ * phandle2: node2 {
+ * 	#list-cells = <1>;
+ * }
+ *
+ * node3 {
+ * 	list = <&phandle1 1 2 &phandle2 3>;
+ * }
+ *
+ * To get a device_node of the `node2' node you may call this:
+ * of_parse_phandles_with_args(node3, "list", "#list-cells", 2, &node2, &args);
+ */
+int of_parse_phandles_with_args(struct device_node *np, const char *list_name,
+				const char *cells_name, int index,
+				struct device_node **out_node,
+				const void **out_args)
+{
+	int ret = -EINVAL;
+	const __be32 *list;
+	const __be32 *list_end;
+	int size;
+	int cur_index = 0;
+	struct device_node *node = NULL;
+	const void *args = NULL;
+
+	list = of_get_property(np, list_name, &size);
+	if (!list) {
+		ret = -ENOENT;
+		goto err0;
+	}
+	list_end = list + size / sizeof(*list);
+
+	while (list < list_end) {
+		const __be32 *cells;
+		phandle phandle;
+
+		phandle = be32_to_cpup(list++);
+		args = list;
+
+		/* one cell hole in the list = <>; */
+		if (!phandle)
+			goto next;
+
+		node = of_find_node_by_phandle(phandle);
+		if (!node) {
+			pr_debug("%s: could not find phandle %d\n",
+				 np->full_name, phandle);
+			goto err0;
+		}
+
+		cells = of_get_property(node, cells_name, &size);
+		if (!cells || size != sizeof(*cells)) {
+			pr_debug("%s: could not get %s for %s\n",
+				 np->full_name, cells_name, node->full_name);
+			goto err1;
+		}
+
+		list += be32_to_cpup(cells);
+		if (list > list_end) {
+			pr_debug("%s: insufficient arguments length\n",
+				 np->full_name);
+			goto err1;
+		}
+next:
+		if (cur_index == index)
+			break;
+
+		node = NULL;
+		args = NULL;
+		cur_index++;
+	}
+
+	if (!node) {
+		/*
+		 * args w/o node indicates that the loop above has stopped at
+		 * the 'hole' cell. Report this differently.
+		 */
+		if (args)
+			ret = -EEXIST;
+		else
+			ret = -ENOENT;
+		goto err0;
+	}
+
+	if (out_node)
+		*out_node = node;
+	if (out_args)
+		*out_args = args;
+
+	return 0;
+err1:
+err0:
+	pr_debug("%s failed with status %d\n", __func__, ret);
+	return ret;
+}
+EXPORT_SYMBOL(of_parse_phandles_with_args);
+
+/**
+ * of_machine_is_compatible - Test root of device tree for a given compatible value
+ * @compat: compatible string to look for in root node's compatible property.
+ *
+ * Returns true if the root node has the given value in its
+ * compatible property.
+ */
+int of_machine_is_compatible(const char *compat)
+{
+	if (!root_node)
+		return 0;
+
+	return of_device_is_compatible(root_node, compat);
+}
+EXPORT_SYMBOL(of_machine_is_compatible);
+
+/**
+ *	of_find_node_by_path - Find a node matching a full OF path
+ *	@path:	The full path to match
+ *
+ *	Returns a node pointer with refcount incremented, use
+ *	of_node_put() on it when done.
+ */
+struct device_node *of_find_node_by_path(const char *path)
+{
+	struct device_node *np;
+
+	list_for_each_entry(np, &allnodes, list) {
+		if (np->full_name && (strcmp(np->full_name, path) == 0))
+			break;
+	}
+	return np;
+}
+EXPORT_SYMBOL(of_find_node_by_path);
+
+struct device_node *of_get_root_node(void)
+{
+	return root_node;
+}
+
+static int of_node_disabled(struct device_node *node)
+{
+	struct property *p;
+
+	p = of_find_property(node, "status");
+	if (p) {
+		if (!strcmp("disabled", p->value))
+			return 1;
+	}
+	return 0;
+}
+
+void of_print_nodes(struct device_node *node, int indent)
+{
+	struct device_node *n;
+	struct property *p;
+	int i;
+
+	if (!node)
+		return;
+
+	if (of_node_disabled(node))
+		return;
+
+	for (i = 0; i < indent; i++)
+		printf("\t");
+
+	printf("%s%s\n", node->name, node->name ? " {" : "{");
+
+	list_for_each_entry(p, &node->properties, list) {
+		for (i = 0; i < indent + 1; i++)
+			printf("\t");
+		printf("%s: ", p->name);
+		of_print_property(p->value, p->length);
+		printf("\n");
+	}
+
+	list_for_each_entry(n, &node->children, parent_list) {
+		of_print_nodes(n, indent + 1);
+	}
+
+	for (i = 0; i < indent; i++)
+		printf("\t");
+	printf("};\n");
+}
+
+static struct device_node *new_device_node(struct device_node *parent)
+{
+	struct device_node *node;
+
+	node = xzalloc(sizeof(*node));
+	node->parent = parent;
+	if (parent)
+		list_add_tail(&node->parent_list, &parent->children);
+
+	INIT_LIST_HEAD(&node->children);
+	INIT_LIST_HEAD(&node->properties);
+
+	return node;
+}
+
+static struct property *new_property(struct device_node *node, const char *name,
+		const void *data, int len)
+{
+	struct property *prop;
+
+	prop = xzalloc(sizeof(*prop));
+
+	prop->name = strdup(name);
+	prop->length = len;
+	prop->value = xzalloc(len);
+	memcpy(prop->value, data, len);
+
+	list_add_tail(&prop->list, &node->properties);
+
+	return prop;
+}
+
+static struct device_d *add_of_device(struct device_node *node)
+{
+	struct device_d *dev;
+	char *name, *at;
+	const struct property *cp;
+
+	if (of_node_disabled(node))
+		return NULL;
+
+	cp = of_get_property(node, "compatible", NULL);
+	if (!cp)
+		return NULL;
+
+	dev = xzalloc(sizeof(*dev));
+
+	name = xstrdup(node->name);
+	at = strchr(name, '@');
+	if (at) {
+		*at = 0;
+		snprintf(dev->name, MAX_DRIVER_NAME, "%s.%s", at + 1, name);
+	} else {
+		strncpy(dev->name, node->name, MAX_DRIVER_NAME);
+	}
+
+	dev->id = DEVICE_ID_SINGLE;
+	dev->resource = node->resource;
+	dev->num_resources = 1;
+	dev->device_node = node;
+	node->device = dev;
+
+	debug("register device 0x%08x\n", node->resource[0].start);
+
+	register_device(dev);
+
+	free(name);
+
+	return dev;
+}
+EXPORT_SYMBOL(add_of_device);
+
+static int add_of_device_resource(struct device_node *node)
+{
+	struct property *reg;
+	u64 address, size;
+	struct resource *res;
+	struct device_d *dev;
+	phandle phandle;
+	int ret;
+
+	ret = of_property_read_u32(node, "phandle", &phandle);
+	if (!ret) {
+		node->phandle = phandle;
+		list_add_tail(&node->phandles, &phandle_list);
+	}
+
+	reg = of_find_property(node, "reg");
+	if (!reg)
+		return -ENODEV;
+
+	address = of_translate_address(node, reg->value);
+	if (address == OF_BAD_ADDR)
+		return -EINVAL;
+
+	size = be32_to_cpu(((u32 *)reg->value)[1]);
+
+	/*
+	 * A device may already be registered as platform_device.
+	 * Instead of registering the same device again, just
+	 * add this node to the existing device.
+	 */
+	for_each_device(dev) {
+		if (!dev->resource)
+			continue;
+		if (dev->resource->start == address) {
+			debug("connecting %s to %s\n", node->name, dev_name(dev));
+			node->device = dev;
+			dev->device_node = node;
+			node->resource = dev->resource;
+			return 0;
+		}
+	}
+
+	res = xzalloc(sizeof(*res));
+	res->start = address;
+	res->end = address + size - 1;
+	res->flags = IORESOURCE_MEM;
+
+	node->resource = res;
+
+	add_of_device(node);
+
+	return 0;
+}
+
+void of_free(struct device_node *node)
+{
+	struct device_node *n, *nt;
+	struct property *p, *pt;
+
+	if (!node)
+		return;
+
+	list_for_each_entry_safe(p, pt, &node->properties, list) {
+		list_del(&p->list);
+		free(p->name);
+		free(p->value);
+		free(p);
+	}
+
+	list_for_each_entry_safe(n, nt, &node->children, parent_list) {
+		of_free(n);
+	}
+
+	if (node->parent)
+		list_del(&node->parent_list);
+
+	if (node->device)
+		node->device->device_node = NULL;
+	else
+		free(node->resource);
+
+	free(node->name);
+	free(node->full_name);
+	free(node);
+}
+
+static void __of_probe(struct device_node *node)
+{
+	struct device_node *n;
+
+	if (node->device)
+		return;
+
+	add_of_device_resource(node);
+
+	list_for_each_entry(n, &node->children, parent_list)
+		__of_probe(n);
+}
+
+int of_probe(void)
+{
+	if(!root_node)
+		return -ENODEV;
+
+	__of_probe(root_node);
+
+	return 0;
+}
+
+/*
+ * Parse a flat device tree binary blob and store it in the barebox
+ * internal tree format,
+ */
+int of_parse_dtb(struct fdt_header *fdt)
+{
+	const void *nodep;	/* property node pointer */
+	int  nodeoffset;	/* node offset from libfdt */
+	int  nextoffset;	/* next node offset from libfdt */
+	uint32_t tag;		/* tag */
+	int  len;		/* length of the property */
+	int  level = 0;		/* keep track of nesting level */
+	const struct fdt_property *fdt_prop;
+	const char *pathp;
+	int depth = 10000;
+	struct device_node *node = NULL;
+	char buf[1024];
+	int ret;
+
+	if (root_node)
+		return -EBUSY;
+
+	nodeoffset = fdt_path_offset(fdt, "/");
+	if (nodeoffset < 0) {
+		/*
+		 * Not found or something else bad happened.
+		 */
+		printf ("libfdt fdt_path_offset() returned %s\n",
+			fdt_strerror(nodeoffset));
+		return -EINVAL;
+	}
+
+	while (1) {
+		tag = fdt_next_tag(fdt, nodeoffset, &nextoffset);
+		switch (tag) {
+		case FDT_BEGIN_NODE:
+			pathp = fdt_get_name(fdt, nodeoffset, NULL);
+
+			if (pathp == NULL)
+				pathp = "/* NULL pointer error */";
+
+			ret = fdt_get_path(fdt, nodeoffset, buf, 1024);
+			if (ret)
+				return -EINVAL;
+
+			node = new_device_node(node);
+			if (!node->parent)
+				root_node = node;
+			node->full_name = xstrdup(buf);
+			node->name = xstrdup(pathp);
+			list_add_tail(&node->list, &allnodes);
+			break;
+		case FDT_END_NODE:
+			node = node->parent;
+			break;
+		case FDT_PROP:
+			fdt_prop = fdt_offset_ptr(fdt, nodeoffset,
+					sizeof(*fdt_prop));
+			pathp    = fdt_string(fdt,
+					fdt32_to_cpu(fdt_prop->nameoff));
+			len      = fdt32_to_cpu(fdt_prop->len);
+			nodep    = fdt_prop->data;
+			new_property(node, pathp, nodep, len);
+			break;
+		case FDT_NOP:
+			break;
+		case FDT_END:
+			of_alias_scan();
+			return 0;
+		default:
+			if (level <= depth)
+				printf("Unknown tag 0x%08X\n", tag);
+			return -EINVAL;
+		}
+		nodeoffset = nextoffset;
+	}
+
+	return 0;
+}
diff --git a/drivers/of/gpio.c b/drivers/of/gpio.c
new file mode 100644
index 0000000..d4314f3
--- /dev/null
+++ b/drivers/of/gpio.c
@@ -0,0 +1,28 @@
+#define DEBUG
+
+#include <common.h>
+#include <errno.h>
+#include <of.h>
+#include <gpio.h>
+
+int of_get_named_gpio(struct device_node *np,
+                                   const char *propname, int index)
+{
+	int ret;
+	struct device_node *gpio_np;
+	const void *gpio_spec;
+
+	ret = of_parse_phandles_with_args(np, propname, "#gpio-cells", index,
+					  &gpio_np, &gpio_spec);
+	if (ret) {
+		pr_debug("%s: can't parse gpios property: %d\n", __func__, ret);
+		return -EINVAL;
+	}
+
+	ret = gpio_get_num(gpio_np->device, be32_to_cpup(gpio_spec));
+	if (ret < 0)
+		return ret;
+
+	return ret;
+}
+
diff --git a/include/driver.h b/include/driver.h
index 40b76c1..705e7d9 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -25,6 +25,7 @@
 
 #include <linux/list.h>
 #include <linux/ioport.h>
+#include <of.h>
 
 #define MAX_DRIVER_NAME		32
 #define FORMAT_DRIVER_NAME_ID	"%s%d"
@@ -106,6 +107,9 @@ struct device_d {
 	struct list_head cdevs;
 
 	struct platform_device_id *id_entry;
+	struct device_node *device_node;
+
+	struct of_device_id *of_id_entry;
 };
 
 /** @brief Describes a driver present in the system */
@@ -128,6 +132,7 @@ struct driver_d {
 	struct bus_type *bus;
 
 	struct platform_device_id *id_table;
+	struct of_device_id *of_compatible;
 };
 
 /*@}*/	/* do not delete, doxygen relevant */
@@ -432,5 +437,10 @@ int devfs_add_partition(const char *devname, loff_t offset, loff_t size,
 		int flags, const char *name);
 int devfs_del_partition(const char *name);
 
+#define DRV_OF_COMPAT(compat) \
+	IS_ENABLED(CONFIG_OFDEVICE) ? (compat) : NULL
+
+int dev_get_drvdata(struct device_d *dev, unsigned long *data);
+
 #endif /* DRIVER_H */
 
diff --git a/include/of.h b/include/of.h
index 609b3b5..762df9d 100644
--- a/include/of.h
+++ b/include/of.h
@@ -2,6 +2,8 @@
 #define __OF_H
 
 #include <fdt.h>
+#include <errno.h>
+#include <asm/byteorder.h>
 
 extern struct fdt_header *barebox_fdt;
 
@@ -19,4 +21,106 @@ void do_fixup_by_path_u32(struct fdt_header *fdt, const char *path, const char *
 			  u32 val, int create);
 int fdt_get_path_or_create(struct fdt_header *fdt, const char *path);
 
+#define OF_BAD_ADDR      ((u64)-1)
+
+typedef u32 phandle;
+
+struct property {
+	char *name;
+	int length;
+	void *value;
+	struct list_head list;
+};
+
+struct device_node {
+	char *name;
+	char *full_name;
+
+	struct list_head properties;
+	struct device_node *parent;
+	struct list_head children;
+	struct list_head parent_list;
+	struct list_head list;
+	struct resource *resource;
+	struct device_d *device;
+	struct list_head phandles;
+	phandle phandle;
+};
+
+struct of_device_id {
+	char *compatible;
+	unsigned long data;
+};
+
+struct driver_d;
+
+int of_match(struct device_d *dev, struct driver_d *drv);
+
+struct property *of_find_property(const struct device_node *node, const char *name);
+
+struct device_node *of_find_node_by_path(const char *path);
+
+struct fdt_header *fdt_get_tree(void);
+
+#define device_node_for_nach_child(node, child) \
+	list_for_each_entry(child, &node->children, parent_list)
+
+/* Helper to read a big number; size is in cells (not bytes) */
+static inline u64 of_read_number(const __be32 *cell, int size)
+{
+	u64 r = 0;
+	while (size--)
+		r = (r << 32) | be32_to_cpu(*(cell++));
+	return r;
+}
+
+int of_property_read_u32_array(const struct device_node *np,
+			       const char *propname, u32 *out_values,
+			       size_t sz);
+
+static inline int of_property_read_u32(const struct device_node *np,
+				       const char *propname,
+				       u32 *out_value)
+{
+	return of_property_read_u32_array(np, propname, out_value, 1);
+}
+
+const void *of_get_property(const struct device_node *np, const char *name,
+			 int *lenp);
+
+int of_parse_phandles_with_args(struct device_node *np, const char *list_name,
+				const char *cells_name, int index,
+				struct device_node **out_node,
+				const void **out_args);
+
+int of_get_named_gpio(struct device_node *np,
+                                   const char *propname, int index);
+
+struct device_node *of_find_node_by_phandle(phandle phandle);
+void of_print_property(const void *data, int len);
+
+int of_machine_is_compatible(const char *compat);
+
+#define OF_ROOT_NODE_SIZE_CELLS_DEFAULT 1
+#define OF_ROOT_NODE_ADDR_CELLS_DEFAULT 1
+
+void of_print_nodes(struct device_node *node, int indent);
+int of_probe(void);
+int of_parse_dtb(struct fdt_header *fdt);
+
+#ifdef CONFIG_OFDEVICE
+struct device_node *of_get_root_node(void);
+int of_alias_get_id(struct device_node *np, const char *stem);
+#else
+static inline struct device_node *of_get_root_node(void)
+{
+	return NULL;
+}
+
+static inline int of_alias_get_id(struct device_node *np, const char *stem)
+{
+	return -ENOENT;
+}
+#endif
+
 #endif /* __OF_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
