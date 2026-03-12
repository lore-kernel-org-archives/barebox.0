Delivery-date: Thu, 12 Mar 2026 15:46:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hIc-00ArTf-0j
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 15:46:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hIZ-0005Bx-J7
	for lore@pengutronix.de; Thu, 12 Mar 2026 15:46:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vJy3qdtmPMO0UigbToqSL1gaqWDcPEqBnowo9e+8J3Q=; b=YzEBDaSWpCneM+S0+2vvDrHOg/
	HmlSsS+ojeEaj07z0kaqhf2opAhMfXjzrczewmUFcLHH4hsJMRC6SDZo9qkWS7yL52nfG+0N09bBK
	h+PD//qdzmP13t8GMQBrDkJmIXDS+x+14YtbIR82ltHrP0u9shCIJRwzYF0kyEvM2sOrGQPBjfZ76
	6QFwLL1EbID0MOEm/LgA8sXnReW0Cr6dj9QoMOMn5kF1OPxAvTumfEE2fVjR9fn8N3CPkJzNDdDQ9
	CS4oWv+2h8kNM4ePTpaWCLo0/+/zdVQ2rTK25esMuJssvKezXztfMJwX4TZFsN9Ju5H9WPcdsrshx
	Lx86ce8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hHm-0000000EEuJ-25gd;
	Thu, 12 Mar 2026 14:45:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hHf-0000000EEm9-34xW
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 14:45:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHd-0004TD-TO; Thu, 12 Mar 2026 15:45:05 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHc-0052Nv-1B;
	Thu, 12 Mar 2026 15:45:05 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHd-000000093tN-2YUn;
	Thu, 12 Mar 2026 15:45:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Mar 2026 15:44:44 +0100
Message-ID: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_074508_248028_D29D54EA 
X-CRM114-Status: GOOD (  28.04  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 01/16] lib: add lazy loadable infrastructure for deferred boot component loading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds a new "loadable" abstraction that allows boot components (kernel,
initrd, FDT) to be represented without immediately loading their data.
Metadata can be queried via get_info() and actual loading happens on
demand via extract(), extract_into_buf() or mmap().

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/loadable.h        | 275 ++++++++++++++++++++++++++
 lib/Kconfig               |  16 ++
 lib/Makefile              |   2 +
 lib/loadable-compressed.c | 243 +++++++++++++++++++++++
 lib/loadable-file.c       | 340 ++++++++++++++++++++++++++++++++
 lib/loadable-mem.c        | 127 ++++++++++++
 lib/loadable.c            | 402 ++++++++++++++++++++++++++++++++++++++
 7 files changed, 1405 insertions(+)
 create mode 100644 include/loadable.h
 create mode 100644 lib/loadable-compressed.c
 create mode 100644 lib/loadable-file.c
 create mode 100644 lib/loadable-mem.c
 create mode 100644 lib/loadable.c

