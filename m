Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbS-0008Fl-Ch
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:10 +0200
Message-Id: <20170331070346.26878-7-s.hauer@pengutronix.de>
In-Reply-To: <20170331070346.26878-1-s.hauer@pengutronix.de>
References: <20170331070346.26878-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/42] state: merge backend.c into state.c
To: Barebox List <barebox@lists.infradead.org>

The code in backend.c is too small to justify an extra file. Merge it
into state.c.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/Makefile  |   1 -
 common/state/backend.c | 183 -------------------------------------------------
 common/state/state.c   | 161 +++++++++++++++++++++++++++++++++++++++++++
 common/state/state.h   |   6 --
 4 files changed, 161 insertions(+), 190 deletions(-)
 delete mode 100644 common/state/backend.c

diff --git a/common/state/Makefile b/common/state/Makefile
index 3e0e2c6e55..d3518feab4 100644
--- a/common/state/Makefile
+++ b/common/state/Makefile
@@ -1,6 +1,5 @@
 obj-y += state.o
 obj-y += state_variables.o
-obj-y += backend.o
 obj-y += backend_format_dtb.o
 obj-y += backend_format_raw.o
 obj-y += backend_storage.o
diff --git a/common/state/backend.c b/common/state/backend.c
deleted file mode 100644
index 1773392e8d..0000000000
--- a/common/state/backend.c
+++ /dev/null
@@ -1,183 +0,0 @@
-/*
- * Copyright (C) 2016 Pengutronix, Markus Pargmann <mpa@pengutronix.de>
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License
- * version 2, as published by the Free Software Foundation.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-#include <linux/kernel.h>
-#include <linux/list.h>
-#include <linux/string.h>
-#include <malloc.h>
-#include <printk.h>
-
-#include "state.h"
-
-
-/**
- * Save the state
- * @param state
- * @return
- */
-int state_save(struct state *state)
-{
-	uint8_t *buf;
-	ssize_t len;
-	int ret;
-
-	if (!state->dirty)
-		return 0;
-
-	ret = state->format->pack(state->format, state, &buf, &len);
-	if (ret) {
-		dev_err(&state->dev, "Failed to pack state with backend format %s, %d\n",
-			state->format->name, ret);
-		return ret;
-	}
-
-	ret = state_storage_write(&state->storage, buf, len);
-	if (ret) {
-		dev_err(&state->dev, "Failed to write packed state, %d\n", ret);
-		goto out;
-	}
-
-	state->dirty = 0;
-
-out:
-	free(buf);
-	return ret;
-}
-
-/**
- * state_load - Loads a state from the backend
- * @param state The state that should be updated to contain the loaded data
- * @return 0 on success, -errno on failure. If no state is loaded the previous
- * values remain in the state.
- *
- * This function uses the registered storage backend to read data. All data that
- * we read is checked for integrity by the formatter. After that we unpack the
- * data into our state.
- */
-int state_load(struct state *state)
-{
-	uint8_t *buf;
-	ssize_t len;
-	int ret;
-
-	ret = state_storage_read(&state->storage, state->format,
-				 state->magic, &buf, &len);
-	if (ret) {
-		dev_err(&state->dev, "Failed to read state with format %s, %d\n",
-			state->format->name, ret);
-		return ret;
-	}
-
-	ret = state->format->unpack(state->format, state, buf, len);
-	if (ret) {
-		dev_err(&state->dev, "Failed to unpack read data with format %s although verified, %d\n",
-			state->format->name, ret);
-		goto out;
-	}
-
-	state->dirty = 0;
-
-out:
-	free(buf);
-	return ret;
-}
-
-static int state_format_init(struct state *state,
-			     struct device_d *dev, const char *backend_format,
-			     struct device_node *node, const char *state_name)
-{
-	int ret;
-
-	if (!strcmp(backend_format, "raw")) {
-		ret = backend_format_raw_create(&state->format, node,
-						state_name, dev);
-	} else if (!strcmp(backend_format, "dtb")) {
-		ret = backend_format_dtb_create(&state->format, dev);
-	} else {
-		dev_err(dev, "Invalid backend format %s\n",
-			backend_format);
-		return -EINVAL;
-	}
-
-	if (ret && ret != -EPROBE_DEFER)
-		dev_err(dev, "Failed to initialize format %s, %d\n",
-			backend_format, ret);
-
-	return ret;
-}
-
-static void state_format_free(struct state_backend_format *format)
-{
-	if (format->free)
-		format->free(format);
-}
-
-/**
- * state_backend_init - Initiates the backend storage and format using the
- * passed arguments
- * @param backend state backend
- * @param dev Device pointer used for prints
- * @param node the DT device node corresponding to the state
- * @param backend_format a string describing the format. Valid values are 'raw'
- * and 'dtb' currently
- * @param storage_path Path to the backend storage file/device/partition/...
- * @param state_name Name of the state
- * @param of_path Path in the devicetree
- * @param stridesize stridesize in case we have a medium without eraseblocks.
- * stridesize describes how far apart copies of the same data should be stored.
- * For blockdevices it makes sense to align them on blocksize.
- * @param storagetype Type of the storage backend. This may be NULL where we
- * autoselect some backwardscompatible backend options
- * @return 0 on success, -errno otherwise
- */
-int state_backend_init(struct state *state, struct device_d *dev,
-		       struct device_node *node, const char *backend_format,
-		       const char *storage_path, const char *state_name, const
-		       char *of_path, off_t offset, size_t max_size,
-		       uint32_t stridesize, const char *storagetype)
-{
-	int ret;
-
-	ret = state_format_init(state, dev, backend_format, node, state_name);
-	if (ret)
-		return ret;
-
-	ret = state_storage_init(&state->storage, dev, storage_path, offset,
-				 max_size, stridesize, storagetype);
-	if (ret)
-		goto out_free_format;
-
-	state->of_backend_path = xstrdup(of_path);
-
-	return 0;
-
-out_free_format:
-	state_format_free(state->format);
-	state->format = NULL;
-
-	return ret;
-}
-
-void state_backend_set_readonly(struct state *state)
-{
-	state_storage_set_readonly(&state->storage);
-}
-
-void state_backend_free(struct state *state)
-{
-	state_storage_free(&state->storage);
-	if (state->format)
-		state_format_free(state->format);
-	free(state->of_path);
-}
diff --git a/common/state/state.c b/common/state/state.c
index 62357fb248..570fa498c5 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -34,6 +34,167 @@
 /* list of all registered state instances */
 static LIST_HEAD(state_list);
 
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
+
+	if (!state->dirty)
+		return 0;
+
+	ret = state->format->pack(state->format, state, &buf, &len);
+	if (ret) {
+		dev_err(&state->dev, "Failed to pack state with backend format %s, %d\n",
+			state->format->name, ret);
+		return ret;
+	}
+
+	ret = state_storage_write(&state->storage, buf, len);
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
+	int ret;
+
+	ret = state_storage_read(&state->storage, state->format,
+				 state->magic, &buf, &len);
+	if (ret) {
+		dev_err(&state->dev, "Failed to read state with format %s, %d\n",
+			state->format->name, ret);
+		return ret;
+	}
+
+	ret = state->format->unpack(state->format, state, buf, len);
+	if (ret) {
+		dev_err(&state->dev, "Failed to unpack read data with format %s although verified, %d\n",
+			state->format->name, ret);
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
+static int state_format_init(struct state *state,
+			     struct device_d *dev, const char *backend_format,
+			     struct device_node *node, const char *state_name)
+{
+	int ret;
+
+	if (!backend_format || !strcmp(backend_format, "raw")) {
+		ret = backend_format_raw_create(&state->format, node,
+						state_name, dev);
+	} else if (!strcmp(backend_format, "dtb")) {
+		ret = backend_format_dtb_create(&state->format, dev);
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
+static int state_backend_init(struct state *state, struct device_d *dev,
+		       struct device_node *node, const char *backend_format,
+		       const char *storage_path, const char *state_name, const
+		       char *of_path, off_t offset, size_t max_size,
+		       uint32_t stridesize, const char *storagetype)
+{
+	int ret;
+
+	ret = state_format_init(state, dev, backend_format, node, state_name);
+	if (ret)
+		return ret;
+
+	ret = state_storage_init(&state->storage, dev, storage_path, offset,
+				 max_size, stridesize, storagetype);
+	if (ret)
+		goto out_free_format;
+
+	state->of_backend_path = xstrdup(of_path);
+
+	return 0;
+
+out_free_format:
+	state_format_free(state->format);
+	state->format = NULL;
+
+	return ret;
+}
+
+void state_backend_set_readonly(struct state *state)
+{
+	state_storage_set_readonly(&state->storage);
+}
+
+void state_backend_free(struct state *state)
+{
+	state_storage_free(&state->storage);
+	if (state->format)
+		state_format_free(state->format);
+	free(state->of_path);
+}
+
 static struct state *state_new(const char *name)
 {
 	struct state *state;
diff --git a/common/state/state.h b/common/state/state.h
index cb248fc609..254ff31a06 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -205,13 +205,7 @@ int state_backend_bucket_cached_create(struct device_d *dev,
 struct state_variable *state_find_var(struct state *state, const char *name);
 struct digest *state_backend_format_raw_get_digest(struct state_backend_format
 						   *format);
-int state_backend_init(struct state *state, struct device_d *dev,
-		       struct device_node *node, const char *backend_format,
-		       const char *storage_path, const char *state_name, const
-		       char *of_path, off_t offset, size_t max_size,
-		       uint32_t stridesize, const char *storagetype);
 void state_backend_set_readonly(struct state *state);
-void state_backend_free(struct state *state);
 void state_storage_free(struct state_backend_storage *storage);
 int state_backend_bucket_direct_create(struct device_d *dev, const char *path,
 				       struct state_backend_storage_bucket **bucket,
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
