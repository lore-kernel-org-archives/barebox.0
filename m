Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bDpuG-0000sI-Hx
 for barebox@lists.infradead.org; Fri, 17 Jun 2016 09:17:46 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Fri, 17 Jun 2016 11:14:34 +0200
Message-Id: <1466154875-3080-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH 1/2] state: Refactor state framework
To: barebox@lists.infradead.org

The state framework grew organically over the time. Unfortunately the
architecture and abstractions disappeared during this period.

This patch refactors the framework to recreate the abstractions. The
main focus was the backend with its storage. The main use-case was to
offer better NAND support with less erase cycles and interchangeable
data formats (dtb,raw).

The general architecture now has a backend which consists of a data
format and storage. The storage consists of multiple storage buckets
each holding exactly one copy of the state data. A data format describes
a data serialization for the state framework. This can be either dtb or
raw. A storage bucket is a storage location which is used to store any
data. There is a (new) circular type which writes changes behind the
last written data and therefore reduces the number of erases. The other
type is a direct bucket which writes directly to a storage offset for
all non-erase storage.

Furthermore this patch splits up all classes into different files in a
subdirectory.

This is currently all in one patch as I can't see a good way to split
the changes up without having a non-working state framework in between.

The following diagram shows the new architecture roughly:

           .----------.
           |  state   |
           '----------'
                 |
                 |
                 v
  .----------------------------.
  |       state_backend        |
  |----------------------------|
  | + state_load(*state);      |
  | + state_save(*state);      |
  | + state_backend_init(...); |
  |                            |
  |                            |
  '----------------------------'
    |            |                   The format describes
    |            |                   how the state data
    |            '------------->     is serialized
    |   .--------------------------------------------.
    |   |      state_backend_format <INTERFACE>      |
    |   |--------------------------------------------|
    |   | + verify(*format, magic, *buf, len);       |
    |   | + pack(*format, *state, **buf, len);       |
    |   | + unpack(*format, *state, *buf, len);      |
    |   | + get_packed_len(*format, *state);         |
    |   | + free(*format);                           |
    |   '--------------------------------------------'
    |              ^                      ^
    |              *                      *
    |              *                      *
    |   .--------------------. .--------------------.
    |   | backend_format_dtb | | backend_format_raw |
    |   '--------------------' '--------------------'
    |
    |
    |
    v
.----------------------------------------------------------.
|                  state_backend_storage                   |
|----------------------------------------------------------|
| + init(...);                                             |
| + free(*storage);                                        |
| + read(*storage, *format, magic, **buf, *len, len_hint); |
| + write(*storage, *buf, len);                            |
| + restore_consistency(*storage, *buf, len);              |
'----------------------------------------------------------'
                              |
     The backend storage is responsible to manage multiple
     data copies and distribute them onto several buckets.
     Read data is verified against the given format to
     ensure that the read data is correct.
                              |
                              |
                              |
                              |
                              |
                              v
        .------------------------------------------.
        | state_backend_storage_bucket <INTERFACE> |
        |------------------------------------------|
        | + init(*bucket);                         |
        | + write(*bucket, *buf, len);             |
        | + read(*bucket, **buf, len_hint);        |
        | + free(*bucket);                         |
        '------------------------------------------'
                      ^         ^
                     *           *
                    *             *
 A storage bucket represents exactly one data copy at one
 data location. A circular bucket writes any new data to
 the end of the bucket (for reduced erases on NAND). A
 direct bucket directly writes at one location.
               *                       *
              *                         *
             *                           *
 .-----------------------.  .-------------------------.
 | backend_bucket_direct |  | backend_bucket_circular |
 '-----------------------'  '-------------------------'

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 common/Makefile                        |    2 +-
 common/state.c                         | 1720 --------------------------------
 common/state/Makefile                  |    8 +
 common/state/backend.c                 |  209 ++++
 common/state/backend_bucket_circular.c |  580 +++++++++++
 common/state/backend_bucket_direct.c   |  180 ++++
 common/state/backend_format_dtb.c      |  150 +++
 common/state/backend_format_raw.c      |  327 ++++++
 common/state/backend_storage.c         |  470 +++++++++
 common/state/state.c                   |  564 +++++++++++
 common/state/state.h                   |  266 +++++
 common/state/state_variables.c         |  493 +++++++++
 drivers/misc/state.c                   |   64 +-
 include/state.h                        |    4 +-
 14 files changed, 3252 insertions(+), 1785 deletions(-)
 delete mode 100644 common/state.c
 create mode 100644 common/state/Makefile
 create mode 100644 common/state/backend.c
 create mode 100644 common/state/backend_bucket_circular.c
 create mode 100644 common/state/backend_bucket_direct.c
 create mode 100644 common/state/backend_format_dtb.c
 create mode 100644 common/state/backend_format_raw.c
 create mode 100644 common/state/backend_storage.c
 create mode 100644 common/state/state.c
 create mode 100644 common/state/state.h
 create mode 100644 common/state/state_variables.c

diff --git a/common/Makefile b/common/Makefile
index 99681e21215b..17fcb5f24a04 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -44,7 +44,7 @@ obj-$(CONFIG_POLLER)		+= poller.o
 obj-$(CONFIG_RESET_SOURCE)	+= reset_source.o
 obj-$(CONFIG_SHELL_HUSH)	+= hush.o
 obj-$(CONFIG_SHELL_SIMPLE)	+= parser.o
-obj-$(CONFIG_STATE)		+= state.o
+obj-$(CONFIG_STATE)		+= state/
 obj-$(CONFIG_RATP)		+= ratp.o
 obj-$(CONFIG_UIMAGE)		+= image.o uimage.o
 obj-$(CONFIG_FITIMAGE)		+= image-fit.o