diff --git a/include/loadable.h b/include/loadable.h
new file mode 100644
index 000000000000..79b1579be291
--- /dev/null
+++ b/include/loadable.h
@@ -0,0 +1,275 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __LOADABLE_H
+#define __LOADABLE_H
+
+#include <linux/types.h>
+#include <linux/list.h>
+#include <linux/limits.h>
+#include <linux/bits.h>
+#include <linux/fs.h>
+#include <filetype.h>
+
+struct loadable;
+
+/**
+ * enum loadable_type - type of boot component
+ * @LOADABLE_UNSPECIFIED: unspecified type
+ * @LOADABLE_KERNEL: kernel image
+ * @LOADABLE_INITRD: initial ramdisk
+ * @LOADABLE_FDT: flattened device tree
+ * @LOADABLE_TEE: trusted execution environment
+ */
+enum loadable_type {
+	LOADABLE_UNSPECIFIED,
+	LOADABLE_KERNEL,
+	LOADABLE_INITRD,
+	LOADABLE_FDT,
+	LOADABLE_TEE,
+};
+
+/**
+ * loadable_type_tostr - convert loadable type enum to string
+ * @type: loadable type to convert
+ *
+ * Return: string representation of the type, or NULL for unknown types
+ */
+const char *loadable_type_tostr(enum loadable_type type);
+
+#define LOADABLE_SIZE_UNKNOWN		SIZE_MAX
+
+/**
+ * struct loadable_info - metadata about a loadable (no data loaded yet)
+ * @final_size: final size in bytes, or LOADABLE_SIZE_UNKNOWN if unknown
+ */
+struct loadable_info {
+	size_t final_size;
+};
+
+#define LOADABLE_EXTRACT_PARTIAL	BIT(0)
+
+/**
+ * struct loadable_ops - operations for a loadable
+ */
+struct loadable_ops {
+	/**
+	 * get_info - obtain metadata without loading data
+	 *
+	 * Must not allocate large buffers or decompress. Should read only
+	 * headers/properties needed to determine size and addresses.
+	 * Result is cached in loadable->info.
+	 */
+	int (*get_info)(struct loadable *l, struct loadable_info *info);
+
+	/**
+	 * extract_into_buf - load/decompress to target address
+	 *
+	 * @l: loadable
+	 * @load_addr: final RAM address where data should reside
+	 * @size: size of buffer at load_addr
+	 * @offset: offset within the loadable to start loading from
+	 * @flags: A bitmask of OR-ed LOADABLE_EXTRACT_ flags
+	 *
+	 * This is where data transfer happens.
+	 * For compressed data: decompress to load_addr.
+	 * For uncompressed data: read/copy to load_addr.
+	 *
+	 * Behavior:
+	 *   - Must respect the provided load_addr
+	 *   - Must check if buffer is sufficient, return -ENOSPC if too small
+	 *     unless flags & LOADABLE_EXTRACT_PARTIAL.
+	 *
+	 * Returns: actual number of bytes written on success, negative errno on error
+	 */
+	ssize_t (*extract_into_buf)(struct loadable *l, void *load_addr,
+				    size_t size, loff_t offset, unsigned flags);
+
+	/**
+	 * extract - load/decompress into newly allocated buffer
+	 *
+	 * @l: loadable
+	 * @size: on successful return, *size is set to the number of bytes extracted
+	 *
+	 * Allocates a buffer and extracts loadable data into it. The buffer
+	 * must be freed with free().
+	 *
+	 * Returns: allocated buffer, NULL for zero-size, or error pointer on failure
+	 */
+	void *(*extract)(struct loadable *l, size_t *size);
+
+	/**
+	 * mmap - memory map loaded/decompressed buffer
+	 *
+	 * @l: loadable
+	 * @size: on successful return, *size is set to the size of the memory map
+	 *
+	 * Prepares a memory map of the loadable without copying data.
+	 *
+	 * Returns: pointer to mapped data, NULL for zero-size, or MAP_FAILED on error
+	 */
+	const void *(*mmap)(struct loadable *l, size_t *size);
+
+	/**
+	 * munmap - release mmap'ed region
+	 *
+	 * @l: loadable
+	 * @buf: pointer returned by mmap
+	 * @size: size returned by mmap
+	 */
+	void (*munmap)(struct loadable *l, const void *buf, size_t size);
+
+	/**
+	 * release - free resources associated with this loadable
+	 *
+	 * @l: loadable
+	 *
+	 * Called during cleanup to free implementation-specific resources.
+	 */
+	void (*release)(struct loadable *l);
+};
+
+/**
+ * struct loadable - lazy-loadable boot component
+ * @name: descriptive name for debugging
+ * @type: type of component (kernel, initrd, fdt, tee)
+ * @ops: operations for this loadable
+ * @priv: format-specific private data
+ * @info: cached metadata populated by get_info()
+ * @info_valid: whether @info cache is valid
+ * @mmap_active: whether an mmap is currently active
+ * @chained_loadables: list of additional loadables chained to this one
+ * @list: list node for chained_loadables
+ *
+ * Represents something that can be loaded to RAM (kernel, initrd, fdt, tee).
+ * Metadata can be queried without loading. Actual loading happens on extract
+ * or via mmap.
+ */
+struct loadable {
+	char *name;
+	enum loadable_type type;
+
+	const struct loadable_ops *ops;
+	void *priv;
+
+	struct loadable_info info;
+	bool info_valid;
+	bool mmap_active;
+
+	struct list_head chained_loadables;
+	struct list_head list;
+};
+
+/**
+ * loadable_init - initialize a loadable structure
+ * @loadable: loadable to initialize
+ *
+ * Initializes list heads for a newly allocated loadable.
+ */
+static inline void loadable_init(struct loadable *loadable)
+{
+	INIT_LIST_HEAD(&loadable->chained_loadables);
+	INIT_LIST_HEAD(&loadable->list);
+}
+
+void loadable_chain(struct loadable **main, struct loadable *new);
+
+/**
+ * loadable_count - count total loadables in chain
+ * @l: main loadable (may be NULL or error pointer)
+ *
+ * Returns: number of loadables including main and all chained loadables
+ */
+static inline size_t loadable_count(struct loadable *l)
+{
+	if (IS_ERR_OR_NULL(l))
+		return 0;
+	return 1 + list_count_nodes(&l->chained_loadables);
+}
+
+/**
+ * loadable_is_main - check if loadable is a main (non-chained) loadable
+ * @l: loadable to check
+ *
+ * Returns: true if loadable is main, false otherwise
+ */
+static inline bool loadable_is_main(struct loadable *l)
+{
+	if (IS_ERR_OR_NULL(l))
+		return false;
+	return list_empty(&l->list);
+}
+
+/* Core API */
+
+/**
+ * loadable_set_name - set loadable name with printf-style formatting
+ * @l: loadable
+ * @fmt: printf-style format string
+ * @...: format arguments
+ *
+ * Updates the name of the loadable. The old name is freed if present.
+ */
+void loadable_set_name(struct loadable *l, const char *fmt, ...) __printf(2, 3);
+int loadable_get_info(struct loadable *l, struct loadable_info *info);
+
+/**
+ * loadable_get_size - get final size of loadable
+ * @l: loadable
+ * @size: on success, set to final size or FILE_SIZE_STREAM if unknown
+ *
+ * Returns: 0 on success, negative errno on error
+ */
+static inline int loadable_get_size(struct loadable *l, loff_t *size)
+{
+	struct loadable_info info;
+	int ret = loadable_get_info(l, &info);
+	if (ret)
+		return ret;
+
+	if (info.final_size == LOADABLE_SIZE_UNKNOWN)
+		*size = FILE_SIZE_STREAM;
+	else
+		*size = info.final_size;
+
+	return 0;
+}
+
+ssize_t loadable_extract_into_buf(struct loadable *l, void *load_addr,
+				  size_t size, loff_t offset, unsigned flags);
+
+static inline ssize_t loadable_extract_into_buf_full(struct loadable *l, void *load_addr,
+						     size_t size)
+{
+	return loadable_extract_into_buf(l, load_addr, size, 0, 0);
+}
+
+ssize_t loadable_extract_into_fd(struct loadable *l, int fd);
+void *loadable_extract(struct loadable *l, size_t *size);
+const void *loadable_mmap(struct loadable *l, size_t *size);
+const void *loadable_view(struct loadable *l, size_t *size);
+void loadable_view_free(struct loadable *l, const void *buf, size_t size);
+void loadable_munmap(struct loadable *l, const void *, size_t size);
+struct resource *loadable_extract_into_sdram_all(struct loadable *l, unsigned long adr,
+						 unsigned long end);
+
+void loadable_release(struct loadable **l);
+
+__returns_nonnull struct loadable *
+loadable_from_mem(const void *mem, size_t size, enum loadable_type type);
+
+__returns_nonnull struct loadable *
+loadable_from_file(const char *path, enum loadable_type type);
+
+int loadables_from_files(struct loadable **l,
+			 const char *files, const char *delimiters,
+			 enum loadable_type type);
+
+#ifdef CONFIG_LOADABLE_DECOMPRESS
+struct loadable *loadable_decompress(struct loadable *l);
+#else
+static inline struct loadable *loadable_decompress(struct loadable *l)
+{
+	return l;  /* Pass-through when not configured */
+}
+#endif
+
+#endif /* __LOADABLE_H */
diff --git a/lib/Kconfig b/lib/Kconfig
index 1322ad9f4722..3e314c05d7ee 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -8,6 +8,22 @@ config UNCOMPRESS
 	bool
 	select FILETYPE
 
