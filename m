Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YVLYY-0001Pu-Fk
 for barebox@lists.infradead.org; Tue, 10 Mar 2015 14:54:54 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 10 Mar 2015 15:54:26 +0100
Message-Id: <1425999266-20716-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v5] state: add framework for persistent state handling
To: sha@pengutronix.de, jlu@pengutronix.de, barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

This patch adds a framework to describe, access, store and restore a set of
variables. A state variable set can be fully described in a devicetree node.
This node could be part of the regular devicetree blob or it could be an extra
devicetree solely for the state. The state variable set contains variables of
different types and a place to store the variable set.

For more information see:
    Documentation/devicetree/bindings/barebox/barebox,state.rst

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 .../devicetree/bindings/barebox/barebox,state.rst  |  107 ++
 commands/Kconfig                                   |    5 +
 commands/Makefile                                  |    1 +
 commands/state.c                                   |   77 ++
 common/Kconfig                                     |    7 +
 common/Makefile                                    |    1 +
 common/state.c                                     | 1198 ++++++++++++++++++++
 drivers/misc/Kconfig                               |    4 +
 drivers/misc/Makefile                              |    1 +
 drivers/misc/state.c                               |   81 ++
 include/state.h                                    |   21 +
 11 files changed, 1503 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/barebox/barebox,state.rst
 create mode 100644 commands/state.c
 create mode 100644 common/state.c
 create mode 100644 drivers/misc/state.c
 create mode 100644 include/state.h

diff --git a/Documentation/devicetree/bindings/barebox/barebox,state.rst b/Documentation/devicetree/bindings/barebox/barebox,state.rst
new file mode 100644
index 000000000000..42b2a34d3ab0
--- /dev/null
+++ b/Documentation/devicetree/bindings/barebox/barebox,state.rst
@@ -0,0 +1,107 @@
+barebox,state
+=============
+
+Overview
+--------
+
+
+Boards often have the need to store variables in persistent memory.
+The constraints are often different from what the regular environment
+can do:
+
+* compact binary format to make it suitable for small EEPROMs/MRAMs
+* atomic save/restore of the whole variable set
+* redundancy
+
+``barebox,state`` is a framework to describe, access, store and
+restore a set of variables. A state variable set can be fully
+described in a devicetree node. This node could be part of the regular
+devicetree blob or it could be an extra devicetree solely for the
+state. The state variable set contains variables of different types
+and a place to store the variable set.
+
+A state node contains a description of a set of variables along with a
+place where the variables are stored.
+
+Required properties:
+
+* ``compatible``: should be ``barebox,state``;
+* ``magic``: A 32bit number used as a magic to identify the state
+
+Optional properties:
+
+* ``backend``: describes where the data for this state is stored
+* ``backend-type``: should be ``raw`` or ``dtb``.
+
+Variable nodes
+--------------
+
+These are subnodes of a state node each describing a single
+variable. The node name may end with ``@<ADDRESS>``, but the suffix is
+sripped from the variable name.
+
+State variables have a type. Currenty supported types are: ``uint32``,
+``enum32`` and ``mac`` address. Fixed length strings are planned but
+not implemented. Variable length strings are not planned.
+
+Required properties:
+
+* ``reg``: Standard ``reg`` property with ``#address-cells = <1>`` and
+  ``#size-cells = <1>``. Defines the ``offset`` and ``size`` of the
+  variable in the ``raw`` backend. ``size`` must fit the node
+  ``type``. Variables are not allowed to overlap.
+* ``type``: Should be ``uint32``, ``enum32`` or ``mac`` for the type
+  of the variable
+* ``names``: For ``enum32`` values only, this specifies the values
+  possible for ``enum32``.
+
+Optional properties:
+
+* ``default``: The default value if the variable cannot be read from
+  storage. For ``enum32`` values it is an integer representing an
+  offset into the names array.
+
+Example::
+
+  state: state@0 {
+  	magic = <0x27031977>;
+  	compatible = "barebox,state";
+  	backend-type = "raw";
+  	backend = &eeprom, "partname:state";
+
+  	foo {
+		reg = <0x00 0x4>;
+  		type = "u32";
+  		default = <0x0>;
+  	};
+
+  	bar {
+		reg = <0x10 0x4>;
+  		type = "enum32";
+  		names = "baz", "qux";
+  		default ="qux";
+  	};
+  };
+
+Backends
+--------
+
+Currently two backends exist. The raw backend is a very compact format
+consisting of a magic value for identification, the raw values and a
+CRC. Two copies are maintained for making sure that during update the
+storage device still contains a valid state. The dtb backend stores
+the state as a devicetree binary blob. This is exactly the original
+devicetree description of the state itself, but additionally contains
+the actual values of the variables. Unlike the raw state backend the
+dtb state backend can describe itself.
+
+Frontend
+--------
+
+As frontend a state instance is a regular barebox device which has
+device parameters for the state variables. With this the variables can
+be accessed like normal shell variables. The ``state`` command is used
+to save/restore a state to the backend device.
+
+After initializing the variable can be accessed with ``$state.foo``.
+``state -s`` stores the state to eeprom.
diff --git a/commands/Kconfig b/commands/Kconfig
index e4f68e7bda31..00ce96238c81 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2062,6 +2062,11 @@ config CMD_TIME
 	  Note: This command depends on COMMAND being interruptible,
 	  otherwise the timer may overrun resulting in incorrect results
 
+config CMD_STATE
+	tristate
+	depends on STATE
+	prompt "state"
+
 # end Miscellaneous commands
 endmenu
 