diff --git a/common/state.c b/common/state.c
deleted file mode 100644
index 87afff305661..000000000000
--- a/common/state.c
+++ /dev/null
@@ -1,1720 +0,0 @@
-/*
- * Copyright (C) 2012-2014 Pengutronix, Jan Luebbe <j.luebbe@pengutronix.de>
- * Copyright (C) 2013-2014 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
- * Copyright (C) 2015 Pengutronix, Marc Kleine-Budde <mkl@pengutronix.de>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-
-#include <common.h>
-#include <digest.h>
-#include <environment.h>
-#include <errno.h>
-#include <fcntl.h>
-#include <fs.h>
-#include <crc.h>
-#include <init.h>
-#include <ioctl.h>
-#include <libbb.h>
-#include <libfile.h>
-#include <malloc.h>
-#include <net.h>
-#include <state.h>
-#include <xfuncs.h>
-
-#include <crypto/keystore.h>
-
-#include <linux/mtd/mtd-abi.h>
-#include <linux/mtd/mtd.h>
-#include <linux/list.h>
-#include <linux/err.h>
-
-#include <asm/unaligned.h>
-
-#define RAW_BACKEND_COPIES 2
-
-struct state_backend;
-
-struct state {
-	struct device_d dev;
-	struct device_node *root;
-	struct list_head variables;
-	const char *name;
-	struct list_head list;
-	struct state_backend *backend;
-	uint32_t magic;
-	unsigned int dirty;
-};
-
-struct state_backend {
-	int (*save)(struct state_backend *backend, struct state *state);
-	const char *name;
-	const char *of_path;
-	const char *path;
-	struct digest *digest;
-};
-
-enum state_variable_type {
-	STATE_TYPE_INVALID = 0,
-	STATE_TYPE_ENUM,
-	STATE_TYPE_U8,
-	STATE_TYPE_U32,
-	STATE_TYPE_S32,
-	STATE_TYPE_MAC,
-	STATE_TYPE_STRING,
-};
-
-/* instance of a single variable */
-struct state_variable {
-	enum state_variable_type type;
-	struct list_head list;
-	const char *name;
-	unsigned int start;
-	unsigned int size;
-	void *raw;
-};
-
-enum state_convert {
-	STATE_CONVERT_FROM_NODE,
-	STATE_CONVERT_FROM_NODE_CREATE,
-	STATE_CONVERT_TO_NODE,
-	STATE_CONVERT_FIXUP,
-};
-
-/* A variable type (uint32, enum32) */
-struct variable_type {
-	enum state_variable_type type;
-	const char *type_name;
-	struct list_head list;
-	int (*export)(struct state_variable *, struct device_node *,
-			enum state_convert);
-	int (*import)(struct state_variable *, struct device_node *);
-	struct state_variable *(*create)(struct state *state,
-			const char *name, struct device_node *);
-};
-
-/* list of all registered state instances */
-static LIST_HEAD(state_list);
-
-static int state_set_dirty(struct param_d *p, void *priv)
-{
-	struct state *state = priv;
-
-	state->dirty = 1;
-
-	return 0;
-}
-
-/*
- *  uint32
- */
-struct state_uint32 {
-	struct state_variable var;
-	struct param_d *param;
-	struct state *state;
-	uint32_t value;
-	uint32_t value_default;
-};
-
-static int state_var_compare(struct list_head *a, struct list_head *b)
-{
-	struct state_variable *va = list_entry(a, struct state_variable, list);
-	struct state_variable *vb = list_entry(b, struct state_variable, list);
-
-	return va->start < vb->start ? -1 : 1;
-}
-
-static void state_add_var(struct state *state, struct state_variable *var)
-{
-	list_add_sort(&var->list, &state->variables, state_var_compare);
-}
-
-static inline struct state_uint32 *to_state_uint32(struct state_variable *s)
-{
-	return container_of(s, struct state_uint32, var);
-}
-
-static int state_uint32_export(struct state_variable *var,
-		struct device_node *node, enum state_convert conv)
-{
-	struct state_uint32 *su32 = to_state_uint32(var);
-	int ret;
-
-	if (su32->value_default) {
-		ret = of_property_write_u32(node, "default",
-					    su32->value_default);
-		if (ret)
-			return ret;
-	}
-
-	if (conv == STATE_CONVERT_FIXUP)
-		return 0;
-
-	return of_property_write_u32(node, "value", su32->value);
-}
-
-static int state_uint32_import(struct state_variable *sv,
-			       struct device_node *node)
-{
-	struct state_uint32 *su32 = to_state_uint32(sv);
-
-	of_property_read_u32(node, "default", &su32->value_default);
-	if (of_property_read_u32(node, "value", &su32->value))
-		su32->value = su32->value_default;
-
-	return 0;
-}
-
-static int state_uint8_set(struct param_d *p, void *priv)
-{
-	struct state_uint32 *su32 = priv;
-	struct state *state = su32->state;
-
-	if (su32->value > 255)
-		return -ERANGE;
-
-	return state_set_dirty(p, state);
-}
-
-static struct state_variable *state_uint8_create(struct state *state,
-		const char *name, struct device_node *node)
-{
-	struct state_uint32 *su32;
-	struct param_d *param;
-
-	su32 = xzalloc(sizeof(*su32));
-
-	param = dev_add_param_int(&state->dev, name, state_uint8_set,
-				  NULL, &su32->value, "%u", su32);
-	if (IS_ERR(param)) {
-		free(su32);
-		return ERR_CAST(param);
-	}
-
-	su32->param = param;
-	su32->var.size = sizeof(uint8_t);
-#ifdef __LITTLE_ENDIAN
-	su32->var.raw = &su32->value;
-#else
-	su32->var.raw = &su32->value + 3;
-#endif
-	su32->state = state;
-
-	return &su32->var;
-}
-
-static struct state_variable *state_int32_create(struct state *state,
-		const char *name, struct device_node *node, const char *format)
-{
-	struct state_uint32 *su32;
-	struct param_d *param;
-
-	su32 = xzalloc(sizeof(*su32));
-
-	param = dev_add_param_int(&state->dev, name, state_set_dirty,
-				  NULL, &su32->value, format, state);
-	if (IS_ERR(param)) {
-		free(su32);
-		return ERR_CAST(param);
-	}
-
-	su32->param = param;
-	su32->var.size = sizeof(uint32_t);
-	su32->var.raw = &su32->value;
-
-	return &su32->var;
-}
-
-static struct state_variable *state_uint32_create(struct state *state,
-		const char *name, struct device_node *node)
-{
-	return state_int32_create(state, name, node, "%u");
-}
-
-static struct state_variable *state_sint32_create(struct state *state,
-		const char *name, struct device_node *node)
-{
-	return state_int32_create(state, name, node, "%d");
-}
-
-/*
- *  enum32
- */
-struct state_enum32 {
-	struct state_variable var;
-	struct param_d *param;
-	uint32_t value;
-	uint32_t value_default;
-	const char **names;
-	int num_names;
-};
-
-static inline struct state_enum32 *to_state_enum32(struct state_variable *s)
-{
-	return container_of(s, struct state_enum32, var);
-}
-
-static int state_enum32_export(struct state_variable *var,
-		struct device_node *node, enum state_convert conv)
-{
-	struct state_enum32 *enum32 = to_state_enum32(var);
-	int ret, i, len;
-	char *prop, *str;
-
-	if (enum32->value_default) {
-		ret = of_property_write_u32(node, "default",
-					    enum32->value_default);
-		if (ret)
-			return ret;
-	}
-
-	len = 0;
-
-	for (i = 0; i < enum32->num_names; i++)
-		len += strlen(enum32->names[i]) + 1;
-
-	prop = xzalloc(len);
-	str = prop;
-
-	for (i = 0; i < enum32->num_names; i++)
-		str += sprintf(str, "%s", enum32->names[i]) + 1;
-
-	ret = of_set_property(node, "names", prop, len, 1);
-
-	free(prop);
-
-	if (conv == STATE_CONVERT_FIXUP)
-		return 0;
-
-	ret = of_property_write_u32(node, "value", enum32->value);
-	if (ret)
-		return ret;
-
-	return ret;
-}
-
-static int state_enum32_import(struct state_variable *sv,
-			       struct device_node *node)
-{
-	struct state_enum32 *enum32 = to_state_enum32(sv);
-	int len;
-	const __be32 *value, *value_default;
-
-	value = of_get_property(node, "value", &len);
-	if (value && len != sizeof(uint32_t))
-		return -EINVAL;
-
-	value_default = of_get_property(node, "default", &len);
-	if (value_default && len != sizeof(uint32_t))
-		return -EINVAL;
-
-	if (value_default)
-		enum32->value_default = be32_to_cpu(*value_default);
-	if (value)
-		enum32->value = be32_to_cpu(*value);
-	else
-		enum32->value = enum32->value_default;
-
-	return 0;
-}
-
-static struct state_variable *state_enum32_create(struct state *state,
-		const char *name, struct device_node *node)
-{
-	struct state_enum32 *enum32;
-	int ret, i, num_names;
-
-	enum32 = xzalloc(sizeof(*enum32));
-
-	num_names = of_property_count_strings(node, "names");
-	if (num_names < 0) {
-		dev_err(&state->dev, "enum32 node without \"names\" property\n");
-		return ERR_PTR(-EINVAL);
-	}
-
-	enum32->names = xzalloc(sizeof(char *) * num_names);
-	enum32->num_names = num_names;
-	enum32->var.size = sizeof(uint32_t);
-	enum32->var.raw = &enum32->value;
-
-	for (i = 0; i < num_names; i++) {
-		const char *name;
-
-		ret = of_property_read_string_index(node, "names", i, &name);
-		if (ret)
-			goto out;
-		enum32->names[i] = xstrdup(name);
-	}
-
-	enum32->param = dev_add_param_enum(&state->dev, name, state_set_dirty,
-			NULL, &enum32->value, enum32->names, num_names, state);
-	if (IS_ERR(enum32->param)) {
-		ret = PTR_ERR(enum32->param);
-		goto out;
-	}
-
-	return &enum32->var;
-out:
-	for (i--; i >= 0; i--)
-		free((char *)enum32->names[i]);
-	free(enum32->names);
-	free(enum32);
-	return ERR_PTR(ret);
-}
-
-/*
- *  MAC address
- */
-struct state_mac {
-	struct state_variable var;
-	struct param_d *param;
-	uint8_t value[6];
-	uint8_t value_default[6];
-};
-
-static inline struct state_mac *to_state_mac(struct state_variable *s)
-{
-	return container_of(s, struct state_mac, var);
-}
-
-static int state_mac_export(struct state_variable *var,
-		struct device_node *node, enum state_convert conv)
-{
-	struct state_mac *mac = to_state_mac(var);
-	int ret;
-
-	if (!is_zero_ether_addr(mac->value_default)) {
-		ret = of_property_write_u8_array(node, "default", mac->value_default,
-						 ARRAY_SIZE(mac->value_default));
-		if (ret)
-			return ret;
-	}
-
-	if (conv == STATE_CONVERT_FIXUP)
-		return 0;
-
-	return of_property_write_u8_array(node, "value", mac->value,
-					  ARRAY_SIZE(mac->value));
-}
-
-static int state_mac_import(struct state_variable *sv,
-			    struct device_node *node)
-{
-	struct state_mac *mac = to_state_mac(sv);
-
-	of_property_read_u8_array(node, "default", mac->value_default,
-				  ARRAY_SIZE(mac->value_default));
-	if (of_property_read_u8_array(node, "value", mac->value,
-				      ARRAY_SIZE(mac->value)))
-		memcpy(mac->value, mac->value_default, ARRAY_SIZE(mac->value));
-
-	return 0;
-}
-
-static struct state_variable *state_mac_create(struct state *state,
-		const char *name, struct device_node *node)
-{
-	struct state_mac *mac;
-	int ret;
-
-	mac = xzalloc(sizeof(*mac));
-
-	mac->var.size = ARRAY_SIZE(mac->value);
-	mac->var.raw = mac->value;
-
-	mac->param = dev_add_param_mac(&state->dev, name, state_set_dirty,
-			NULL, mac->value, state);
-	if (IS_ERR(mac->param)) {
-		ret = PTR_ERR(mac->param);
-		goto out;
-	}
-
-	return &mac->var;
-out:
-	free(mac);
-	return ERR_PTR(ret);
-}
-
-/*
- *  string
- */
-struct state_string {
-	struct state_variable var;
-	struct param_d *param;
-	struct state *state;
-	char *value;
-	const char *value_default;
-	char raw[];
-};
-
-static inline struct state_string *to_state_string(struct state_variable *s)
-{
-	return container_of(s, struct state_string, var);
-}
-
-static int state_string_export(struct state_variable *var,
-		struct device_node *node, enum state_convert conv)
-{
-	struct state_string *string = to_state_string(var);
-	int ret = 0;
-
-	if (string->value_default) {
-		ret = of_set_property(node, "default", string->value_default,
-				      strlen(string->value_default) + 1, 1);
-
-		if (ret)
-			return ret;
-	}
-
-	if (conv == STATE_CONVERT_FIXUP)
-		return 0;
-
-	if (string->value)
-		ret = of_set_property(node, "value", string->value,
-				      strlen(string->value) + 1, 1);
-
-	return ret;
-}
-
-static int state_string_copy_to_raw(struct state_string *string,
-				    const char *src)
-{
-	size_t len;
-
-	len = strlen(src);
-	if (len > string->var.size)
-		return -EILSEQ;
-
-	/* copy string and clear remaining contents of buffer */
-	memcpy(string->raw, src, len);
-	memset(string->raw + len, 0x0, string->var.size - len);
-
-	return 0;
-}
-
-static int state_string_import(struct state_variable *sv,
-			       struct device_node *node)
-{
-	struct state_string *string = to_state_string(sv);
-	const char *value = NULL;
-	size_t len;
-	int ret;
-
-	of_property_read_string(node, "default", &string->value_default);
-	if (string->value_default) {
-		len = strlen(string->value_default);
-		if (len > string->var.size)
-			return -EILSEQ;
-	}
-
-	ret = of_property_read_string(node, "value", &value);
-	if (ret)
-		value = string->value_default;
-
-	if (value)
-		return state_string_copy_to_raw(string, value);
-
-	return 0;
-}
-
-static int state_string_set(struct param_d *p, void *priv)
-{
-	struct state_string *string = priv;
-	struct state *state = string->state;
-	int ret;
-
-	ret = state_string_copy_to_raw(string, string->value);
-	if (ret)
-		return ret;
-
-	return state_set_dirty(p, state);
-}
-
-static int state_string_get(struct param_d *p, void *priv)
-{
-	struct state_string *string = priv;
-
-	free(string->value);
-	if (string->raw[0])
-		string->value = xstrndup(string->raw, string->var.size);
-	else
-		string->value = xstrdup("");
-
-	return 0;
-}
-
-static struct state_variable *state_string_create(struct state *state,
-		const char *name, struct device_node *node)
-{
-	struct state_string *string;
-	u32 start_size[2];
-	int ret;
-
-	ret = of_property_read_u32_array(node, "reg", start_size,
-					 ARRAY_SIZE(start_size));
-	if (ret) {
-		dev_err(&state->dev,
-			"%s: reg property not found\n", name);
-		return ERR_PTR(ret);
-	}
-
-	/* limit to arbitrary len of 4k */
-	if (start_size[1] > 4096)
-		return ERR_PTR(-EILSEQ);
-
-	string = xzalloc(sizeof(*string) + start_size[1]);
-	string->var.size = start_size[1];
-	string->var.raw = &string->raw;
-	string->state = state;
-
-	string->param = dev_add_param_string(&state->dev, name, state_string_set,
-					     state_string_get, &string->value, string);
-	if (IS_ERR(string->param)) {
-		ret = PTR_ERR(string->param);
-		goto out;
-	}
-
-	return &string->var;
-out:
-	free(string);
-	return ERR_PTR(ret);
-}
-
-static struct variable_type types[] =  {
-	{
-		.type = STATE_TYPE_U8,
-		.type_name = "uint8",
-		.export = state_uint32_export,
-		.import = state_uint32_import,
-		.create = state_uint8_create,
-	}, {
-		.type = STATE_TYPE_U32,
-		.type_name = "uint32",
-		.export = state_uint32_export,
-		.import = state_uint32_import,
-		.create = state_uint32_create,
-	}, {
-		.type = STATE_TYPE_ENUM,
-		.type_name = "enum32",
-		.export = state_enum32_export,
-		.import = state_enum32_import,
-		.create = state_enum32_create,
-	}, {
-		.type = STATE_TYPE_MAC,
-		.type_name = "mac",
-		.export = state_mac_export,
-		.import = state_mac_import,
-		.create = state_mac_create,
-	}, {
-		.type = STATE_TYPE_STRING,
-		.type_name = "string",
-		.export = state_string_export,
-		.import = state_string_import,
-		.create = state_string_create,
-	}, {
-		.type = STATE_TYPE_S32,
-		.type_name = "int32",
-		.export = state_uint32_export,
-		.import = state_uint32_import,
-		.create = state_sint32_create,
-	},
-};
-
-static struct variable_type *state_find_type_by_name(const char *name)
-{
-	int i;
-
-	for (i = 0; i < ARRAY_SIZE(types); i++) {
-		if (!strcmp(name, types[i].type_name)) {
-			return &types[i];
-		}
-	}
-
-	return NULL;
-}
-
-/*
- * Generic state functions
- */
-
-static struct state *state_new(const char *name)
-{
-	struct state *state;
-	int ret;
-
-	state = xzalloc(sizeof(*state));
-	safe_strncpy(state->dev.name, name, MAX_DRIVER_NAME);
-	state->name = state->dev.name;
-	state->dev.id = DEVICE_ID_SINGLE;
-	INIT_LIST_HEAD(&state->variables);
-
-	ret = register_device(&state->dev);
-	if (ret) {
-		free(state);
-		return ERR_PTR(ret);
-	}
-
-	state->dirty = 1;
-	dev_add_param_bool(&state->dev, "dirty", NULL, NULL, &state->dirty,
-			   NULL);
-
-	list_add_tail(&state->list, &state_list);
-
-	return state;
-}
-
-static struct state_variable *state_find_var(struct state *state,
-					     const char *name)
-{
-	struct state_variable *sv;
-
-	list_for_each_entry(sv, &state->variables, list) {
-		if (!strcmp(sv->name, name))
-			return sv;
-	}
-
-	return ERR_PTR(-ENOENT);
-}
-
-static int state_convert_node_variable(struct state *state,
-		struct device_node *node, struct device_node *parent,
-		const char *parent_name, enum state_convert conv)
-{
-	const struct variable_type *vtype;
-	struct device_node *child;
-	struct device_node *new_node = NULL;
-	struct state_variable *sv;
-	const char *type_name;
-	char *short_name, *name, *indexs;
-	unsigned int start_size[2];
-	int ret;
-
-	/* strip trailing @<ADDRESS> */
-	short_name = xstrdup(node->name);
-	indexs = strchr(short_name, '@');
-	if (indexs)
-		*indexs = 0;
-
-	/* construct full name */
-	name = basprintf("%s%s%s", parent_name, parent_name[0] ? "." : "",
-			   short_name);
-	free(short_name);
-
-	if ((conv == STATE_CONVERT_TO_NODE) ||
-	    (conv == STATE_CONVERT_FIXUP))
-		new_node = of_new_node(parent, node->name);
-
-	for_each_child_of_node(node, child) {
-		ret = state_convert_node_variable(state, child, new_node, name,
-						  conv);
-		if (ret)
-			goto out_free;
-	}
-
-	/* parents are allowed to have no type */
-	ret = of_property_read_string(node, "type", &type_name);
-	if (!list_empty(&node->children) && ret == -EINVAL) {
-		if (conv == STATE_CONVERT_FIXUP) {
-			ret = of_property_write_u32(new_node, "#address-cells", 1);
-			if (ret)
-				goto out_free;
-
-			ret = of_property_write_u32(new_node, "#size-cells", 1);
-			if (ret)
-				goto out_free;
-		}
-		ret = 0;
-		goto out_free;
-	} else if (ret) {
-		goto out_free;
-	}
-
-	vtype = state_find_type_by_name(type_name);
-	if (!vtype) {
-		dev_err(&state->dev, "unkown type: %s in %s\n", type_name,
-			node->full_name);
-		ret = -ENOENT;
-		goto out_free;
-	}
-
-	if (conv == STATE_CONVERT_FROM_NODE_CREATE) {
-		sv = vtype->create(state, name, node);
-		if (IS_ERR(sv)) {
-			ret = PTR_ERR(sv);
-			dev_err(&state->dev, "failed to create %s: %s\n",
-				name, strerror(-ret));
-			goto out_free;
-		}
-
-		ret = of_property_read_u32_array(node, "reg", start_size,
-						 ARRAY_SIZE(start_size));
-		if (ret) {
-			dev_err(&state->dev,
-				"%s: reg property not found\n", name);
-			goto out_free;
-		}
-
-		if (start_size[1] != sv->size) {
-			dev_err(&state->dev,
-				"%s: size mismatch: type=%s(size=%u) size=%u\n",
-				name, type_name, sv->size, start_size[1]);
-			ret = -EOVERFLOW;
-			goto out_free;
-		}
-
-		sv->name = name;
-		sv->start = start_size[0];
-		sv->type = vtype->type;
-		state_add_var(state, sv);
-	} else {
-		sv = state_find_var(state, name);
-		if (IS_ERR(sv)) {
-			/* we ignore this error */
-			dev_dbg(&state->dev,
-				"no such variable: %s: %s\n",
-				name, strerror(-ret));
-			ret = 0;
-			goto out_free;
-		}
-		free(name);
-
-		if ((conv == STATE_CONVERT_TO_NODE) ||
-		    (conv == STATE_CONVERT_FIXUP)) {
-			ret = of_set_property(new_node, "type",
-					      vtype->type_name,
-					      strlen(vtype->type_name) + 1, 1);
-			if (ret)
-				goto out;
-
-			start_size[0] = sv->start;
-			start_size[1] = sv->size;
-			ret = of_property_write_u32_array(new_node, "reg",
-							  start_size,
-							  ARRAY_SIZE(start_size));
-			if (ret)
-				goto out;
-		}
-	}
-
-	if ((conv == STATE_CONVERT_TO_NODE) ||
-	    (conv == STATE_CONVERT_FIXUP))
-		ret = vtype->export(sv, new_node, conv);
-	else
-		ret = vtype->import(sv, node);
-
-	if (ret)
-		goto out;
-
-	return 0;
-out_free:
-	free(name);
-out:
-	return ret;
-}
-
-static struct device_node *state_to_node(struct state *state, struct device_node *parent,
-					 enum state_convert conv)
-{
-	struct device_node *child;
-	struct device_node *root;
-	int ret;
-
-	root = of_new_node(parent, state->root->name);
-	ret = of_property_write_u32(root, "magic", state->magic);
-	if (ret)
-		goto out;
-
-	for_each_child_of_node(state->root, child) {
-		ret = state_convert_node_variable(state, child, root, "",
-						  conv);
-		if (ret)
-			goto out;
-	}
-
-	return root;
-out:
-	of_delete_node(root);
-	return ERR_PTR(ret);
-}
-
-static int state_from_node(struct state *state, struct device_node *node,
-			   bool create)
-{
-	struct device_node *child;
-	enum state_convert conv;
-	int ret;
-	uint32_t magic;
-
-	ret = of_property_read_u32(node, "magic", &magic);
-	if (ret)
-		return ret;
-
-	if (create) {
-		conv = STATE_CONVERT_FROM_NODE_CREATE;
-		state->root = node;
-		state->magic = magic;
-	} else {
-		conv = STATE_CONVERT_FROM_NODE;
-		if (state->magic && state->magic != magic) {
-			dev_err(&state->dev,
-					"invalid magic 0x%08x, should be 0x%08x\n",
-					magic, state->magic);
-			return -EINVAL;
-		}
-	}
-
-	for_each_child_of_node(node, child) {
-		ret = state_convert_node_variable(state, child, NULL, "", conv);
-		if (ret)
-			return ret;
-	}
-
-	/* check for overlapping variables */
-	if (create) {
-		const struct state_variable *sv;
-
-		/* start with second entry */
-		sv = list_first_entry(&state->variables,
-				      struct state_variable, list);
-
-		list_for_each_entry_continue(sv, &state->variables, list) {
-			const struct state_variable *last_sv;
-
-			last_sv = list_last_entry(&sv->list,
-						  struct state_variable, list);
-			if ((last_sv->start + last_sv->size - 1) < sv->start)
-				continue;
-
-			dev_err(&state->dev,
-				"ERROR: Conflicting variable position between: "
-				"%s (0x%02x..0x%02x) and %s (0x%02x..0x%02x)\n",
-				last_sv->name, last_sv->start,
-				last_sv->start + last_sv->size - 1,
-				sv->name, sv->start, sv->start + sv->size - 1);
-
-			ret |= -EINVAL;
-		}
-	}
-
-	return ret;
-}
-
-static int of_state_fixup(struct device_node *root, void *ctx)
-{
-	struct state *state = ctx;
-	const char *compatible = "barebox,state";
-	struct device_node *new_node, *node, *parent, *backend_node;
-	struct property *p;
-	int ret;
-	phandle phandle;
-
-	node = of_find_node_by_path_from(root, state->root->full_name);
-	if (node) {
-		/* replace existing node - it will be deleted later */
-		parent = node->parent;
-	} else {
-		char *of_path, *c;
-
-		/* look for parent, remove last '/' from path */
-		of_path = xstrdup(state->root->full_name);
-		c = strrchr(of_path, '/');
-		if (!c)
-			return -ENODEV;
-		*c = '0';
-		parent = of_find_node_by_path(of_path);
-		if (!parent)
-			parent = root;
-
-		free(of_path);
-	}
-
-	/* serialize variable definitions */
-	new_node = state_to_node(state, parent, STATE_CONVERT_FIXUP);
-	if (IS_ERR(new_node))
-		return PTR_ERR(new_node);
-
-	/* compatible */
-	p = of_new_property(new_node, "compatible", compatible,
-			    strlen(compatible) + 1);
-	if (!p) {
-		ret = -ENOMEM;
-		goto out;
-	}
-
-	/* backend-type */
-	if (!state->backend) {
-		ret = -ENODEV;
-		goto out;
-	}
-
-	p = of_new_property(new_node, "backend-type", state->backend->name,
-			    strlen(state->backend->name) + 1);
-	if (!p) {
-		ret = -ENOMEM;
-		goto out;
-	}
-
-	/* backend phandle */
-	backend_node = of_find_node_by_path_from(root, state->backend->of_path);
-	if (!backend_node) {
-		ret = -ENODEV;
-		goto out;
-	}
-
-	phandle = of_node_create_phandle(backend_node);
-	ret = of_property_write_u32(new_node, "backend", phandle);
-	if (ret)
-		goto out;
-
-	if (state->backend->digest) {
-		p = of_new_property(new_node, "algo",
-				    digest_name(state->backend->digest),
-				    strlen(digest_name(state->backend->digest)) + 1);
-		if (!p) {
-			ret = -ENOMEM;
-			goto out;
-		}
-	}
-
-	/* address-cells + size-cells */
-	ret = of_property_write_u32(new_node, "#address-cells", 1);
-	if (ret)
-		goto out;
-
-	ret = of_property_write_u32(new_node, "#size-cells", 1);
-	if (ret)
-		goto out;
-
-	/* delete existing node */
-	if (node)
-		of_delete_node(node);
-
-	return 0;
-
- out:
-	dev_err(&state->dev, "error fixing up device tree with boot state\n");
-	of_delete_node(new_node);
-	return ret;
-}
-
-void state_release(struct state *state)
-{
-	of_unregister_fixup(of_state_fixup, state);
-	list_del(&state->list);
-	unregister_device(&state->dev);
-	free(state);
-}
-
-/*
- * state_new_from_node - create a new state instance from a device_node
- *
- * @name	The name of the new state instance
- * @node	The device_node describing the new state instance
- */
-struct state *state_new_from_node(const char *name, struct device_node *node)
-{
-	struct state *state;
-	int ret;
-
-	state = state_new(name);
-	if (IS_ERR(state))
-		return state;
-
-	ret = state_from_node(state, node, 1);
-	if (ret) {
-		state_release(state);
-		return ERR_PTR(ret);
-	}
-
-	ret = of_register_fixup(of_state_fixup, state);
-	if (ret) {
-		state_release(state);
-		return ERR_PTR(ret);
-	}
-
-	return state;
-}
-
-/*
- * state_by_name - find a state instance by name
- *
- * @name	The name of the state instance
- */
-struct state *state_by_name(const char *name)
-{
-	struct state *state;
-
-	list_for_each_entry(state, &state_list, list) {
-		if (!strcmp(name, state->name))
-			return state;
-	}
-
-	return NULL;
-}
-
-/*
- * state_by_node - find a state instance by of node
- *
- * @node	The of node of the state intance
- */
-struct state *state_by_node(const struct device_node *node)
-{
-	struct state *state;
-
-	list_for_each_entry(state, &state_list, list) {
-		if (state->root == node)
-			return state;
-	}
-
-	return NULL;
-}
-
-int state_get_name(const struct state *state, char const **name)
-{
-	*name = xstrdup(state->name);
-
-	return 0;
-}
-
-/*
- * state_save - save a state to the backing store
- *
- * @state	The state instance to save
- */
-int state_save(struct state *state)
-{
-	int ret;
-
-	if (!state->dirty)
-		return 0;
-
-	if (!state->backend)
-		return -ENOSYS;
-
-	ret = state->backend->save(state->backend, state);
-	if (ret)
-		return ret;
-
-	state->dirty = 0;
-
-	return 0;
-}
-
-void state_info(void)
-{
-	struct state *state;
-
-	printf("registered state instances:\n");
-
-	list_for_each_entry(state, &state_list, list) {
-		printf("%-20s ", state->name);
-		if (state->backend)
-			printf("(backend: %s, path: %s)\n",
-			       state->backend->name, state->backend->path);
-		else
-			printf("(no backend)\n");
-	}
-}
-
-static int mtd_get_meminfo(const char *path, struct mtd_info_user *meminfo)
-{
-	int fd, ret;
-
-	fd = open(path, O_RDONLY);
-	if (fd < 0)
-		return fd;
-
-	ret = ioctl(fd, MEMGETINFO, meminfo);
-
-	close(fd);
-
-	return ret;
-}
-
-/*
- * DTB backend implementation
- */
-struct state_backend_dtb {
-	struct state_backend backend;
-	bool need_erase;
-};
-
-static int state_backend_dtb_load(struct state_backend *backend,
-				  struct state *state)
-{
-	struct device_node *root;
-	void *fdt;
-	int ret;
-	size_t len;
-
-	fdt = read_file(backend->path, &len);
-	if (!fdt) {
-		dev_err(&state->dev, "cannot read %s\n", backend->path);
-		return -EINVAL;
-	}
-
-	root = of_unflatten_dtb(fdt);
-
-	free(fdt);
-
-	if (IS_ERR(root))
-		return PTR_ERR(root);
-
-	ret = state_from_node(state, root, 0);
-
-	return ret;
-}
-
-static int state_backend_dtb_save(struct state_backend *backend,
-				  struct state *state)
-{
-	struct state_backend_dtb *backend_dtb = container_of(backend,
-			struct state_backend_dtb, backend);
-	int ret, fd;
-	struct device_node *root;
-	struct fdt_header *fdt;
-
-	root = state_to_node(state, NULL, STATE_CONVERT_TO_NODE);
-	if (IS_ERR(root))
-		return PTR_ERR(root);
-
-	fdt = of_flatten_dtb(root);
-	if (!fdt)
-		return -EINVAL;
-
-	fd = open(backend->path, O_WRONLY);
-	if (fd < 0) {
-		ret = fd;
-		goto out;
-	}
-
-	if (backend_dtb->need_erase) {
-		ret = erase(fd, fdt32_to_cpu(fdt->totalsize), 0);
-		if (ret) {
-			close(fd);
-			goto out;
-		}
-	}
-
-	ret = write_full(fd, fdt, fdt32_to_cpu(fdt->totalsize));
-
-	close(fd);
-
-	if (ret < 0)
-		goto out;
-
-	ret = 0;
-out:
-	free(fdt);
-	of_delete_node(root);
-
-	return ret;
-}
-
-/*
- * state_backend_dtb_file - create a dtb backend store for a state instance
- *
- * @state	The state instance to work on
- * @path	The path where the state will be stored to
- */
-int state_backend_dtb_file(struct state *state, const char *of_path, const char *path)
-{
-	struct state_backend_dtb *backend_dtb;
-	struct state_backend *backend;
-	struct mtd_info_user meminfo;
-	int ret;
-
-	if (state->backend)
-		return -EBUSY;
-
-	backend_dtb = xzalloc(sizeof(*backend_dtb));
-	backend = &backend_dtb->backend;
-
-	backend->save = state_backend_dtb_save;
-	backend->of_path = xstrdup(of_path);
-	backend->path = xstrdup(path);
-	backend->name = "dtb";
-
-	state->backend = backend;
-
-	ret = mtd_get_meminfo(backend->path, &meminfo);
-	if (!ret && !(meminfo.flags & MTD_NO_ERASE))
-		backend_dtb->need_erase = true;
-
-	ret = state_backend_dtb_load(backend, state);
-	if (ret) {
-		dev_warn(&state->dev, "load failed - using defaults\n");
-	} else {
-		dev_info(&state->dev, "load successful\n");
-		state->dirty = 0;
-	}
-
-	/* ignore return value of load() */
-	return 0;
-}
-
-/*
- * Raw backend implementation
- */
-struct state_backend_raw {
-	struct state_backend backend;
-	unsigned long size_data; /* The raw data size (without header) */
-	unsigned long size_full; /* The size header + raw data + hmac */
-	unsigned long stride; /* The stride size in bytes of the copies */
-	off_t offset; /* offset in the storage file */
-	size_t size; /* size of the storage area */
-	int num_copy_read; /* The first successfully read copy */
-	bool need_erase;
-};
-
-struct backend_raw_header {
-	uint32_t magic;
-	uint16_t reserved;
-	uint16_t data_len;
-	uint32_t data_crc;
-	uint32_t header_crc;
-};
-
-static int backend_raw_load_one(struct state_backend_raw *backend_raw,
-		struct state *state, int fd, off_t offset)
-{
-	uint32_t crc;
-	struct state_variable *sv;
-	struct backend_raw_header header = {};
-	unsigned long max_len;
-	int d_len = 0;
-	int ret;
-	void *buf, *data, *hmac;
-
-	max_len = backend_raw->stride;
-
-	ret = lseek(fd, offset, SEEK_SET);
-	if (ret < 0)
-		return ret;
-
-	ret = read_full(fd, &header, sizeof(header));
-	max_len -= sizeof(header);
-	if (ret < 0) {
-		dev_err(&state->dev,
-			"cannot read header from backend device\n");
-		return ret;
-	}
-
-	crc = crc32(0, &header, sizeof(header) - sizeof(uint32_t));
-	if (crc != header.header_crc) {
-		dev_err(&state->dev,
-			"invalid header crc, calculated 0x%08x, found 0x%08x\n",
-			crc, header.header_crc);
-		return -EINVAL;
-	}
-
-	if (state->magic && state->magic != header.magic) {
-		dev_err(&state->dev,
-			"invalid magic 0x%08x, should be 0x%08x\n",
-			header.magic, state->magic);
-		return -EINVAL;
-	}
-
-	if (backend_raw->backend.digest) {
-		d_len = digest_length(backend_raw->backend.digest);
-		max_len -= d_len;
-	}
-
-	if (header.data_len > max_len) {
-		dev_err(&state->dev,
-			"invalid data_len %u in header, max is %lu\n",
-			header.data_len, max_len);
-		return -EINVAL;
-	}
-
-	buf = xzalloc(sizeof(header) + header.data_len + d_len);
-	data = buf + sizeof(header);
-	hmac = data + header.data_len;
-
-	ret = lseek(fd, offset, SEEK_SET);
-	if (ret < 0)
-		goto out_free;
-
-	ret = read_full(fd, buf, sizeof(header) + header.data_len + d_len);
-	if (ret < 0)
-		goto out_free;
-
-	crc = crc32(0, data, header.data_len);
-	if (crc != header.data_crc) {
-		dev_err(&state->dev,
-			"invalid crc, calculated 0x%08x, found 0x%08x\n",
-			crc, header.data_crc);
-		ret = -EINVAL;
-		goto out_free;
-	}
-
-	if (backend_raw->backend.digest) {
-		struct digest *d = backend_raw->backend.digest;
-
-		ret = digest_init(d);
-		if (ret)
-			goto out_free;
-
-		/* hmac over header and data */
-		ret = digest_update(d, buf, sizeof(header) + header.data_len);
-		if (ret)
-			goto out_free;
-
-		ret = digest_verify(d, hmac);
-		if (ret < 0)
-			goto out_free;
-	}
-
-	list_for_each_entry(sv, &state->variables, list) {
-		if (sv->start + sv->size > header.data_len)
-			break;
-		memcpy(sv->raw, data + sv->start, sv->size);
-	}
-
-	free(buf);
-	return 0;
-
- out_free:
-	free(buf);
-	return ret;
-}
-
-static int state_backend_raw_load(struct state_backend *backend,
-				  struct state *state)
-{
-	struct state_backend_raw *backend_raw = container_of(backend,
-			struct state_backend_raw, backend);
-	int ret = 0, fd, i;
-
-	fd = open(backend->path, O_RDONLY);
-	if (fd < 0) {
-		dev_err(&state->dev, "cannot open %s\n", backend->path);
-		return fd;
-	}
-
-	for (i = 0; i < RAW_BACKEND_COPIES; i++) {
-		off_t offset = backend_raw->offset + i * backend_raw->stride;
-
-		ret = backend_raw_load_one(backend_raw, state, fd, offset);
-		if (!ret) {
-			backend_raw->num_copy_read = i;
-			dev_dbg(&state->dev,
-				"copy %d successfully loaded\n", i);
-			break;
-		}
-	}
-
-	close(fd);
-
-	return ret;
-}
-
-static int backend_raw_save_one(struct state_backend_raw *backend_raw,
-		struct state *state, int fd, int num, void *buf, size_t size)
-{
-	int ret;
-	off_t offset = backend_raw->offset + num * backend_raw->stride;
-
-	dev_dbg(&state->dev, "%s: 0x%08lx 0x%08zx\n",
-			__func__, offset, size);
-
-	ret = lseek(fd, offset, SEEK_SET);
-	if (ret < 0)
-		return ret;
-
-	protect(fd, backend_raw->stride, offset, false);
-
-	if (backend_raw->need_erase) {
-		ret = erase(fd, backend_raw->stride, offset);
-		if (ret)
-			return ret;
-	}
-
-	ret = write_full(fd, buf, size);
-	if (ret < 0)
-		return ret;
-
-	protect(fd, backend_raw->stride, offset, true);
-
-	return 0;
-}
-
-static int state_backend_raw_save(struct state_backend *backend,
-				  struct state *state)
-{
-	struct state_backend_raw *backend_raw = container_of(backend,
-			struct state_backend_raw, backend);
-	int ret = 0, fd, i;
-	void *buf, *data, *hmac;
-	struct backend_raw_header *header;
-	struct state_variable *sv;
-
-	buf = xzalloc(backend_raw->size_full);
-
-	header = buf;
-	data = buf + sizeof(*header);
-	hmac = data + backend_raw->size_data;
-
-	list_for_each_entry(sv, &state->variables, list)
-		memcpy(data + sv->start, sv->raw, sv->size);
-
-	header->magic = state->magic;
-	header->data_len = backend_raw->size_data;
-	header->data_crc = crc32(0, data, backend_raw->size_data);
-	header->header_crc = crc32(0, header,
-				   sizeof(*header) - sizeof(uint32_t));
-
-	if (backend_raw->backend.digest) {
-		struct digest *d = backend_raw->backend.digest;
-
-		ret = digest_init(d);
-		if (ret)
-			goto out_free;
-
-		/* hmac over header and data */
-		ret = digest_update(d, buf, sizeof(*header) + backend_raw->size_data);
-		if (ret)
-			goto out_free;
-
-		ret = digest_final(d, hmac);
-		if (ret < 0)
-			goto out_free;
-	}
-
-	fd = open(backend->path, O_WRONLY);
-	if (fd < 0)
-		goto out_free;
-
-	/* save other slots first */
-	for (i = 0; i < RAW_BACKEND_COPIES; i++) {
-		if (i == backend_raw->num_copy_read)
-			continue;
-
-		ret = backend_raw_save_one(backend_raw, state, fd,
-					   i, buf, backend_raw->size_full);
-		if (ret)
-			goto out_close;
-
-	}
-
-	ret = backend_raw_save_one(backend_raw, state, fd,
-				   backend_raw->num_copy_read, buf, backend_raw->size_full);
-	if (ret)
-		goto out_close;
-
-	dev_dbg(&state->dev, "wrote state to %s\n", backend->path);
-out_close:
-	close(fd);
-out_free:
-	free(buf);
-
-	return ret;
-}
-
-#ifdef __BAREBOX__
-#define STAT_GIVES_SIZE(s) (S_ISREG(s.st_mode) || S_ISCHR(s.st_mode))
-#define BLKGET_GIVES_SIZE(s) 0
-#ifndef BLKGETSIZE64
-#define BLKGETSIZE64 -1
-#endif
-#else
-#define STAT_GIVES_SIZE(s) (S_ISREG(s.st_mode))
-#define BLKGET_GIVES_SIZE(s) (S_ISBLK(s.st_mode))
-#endif
-
-static int state_backend_raw_file_get_size(const char *path, size_t *out_size)
-{
-	struct mtd_info_user meminfo;
-	struct stat s;
-	int ret;
-
-	ret = stat(path, &s);
-	if (ret)
-		return -errno;
-
-	/*
-	 * under Linux, stat() gives the size only on regular files
-	 * under barebox, it works on char dev, too
-	 */
-	if (STAT_GIVES_SIZE(s)) {
-		*out_size = s.st_size;
-		return 0;
-	}
-
-	/* this works under Linux on block devs */
-	if (BLKGET_GIVES_SIZE(s)) {
-		int fd;
-
-		fd = open(path, O_RDONLY);
-		if (fd < 0)
-			return -errno;
-
-		ret = ioctl(fd, BLKGETSIZE64, out_size);
-		close(fd);
-		if (!ret)
-			return 0;
-	}
-
-	/* try mtd next */
-	ret = mtd_get_meminfo(path, &meminfo);
-	if (!ret) {
-		*out_size = meminfo.size;
-		return 0;
-	}
-
-	return ret;
-}
-
-static int state_backend_raw_file_init_digest(struct state *state, struct state_backend_raw *backend_raw)
-{
-	struct digest *digest;
-	struct property *p;
-	const char *algo;
-	const unsigned char *key;
-	int key_len, ret;
-
-	p = of_find_property(state->root, "algo", NULL);
-	if (!p)			/* does not exist */
-		return 0;
-
-	ret = of_property_read_string(state->root, "algo", &algo);
-	if (ret)
-		return ret;
-
-	if (!IS_ENABLED(CONFIG_STATE_CRYPTO)) {
-		dev_err(&state->dev,
-			"algo %s specified, but crypto support for state framework (CONFIG_STATE_CRYPTO) not enabled.\n",
-			algo);
-		return -EINVAL;
-	}
-
-	ret = keystore_get_secret(state->name, &key, &key_len);
-	if (ret == -ENOENT)	/* -ENOENT == does not exist */
-		return -EPROBE_DEFER;
-	else if (ret)
-		return ret;
-
-	digest = digest_alloc(algo);
-	if (!digest) {
-		dev_info(&state->dev, "algo %s not found - probe deferred\n", algo);
-		return -EPROBE_DEFER;
-	}
-
-	ret = digest_set_key(digest, key, key_len);
-	if (ret) {
-		digest_free(digest);
-		return ret;
-	}
-
-	backend_raw->backend.digest = digest;
-	backend_raw->size_full = digest_length(digest);
-
-	return 0;
-}
-
-/*
- * state_backend_raw_file - create a raw file backend store for a state instance
- *
- * @state	The state instance to work on
- * @path	The path where the state will be stored to
- * @offset	The offset in the storage file
- * @size	The maximum size to use in the storage file
- *
- * This backend stores raw binary data from a state instance. The
- * binary data is protected with a magic value which has to match and
- * a crc32 that must be valid.  Two copies are stored, sufficient
- * space must be available.
-
- * @path can be a path to a device or a regular file. When it's a
- * device @size may be 0. The two copies are spread to different
- * eraseblocks if approriate for this device.
- */
-int state_backend_raw_file(struct state *state, const char *of_path,
-		const char *path, off_t offset, size_t size)
-{
-	struct state_backend_raw *backend_raw;
-	struct state_backend *backend;
-	struct state_variable *sv;
-	struct mtd_info_user meminfo;
-	size_t path_size = 0;
-	int ret;
-
-	if (state->backend)
-		return -EBUSY;
-
-	ret = state_backend_raw_file_get_size(path, &path_size);
-	if (ret)
-		return ret;
-
-	if (size == 0)
-		size = path_size;
-	else if (offset + size > path_size)
-		return -EINVAL;
-
-	backend_raw = xzalloc(sizeof(*backend_raw));
-
-	ret = state_backend_raw_file_init_digest(state, backend_raw);
-	if (ret) {
-		free(backend_raw);
-		return ret;
-	}
-
-	backend = &backend_raw->backend;
-	backend->save = state_backend_raw_save;
-	backend->of_path = xstrdup(of_path);
-	backend->path = xstrdup(path);
-	backend->name = "raw";
-
-	sv = list_last_entry(&state->variables, struct state_variable, list);
-	backend_raw->size_data = sv->start + sv->size;
-	backend_raw->offset = offset;
-	backend_raw->size = size;
-	backend_raw->size_full += backend_raw->size_data +
-		sizeof(struct backend_raw_header);
-
-	state->backend = backend;
-
-	ret = mtd_get_meminfo(backend->path, &meminfo);
-	if (!ret && !(meminfo.flags & MTD_NO_ERASE)) {
-		backend_raw->need_erase = true;
-		backend_raw->size_full = ALIGN(backend_raw->size_full,
-					       meminfo.writesize);
-		backend_raw->stride = ALIGN(backend_raw->size_full,
-					    meminfo.erasesize);
-		dev_dbg(&state->dev, "is a mtd, adjust stepsize to %ld\n",
-			backend_raw->stride);
-	} else {
-		backend_raw->stride = backend_raw->size_full;
-	}
-
-	if (backend_raw->size / backend_raw->stride < RAW_BACKEND_COPIES) {
-		dev_err(&state->dev, "not enough space for two copies (%lu each)\n",
-			backend_raw->stride);
-		ret = -ENOSPC;
-		goto err;
-	}
-
-	ret = state_backend_raw_load(backend, state);
-	if (ret) {
-		dev_warn(&state->dev, "load failed - using defaults\n");
-	} else {
-		dev_info(&state->dev, "load successful\n");
-		state->dirty = 0;
-	}
-
-	/* ignore return value of load() */
-	return 0;
-err:
-	digest_free(backend_raw->backend.digest);
-
-	free(backend_raw);
-	return ret;
-}
diff --git a/common/state/Makefile b/common/state/Makefile
new file mode 100644
index 000000000000..5d6dcb26dfeb
--- /dev/null
+++ b/common/state/Makefile
@@ -0,0 +1,8 @@
+obj-y += state.o
+obj-y += state_variables.o
+obj-y += backend.o
+obj-y += backend_format_dtb.o
+obj-y += backend_format_raw.o
+obj-y += backend_storage.o
+obj-y += backend_bucket_direct.o
+obj-y += backend_bucket_circular.o
diff --git a/common/state/backend.c b/common/state/backend.c
new file mode 100644
index 000000000000..054f8d646679
--- /dev/null
+++ b/common/state/backend.c
@@ -0,0 +1,209 @@
+/*
+ * Copyright (C) 2016 Pengutronix, Markus Pargmann <mpa@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <linux/kernel.h>
+#include <linux/list.h>
+#include <linux/string.h>
+#include <malloc.h>
+#include <printk.h>
+
+#include "state.h"
+
+
+/**
+ * Save the state
+ * @param state
+ * @return
+ */
+int state_save(struct state *state)
+{
+	uint8_t *buf;
+	ssize_t len;
+	int ret;
+	struct state_backend *backend = &state->backend;
+
+	if (!state->dirty)
+		return 0;
+
+	ret = backend->format->pack(backend->format, state, &buf, &len);
+	if (ret) {
+		dev_err(&state->dev, "Failed to pack state with backend format %s, %d\n",
+			backend->format->name, ret);
+		return ret;
+	}
+
+	ret = state_storage_write(&backend->storage, buf, len);
+	if (ret) {
+		dev_err(&state->dev, "Failed to write packed state, %d\n", ret);
+		goto out;
+	}
+
+	state->dirty = 0;
+
+out:
+	free(buf);
+	return ret;
+}
+
+/**
+ * state_load - Loads a state from the backend
+ * @param state The state that should be updated to contain the loaded data
+ * @return 0 on success, -errno on failure. If no state is loaded the previous
+ * values remain in the state.
+ *
+ * This function uses the registered storage backend to read data. All data that
+ * we read is checked for integrity by the formatter. After that we unpack the
+ * data into our state.
+ */
+int state_load(struct state *state)
+{
+	uint8_t *buf;
+	ssize_t len;
+	ssize_t len_hint = 0;
+	int ret;
+	struct state_backend *backend = &state->backend;
+
+	if (backend->format->get_packed_len)
+		len_hint = backend->format->get_packed_len(backend->format,
+							   state);
+	ret = state_storage_read(&backend->storage, backend->format,
+				 state->magic, &buf, &len, len_hint);
+	if (ret) {
+		dev_err(&state->dev, "Failed to read state with format %s, %d\n",
+			backend->format->name, ret);
+		return ret;
+	}
+
+	ret = backend->format->unpack(backend->format, state, buf, len);
+	if (ret) {
+		dev_err(&state->dev, "Failed to unpack read data with format %s although verified, %d\n",
+			backend->format->name, ret);
+		goto out;
+	}
+
+	state->dirty = 0;
+
+out:
+	free(buf);
+	return ret;
+}
+
+static int state_format_init(struct state_backend *backend,
+			     struct device_d *dev, const char *backend_format,
+			     struct device_node *node, const char *state_name)
+{
+	int ret;
+
+	if (!strcmp(backend_format, "raw")) {
+		ret = backend_format_raw_create(&backend->format, node,
+						state_name, dev);
+	} else if (!strcmp(backend_format, "dtb")) {
+		ret = backend_format_dtb_create(&backend->format, dev);
+	} else {
+		dev_err(dev, "Invalid backend format %s\n",
+			backend_format);
+		return -EINVAL;
+	}
+
+	if (ret && ret != -EPROBE_DEFER)
+		dev_err(dev, "Failed to initialize format %s, %d\n",
+			backend_format, ret);
+
+	return ret;
+}
+
+static void state_format_free(struct state_backend_format *format)
+{
+	if (format->free)
+		format->free(format);
+}
+
+/**
+ * state_backend_init - Initiates the backend storage and format using the
+ * passed arguments
+ * @param backend state backend
+ * @param dev Device pointer used for prints
+ * @param node the DT device node corresponding to the state
+ * @param backend_format a string describing the format. Valid values are 'raw'
+ * and 'dtb' currently
+ * @param storage_path Path to the backend storage file/device/partition/...
+ * @param state_name Name of the state
+ * @param of_path Path in the devicetree
+ * @param stridesize stridesize in case we have a medium without eraseblocks.
+ * stridesize describes how far apart copies of the same data should be stored.
+ * For blockdevices it makes sense to align them on blocksize.
+ * @param storagetype Type of the storage backend. This may be NULL where we
+ * autoselect some backwardscompatible backend options
+ * @return 0 on success, -errno otherwise
+ */
+int state_backend_init(struct state_backend *backend, struct device_d *dev,
+		       struct device_node *node, const char *backend_format,
+		       const char *storage_path, const char *state_name, const
+		       char *of_path, off_t offset, size_t max_size,
+		       uint32_t stridesize, const char *storagetype)
+{
+	struct state_backend_storage_bucket *bucket;
+	struct state_backend_storage_bucket *bucket_tmp;
+	int ret;
+
+	ret = state_format_init(backend, dev, backend_format, node, state_name);
+	if (ret)
+		return ret;
+
+	ret = state_storage_init(&backend->storage, dev, storage_path, offset,
+				 max_size, stridesize, storagetype);
+	if (ret)
+		goto out_free_format;
+
+	list_for_each_entry_safe(bucket, bucket_tmp, &backend->storage.buckets,
+				 bucket_list) {
+		if (!bucket->init)
+			continue;
+
+		ret = bucket->init(bucket);
+		if (ret) {
+			dev_warn(dev, "Bucket init failed, state degraded, %d\n",
+				 ret);
+			list_del(&bucket->bucket_list);
+			bucket->free(bucket);
+			continue;
+		}
+	}
+
+	if (list_empty(&backend->storage.buckets)) {
+		dev_err(dev, "Failed to initialize any state bucket\n");
+		ret = -EIO;
+		goto out_free_storage;
+	}
+
+
+	backend->of_path = of_path;
+
+	return 0;
+
+out_free_storage:
+	state_storage_free(&backend->storage);
+out_free_format:
+	state_format_free(backend->format);
+	backend->format = NULL;
+
+	return ret;
+}
+
+void state_backend_free(struct state_backend *backend)
+{
+	state_storage_free(&backend->storage);
+	if (backend->format)
+		state_format_free(backend->format);
+}
diff --git a/common/state/backend_bucket_circular.c b/common/state/backend_bucket_circular.c
new file mode 100644
index 000000000000..64e9be2e9979
--- /dev/null
+++ b/common/state/backend_bucket_circular.c
@@ -0,0 +1,580 @@
+/*
+ * Copyright (C) 2016 Pengutronix, Markus Pargmann <mpa@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <asm-generic/ioctl.h>
+#include <common.h>
+#include <fcntl.h>
+#include <fs.h>
+#include <libfile.h>
+#include <linux/kernel.h>
+#include <linux/mtd/mtd-abi.h>
+#include <malloc.h>
+#include <mtd/mtd-peb.h>
+#include <string.h>
+
+#include "state.h"
+
+
+struct state_backend_storage_bucket_circular {
+	struct state_backend_storage_bucket bucket;
+
+	unsigned int eraseblock; /* Which eraseblock is used */
+	ssize_t writesize; /* Alignment of writes */
+	ssize_t max_size; /* Maximum size of this bucket */
+
+	off_t write_area; /* Start of the write area (relative offset) */
+	uint32_t last_written_length; /* Size of the data written in the storage */
+
+#ifdef __BAREBOX__
+	struct mtd_info *mtd; /* mtd info (used for io in Barebox)*/
+#else
+	struct mtd_info_user *mtd;
+	int fd;
+#endif
+
+	/* Cached data of the last read/write */
+	u8 *current_data;
+	ssize_t current_data_len;
+
+	bool force_rewrite; /* In case of degradation, force a rewrite */
+
+	/* For outputs */
+	struct device_d *dev;
+};
+
+struct state_backend_storage_bucket_circular_meta {
+	uint32_t magic;
+	uint32_t written_length;
+};
+
+static const uint32_t circular_magic = 0x14fa2d02;
+static const uint8_t free_pattern = 0xff;
+
+static inline struct state_backend_storage_bucket_circular
+    *get_bucket_circular(struct state_backend_storage_bucket *bucket)
+{
+	return container_of(bucket,
+			    struct state_backend_storage_bucket_circular,
+			    bucket);
+}
+
+#ifdef __BAREBOX__
+static int state_mtd_peb_read(struct state_backend_storage_bucket_circular *circ,
+			      char *buf, int offset, int len)
+{
+	int ret;
+
+	ret = mtd_peb_read(circ->mtd, buf, circ->eraseblock, offset, len);
+	if (ret == -EBADMSG) {
+		ret = mtd_peb_torture(circ->mtd, circ->eraseblock);
+		if (ret == -EIO) {
+			dev_err(circ->dev, "Tortured eraseblock failed and is marked bad now, PEB %u\n",
+				circ->eraseblock);
+			return -EIO;
+		} else if (ret < 0) {
+			dev_err(circ->dev, "Failed to torture eraseblock, %d\n",
+				ret);
+			return ret;
+		}
+		/*
+		 * Fill with invalid data so that the next write is done
+		 * behind this area
+		 */
+		memset(buf, 0, len);
+		circ->force_rewrite = true;
+		circ->write_area = 0;
+		dev_dbg(circ->dev, "PEB %u has ECC error, forcing rewrite\n",
+			circ->eraseblock);
+	} else if (ret == -EUCLEAN) {
+		circ->force_rewrite = true;
+		dev_dbg(circ->dev, "PEB %u is unclean, forcing rewrite\n",
+			circ->eraseblock);
+	} else if (ret < 0) {
+		dev_err(circ->dev, "Failed to read PEB %u, %d\n",
+			circ->eraseblock, ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int state_mtd_peb_write(struct state_backend_storage_bucket_circular *circ,
+			       const char *buf, int offset, int len)
+{
+	int ret;
+
+	ret = mtd_peb_write(circ->mtd, buf, circ->eraseblock, offset, len);
+	if (ret == -EBADMSG) {
+		ret = mtd_peb_torture(circ->mtd, circ->eraseblock);
+		if (ret == -EIO) {
+			dev_err(circ->dev, "Tortured eraseblock failed and is marked bad now, PEB %u\n",
+				circ->eraseblock);
+			return -EIO;
+		} else if (ret < 0) {
+			dev_err(circ->dev, "Failed to torture eraseblock, %d\n",
+				ret);
+			return ret;
+		}
+		circ->force_rewrite = true;
+	} else if (ret < 0 && ret != -EUCLEAN) {
+		dev_err(circ->dev, "Failed to write PEB %u, %d\n",
+			circ->eraseblock, ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int state_mtd_peb_erase(struct state_backend_storage_bucket_circular *circ)
+{
+	return mtd_peb_erase(circ->mtd, circ->eraseblock);
+}
+#else
+static int state_mtd_peb_read(struct state_backend_storage_bucket_circular *circ,
+			      char *buf, int suboffset, int len)
+{
+	int ret;
+	off_t offset = suboffset;
+	struct mtd_ecc_stats stat1, stat2;
+	bool nostats = false;
+
+	offset += (off_t)circ->eraseblock * circ->mtd->erasesize;
+
+	ret = lseek(circ->fd, offset, SEEK_SET);
+	if (ret < 0) {
+		dev_err(circ->dev, "Failed to set circular read position to %lld, %d\n",
+			offset, ret);
+		return ret;
+	}
+
+	dev_dbg(circ->dev, "Read state from %ld length %zd\n", offset,
+		len);
+
+	ret = ioctl(circ->fd, ECCGETSTATS, &stat1);
+	if (ret)
+		nostats = true;
+
+	ret = read_full(circ->fd, buf, len);
+	if (ret < 0) {
+		dev_err(circ->dev, "Failed to read circular storage len %zd, %d\n",
+			len, ret);
+		free(buf);
+		return ret;
+	}
+
+	if (nostats)
+		return 0;
+
+	ret = ioctl(circ->fd, ECCGETSTATS, &stat2);
+	if (ret)
+		return 0;
+
+	if (stat2.failed - stat1.failed > 0) {
+		circ->force_rewrite = true;
+		dev_dbg(circ->dev, "PEB %u has ECC error, forcing rewrite\n",
+			circ->eraseblock);
+	} else if (stat2.corrected - stat1.corrected > 0) {
+		circ->force_rewrite = true;
+		dev_dbg(circ->dev, "PEB %u is unclean, forcing rewrite\n",
+			circ->eraseblock);
+	}
+
+	return 0;
+}
+
+static int state_mtd_peb_write(struct state_backend_storage_bucket_circular *circ,
+			       const char *buf, int suboffset, int len)
+{
+	int ret;
+	off_t offset = suboffset;
+
+	offset += circ->eraseblock * circ->mtd->erasesize;
+
+	ret = lseek(circ->fd, offset, SEEK_SET);
+	if (ret < 0) {
+		dev_err(circ->dev, "Failed to set position for circular write %ld, %d\n",
+			offset, ret);
+		return ret;
+	}
+
+	ret = write_full(circ->fd, buf, len);
+	if (ret < 0) {
+		dev_err(circ->dev, "Failed to write circular to %ld length %zd, %d\n",
+			offset, len, ret);
+		return ret;
+	}
+
+	/*
+	 * We keep the fd open, so flush is necessary. We ignore the return
+	 * value as flush is currently not supported for mtd under linux.
+	 */
+	flush(circ->fd);
+
+	dev_dbg(circ->dev, "Written state to offset %ld length %zd data length %zd\n",
+		offset, len, len);
+
+	return 0;
+}
+
+static int state_mtd_peb_erase(struct state_backend_storage_bucket_circular *circ)
+{
+	return erase(circ->fd, circ->mtd->erasesize,
+		     (off_t)circ->eraseblock * circ->mtd->erasesize);
+}
+#endif
+
+static int state_backend_bucket_circular_fill_cache(
+		struct state_backend_storage_bucket *bucket)
+{
+	struct state_backend_storage_bucket_circular *circ =
+	    get_bucket_circular(bucket);
+	ssize_t read_len;
+	off_t offset;
+	uint8_t *buf;
+	int ret;
+
+	/* Storage is empty */
+	if (circ->write_area == 0)
+		return -ENODATA;
+
+	if (!circ->last_written_length) {
+		/*
+		 * Last write did not contain length information, assuming old
+		 * state and reading from the beginning.
+		 */
+		offset = 0;
+		read_len = min(circ->write_area, (off_t)(circ->max_size -
+			       sizeof(struct state_backend_storage_bucket_circular_meta)));
+		circ->write_area = 0;
+		dev_dbg(circ->dev, "Detected old on-storage format\n");
+	} else if (circ->last_written_length > circ->write_area
+		   || !IS_ALIGNED(circ->last_written_length, circ->writesize)) {
+		circ->write_area = 0;
+		dev_err(circ->dev, "Error, invalid number of bytes written last time %d\n",
+			circ->last_written_length);
+		return -EINVAL;
+	} else {
+		/*
+		 * Normally we read at the end of the non-free area. The length
+		 * of the read is then what we read from the meta data
+		 * (last_written_length)
+		 */
+		read_len = circ->last_written_length;
+		offset = circ->write_area - read_len;
+	}
+
+	buf = xmalloc(read_len);
+	if (!buf)
+		return -ENOMEM;
+
+	dev_dbg(circ->dev, "Read state from PEB %u global offset %ld length %zd\n",
+		circ->eraseblock, offset, read_len);
+
+	ret = state_mtd_peb_read(circ, buf, offset, read_len);
+	if (ret < 0) {
+		dev_err(circ->dev, "Failed to read circular storage len %zd, %d\n",
+			read_len, ret);
+		free(buf);
+		return ret;
+	}
+
+	circ->current_data = buf;
+	circ->current_data_len = read_len;
+
+	return 0;
+}
+
+static int state_backend_bucket_circular_read(struct state_backend_storage_bucket *bucket,
+					      uint8_t ** buf_out,
+					      ssize_t * len_hint)
+{
+	struct state_backend_storage_bucket_circular *circ =
+	    get_bucket_circular(bucket);
+	int ret;
+
+	if (!circ->current_data) {
+		ret = state_backend_bucket_circular_fill_cache(bucket);
+		if (ret)
+			return ret;
+	}
+
+	/*
+	 * We keep the internal copy in the cache and duplicate the data for
+	 * external use
+	 */
+	*buf_out = xmemdup(circ->current_data, circ->current_data_len);
+	if (!*buf_out)
+		return -ENOMEM;
+
+	*len_hint = circ->current_data_len - sizeof(struct state_backend_storage_bucket_circular_meta);
+
+	return 0;
+}
+
+static int state_backend_bucket_circular_write(struct state_backend_storage_bucket *bucket,
+					       const uint8_t * buf,
+					       ssize_t len)
+{
+	struct state_backend_storage_bucket_circular *circ =
+	    get_bucket_circular(bucket);
+	off_t offset;
+	struct state_backend_storage_bucket_circular_meta *meta;
+	uint32_t written_length = ALIGN(len + sizeof(*meta), circ->writesize);
+	int ret;
+	uint8_t *write_buf;
+
+	if (written_length > circ->max_size) {
+		dev_err(circ->dev, "Error, state data too big to be written, to write: %zd, writesize: %zd, length: %zd, available: %zd\n",
+			written_length, circ->writesize, len, circ->max_size);
+		return -E2BIG;
+	}
+
+	/*
+	 * We need zero initialization so that our data comparisons don't show
+	 * random changes
+	 */
+	write_buf = xzalloc(written_length);
+	if (!write_buf)
+		return -ENOMEM;
+
+	memcpy(write_buf, buf, len);
+	meta = (struct state_backend_storage_bucket_circular_meta *)
+			(write_buf + written_length - sizeof(*meta));
+	meta->magic = circular_magic;
+	meta->written_length = written_length;
+
+	/* Nothing in cache? Then read to see what is on the device currently */
+	if (!circ->current_data) {
+		state_backend_bucket_circular_fill_cache(bucket);
+	}
+
+	/*
+	 * If we would write the same data that is currently on the device, we
+	 * can return successfully without writing.
+	 * Note that the cache may still be empty if the storage is empty or
+	 * errors occured.
+	 */
+	if (circ->current_data) {
+		dev_dbg(circ->dev, "Comparing cached data, writing %zd bytes, cached %zd bytes\n",
+			written_length, circ->current_data_len);
+		if (!circ->force_rewrite &&
+		    written_length == circ->current_data_len &&
+		    !memcmp(circ->current_data, write_buf, written_length)) {
+			dev_dbg(circ->dev, "Data already on device, not writing again\n");
+			goto out_free;
+		} else {
+			free(circ->current_data);
+			circ->current_data = NULL;
+		}
+	}
+
+	if (circ->write_area + written_length >= circ->max_size) {
+		circ->write_area = 0;
+	}
+	/*
+	 * If the write area is at the beginning of the page, erase it and write
+	 * at offset 0. As we only erase right before writing there are no
+	 * conditions where we regularly erase a block multiple times without
+	 * writing.
+	 */
+	if (circ->write_area == 0) {
+		dev_dbg(circ->dev, "Erasing PEB %u\n", circ->eraseblock);
+		ret = state_mtd_peb_erase(circ);
+		if (ret) {
+			dev_err(circ->dev, "Failed to erase PEB %u\n",
+				circ->eraseblock);
+			goto out_free;
+		}
+	}
+
+	offset = circ->write_area;
+
+	/*
+	 * Update write_area before writing. The write operation may put
+	 * arbitrary amount of the data into the storage before failing. In this
+	 * case we want to start after that area.
+	 */
+	circ->write_area += written_length;
+
+	ret = state_mtd_peb_write(circ, write_buf, offset, written_length);
+	if (ret < 0) {
+		dev_err(circ->dev, "Failed to write circular to %ld length %zd, %d\n",
+			offset, written_length, ret);
+		goto out_free;
+	}
+
+	dev_dbg(circ->dev, "Written state to PEB %u offset %ld length %zd data length %zd\n",
+		circ->eraseblock, offset, written_length, len);
+
+	/* Put written data into the cache */
+	WARN_ON(circ->current_data);
+	circ->current_data = write_buf;
+	circ->current_data_len = written_length;
+	write_buf = NULL;
+	circ->force_rewrite = false;
+
+out_free:
+	if (write_buf)
+		free(write_buf);
+	return 0;
+}
+
+/**
+ * state_backend_bucket_circular_init - Initialize circular bucket
+ * @param bucket
+ * @return 0 on success, -errno otherwise
+ *
+ * This function searches for the beginning of the written area from the end of
+ * the MTD device. This way it knows where the data ends and where the free area
+ * starts.
+ */
+static int state_backend_bucket_circular_init(
+		struct state_backend_storage_bucket *bucket)
+{
+	struct state_backend_storage_bucket_circular *circ =
+	    get_bucket_circular(bucket);
+	int sub_offset;
+	uint32_t written_length = 0;
+	uint8_t *buf;
+
+	buf = xmalloc(circ->writesize);
+	if (!buf)
+		return -ENOMEM;
+
+	for (sub_offset = circ->max_size - circ->writesize; sub_offset >= 0;
+	     sub_offset -= circ->writesize) {
+		int ret;
+
+		ret = state_mtd_peb_read(circ, buf, sub_offset,
+					 circ->writesize);
+		if (ret)
+			return ret;
+
+		ret = mtd_buf_all_ff(buf, circ->writesize);
+		if (!ret) {
+			struct state_backend_storage_bucket_circular_meta *meta;
+
+			meta = (struct state_backend_storage_bucket_circular_meta *)
+					(buf + circ->writesize - sizeof(*meta));
+
+			if (meta->magic != circular_magic)
+				written_length = 0;
+			else
+				written_length = meta->written_length;
+
+			break;
+		}
+	}
+
+	circ->write_area = sub_offset + circ->writesize;
+	circ->last_written_length = written_length;
+
+	free(buf);
+
+	return 0;
+}
+
+static void state_backend_bucket_circular_free(struct
+					       state_backend_storage_bucket
+					       *bucket)
+{
+	struct state_backend_storage_bucket_circular *circ =
+	    get_bucket_circular(bucket);
+
+	if (circ->current_data)
+		free(circ->current_data);
+	free(circ);
+}
+
+#ifdef __BAREBOX__
+static int bucket_circular_is_block_bad(struct state_backend_storage_bucket_circular *circ)
+{
+	int ret;
+
+	ret = mtd_peb_is_bad(circ->mtd, circ->eraseblock);
+	if (ret < 0)
+		dev_err(circ->dev, "Failed to determine whether eraseblock %u is bad, %d\n",
+			circ->eraseblock, ret);
+
+	return ret;
+}
+#else
+static int bucket_circular_is_block_bad(struct state_backend_storage_bucket_circular *circ)
+{
+	int ret;
+	loff_t offs = circ->eraseblock * circ->mtd->erasesize;
+
+	ret = ioctl(circ->fd, MEMGETBADBLOCK, &offs);
+	if (ret < 0)
+		dev_err(circ->dev, "Failed to use ioctl to check for bad block at offset %ld, %d\n",
+			offs, ret);
+
+	return ret;
+}
+#endif
+
+int state_backend_bucket_circular_create(struct device_d *dev, const char *path,
+					 struct state_backend_storage_bucket **bucket,
+					 unsigned int eraseblock,
+					 ssize_t writesize,
+					 struct mtd_info_user *mtd_uinfo)
+{
+	struct state_backend_storage_bucket_circular *circ;
+	int ret;
+
+	circ = xzalloc(sizeof(*circ));
+	circ->eraseblock = eraseblock;
+	circ->writesize = writesize;
+	circ->max_size = mtd_uinfo->erasesize;
+	circ->dev = dev;
+
+#ifdef __BAREBOX__
+	circ->mtd = mtd_uinfo->mtd;
+#else
+	circ->mtd = xzalloc(sizeof(*mtd_uinfo));
+	memcpy(circ->mtd, mtd_uinfo, sizeof(*mtd_uinfo));
+	circ->fd = open(path, O_RDWR);
+	if (circ->fd < 0) {
+		pr_err("Failed to open circular bucket '%s'\n", path);
+		return -errno;
+	}
+#endif
+
+	ret = bucket_circular_is_block_bad(circ);
+	if (ret) {
+		dev_info(dev, "Not using eraseblock %u, it is marked as bad (%d)\n",
+			 circ->eraseblock, ret);
+		ret = -EIO;
+		goto out_free;
+	}
+
+	circ->bucket.read = state_backend_bucket_circular_read;
+	circ->bucket.write = state_backend_bucket_circular_write;
+	circ->bucket.free = state_backend_bucket_circular_free;
+	*bucket = &circ->bucket;
+
+	ret = state_backend_bucket_circular_init(*bucket);
+	if (ret)
+		goto out_free;
+
+	return 0;
+
+out_free:
+#ifndef __BAREBOX__
+	close(circ->fd);
+#endif
+	free(circ);
+
+	return ret;
+}
diff --git a/common/state/backend_bucket_direct.c b/common/state/backend_bucket_direct.c
new file mode 100644
index 000000000000..08892f001e25
--- /dev/null
+++ b/common/state/backend_bucket_direct.c
@@ -0,0 +1,180 @@
+/*
+ * Copyright (C) 2016 Pengutronix, Markus Pargmann <mpa@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <fcntl.h>
+#include <fs.h>
+#include <libfile.h>
+#include <linux/kernel.h>
+#include <malloc.h>
+#include <printk.h>
+
+#include "state.h"
+
+struct state_backend_storage_bucket_direct {
+	struct state_backend_storage_bucket bucket;
+
+	ssize_t offset;
+	ssize_t max_size;
+
+	int fd;
+
+	struct device_d *dev;
+};
+
+struct state_backend_storage_bucket_direct_meta {
+	uint32_t magic;
+	uint32_t written_length;
+};
+static const uint32_t direct_magic = 0x2354fdf3;
+
+static inline struct state_backend_storage_bucket_direct
+    *get_bucket_direct(struct state_backend_storage_bucket *bucket)
+{
+	return container_of(bucket, struct state_backend_storage_bucket_direct,
+			    bucket);
+}
+
+static int state_backend_bucket_direct_read(struct state_backend_storage_bucket
+					    *bucket, uint8_t ** buf_out,
+					    ssize_t * len_hint)
+{
+	struct state_backend_storage_bucket_direct *direct =
+	    get_bucket_direct(bucket);
+	struct state_backend_storage_bucket_direct_meta meta;
+	ssize_t read_len;
+	uint8_t *buf;
+	int ret;
+
+	ret = lseek(direct->fd, direct->offset, SEEK_SET);
+	if (ret < 0) {
+		dev_err(direct->dev, "Failed to seek file, %d\n", ret);
+		return ret;
+	}
+	ret = read_full(direct->fd, &meta, sizeof(meta));
+	if (ret < 0) {
+		dev_err(direct->dev, "Failed to read meta data from file, %d\n", ret);
+		return ret;
+	}
+	if (meta.magic == direct_magic) {
+		read_len = meta.written_length;
+	} else {
+		if (*len_hint)
+			read_len = *len_hint;
+		else
+			read_len = direct->max_size;
+		ret = lseek(direct->fd, direct->offset, SEEK_SET);
+		if (ret < 0) {
+			dev_err(direct->dev, "Failed to seek file, %d\n", ret);
+			return ret;
+		}
+	}
+	if (direct->max_size)
+		read_len = min(read_len, direct->max_size);
+
+	buf = xmalloc(read_len);
+	if (!buf)
+		return -ENOMEM;
+
+	ret = read_full(direct->fd, buf, read_len);
+	if (ret < 0) {
+		dev_err(direct->dev, "Failed to read from file, %d\n", ret);
+		free(buf);
+		return ret;
+	}
+
+	*buf_out = buf;
+	*len_hint = read_len;
+
+	return 0;
+}
+
+static int state_backend_bucket_direct_write(struct state_backend_storage_bucket
+					     *bucket, const uint8_t * buf,
+					     ssize_t len)
+{
+	struct state_backend_storage_bucket_direct *direct =
+	    get_bucket_direct(bucket);
+	int ret;
+	struct state_backend_storage_bucket_direct_meta meta;
+
+	if (direct->max_size && len > direct->max_size)
+		return -E2BIG;
+
+	ret = lseek(direct->fd, direct->offset, SEEK_SET);
+	if (ret < 0) {
+		dev_err(direct->dev, "Failed to seek file, %d\n", ret);
+		return ret;
+	}
+
+	meta.magic = direct_magic;
+	meta.written_length = len;
+	ret = write_full(direct->fd, &meta, sizeof(meta));
+	if (ret < 0) {
+		dev_err(direct->dev, "Failed to write metadata to file, %d\n", ret);
+		return ret;
+	}
+
+	ret = write_full(direct->fd, buf, len);
+	if (ret < 0) {
+		dev_err(direct->dev, "Failed to write file, %d\n", ret);
+		return ret;
+	}
+
+	ret = flush(direct->fd);
+	if (ret < 0) {
+		dev_err(direct->dev, "Failed to flush file, %d\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+static void state_backend_bucket_direct_free(struct
+					     state_backend_storage_bucket
+					     *bucket)
+{
+	struct state_backend_storage_bucket_direct *direct =
+	    get_bucket_direct(bucket);
+
+	close(direct->fd);
+	free(direct);
+}
+
+int state_backend_bucket_direct_create(struct device_d *dev, const char *path,
+				       struct state_backend_storage_bucket **bucket,
+				       off_t offset, ssize_t max_size)
+{
+	int fd;
+	struct state_backend_storage_bucket_direct *direct;
+
+	fd = open(path, O_RDWR);
+	if (fd < 0) {
+		dev_err(dev, "Failed to open file '%s', %d\n", path, -errno);
+		close(fd);
+		return -errno;
+	}
+
+	direct = xzalloc(sizeof(*direct));
+	direct->offset = offset;
+	direct->max_size = max_size;
+	direct->fd = fd;
+	direct->dev = dev;
+
+	direct->bucket.read = state_backend_bucket_direct_read;
+	direct->bucket.write = state_backend_bucket_direct_write;
+	direct->bucket.free = state_backend_bucket_direct_free;
+	*bucket = &direct->bucket;
+
+	return 0;
+}
diff --git a/common/state/backend_format_dtb.c b/common/state/backend_format_dtb.c
new file mode 100644
index 000000000000..dc19c888e5b6
--- /dev/null
+++ b/common/state/backend_format_dtb.c
@@ -0,0 +1,150 @@
+/*
+ * Copyright (C) 2012-2014 Pengutronix, Jan Luebbe <j.luebbe@pengutronix.de>
+ * Copyright (C) 2013-2014 Pengutronix, Sascha Hauer <s.hauer@pengutronix.de>
+ * Copyright (C) 2015 Pengutronix, Marc Kleine-Budde <mkl@pengutronix.de>
+ * Copyright (C) 2016 Pengutronix, Markus Pargmann <mpa@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <of.h>
+#include <linux/kernel.h>
+#include <malloc.h>
+
+#include "state.h"
+
+struct state_backend_format_dtb {
+	struct state_backend_format format;
+
+	struct device_node *root;
+
+	/* For outputs */
+	struct device_d *dev;
+};
+
+static inline struct state_backend_format_dtb *get_format_dtb(struct
+							      state_backend_format
+							      *format)
+{
+	return container_of(format, struct state_backend_format_dtb, format);
+}
+
+static int state_backend_format_dtb_verify(struct state_backend_format *format,
+					   uint32_t magic, const uint8_t * buf,
+					   ssize_t len)
+{
+	struct state_backend_format_dtb *fdtb = get_format_dtb(format);
+	struct device_node *root;
+	struct fdt_header *fdt = (struct fdt_header *)buf;
+	size_t dtb_len = fdt32_to_cpu(fdt->totalsize);
+
+	if (dtb_len > len) {
+		dev_err(fdtb->dev, "Error, stored DTB length (%d) longer than read buffer (%d)\n",
+			dtb_len, len);
+		return -EINVAL;
+	}
+
+	if (fdtb->root) {
+		of_delete_node(fdtb->root);
+		fdtb->root = NULL;
+	}
+
+	root = of_unflatten_dtb(buf);
+	if (IS_ERR(root)) {
+		dev_err(fdtb->dev, "Failed to unflatten dtb from buffer with length %zd, %ld\n",
+			len, PTR_ERR(root));
+		return PTR_ERR(root);
+	}
+
+	fdtb->root = root;
+
+	return 0;
+}
+
+static int state_backend_format_dtb_unpack(struct state_backend_format *format,
+					   struct state *state,
+					   const uint8_t * buf, ssize_t len)
+{
+	struct state_backend_format_dtb *fdtb = get_format_dtb(format);
+	int ret;
+
+	if (!fdtb->root) {
+		state_backend_format_dtb_verify(format, 0, buf, len);

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