+config LOADABLE
+	bool "Lazy loadable resource infrastructure" if COMPILE_TEST
+	help
+	  Provides infrastructure for lazy-loadable resources that can be
+	  queried for metadata without loading data, and extracted to memory
+	  on demand.
+
+config LOADABLE_DECOMPRESS
+	bool "Decompression support for loadable resources" if COMPILE_TEST
+	depends on LOADABLE
+	depends on UNCOMPRESS
+	help
+	  Enables transparent decompression of loadable resources.
+	  Compressed loadables can be wrapped with loadable_decompress()
+	  to provide decompressed access on demand.
+
 config JSMN
 	bool "JSMN JSON Parser" if COMPILE_TEST
 	help
diff --git a/lib/Makefile b/lib/Makefile
index 57ccd9616348..d5cb5f97f9e9 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -74,6 +74,8 @@ obj-$(CONFIG_STMP_DEVICE) += stmp-device.o
 obj-y			+= ucs2_string.o wchar.o
 obj-$(CONFIG_FUZZ)	+= fuzz.o
 obj-y			+= libfile.o
+obj-$(CONFIG_LOADABLE)	+= loadable.o loadable-mem.o loadable-file.o
+obj-$(CONFIG_LOADABLE_DECOMPRESS) += loadable-compressed.o
 obj-y			+= bitmap.o
 obj-y			+= gcd.o
 obj-y			+= bsearch.o