diff --git a/commands/Makefile b/commands/Makefile
index 99a65d460916..7344e010f415 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -109,3 +109,4 @@ obj-$(CONFIG_CMD_FIRMWARELOAD)	+= firmwareload.o
 obj-$(CONFIG_CMD_CMP)		+= cmp.o
 obj-$(CONFIG_CMD_NV)		+= nv.o
 obj-$(CONFIG_CMD_DEFAULTENV)	+= defaultenv.o
+obj-$(CONFIG_CMD_STATE)		+= state.o
diff --git a/commands/state.c b/commands/state.c
new file mode 100644
index 000000000000..82c29d00c880
--- /dev/null
+++ b/commands/state.c
@@ -0,0 +1,77 @@
+/*
+ * Copyright (C) 2012 Jan Luebbe <j.luebbe@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <getopt.h>
+#include <command.h>
+#include <state.h>
+
+static int do_state(int argc, char *argv[])
+{
+	int opt, ret = 0;
+	struct state *state = NULL;
+	int do_save = 0, do_load = 0;
+	const char *statename = "state";
+
+	while ((opt = getopt(argc, argv, "sl")) > 0) {
+		switch (opt) {
+		case 's':
+			do_save = 1;
+			break;
+		case 'l':
+			do_load = 1;
+			break;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
+
+	if (do_save && do_load)
+		return COMMAND_ERROR_USAGE;
+
+	if (!do_save && !do_load) {
+		state_info();
+		return 0;
+	}
+
+	if (optind < argc)
+		statename = argv[optind];
+
+	state = state_by_name(statename);
+	if (!state) {
+		printf("cannot find state %s\n", statename);
+		return -ENOENT;
+	}
+
+	if (do_save)
+		ret = state_save(state);
+	else if (do_load)
+		ret = state_load(state);
+
+	return ret;
+}
+
+static const __maybe_unused char cmd_state_help[] =
+"Usage: state [OPTIONS] [STATENAME]\n"
+"\n"
+"options:\n"
+"-s        save state\n"
+"-l        load state\n";
+
+BAREBOX_CMD_START(state)
+	.cmd		= do_state,
+	BAREBOX_CMD_DESC("handle state information")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_HELP(cmd_state_help)
+BAREBOX_CMD_END
diff --git a/common/Kconfig b/common/Kconfig
index 8a8912a1461a..116af8a5ed78 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -698,6 +698,13 @@ config BAREBOXCRC32_TARGET
 config POLLER
 	bool "generic polling infrastructure"
 
+config STATE
+	bool "generic state infrastructure"
+	depends on OF_BAREBOX_DRIVERS
+	select ENVIRONMENT_VARIABLES
+	select OFTREE
+	select PARAMETER
+
 config RESET_SOURCE
 	bool "detect Reset cause"
 	depends on GLOBALVAR
diff --git a/common/Makefile b/common/Makefile
index ee5dca70236e..42f2c19047f7 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -43,6 +43,7 @@ obj-$(CONFIG_POLLER)		+= poller.o
 obj-$(CONFIG_RESET_SOURCE)	+= reset_source.o
 obj-$(CONFIG_SHELL_HUSH)	+= hush.o
 obj-$(CONFIG_SHELL_SIMPLE)	+= parser.o
+obj-$(CONFIG_STATE)		+= state.o
 obj-$(CONFIG_UIMAGE)		+= image.o uimage.o
 obj-$(CONFIG_MENUTREE)		+= menutree.o
 obj-$(CONFIG_EFI_GUID)		+= efi-guid.o
diff --git a/common/state.c b/common/state.c
new file mode 100644
index 000000000000..b677a9f01d25
--- /dev/null
+++ b/common/state.c
@@ -0,0 +1,1198 @@
+/*
+ * Copyright (C) 2012-2014 Pengutronix, Jan Luebbe <j.luebbe@pengutronix.de>
+ * Copyright (C) 2013-2014 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
+ * Copyright (C) 2015 Pengutronix, Marc Kleine-Budde <mkl@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <environment.h>
+#include <errno.h>
+#include <fcntl.h>
+#include <fs.h>
+#include <init.h>
+#include <ioctl.h>
+#include <libbb.h>
+#include <libfile.h>
+#include <malloc.h>
+#include <net.h>
+#include <state.h>
+#include <xfuncs.h>
+
+#include <linux/mtd/mtd-abi.h>
+#include <linux/mtd/mtd.h>
+#include <linux/list.h>
+#include <linux/err.h>
+
+#include <asm/unaligned.h>
+
+#define RAW_BACKEND_COPIES 2
+
+struct state_backend;
+
+struct state {
+	struct device_d dev;
+	const struct device_node *root;
+	struct list_head variables;
+	const char *name;
+	struct list_head list;
+	struct state_backend *backend;
+	uint32_t magic;
+	unsigned int dirty;
+};
+
+struct state_backend {
+	int (*load)(struct state_backend *backend, struct state *state);
+	int (*save)(struct state_backend *backend, struct state *state);
+	const char *name;
+	const char *path;
+};
+
+enum state_variable_type {
+	STATE_TYPE_INVALID = 0,
+	STATE_TYPE_ENUM,
+	STATE_TYPE_U32,
+	STATE_TYPE_MAC,
+};
+
+/* instance of a single variable */
+struct state_variable {
+	enum state_variable_type type;
+	struct list_head list;
+	const char *name;
+	unsigned int start;
+	unsigned int size;
+	void *raw;
+};
+
+/* A variable type (uint32, enum32) */
+struct variable_type {
+	enum state_variable_type type;
+	const char *type_name;
+	struct list_head list;
+	int (*export)(struct state_variable *, struct device_node *);
+	int (*import)(struct state_variable *, const struct device_node *);
+	struct state_variable *(*create)(struct state *state,
+			const char *name, struct device_node *);
+};
+
+/* list of all registered state instances */
+static LIST_HEAD(state_list);
+
+static int state_set_dirty(struct param_d *p, void *priv)
+{
+	struct state *state = priv;
+
+	state->dirty = 1;
+
+	return 0;
+}
+
+/*
+ *  uint32
+ */
+struct state_uint32 {
+	struct state_variable var;
+	struct param_d *param;
+	uint32_t value;
+	uint32_t value_default;
+};
+
+static int state_var_compare(struct list_head *a, struct list_head *b)
+{
+	struct state_variable *va = list_entry(a, struct state_variable, list);
+	struct state_variable *vb = list_entry(b, struct state_variable, list);
+
+	return va->start < vb->start ? -1 : 1;
+}
+
+static void state_add_var(struct state *state, struct state_variable *var)
+{
+	list_add_sort(&var->list, &state->variables, state_var_compare);
+}
+
+static inline struct state_uint32 *to_state_uint32(struct state_variable *s)
+{
+	return container_of(s, struct state_uint32, var);
+}
+
+static int state_uint32_export(struct state_variable *var,
+		struct device_node *node)
+{
+	struct state_uint32 *su32 = to_state_uint32(var);
+	int ret;
+
+	if (su32->value_default) {
+		ret = of_property_write_u32(node, "default",
+					    su32->value_default);
+		if (ret)
+			return ret;
+	}
+
+	return of_property_write_u32(node, "value", su32->value);
+}
+
+static int state_uint32_import(struct state_variable *sv,
+		const struct device_node *node)
+{
+	struct state_uint32 *su32 = to_state_uint32(sv);
+
+	of_property_read_u32(node, "default", &su32->value_default);
+	if (of_property_read_u32(node, "value", &su32->value))
+		su32->value = su32->value_default;
+
+	return 0;
+}
+
+static struct state_variable *state_uint32_create(struct state *state,
+		const char *name, struct device_node *node)
+{
+	struct state_uint32 *su32;
+	struct param_d *param;
+
+	su32 = xzalloc(sizeof(*su32));
+
+	param = dev_add_param_int(&state->dev, name, state_set_dirty,
+				  NULL, &su32->value, "%d", state);
+	if (IS_ERR(param)) {
+		free(su32);
+		return ERR_CAST(param);
+	}
+
+	su32->param = param;
+	su32->var.size = sizeof(uint32_t);
+	su32->var.raw = &su32->value;
+
+	return &su32->var;
+}
+
+/*
+ *  enum32
+ */
+struct state_enum32 {
+	struct state_variable var;
+	struct param_d *param;
+	uint32_t value;
+	uint32_t value_default;
+	const char **names;
+	int num_names;
+};
+
+static inline struct state_enum32 *to_state_enum32(struct state_variable *s)
+{
+	return container_of(s, struct state_enum32, var);
+}
+
+static int state_enum32_export(struct state_variable *var,
+		struct device_node *node)
+{
+	struct state_enum32 *enum32 = to_state_enum32(var);
+	int ret, i, len;
+	char *prop, *str;
+
+	if (enum32->value_default) {
+		ret = of_property_write_u32(node, "default",
+					    enum32->value_default);
+		if (ret)
+			return ret;
+	}
+
+	ret = of_property_write_u32(node, "value", enum32->value);
+	if (ret)
+		return ret;
+
+	len = 0;
+
+	for (i = 0; i < enum32->num_names; i++)
+		len += strlen(enum32->names[i]) + 1;
+
+	prop = xzalloc(len);
+	str = prop;
+
+	for (i = 0; i < enum32->num_names; i++)
+		str += sprintf(str, "%s", enum32->names[i]) + 1;
+
+	ret = of_set_property(node, "names", prop, len, 1);
+
+	free(prop);
+
+	return ret;
+}
+
+static int state_enum32_import(struct state_variable *sv,
+			       const struct device_node *node)
+{
+	struct state_enum32 *enum32 = to_state_enum32(sv);
+	int len;
+	const __be32 *value, *value_default;
+
+	value = of_get_property(node, "value", &len);
+	if (value && len != sizeof(uint32_t))
+		return -EINVAL;
+
+	value_default = of_get_property(node, "default", &len);
+	if (value_default && len != sizeof(uint32_t))
+		return -EINVAL;
+
+	if (value_default)
+		enum32->value_default = be32_to_cpu(*value_default);
+	if (value)
+		enum32->value = be32_to_cpu(*value);
+	else
+		enum32->value = enum32->value_default;
+
+	return 0;
+}
+
+static struct state_variable *state_enum32_create(struct state *state,
+		const char *name, struct device_node *node)
+{
+	struct state_enum32 *enum32;
+	int ret, i, num_names;
+
+	enum32 = xzalloc(sizeof(*enum32));
+
+	num_names = of_property_count_strings(node, "names");
+
+	enum32->names = xzalloc(sizeof(char *) * num_names);
+	enum32->num_names = num_names;
+	enum32->var.size = sizeof(uint32_t);
+	enum32->var.raw = &enum32->value;
+
+	for (i = 0; i < num_names; i++) {
+		const char *name;
+
+		ret = of_property_read_string_index(node, "names", i, &name);
+		if (ret)
+			goto out;
+		enum32->names[i] = xstrdup(name);
+	}
+
+	enum32->param = dev_add_param_enum(&state->dev, name, state_set_dirty,
+			NULL, &enum32->value, enum32->names, num_names, state);
+	if (IS_ERR(enum32->param)) {
+		ret = PTR_ERR(enum32->param);
+		goto out;
+	}
+
+	return &enum32->var;
+out:
+	for (i--; i >= 0; i--)
+		free((char *)enum32->names[i]);
+	free(enum32->names);
+	free(enum32);
+	return ERR_PTR(ret);
+}
+
+/*
+ *  MAC address
+ */
+struct state_mac {
+	struct state_variable var;
+	struct param_d *param;
+	uint8_t value[6];
+	uint8_t value_default[6];
+};
+
+static inline struct state_mac *to_state_mac(struct state_variable *s)
+{
+	return container_of(s, struct state_mac, var);
+}
+
+static int state_mac_export(struct state_variable *var,
+		struct device_node *node)
+{
+	struct state_mac *mac = to_state_mac(var);
+	int ret;
+
+	ret = of_property_write_u8_array(node, "default", mac->value_default,
+					 ARRAY_SIZE(mac->value_default));
+	if (ret)
+		return ret;
+
+	return of_property_write_u8_array(node, "value", mac->value,
+					  ARRAY_SIZE(mac->value));
+}
+
+static int state_mac_import(struct state_variable *sv,
+			    const struct device_node *node)
+{
+	struct state_mac *mac = to_state_mac(sv);
+
+	of_property_read_u8_array(node, "default", mac->value_default,
+				  ARRAY_SIZE(mac->value_default));
+	if (of_property_read_u8_array(node, "value", mac->value,
+				      ARRAY_SIZE(mac->value)))
+		memcpy(mac->value, mac->value_default, ARRAY_SIZE(mac->value));
+
+	return 0;
+}
+
+static struct state_variable *state_mac_create(struct state *state,
+		const char *name, struct device_node *node)
+{
+	struct state_mac *mac;
+	int ret;
+
+	mac = xzalloc(sizeof(*mac));
+
+	mac->var.size = ARRAY_SIZE(mac->value);
+	mac->var.raw = mac->value;
+
+	mac->param = dev_add_param_mac(&state->dev, name, state_set_dirty,
+			NULL, mac->value, state);
+	if (IS_ERR(mac->param)) {
+		ret = PTR_ERR(mac->param);
+		goto out;
+	}
+
+	return &mac->var;
+out:
+	free(mac);
+	return ERR_PTR(ret);
+}
+
+static struct variable_type types[] =  {
+	{
+		.type = STATE_TYPE_U32,
+		.type_name = "uint32",
+		.export = state_uint32_export,
+		.import = state_uint32_import,
+		.create = state_uint32_create,
+	}, {
+		.type = STATE_TYPE_ENUM,
+		.type_name = "enum32",
+		.export = state_enum32_export,
+		.import = state_enum32_import,
+		.create = state_enum32_create,
+	}, {
+		.type = STATE_TYPE_MAC,
+		.type_name = "mac",
+		.export = state_mac_export,
+		.import = state_mac_import,
+		.create = state_mac_create,
+	},
+};
+
+static struct variable_type *state_find_type_by_name(const char *name)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(types); i++) {
+		if (!strcmp(name, types[i].type_name)) {
+			return &types[i];
+		}
+	}
+
+	return NULL;
+}
+
+/*
+ * Generic state functions
+ */
+
+static struct state *state_new(const char *name)
+{
+	struct state *state;
+	int ret;
+
+	state = xzalloc(sizeof(*state));
+	safe_strncpy(state->dev.name, name, MAX_DRIVER_NAME);
+	state->name = state->dev.name;
+	state->dev.id = DEVICE_ID_SINGLE;
+	INIT_LIST_HEAD(&state->variables);
+
+	ret = register_device(&state->dev);
+	if (ret) {
+		free(state);
+		return ERR_PTR(ret);
+	}
+
+	state->dirty = 1;
+	dev_add_param_bool(&state->dev, "dirty", NULL, NULL, &state->dirty,
+			   NULL);
+
+	list_add_tail(&state->list, &state_list);
+
+	return state;
+}
+
+static void state_release(struct state *state)
+{
+	list_del(&state->list);
+	unregister_device(&state->dev);
+	free(state);
+}
+
+static struct state_variable *state_find_var(struct state *state,
+					     const char *name)
+{
+	struct state_variable *sv;
+
+	list_for_each_entry(sv, &state->variables, list) {
+		if (!strcmp(sv->name, name))
+			return sv;
+	}
+
+	return ERR_PTR(-ENOENT);
+}
+
+enum state_convert {
+	STATE_CONVERT_FROM_NODE,
+	STATE_CONVERT_FROM_NODE_CREATE,
+	STATE_CONVERT_TO_NODE,
+};
+
+static int state_convert_node_variable(struct state *state,
+		struct device_node *node, struct device_node *parent,
+		const char *parent_name, enum state_convert conv)
+{
+	const struct variable_type *vtype;
+	struct device_node *child;
+	struct device_node *new_node = NULL;
+	struct state_variable *sv;
+	const char *type_name;
+	char *short_name, *name, *indexs;
+	unsigned int start_size[2];
+	int ret;
+
+	/* strip trailing @<ADDRESS> */
+	short_name = xstrdup(node->name);
+	indexs = strchr(short_name, '@');
+	if (indexs)
+		*indexs = 0;
+
+	/* construct full name */
+	name = asprintf("%s%s%s",
+			parent_name, parent_name[0] ? "." : "", short_name);
+	free(short_name);
+
+	if (conv == STATE_CONVERT_TO_NODE)
+		new_node = of_new_node(parent, node->name);
+
+	for_each_child_of_node(node, child) {
+		ret = state_convert_node_variable(state, child, new_node, name,
+						  conv);
+		if (ret)
+			goto out_free;
+	}
+
+	/* parents are allowed to have no type */
+	ret = of_property_read_string(node, "type", &type_name);
+	if (!list_empty(&node->children) && ret == -EINVAL) {
+		ret = 0;
+		goto out_free;
+	} else if (ret) {
+		goto out_free;
+	}
+
+	vtype = state_find_type_by_name(type_name);
+	if (!vtype) {
+		ret = -ENOENT;
+		goto out_free;
+	}
+
+	if (conv == STATE_CONVERT_FROM_NODE_CREATE) {
+		sv = vtype->create(state, name, node);
+		if (IS_ERR(sv)) {
+			ret = PTR_ERR(sv);
+			dev_err(&state->dev, "failed to create %s: %s\n",
+				name, strerror(-ret));
+			goto out_free;
+		}
+
+		ret = of_property_read_u32_array(node, "reg", start_size,
+						 ARRAY_SIZE(start_size));
+		if (ret)
+			goto out_free;
+
+		if (start_size[1] != sv->size) {
+			dev_err(&state->dev,
+				"size mismatch: type=%s(size=%u) size=%u\n",
+			       type_name, sv->size, start_size[1]);
+			ret = -EOVERFLOW;
+			goto out_free;
+		}
+
+		sv->name = name;
+		sv->start = start_size[0];
+		sv->type = vtype->type;
+		state_add_var(state, sv);
+	} else {
+		sv = state_find_var(state, name);
+		if (IS_ERR(sv)) {
+			/* we ignore this error */
+			dev_dbg(&state->dev,
+				"no such variable: %s: %s\n",
+				name, strerror(-ret));
+			ret = 0;
+			goto out_free;
+		}
+		free(name);
+
+		if (conv == STATE_CONVERT_TO_NODE) {
+			ret = of_set_property(new_node, "type",
+					      vtype->type_name,
+					      strlen(vtype->type_name) + 1, 1);
+			if (ret)
+				goto out;
+
+			start_size[0] = sv->start;
+			start_size[1] = sv->size;
+			ret = of_property_write_u32_array(new_node, "reg",
+							  start_size,
+							  ARRAY_SIZE(start_size));
+			if (ret)
+				goto out;
+		}
+	}
+
+	if (conv == STATE_CONVERT_TO_NODE)
+		ret = vtype->export(sv, new_node);
+	else
+		ret = vtype->import(sv, node);
+
+	if (ret)
+		goto out;
+
+	return 0;
+out_free:
+	free(name);
+out:
+	return ret;
+}
+
+static struct device_node *state_to_node(struct state *state)
+{
+	struct device_node *child;
+	struct device_node *root;
+	int ret;
+
+	root = of_new_node(NULL, NULL);
+	ret = of_property_write_u32(root, "magic", state->magic);
+	if (ret)
+		goto out;
+
+	for_each_child_of_node(state->root, child) {
+		ret = state_convert_node_variable(state, child, root, "",
+						  STATE_CONVERT_TO_NODE);
+		if (ret)
+			goto out;
+	}
+
+	return root;
+out:
+	of_delete_node(root);
+	return ERR_PTR(ret);
+}
+
+static int state_from_node(struct state *state, struct device_node *node,
+			   bool create)
+{
+	struct device_node *child;
+	enum state_convert conv;
+	int ret;
+	uint32_t magic;
+
+	ret = of_property_read_u32(node, "magic", &magic);
+	if (ret)
+		return ret;
+
+	if (create) {
+		conv = STATE_CONVERT_FROM_NODE_CREATE;
+		state->root = node;
+		state->magic = magic;
+	} else {
+		conv = STATE_CONVERT_FROM_NODE;
+		if (state->magic && state->magic != magic) {
+			dev_err(&state->dev,
+					"invalid magic 0x%08x, should be 0x%08x\n",
+					magic, state->magic);
+			return -EINVAL;
+		}
+	}
+
+	for_each_child_of_node(node, child) {
+		ret = state_convert_node_variable(state, child, NULL, "", conv);
+		if (ret)
+			return ret;
+	}
+
+	/* check for overlapping variables */
+	if (create) {
+		const struct state_variable *sv;
+
+		/* start with second entry */
+		sv = list_first_entry(&state->variables,
+				      struct state_variable, list);
+
+		list_for_each_entry_continue(sv, &state->variables, list) {
+			const struct state_variable *last_sv;
+
+			last_sv = list_last_entry(&sv->list,
+						  struct state_variable, list);
+			if ((last_sv->start + last_sv->size - 1) < sv->start)
+				continue;
+
+			dev_err(&state->dev,
+				"ERROR: Conflicting variable position between: "
+				"%s (0x%02x..0x%02x) and %s (0x%02x..0x%02x)\n",
+				last_sv->name, last_sv->start,
+				last_sv->start + last_sv->size - 1,
+				sv->name, sv->start, sv->start + sv->size - 1);
+
+			ret |= -EINVAL;
+		}
+	}
+
+	return ret;
+}
+
+/*
+ * state_new_from_node - create a new state instance from a device_node
+ *
+ * @name	The name of the new state instance
+ * @node	The device_node describing the new state instance
+ */
+struct state *state_new_from_node(const char *name, struct device_node *node)
+{
+	struct state *state;
+	int ret;
+
+	state = state_new(name);
+	if (IS_ERR(state))
+		return state;
+
+	ret = state_from_node(state, node, 1);
+	if (ret) {
+		state_release(state);
+		return ERR_PTR(ret);
+	}
+
+	return state;
+}
+
+/*
+ * state_new_from_fdt - create a new state instance from a fdt binary blob
+ *
+ * @name	The name of the new state instance
+ * @fdt		The fdt binary blob describing the new state instance
+ */
+struct state *state_new_from_fdt(const char *name, void *fdt)
+{
+	struct state *state;
+	struct device_node *root;
+
+	root = of_unflatten_dtb(fdt);
+	if (!root)
+		return ERR_PTR(-EINVAL);
+
+	state = state_new_from_node(name, root);
+
+	of_delete_node(root);
+
+	return state;
+}
+
+/*
+ * state_by_name - find a state instance by name
+ *
+ * @name	The name of the state instance
+ */
+struct state *state_by_name(const char *name)
+{
+	struct state *state;
+
+	list_for_each_entry(state, &state_list, list) {
+		if (!strcmp(name, state->name))
+			return state;
+	}
+
+	return NULL;
+}
+
+/*
+ * state_by_node - find a state instance by of node
+ *
+ * @node	The of node of the state intance
+ */
+struct state *state_by_node(const struct device_node *node)
+{
+	struct state *state;
+
+	list_for_each_entry(state, &state_list, list) {
+		if (state->root == node)
+			return state;
+	}
+
+	return NULL;
+}
+
+int state_get_name(const struct state *state, char const **name)
+{
+	*name = xstrdup(state->name);
+
+	return 0;
+}
+
+/*
+ * state_load - load a state from the backing store
+ *
+ * @state	The state instance to load
+ */
+int state_load(struct state *state)
+{
+	int ret;
+
+	if (!state->backend)
+		return -ENOSYS;
+
+	ret = state->backend->load(state->backend, state);
+	if (ret)
+		state->dirty = 1;
+	else
+		state->dirty = 0;
+
+	return ret;
+}
+
+/*
+ * state_save - save a state to the backing store
+ *
+ * @state	The state instance to save
+ */
+int state_save(struct state *state)
+{
+	int ret;
+
+	if (!state->dirty)
+		return 0;
+
+	if (!state->backend)
+		return -ENOSYS;
+
+	ret = state->backend->save(state->backend, state);
+	if (ret)
+		return ret;
+
+	state->dirty = 0;
+
+	return 0;
+}
+
+void state_info(void)
+{
+	struct state *state;
+
+	printf("registered state instances:\n");
+
+	list_for_each_entry(state, &state_list, list) {
+		printf("%-20s ", state->name);
+		if (state->backend)
+			printf("(backend: %s, path: %s)\n",
+			       state->backend->name, state->backend->path);
+		else
+			printf("(no backend)\n");
+	}
+}
+
+static int mtd_get_meminfo(const char *path, struct mtd_info_user *meminfo)
+{
+	int fd, ret;
+
+	fd = open(path, O_RDWR);
+	if (fd < 0)
+		return fd;
+
+	ret = ioctl(fd, MEMGETINFO, meminfo);
+
+	close(fd);
+
+	return ret;
+}
+
+/*
+ * DTB backend implementation
+ */
+struct state_backend_dtb {
+	struct state_backend backend;
+	bool need_erase;
+};
+
+static int state_backend_dtb_load(struct state_backend *backend,
+				  struct state *state)
+{
+	struct device_node *root;
+	void *fdt;
+	int ret;
+	size_t len;
+
+	fdt = read_file(backend->path, &len);
+	if (!fdt) {
+		dev_err(&state->dev, "cannot read %s\n", backend->path);
+		return -EINVAL;
+	}
+
+	root = of_unflatten_dtb(fdt);
+
+	free(fdt);
+
+	if (IS_ERR(root))
+		return PTR_ERR(root);
+
+	ret = state_from_node(state, root, 0);
+
+	return ret;
+}
+
+static int state_backend_dtb_save(struct state_backend *backend,
+				  struct state *state)
+{
+	struct state_backend_dtb *backend_dtb = container_of(backend,
+			struct state_backend_dtb, backend);
+	int ret, fd;
+	struct device_node *root;
+	struct fdt_header *fdt;
+
+	root = state_to_node(state);
+	if (IS_ERR(root))
+		return PTR_ERR(root);
+
+	fdt = of_flatten_dtb(root);
+	if (!fdt)
+		return -EINVAL;
+
+	fd = open(backend->path, O_WRONLY);
+	if (fd < 0) {
+		ret = fd;
+		goto out;
+	}
+
+	if (backend_dtb->need_erase) {
+		ret = erase(fd, fdt32_to_cpu(fdt->totalsize), 0);
+		if (ret) {
+			close(fd);
+			goto out;
+		}
+	}
+
+	ret = write_full(fd, fdt, fdt32_to_cpu(fdt->totalsize));
+
+	close(fd);
+
+	if (ret < 0)
+		goto out;
+
+	ret = 0;
+out:
+	free(fdt);
+	of_delete_node(root);
+
+	return ret;
+}
+
+/*
+ * state_backend_dtb_file - create a dtb backend store for a state instance
+ *
+ * @state	The state instance to work on
+ * @path	The path where the state will be stored to
+ */
+int state_backend_dtb_file(struct state *state, const char *path)
+{
+	struct state_backend_dtb *backend_dtb;
+	struct state_backend *backend;
+	struct mtd_info_user meminfo;
+	int ret;
+
+	if (state->backend)
+		return -EBUSY;
+
+	backend_dtb = xzalloc(sizeof(*backend_dtb));
+	backend = &backend_dtb->backend;
+
+	backend->load = state_backend_dtb_load;
+	backend->save = state_backend_dtb_save;
+	backend->path = xstrdup(path);
+	backend->name = "dtb";
+
+	state->backend = backend;
+
+	ret = mtd_get_meminfo(backend->path, &meminfo);
+	if (!ret && !(meminfo.mtd->flags & MTD_NO_ERASE))
+		backend_dtb->need_erase = true;
+
+	return 0;
+}
+
+/*
+ * Raw backend implementation
+ */
+struct state_backend_raw {
+	struct state_backend backend;
+	unsigned long size_data; /* The raw data size (without magic and crc) */
+	unsigned long size_full;
+	unsigned long step; /* The step in bytes between two copies */
+	off_t offset; /* offset in the storage file */
+	size_t size; /* size of the storage area */
+	int num_copy_read; /* The first successfully read copy */
+	bool need_erase;
+};
+
+struct backend_raw_header {
+	uint32_t magic;
+	uint16_t reserved;
+	uint16_t data_len;
+	uint32_t data_crc;
+	uint32_t header_crc;
+};
+
+static int backend_raw_load_one(struct state_backend_raw *backend_raw,
+		struct state *state, int fd, off_t offset)
+{
+	uint32_t crc;
+	struct state_variable *sv;
+	struct backend_raw_header header = {};
+	int ret;
+	void *buf;
+
+	ret = lseek(fd, offset, SEEK_SET);
+	if (ret < 0)
+		return ret;
+
+	ret = read_full(fd, &header, sizeof(header));
+	if (ret < 0)
+		return ret;
+
+	crc = crc32(0, &header, sizeof(header) - sizeof(uint32_t));
+	if (crc != header.header_crc) {
+		dev_err(&state->dev,
+			"invalid header crc, calculated 0x%08x, found 0x%08x\n",
+			crc, header.header_crc);
+		return -EINVAL;
+	}
+
+	if (state->magic && state->magic != header.magic) {
+		dev_err(&state->dev,
+			"invalid magic 0x%08x, should be 0x%08x\n",
+			header.magic, state->magic);
+		return -EINVAL;
+	}
+
+	buf = xzalloc(header.data_len);
+
+	ret = read_full(fd, buf, header.data_len);
+	if (ret < 0)
+		goto out_free;
+
+	crc = crc32(0, buf, header.data_len);
+	if (crc != header.data_crc) {
+		dev_err(&state->dev,
+			"invalid crc, calculated 0x%08x, found 0x%08x\n",
+			crc, header.data_crc);
+		ret = -EINVAL;
+		goto out_free;
+	}
+
+	list_for_each_entry(sv, &state->variables, list) {
+		if (sv->start + sv->size > header.data_len)
+			break;
+		memcpy(sv->raw, buf + sv->start, sv->size);
+	}
+
+	free(buf);
+	return 0;
+
+ out_free:
+	free(buf);
+	return ret;
+}
+
+static int state_backend_raw_load(struct state_backend *backend,
+				  struct state *state)
+{
+	struct state_backend_raw *backend_raw = container_of(backend,
+			struct state_backend_raw, backend);
+	int ret = 0, fd, i;
+
+	fd = open(backend->path, O_RDONLY);
+	if (fd < 0)
+		return fd;
+
+	for (i = 0; i < RAW_BACKEND_COPIES; i++) {
+		off_t offset = backend_raw->offset + i * backend_raw->step;
+
+		ret = backend_raw_load_one(backend_raw, state, fd, offset);
+		if (!ret) {
+			backend_raw->num_copy_read = i;
+			dev_dbg(&state->dev,
+				"copy %d successfully loaded\n", i);
+			break;
+		}
+	}
+
+	close(fd);
+
+	return ret;
+}
+
+static int backend_raw_write_one(struct state_backend_raw *backend_raw,
+		struct state *state, int fd, int num, void *buf, size_t size)
+{
+	int ret;
+	off_t offset = backend_raw->offset + num * backend_raw->step;
+
+	dev_dbg(&state->dev, "%s: 0x%08lx 0x%08zx\n",
+			__func__, offset, size);
+
+	ret = lseek(fd, offset, SEEK_SET);
+	if (ret < 0)
+		return ret;
+
+	if (backend_raw->need_erase) {
+		ret = erase(fd, backend_raw->size_full, offset);
+		if (ret)
+			return ret;
+	}
+
+	ret = write_full(fd, buf, size);
+	if (ret < 0)
+		return ret;
+
+	return 0;
+}
+
+static int state_backend_raw_save(struct state_backend *backend,
+				  struct state *state)
+{
+	struct state_backend_raw *backend_raw = container_of(backend,
+			struct state_backend_raw, backend);
+	int ret = 0, size, fd;
+	void *buf, *data;
+	struct backend_raw_header *header;
+	struct state_variable *sv;
+
+	size = backend_raw->size_data + sizeof(struct backend_raw_header);
+
+	buf = xzalloc(size);
+
+	header = buf;
+	data = buf + sizeof(*header);
+
+	list_for_each_entry(sv, &state->variables, list)
+		memcpy(data + sv->start, sv->raw, sv->size);
+
+	header->magic = state->magic;
+	header->data_len = backend_raw->size_data;
+	header->data_crc = crc32(0, data, backend_raw->size_data);
+	header->header_crc = crc32(0, header,
+				   sizeof(*header) - sizeof(uint32_t));
+
+	fd = open(backend->path, O_WRONLY);
+	if (fd < 0)
+		goto out_free;
+
+	ret = backend_raw_write_one(backend_raw, state, fd,
+				    !backend_raw->num_copy_read, buf, size);
+	if (ret)
+		goto out_close;
+
+	ret = backend_raw_write_one(backend_raw, state, fd,
+				    backend_raw->num_copy_read, buf, size);
+	if (ret)
+		goto out_close;
+
+	dev_dbg(&state->dev, "wrote state to %s\n", backend->path);
+out_close:
+	close(fd);
+out_free:
+	free(buf);
+
+	return ret;
+}
+
+/*
+ * state_backend_raw_file - create a raw file backend store for a state instance
+ *
+ * @state	The state instance to work on
+ * @path	The path where the state will be stored to
+ * @offset	The offset in the storage file
+ * @size	The maximum size to use in the storage file
+ *
+ * This backend stores raw binary data from a state instance. The
+ * binary data is protected with a magic value which has to match and
+ * a crc32 that must be valid.  Two copies are stored, sufficient
+ * space must be available.
+
+ * @path can be a path to a device or a regular file. When it's a
+ * device @size may be 0. The two copies are spread to different
+ * eraseblocks if approriate for this device.
+ */
+int state_backend_raw_file(struct state *state, const char *path, off_t offset,
+		size_t size)
+{
+	struct state_backend_raw *backend_raw;
+	struct state_backend *backend;
+	struct state_variable *sv;
+	int ret;
+	struct stat s;
+	struct mtd_info_user meminfo;
+
+	if (state->backend)
+		return -EBUSY;
+
+	ret = stat(path, &s);
+	if (!ret && S_ISCHR(s.st_mode)) {
+		if (size == 0)
+			size = s.st_size;
+		else if (offset + size > s.st_size)
+			return -EINVAL;
+	}
+
+	backend_raw = xzalloc(sizeof(*backend_raw));
+	backend = &backend_raw->backend;
+
+	backend->load = state_backend_raw_load;
+	backend->save = state_backend_raw_save;
+	backend->path = xstrdup(path);
+	backend->name = "raw";
+
+	sv = list_last_entry(&state->variables, struct state_variable, list);
+	backend_raw->size_data = sv->start + sv->size;
+	backend_raw->offset = offset;
+	backend_raw->size = size;
+	backend_raw->size_full = backend_raw->size_data +
+		sizeof(struct backend_raw_header);
+
+	state->backend = backend;
+
+	ret = mtd_get_meminfo(backend->path, &meminfo);
+	if (!ret && !(meminfo.mtd->flags & MTD_NO_ERASE)) {
+		backend_raw->need_erase = true;
+		backend_raw->step = ALIGN(backend_raw->size_full,
+					  meminfo.erasesize);
+		dev_dbg(&state->dev, "is a mtd, adjust stepsize to %ld\n",
+			backend_raw->step);
+	} else {
+		backend_raw->step = backend_raw->size_full;
+	}
+
+	if (backend_raw->size / backend_raw->step < RAW_BACKEND_COPIES) {
+		dev_err(&state->dev, "not enough space for two copies\n");
+		ret = -ENOSPC;
+		goto err;
+	}
+
+	return 0;
+err:
+	free(backend_raw);
+	return ret;
+}
diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index c34a4af51290..7a5b14697efd 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -15,4 +15,8 @@ config SRAM
 	help
 	  This driver adds support for memory mapped SRAM.
 
+config STATE_DRV
+	tristate "state driver"
+	depends on STATE
+
 endmenu
diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
index 908c8cb708e6..487e4b8ba2e5 100644
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@ -4,3 +4,4 @@
 
 obj-$(CONFIG_JTAG)		+= jtag.o
 obj-$(CONFIG_SRAM)		+= sram.o
+obj-$(CONFIG_STATE_DRV)		+= state.o
diff --git a/drivers/misc/state.c b/drivers/misc/state.c
new file mode 100644
index 000000000000..f066a836cb93
--- /dev/null
+++ b/drivers/misc/state.c
@@ -0,0 +1,81 @@
+/*
+ * Copyright (C) 2013 Sascha Hauer <s.hauer@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <init.h>
+#include <malloc.h>
+#include <of.h>
+#include <state.h>
+
+#include <linux/err.h>
+
+static int state_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node;
+	struct state *state;
+	const char *alias;
+	const char *backend_type = NULL;
+	int ret;
+	char *path;
+
+	if (!np)
+		return -EINVAL;
+
+	alias = of_alias_get(np);
+	if (!alias)
+		alias = "state";
+
+	state = state_new_from_node(alias, np);
+	if (IS_ERR(state))
+		return PTR_ERR(state);
+
+	ret = of_find_path(np, "backend", &path);
+	if (ret)
+		return ret;
+
+	dev_info(dev, "outpath: %s\n", path);
+
+	ret = of_property_read_string(np, "backend-type", &backend_type);
+	if (ret)
+		return ret;
+	else if (!strcmp(backend_type, "raw"))
+		ret = state_backend_raw_file(state, path, 0, 0);
+	else if (!strcmp(backend_type, "dtb"))
+		ret = state_backend_dtb_file(state, path);
+	else
+		dev_warn(dev, "invalid backend type: %s\n", backend_type);
+
+	if (ret)
+		return ret;
+
+	state_load(state);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id state_ids[] = {
+	{
+		.compatible = "barebox,state",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver_d state_driver = {
+	.name = "state",
+	.probe = state_probe,
+	.of_compatible = DRV_OF_COMPAT(state_ids),
+};
+device_platform_driver(state_driver);
diff --git a/include/state.h b/include/state.h
new file mode 100644
index 000000000000..95bf8d263b19
--- /dev/null
+++ b/include/state.h
@@ -0,0 +1,21 @@
+#ifndef __STATE_H
+#define __STATE_H
+
+struct state;
+
+int state_backend_dtb_file(struct state *state, const char *path);
+int state_backend_raw_file(struct state *state, const char *path,
+		off_t offset, size_t size);
+
+struct state *state_new_from_fdt(const char *name, void *fdt);
+struct state *state_new_from_node(const char *name, struct device_node *node);
+
+struct state *state_by_name(const char *name);
+struct state *state_by_node(const struct device_node *node);
+int state_get_name(const struct state *state, char const **name);
+
+int state_load(struct state *state);
+int state_save(struct state *state);
+void state_info(void);
+
+#endif /* __STATE_H */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