diff --git a/lib/loadable-compressed.c b/lib/loadable-compressed.c
new file mode 100644
index 000000000000..e66b2044b807
--- /dev/null
+++ b/lib/loadable-compressed.c
@@ -0,0 +1,243 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/**
+ * Decompression wrapper for loadable resources
+ *
+ * This provides transparent decompression for loadables, allowing compressed
+ * images to be used without requiring temporary files.
+ */
+
+#include <common.h>
+#include <loadable.h>
+#include <malloc.h>
+#include <uncompress.h>
+#include <linux/minmax.h>
+
+/**
+ * struct decompress_loadable_priv - private data for decompressing loadable
+ * @inner: wrapped compressed loadable (owned by wrapper)
+ */
+struct decompress_loadable_priv {
+	struct loadable *inner;
+};
+
+/**
+ * struct decompress_ctx - context passed to fill/flush callbacks
+ * @inner: inner loadable to read compressed data from
+ * @compressed_pos: current read position in compressed stream
+ * @dest_buf: destination buffer for decompressed data
+ * @dest_size: size of destination buffer
+ * @skip_bytes: bytes to skip at start (for offset handling)
+ * @bytes_written: total bytes written to dest_buf so far
+ * @done: early termination flag (buffer full)
+ */
+struct decompress_ctx {
+	struct loadable *inner;
+	loff_t compressed_pos;
+
+	void *dest_buf;
+	size_t dest_size;
+	loff_t skip_bytes;
+	size_t bytes_written;
+	bool done;
+};
+
+static struct decompress_ctx *current_ctx;
+
+/**
+ * decompress_fill() - callback to read compressed data from inner loadable
+ * @buf: buffer to fill with compressed data
+ * @len: maximum bytes to read
+ *
+ * Return: number of bytes read, or negative errno on error
+ */
+static long decompress_fill(void *buf, unsigned long len)
+{
+	struct decompress_ctx *ctx = current_ctx;
+	ssize_t ret;
+
+	ret = loadable_extract_into_buf(ctx->inner, buf, len,
+					ctx->compressed_pos,
+					LOADABLE_EXTRACT_PARTIAL);
+	if (ret < 0)
+		return ret;
+
+	ctx->compressed_pos += ret;
+	return ret;
+}
+
+/**
+ * decompress_flush() - callback to write decompressed data to output buffer
+ * @buf: buffer containing decompressed data
+ * @len: number of bytes in buffer
+ *
+ * Handles offset skipping and early termination when output buffer is full.
+ *
+ * Return: @len on success to continue, 0 to signal early termination
+ */
+static long decompress_flush(void *buf, unsigned long len)
+{
+	struct decompress_ctx *ctx = current_ctx;
+	size_t space_left, to_copy;
+
+	/* Already got enough data - signal early termination */
+	if (ctx->done || ctx->bytes_written >= ctx->dest_size) {
+		ctx->done = true;
+		return 0;  /* Returning != len signals abort to decompressors */
+	}
+
+	/* Skip bytes for offset handling */
+	if (ctx->skip_bytes > 0) {
+		if (len <= ctx->skip_bytes) {
+			ctx->skip_bytes -= len;
+			return len;  /* Continue decompressing */
+		}
+		buf = (char *)buf + ctx->skip_bytes;
+		len -= ctx->skip_bytes;
+		ctx->skip_bytes = 0;
+	}
+
+	/* Copy to destination buffer */
+	space_left = ctx->dest_size - ctx->bytes_written;
+	to_copy = min_t(size_t, len, space_left);
+
+	memcpy(ctx->dest_buf + ctx->bytes_written, buf, to_copy);
+	ctx->bytes_written += to_copy;
+
+	/* Check if we've filled the buffer */
+	if (ctx->bytes_written >= ctx->dest_size) {
+		ctx->done = true;
+		return 0;  /* Signal completion */
+	}
+
+	return len;
+}
+
+/**
+ * decompress_error() - error callback that suppresses early termination errors
+ *
+ * When the flush callback signals early termination via ctx->done,
+ * the decompressor may report a "write error". This is expected and not
+ * a real error, so suppress it
+ */
+static void decompress_error(char *msg)
+{
+	struct decompress_ctx *ctx = current_ctx;
+
+	if (ctx && ctx->done)
+		return;
+
+	uncompress_err_stdout(msg);
+}
+
+static int decompress_loadable_get_info(struct loadable *l,
+					struct loadable_info *info)
+{
+	/* Cannot know decompressed size without decompressing */
+	info->final_size = LOADABLE_SIZE_UNKNOWN;
+	return 0;
+}
+
+/**
+ * decompress_loadable_extract_into_buf() - extract decompressed data to buffer
+ * @l: loadable wrapper
+ * @load_addr: destination buffer
+ * @size: size of destination buffer
+ * @offset: offset within decompressed stream to start from
+ * @flags: extraction flags (LOADABLE_EXTRACT_PARTIAL)
+ *
+ * Decompresses data from the inner loadable to the provided buffer.
+ * When offset is zero, partial reads are allowed (streaming).
+ * When offset is non-zero, the full requested size must be available.
+ *
+ * Return: number of bytes written on success, negative errno on error
+ */
+static ssize_t decompress_loadable_extract_into_buf(struct loadable *l,
+						    void *load_addr,
+						    size_t size,
+						    loff_t offset,
+						    unsigned flags)
+{
+	struct decompress_loadable_priv *priv = l->priv;
+	int ret;
+
+	struct decompress_ctx ctx = {
+		.inner = priv->inner,
+		.compressed_pos = 0,
+		.dest_buf = load_addr,
+		.dest_size = size,
+		.skip_bytes = offset,
+		.bytes_written = 0,
+		.done = false,
+	};
+
+	current_ctx = &ctx;
+
+	ret = uncompress(NULL, 0, decompress_fill, decompress_flush,
+			 NULL, NULL, decompress_error);
+
+	current_ctx = NULL;
+
+	/* Early termination (ctx.done) is not an error */
+	if (ret != 0 && !ctx.done)
+		return ret;
+
+	/*
+	 * LOADABLE_EXTRACT_PARTIAL handling:
+	 * - If offset is zero, partial reads are always allowed (streaming)
+	 * - If offset is non-zero, partial reads require the flag
+	 */
+	if (offset != 0 && !(flags & LOADABLE_EXTRACT_PARTIAL) &&
+	    ctx.bytes_written < size && !ctx.done)
+		return -ENOSPC;
+
+	return ctx.bytes_written;
+}
+
+static void decompress_loadable_release(struct loadable *l)
+{
+	struct decompress_loadable_priv *priv = l->priv;
+
+	loadable_release(&priv->inner);
+	free(priv);
+}
+
+static const struct loadable_ops decompress_loadable_ops = {
+	.get_info = decompress_loadable_get_info,
+	.extract_into_buf = decompress_loadable_extract_into_buf,
+	.release = decompress_loadable_release,
+};
+
+/**
+ * loadable_decompress() - wrap a loadable with transparent decompression
+ * @l: compressed loadable (ownership transferred to wrapper)
+ *
+ * Creates a wrapper loadable that transparently decompresses data from
+ * the inner loadable. The wrapper takes ownership of the inner loadable
+ * and will release it when the wrapper is released.
+ *
+ * Supported compression formats depend on kernel configuration:
+ * gzip, bzip2, lzo, lz4, xz, zstd.
+ *
+ * Return: wrapper loadable on success, or the original loadable on error
+ */
+struct loadable *loadable_decompress(struct loadable *l)
+{
+	struct loadable *wrapper;
+	struct decompress_loadable_priv *priv;
+
+	if (IS_ERR_OR_NULL(l))
+		return l;
+
+	wrapper = xzalloc(sizeof(*wrapper));
+	priv = xzalloc(sizeof(*priv));
+
+	priv->inner = l;
+
+	wrapper->name = xasprintf("Decompress(%s)", l->name ?: "unnamed");
+	wrapper->type = l->type;
+	wrapper->ops = &decompress_loadable_ops;
+	wrapper->priv = priv;
+	loadable_init(wrapper);
+
+	return wrapper;
+}
diff --git a/lib/loadable-file.c b/lib/loadable-file.c
new file mode 100644
index 000000000000..a4e493c2df58
--- /dev/null
+++ b/lib/loadable-file.c
@@ -0,0 +1,340 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <fs.h>
+#include <libfile.h>
+#include <linux/ctype.h>
+#include <linux/minmax.h>
+#include <linux/sprintf.h>
+#include <linux/stat.h>
+#include <loadable.h>
+#include <string.h>
+#include <xfuncs.h>
+
+struct file_loadable_priv {
+	char *path;
+	int fd;
+	int read_fd;
+};
+
+static int file_loadable_get_info(struct loadable *l,
+				  struct loadable_info *info)
+{
+	struct file_loadable_priv *priv = l->priv;
+	struct stat s;
+	int ret;
+
+	ret = stat(priv->path, &s);
+	if (ret)
+		return ret;
+
+	if (s.st_size == FILE_SIZE_STREAM)
+		s.st_size = LOADABLE_SIZE_UNKNOWN;
+	else if (FILE_SIZE_STREAM != LOADABLE_SIZE_UNKNOWN &&
+		 s.st_size > LOADABLE_SIZE_UNKNOWN)
+		return -EOVERFLOW;
+
+	info->final_size = s.st_size;
+
+	return 0;
+}
+
+static int file_loadable_open_and_lseek(struct file_loadable_priv *priv, loff_t pos)
+{
+	int ret, fd = priv->read_fd;
+
+	if (fd < 0) {
+		fd = open(priv->path, O_RDONLY);
+		if (fd < 0)
+			return fd;
+	}
+
+	if (lseek(fd, pos, SEEK_SET) != pos) {
+		ret = -errno;
+		priv->read_fd = -1;
+		close(fd);
+		return ret;
+	}
+
+	priv->read_fd = fd;
+	return fd;
+}
+
+/**
+ * file_loadable_extract_into_buf - load file data to target address
+ * @l: loadable representing a file
+ * @load_addr: virtual address to load data to
+ * @size: size of buffer at load_addr
+ * @offset: offset within the file to start reading from
+ * @flags: A bitmask of OR-ed LOADABLE_EXTRACT_ flags
+ *
+ * Extracts the file to the specified memory address.
+ *
+ * File is read as-is from the filesystem.
+ * The caller must provide a valid address range; this function does not allocate
+ * memory.
+ *
+ * Return: actual number of bytes read on success, negative errno on error
+ *         -ENOSPC if size is too small for the file (only when loading from start)
+ */
+static ssize_t file_loadable_extract_into_buf(struct loadable *l,
+					      void *load_addr, size_t size,
+					      loff_t offset, unsigned flags)
+{
+	struct file_loadable_priv *priv = l->priv;
+	char buf;
+	ssize_t ret;
+	int fd;
+
+	fd = file_loadable_open_and_lseek(priv, offset);
+	if (fd < 0)
+		return fd;
+
+	ret = __read_full_anywhere(fd, load_addr, size);
+	if (!(flags & LOADABLE_EXTRACT_PARTIAL) && ret == size &&
+	    __read_full_anywhere(fd, &buf, 1) > 0)
+		ret = -ENOSPC;
+
+	return ret;
+}
+
+/**
+ * file_loadable_extract - allocate buffer and load file data into it
+ * @l: loadable representing a file
+ * @size: on success, set to the number of bytes read
+ *
+ * Allocates a buffer and extracts the file data into it.
+ *
+ * No decompression is performed - the file is read as-is from the filesystem.
+ * The caller is responsible for freeing the returned buffer with free().
+ *
+ * Return: allocated buffer, NULL for zero-size, or error pointer on failure
+ */
+static void *file_loadable_extract(struct loadable *l, size_t *size)
+{
+	struct file_loadable_priv *priv = l->priv;
+	void *buf;
+	int ret;
+
+	ret = read_file_2(priv->path, size, &buf, FILESIZE_MAX);
+	if (ret)
+		return ERR_PTR(ret);
+
+	if (*size == 0) {
+		free(buf);
+		buf = NULL;
+	}
+
+	return buf;
+}
+
+/**
+ * file_loadable_mmap - memory map file data
+ * @l: loadable representing a file
+ * @size: on success, set to the size of the mapped region
+ *
+ * Memory maps the file without copying data into a separate buffer.
+ *
+ * No decompression is performed - the file is mapped as-is from the filesystem.
+ *
+ * Return: read-only pointer to mapped data, NULL for zero-size, or MAP_FAILED on error
+ */
+static const void *file_loadable_mmap(struct loadable *l, size_t *size)
+{
+	struct file_loadable_priv *priv = l->priv;
+	struct stat st;
+	void *buf;
+	int fd, ret;
+
+	if (unlikely(priv->fd >= 0))
+		return MAP_FAILED;
+
+	/* Reuse the read fd if already open, otherwise open a new one */
+	if (priv->read_fd >= 0) {
+		fd = priv->read_fd;
+		priv->read_fd = -1;
+	} else {
+		fd = open(priv->path, O_RDONLY);
+	}
+	if (fd < 0)
+		return MAP_FAILED;
+
+	ret = fstat(fd, &st);
+	if (ret || st.st_size == FILE_SIZE_STREAM)
+		goto err;
+	if (!st.st_size) {
+		close(fd);
+		*size = 0;
+		return NULL;
+	}
+
+	buf = memmap(fd, PROT_READ);
+	if (buf == MAP_FAILED)
+		goto err;
+
+	*size = min_t(u64, st.st_size, SIZE_MAX);
+	priv->fd = fd;
+	return buf;
+
+err:
+	close(fd);
+	return MAP_FAILED;
+}
+
+static void file_loadable_munmap(struct loadable *l, const void *buf,
+				 size_t size)
+{
+	struct file_loadable_priv *priv = l->priv;
+
+	if (priv->fd >= 0) {
+		close(priv->fd);
+		priv->fd = -1;
+	}
+}
+
+static void file_loadable_release(struct loadable *l)
+{
+	struct file_loadable_priv *priv = l->priv;
+
+	if (priv->read_fd >= 0)
+		close(priv->read_fd);
+	if (priv->fd >= 0)
+		close(priv->fd);
+	free(priv->path);
+	free(priv);
+}
+
+static const struct loadable_ops file_loadable_ops = {
+	.get_info = file_loadable_get_info,
+	.extract_into_buf = file_loadable_extract_into_buf,
+	.extract = file_loadable_extract,
+	.mmap = file_loadable_mmap,
+	.munmap = file_loadable_munmap,
+	.release = file_loadable_release,
+};
+
+/**
+ * loadable_from_file - create a loadable from filesystem file
+ * @path: filesystem path to the file
+ * @type: type of loadable (LOADABLE_KERNEL, LOADABLE_INITRD, etc.)
+ *
+ * Creates a loadable structure that wraps access to a file in the filesystem.
+ * The file is read directly during extract or via mmap with no decompression
+ * - it is loaded as-is from the filesystem.
+ *
+ * The created loadable must be freed with loadable_release() when done.
+ * The file path is copied internally, so the caller's string can be freed.
+ *
+ * Return: pointer to allocated loadable on success, ERR_PTR() on error
+ */
+struct loadable *loadable_from_file(const char *path, enum loadable_type type)
+{
+	char *cpath;
+	struct loadable *l;
+	struct file_loadable_priv *priv;
+
+	cpath = canonicalize_path(AT_FDCWD, path);
+	if (!cpath) {
+		const char *typestr = loadable_type_tostr(type);
+		int ret = -errno;
+
+		pr_err("%s%simage \"%s\" not found: %m\n",
+		       typestr, typestr ? " ": "", path);
+
+		return ERR_PTR(ret);
+	}
+
+	l = xzalloc(sizeof(*l));
+	priv = xzalloc(sizeof(*priv));
+
+	priv->path = cpath;
+	priv->fd = -1;
+	priv->read_fd = -1;
+
+	l->name = xasprintf("File(%s)", path);
+	l->type = type;
+	l->ops = &file_loadable_ops;
+	l->priv = priv;
+	loadable_init(l);
+
+	return l;
+}
+
+/**
+ * loadables_from_files - create loadables from a list of file paths
+ * @l: pointer to loadable chain (updated on return)
+ * @files: delimited list of file paths
+ * @delimiters: each character on its own is a valid delimiter for @files
+ * @type: type of loadable (LOADABLE_KERNEL, LOADABLE_INITRD, etc.)
+ *
+ * This helper splits up @files by any character in @delimiters and creates
+ * loadables for every file it extracts. File extraction is done as follows:
+ *
+ * - Multiple whitespace is treated as if it were a single whitespace.
+ * - Leading and trailing whitespace is ignored
+ * - When a file name is empty, because a non-whitespace delimiter was placed
+ *   at the beginning, the end or two delimiters were repeated, the original
+ *   loadable from @l is spliced into the chain at that location. If @l is NULL,
+ *   nothing happens
+ * - Regular non-empty file names have loadables created for them
+ *
+ * This is basically the algorithm by which PATH is interpreted in
+ * a POSIX-conformant shell (when delimiters=":" and the original is the current
+ * working directory).
+ *
+ * Return: 0 on success, negative errno on failure
+ */
+int loadables_from_files(struct loadable **l,
+			 const char *files, const char *delimiters,
+			 enum loadable_type type)
+{
+	struct loadable *orig = *l;
+	struct loadable *main = NULL;
+	struct loadable *lf, *ltmp;
+	char *file, *buf, *origbuf = xstrdup(files);
+	LIST_HEAD(tmp);
+	bool orig_included = false;
+	char delim;
+
+	if (isempty(files))
+		goto out;
+
+	buf = origbuf;
+	while ((file = strsep_unescaped(&buf, delimiters, &delim))) {
+		if (*file == '\0') {
+			if (!isspace(delim) && !orig_included && orig) {
+				list_add_tail(&orig->list, &tmp);
+				orig_included = true;
+			}
+			continue;
+		}
+
+		lf = loadable_from_file(file, type);
+		if (IS_ERR(lf)) {
+			int ret = PTR_ERR(lf);
+
+			if (orig_included)
+				list_del_init(&orig->list);
+			list_for_each_entry_safe(lf, ltmp, &tmp, list)
+				loadable_release(&lf);
+			free(origbuf);
+			return ret;
+		}
+
+		list_add_tail(&lf->list, &tmp);
+	}
+
+	free(origbuf);
+
+	/* Build the final chain from collected entries */
+	list_for_each_entry_safe(lf, ltmp, &tmp, list) {
+		list_del_init(&lf->list);
+		loadable_chain(&main, lf);
+	}
+
+out:
+	if (!orig_included)
+		loadable_release(&orig);
+
+	*l = main;
+	return 0;
+}
diff --git a/lib/loadable-mem.c b/lib/loadable-mem.c
new file mode 100644
index 000000000000..4e697acc0bc4
--- /dev/null
+++ b/lib/loadable-mem.c
@@ -0,0 +1,127 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <loadable.h>
+#include <memory.h>
+#include <zero_page.h>
+#include <xfuncs.h>
+
+struct mem_loadable_priv {
+	const void *start;
+	size_t size;
+};
+
+static int mem_loadable_get_info(struct loadable *l, struct loadable_info *info)
+{
+	struct mem_loadable_priv *priv = l->priv;
+
+	info->final_size = priv->size;
+
+	return 0;
+}
+
+/**
+ * mem_loadable_extract_into_buf - copy memory region to target address
+ * @l: loadable representing a memory region
+ * @load_addr: virtual address to copy data to
+ * @size: size of buffer at load_addr
+ * @offset: offset within the memory region to start copying from
+ * @flags: A bitmask of OR-ed LOADABLE_EXTRACT_ flags
+ *
+ * Copies data from the memory region to the specified address.
+ *
+ * No decompression is performed - the data is copied as-is.
+ * The caller must provide a valid address range; this function does not allocate
+ * memory.
+ *
+ * Return: actual number of bytes copied on success, negative errno on error
+ */
+static ssize_t mem_loadable_extract_into_buf(struct loadable *l,
+					     void *load_addr, size_t size,
+					     loff_t offset,
+					     unsigned flags)
+{
+	struct mem_loadable_priv *priv = l->priv;
+
+	if (offset >= priv->size)
+		return 0;
+	if (!(flags & LOADABLE_EXTRACT_PARTIAL) && priv->size - offset > size)
+		return -ENOSPC;
+
+	size = min_t(size_t, priv->size - offset, size);
+
+	if (unlikely(zero_page_contains((ulong)load_addr)))
+		zero_page_memcpy(load_addr, priv->start + offset, size);
+	else
+		memcpy(load_addr, priv->start + offset, size);
+
+	return size; /* Actual bytes read */
+}
+
+/**
+ * mem_loadable_mmap - return pointer to memory region
+ * @l: loadable representing a memory region
+ * @size: on success, set to the size of the memory region
+ *
+ * Returns a direct pointer to the memory region without copying.
+ *
+ * No decompression is performed - the data is accessed as-is.
+ *
+ * Return: read-only pointer to the memory region, or NULL for zero-size
+ */
+static const void *mem_loadable_mmap(struct loadable *l, size_t *size)
+{
+	struct mem_loadable_priv *priv = l->priv;
+
+	*size = priv->size;
+	return priv->start;
+}
+
+static void mem_loadable_release(struct loadable *l)
+{
+	struct mem_loadable_priv *priv = l->priv;
+
+	free(priv);
+}
+
+static const struct loadable_ops mem_loadable_ops = {
+	.get_info = mem_loadable_get_info,
+	.extract_into_buf = mem_loadable_extract_into_buf,
+	.mmap = mem_loadable_mmap,
+	.release = mem_loadable_release,
+};
+
+/**
+ * loadable_from_mem - create a loadable from a memory region
+ * @mem: pointer to the memory region
+ * @size: size of the memory region in bytes
+ * @type: type of loadable (LOADABLE_KERNEL, LOADABLE_INITRD, etc.)
+ *
+ * Creates a loadable structure that wraps access to an existing memory region.
+ * The memory is accessed directly during extract or via mmap with no
+ * decompression - it is used as-is.
+ *
+ * The created loadable must be freed with loadable_release() when done.
+ * The memory region must remain valid for the lifetime of the loadable.
+ *
+ * Return: pointer to allocated loadable (never fails due to xzalloc)
+ */
+struct loadable *loadable_from_mem(const void *mem, size_t size,
+				   enum loadable_type type)
+{
+	struct loadable *l;
+	struct mem_loadable_priv *priv;
+
+	l = xzalloc(sizeof(*l));
+	priv = xzalloc(sizeof(*priv));
+
+	priv->start = size ? mem : NULL;
+	priv->size = size;
+
+	l->name = xasprintf("Mem(%p, %#zx)", mem, size);
+	l->type = type;
+	l->ops = &mem_loadable_ops;
+	l->priv = priv;
+	loadable_init(l);
+
+	return l;
+}
diff --git a/lib/loadable.c b/lib/loadable.c
new file mode 100644
index 000000000000..65121a7dbf90
--- /dev/null
+++ b/lib/loadable.c
@@ -0,0 +1,402 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <loadable.h>
+#include <malloc.h>
+#include <memory.h>
+#include <libfile.h>
+#include <unistd.h>
+#include <linux/stat.h>
+#include <linux/fs.h>
+#include <linux/sizes.h>
+#include <zero_page.h>
+#include <fs.h>
+
+void loadable_set_name(struct loadable *l, const char *fmt, ...)
+{
+	va_list args;
+
+	free(l->name);
+
+	va_start(args, fmt);
+	l->name = xvasprintf(fmt, args);
+	va_end(args);
+}
+
+const char *loadable_type_tostr(enum loadable_type type)
+{
+	switch (type) {
+	case LOADABLE_KERNEL:
+		return "kernel";
+	case LOADABLE_INITRD:
+		return "initrd";
+	case LOADABLE_FDT:
+		return "fdt";
+	case LOADABLE_TEE:
+		return "tee";
+	default:
+		return NULL;
+	}
+}
+
+/**
+ * loadable_get_info - obtain metadata without loading data
+ * @l: loadable
+ * @info: loadable info populated on success
+ *
+ * This function reads the minimum necessary headers/properties
+ * needed to determine size and addresses.
+ * Result is cached in loadable->info.
+ *
+ * Return: 0 on success, or negative error code otherwise
+ */
+int loadable_get_info(struct loadable *l, struct loadable_info *info)
+{
+	int ret;
+
+	if (!l->info_valid) {
+		ret = l->ops->get_info(l, &l->info);
+		if (ret)
+			return ret;
+		l->info_valid = true;
+	}
+
+	*info = l->info;
+	return 0;
+}
+
+/**
+ * loadable_extract_into_buf - load fully to target address
+ * @l: loadable
+ * @load_addr: virtual address to load data to
+ * @size: size of buffer at load_addr
+ * @offset: offset within the loadable to start loading from
+ * @flags: A bitmask of OR-ed LOADABLE_EXTRACT_ flags
+ *
+ * Instructs the loadable implementation to populate the specified
+ * buffer with data, so it can be reused. This may involve decompression
+ * if the loadable was constructed by loadable_decompress for example.
+ *
+ * if !(@flags & LOADABLE_EXTRACT_PARTIAL), -ENOSPC will be returned if the
+ * size is too small.
+ *
+ * Return: actual number of bytes read on success, negative errno on error
+ */
+ssize_t loadable_extract_into_buf(struct loadable *l, void *load_addr,
+				  size_t size, loff_t offset, unsigned flags)
+{
+	return l->ops->extract_into_buf(l, load_addr, size, offset, flags);
+}
+
+#define EXTRACT_FD_BUF_SIZE	SZ_1M
+
+/**
+ * loadable_extract_into_fd - extract loadable data to a file descriptor
+ * @l: loadable
+ * @fd: file descriptor to write to
+ *
+ * Extracts data from the loadable and writes it to the specified file
+ * descriptor. Uses a 1MB buffer and streams data in chunks.
+ *
+ * Return: total bytes written on success, negative errno on error
+ */
+ssize_t loadable_extract_into_fd(struct loadable *l, int fd)
+{
+	void *buf;
+	loff_t offset = 0;
+	ssize_t total = 0;
+	ssize_t ret;
+
+	buf = malloc(EXTRACT_FD_BUF_SIZE);
+	if (!buf)
+		return -ENOMEM;
+
+	while (1) {
+		ret = loadable_extract_into_buf(l, buf, EXTRACT_FD_BUF_SIZE,
+						offset, LOADABLE_EXTRACT_PARTIAL);
+		if (ret < 0)
+			goto out;
+		if (ret == 0)
+			break;
+
+		ret = write_full(fd, buf, ret);
+		if (ret < 0)
+			goto out;
+
+		offset += ret;
+		total += ret;
+	}
+
+	ret = total;
+out:
+	free(buf);
+	return ret;
+}
+
+static ssize_t __loadable_extract_into_sdram(struct loadable *l,
+					     unsigned long *adr,
+					     unsigned long *size,
+					     unsigned long end)
+{
+	ssize_t nbyts = loadable_extract_into_buf_full(l, (void *)*adr, *size);
+	if (nbyts < 0)
+		return nbyts;
+
+	*adr += nbyts;
+	*size -= nbyts;
+
+	if (*adr - 1 > end)
+		return -EBUSY;
+
+	return nbyts;
+}
+
+/**
+ * loadable_extract_into_sdram_all - extract main and chained loadables into SDRAM
+ * @main: main loadable with optional chained loadables
+ * @adr: start address of the SDRAM region
+ * @end: end address of the SDRAM region (inclusive)
+ *
+ * Extracts the main loadable and all chained loadables into a contiguous SDRAM
+ * region. Registers the region with the appropriate memory type based on
+ * the loadable type.
+ *
+ * Return: SDRAM resource on success, or error pointer on failure
+ */
+struct resource *loadable_extract_into_sdram_all(struct loadable *main,
+						 unsigned long adr,
+						 unsigned long end)
+{
+	struct loadable *lc;
+	unsigned long adr_orig = adr;
+	unsigned long size = end - adr + 1;
+	struct resource *res;
+	unsigned memtype;
+	unsigned memattrs;
+	ssize_t ret;
+
+	/* FIXME: EFI payloads are started with MMU enabled, so for now
+	 * we keep attributes as RWX instead of remapping later on
+	 */
+	memattrs = IS_ENABLED(CONFIG_EFI_LOADER) ? MEMATTRS_RWX : MEMATTRS_RW;
+
+	if (main->type == LOADABLE_KERNEL)
+		memtype = MEMTYPE_LOADER_CODE;
+	else
+		memtype = MEMTYPE_LOADER_DATA;
+
+	res = request_sdram_region(loadable_type_tostr(main->type) ?: "image",
+				   adr, size, memtype, memattrs);
+	if (!res)
+		return ERR_PTR(-EBUSY);
+
+	ret = __loadable_extract_into_sdram(main, &adr, &size, end);
+	if (ret < 0)
+		goto err;
+
+	list_for_each_entry(lc, &main->chained_loadables, list) {
+		ret = __loadable_extract_into_sdram(lc, &adr, &size, end);
+		if (ret < 0)
+			goto err;
+	}
+
+	if (adr == adr_orig) {
+		release_region(res);
+		return NULL;
+	}
+
+	ret = resize_region(res, adr - adr_orig);
+	if (ret)
+		goto err;
+
+	return res;
+err:
+	release_sdram_region(res);
+	return ERR_PTR(ret);
+}
+
+/**
+ * loadable_mmap - memory map a buffer
+ * @l: loadable
+ * @size: size of memory map on success
+ *
+ * This is the most efficient way to access a loadable if supported.
+ * The returned pointer should be passed to loadable_munmap when no
+ * longer needed.
+ *
+ * Return: read-only pointer to the buffer, NULL for zero-size, or MAP_FAILED on error
+ */
+const void *loadable_mmap(struct loadable *l, size_t *size)
+{
+	return l->ops->mmap ? l->ops->mmap(l, size) : MAP_FAILED;
+}
+
+/**
+ * loadable_munmap - unmap a buffer
+ * @l: loadable
+ * @buf: buffer returned from loadable_mmap
+ * @size: size of memory map returned by loadable_mmap
+ */
+void loadable_munmap(struct loadable *l, const void *buf, size_t size)
+{
+	if (l->ops->munmap)
+		l->ops->munmap(l, buf, size);
+}
+
+/**
+ * loadable_extract - extract loadable into newly allocated buffer
+ * @l: loadable
+ * @size: on success, set to the number of bytes extracted
+ *
+ * Extracts the loadable data into a newly allocated buffer. The caller
+ * is responsible for freeing the returned buffer with free().
+ *
+ * Return: allocated buffer, NULL for zero-size, or error pointer on failure
+ */
+void *loadable_extract(struct loadable *l, size_t *size)
+{
+	struct loadable_info li;
+	ssize_t nbytes;
+	void *buf;
+	int ret;
+
+	ret = loadable_get_info(l, &li);
+	if (ret)
+		return ERR_PTR(ret);
+
+	if (li.final_size == LOADABLE_SIZE_UNKNOWN) {
+		if (l->ops->extract)
+			return l->ops->extract(l, size);
+		if (l->ops->mmap) {
+			const void *map = l->ops->mmap(l, size);
+			if (map != MAP_FAILED) {
+				void *dup = memdup(map, *size);
+				if (l->ops->munmap)
+					l->ops->munmap(l, map, *size);
+				return dup;
+			}
+		}
+
+		return ERR_PTR(-EFBIG);
+	}
+
+	/* We assume extract_into_buf to be more efficient as it
+	 * can allocate once instead of having to resize
+	 */
+	buf = malloc(li.final_size);
+	if (!buf)
+		return ERR_PTR(-ENOMEM);
+
+	/* We are reading for the full size of the file, so set
+	 * LOADABLE_EXTRACT_PARTIAL to save the underlying loadable
+	 * some work
+	 */
+	nbytes = loadable_extract_into_buf(l, buf, li.final_size, 0,
+					   LOADABLE_EXTRACT_PARTIAL);
+	if (nbytes < 0) {
+		free(buf);
+		return ERR_PTR(nbytes);
+	} else if (nbytes == 0) {
+		free(buf);
+		buf = NULL;
+	}
+
+	*size = nbytes;
+	return buf;
+}
+
+/**
+ * loadable_view - get read-only view of loadable
+ * @l: loadable
+ * @size: on success, set to the size of the view
+ *
+ * Use this when you want to non-destructively access the data.
+ * It tries to find the optimal way to provide the buffer:
+ * - If memory-mappable, return memory map without allocation
+ * - If size is known, allocate once and use extract_into_buf
+ * - If size is unknown, fall back to extract (assumed to be the slowest)
+ *
+ * Return: read-only pointer to the buffer, NULL for zero-size, or error pointer on failure
+ */
+const void *loadable_view(struct loadable *l, size_t *size)
+{
+	const void *mmap;
+
+	mmap = loadable_mmap(l, size);
+	if (mmap != MAP_FAILED) {
+		l->mmap_active = true;
+		return mmap;
+	}
+
+	l->mmap_active = false;
+	return loadable_extract(l, size);
+}
+
+/**
+ * loadable_view_free - free buffer returned by loadable_view()
+ * @l: loadable
+ * @buf: buffer returned by loadable_view()
+ * @size: size returned by loadable_view()
+ *
+ * Releases resources associated with a buffer obtained via loadable_view().
+ */
+void loadable_view_free(struct loadable *l, const void *buf, size_t size)
+{
+	if (IS_ERR_OR_NULL(buf))
+		return;
+
+	if (l->mmap_active)
+		loadable_munmap(l, buf, size);
+	else
+		free((void *)buf);
+}
+
+/**
+ * loadable_chain - chain a loadable to another loadable
+ * @main: pointer to the main loadable (may be NULL initially)
+ * @new: loadable to chain
+ *
+ * Links @new to @main. If @main is NULL, @new becomes the new main.
+ * Linked loadables are extracted together by loadable_extract_into_sdram_all().
+ */
+void loadable_chain(struct loadable **main, struct loadable *new)
+{
+	if (!new)
+		return;
+	if (!*main) {
+		*main = new;
+		return;
+	}
+
+	list_add_tail(&new->list, &(*main)->chained_loadables);
+	list_splice_tail_init(&new->chained_loadables,
+			      &(*main)->chained_loadables);
+}
+
+/**
+ * loadable_release - free resources associated with this loadable
+ * @lp: pointer to loadable (set to NULL on return)
+ *
+ * Release resources associated with a loadable and all chained loadables.
+ *
+ * This function is a no-op when passed NULL or error pointers.
+ */
+void loadable_release(struct loadable **lp)
+{
+	struct loadable *lc, *l, *tmp;
+
+	if (IS_ERR_OR_NULL(lp) || IS_ERR_OR_NULL(*lp))
+		return;
+
+	l = *lp;
+
+	list_for_each_entry_safe(lc, tmp, &l->chained_loadables, list)
+		loadable_release(&lc);
+
+	if (l->ops->release)
+		l->ops->release(l);
+
+	list_del(&l->list);
+	free(l->name);
+	free(l);
+	*lp = NULL;
+}
-- 
2.47.3



