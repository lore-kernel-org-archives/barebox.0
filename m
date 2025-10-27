Delivery-date: Mon, 27 Oct 2025 08:55:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDI4U-00CGee-00
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 08:55:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDI4S-0000M3-Ok
	for lore@pengutronix.de; Mon, 27 Oct 2025 08:55:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fq+pwLpg9WHM/xiEL14HDxMY+2kCh08sNuDuppGuzIM=; b=oMiG9W5H1EZEG4J0urIA2xBbx+
	4DCbbpJ+vXWJsxQfH7XD/HzH6OtdYqPK8UEngNUHPnpq62eoSsGcde+YWDbi2N+I+1nA5RleNSYfJ
	nXZcFgcuz6wssB4X36OG6TGP3KMDOf1C1VULW7zyR4q/Ov0isfEyPeBZouXcuvY6PRFPgfUXfo/cJ
	DnlR/RCo/AWK41LiXWazZFAwKyNx6LD4zw3kpfIZ/VbTKlS0GAqX6+/6QXQ04VDjKdbnnvspItiPw
	wlLig4p8K9tZI/cdJw8chCkWaxewnNV+XSWpit+/AYDTJAm6HOwVRiVJ/lgpKLrzRdeGmm6CKMklE
	w0eO6bVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDI3x-0000000DJBo-39W9;
	Mon, 27 Oct 2025 07:54:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDI3t-0000000DJAD-36D2
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 07:54:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vDI3r-0000B3-UY; Mon, 27 Oct 2025 08:54:40 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 27 Oct 2025 08:54:32 +0100
Message-ID: <20251027075438.2480311-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_005442_085057_A691928A 
X-CRM114-Status: GOOD (  31.58  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH RFC 1/3] lib: add talloc for overlaying a tree onto allocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Talloc is the hierarchical allocator used by Samba, which keeps all
allocated buffers in a tree, where each child may not live longer than
its parent. When a parent is talloc_free'd, all its children are as
well. This can simplify memory management a great deal.

In barebox, this can also be used to implement devm_.

The implementation here is based on MIT-licensed:
https://github.com/esneider/talloc

But the API was adapted to the Samba3 talloc API, as described here:
https://linux.die.net/man/3/talloc
https://talloc.samba.org/talloc/doc/html/index.html

Support for destructors is planned, but not implemented yet.

Also, the TLSF allocator has two spare bits in each block's size:
One bit could be used to mark talloc buffers to prevent use of talloc_
family functions with non-talloc allocated buffers.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/talloc.h |  42 +++++
 include/xfuncs.h |   6 +
 lib/Makefile     |   1 +
 lib/talloc.c     | 413 +++++++++++++++++++++++++++++++++++++++++++++++
 lib/xfuncs.c     |  20 +++
 5 files changed, 482 insertions(+)
 create mode 100644 include/talloc.h
 create mode 100644 lib/talloc.c

diff --git a/include/talloc.h b/include/talloc.h
new file mode 100644
index 000000000000..e4ee580fc504
--- /dev/null
+++ b/include/talloc.h
@@ -0,0 +1,42 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/**
+ * Talloc is a replacement for the standard memory allocation routines that
+ * provides structure aware allocations.
+ *
+ * @author Dario Sneidermanis
+ */
+
+#ifndef __TALLOC_H__
+#define __TALLOC_H__
+
+#include <linux/types.h>
+
+struct talloc {
+	struct talloc *child;
+	struct talloc *next;
+	union {
+		struct talloc *prev;
+		struct talloc *parent; /* Valid only when is_first(mem) */
+	};
+};
+
+void mem_set_parent(struct talloc *child, struct talloc *parent);
+
+void *talloc_new(const void *parent);
+size_t talloc_usable_size(void *mem);
+void *talloc_size(const void *parent, size_t size);
+void *talloc_zero_size(const void *parent, size_t size);
+void *talloc_realloc_size(const void *parent, void *mem, size_t size);
+void talloc_free(void *mem);
+
+char *talloc_strdup(const void *parent, const char *str);
+const char *talloc_strdup_const(const void *parent, const char *str);
+void talloc_free_const(const void *ptr);
+
+void *talloc_parent(const void *mem);
+void talloc_steal(const void *parent, void *mem);
+void talloc_steal_children(const void *parent, void *mem);
+
+size_t talloc_total_blocks(const void *mem);
+
+#endif /* __TALLOC_H__ */
diff --git a/include/xfuncs.h b/include/xfuncs.h
index 2cc2048bd583..d567f7416f39 100644
--- a/include/xfuncs.h
+++ b/include/xfuncs.h
@@ -26,6 +26,9 @@ wchar_t *xstrdup_wchar(const wchar_t *src);
 wchar_t *xstrdup_char_to_wchar(const char *src);
 char *xstrdup_wchar_to_char(const wchar_t *src);
 
+void *xtalloc_size(const void *parent, size_t size) __xalloc_size(2);
+void *xtalloc_zero_size(const void *parent, size_t size) __xalloc_size(2);
+
 #else
 
 static inline void *xmalloc(size_t size) { BUG(); }
@@ -43,6 +46,9 @@ static inline __printf(2, 3) char *xrasprintf(char *str, const char *fmt, ...) {
 static inline wchar_t *xstrdup_wchar(const wchar_t *src) { BUG(); }
 static inline wchar_t *xstrdup_char_to_wchar(const char *src) { BUG(); }
 static inline char *xstrdup_wchar_to_char(const wchar_t *src) { BUG(); }
+
+static inline void *xtalloc_size(const void *paent, size_t size) { BUG(); }
+static inline void *xtalloc_zero_size(const void *paent, size_t size) { BUG(); }
 #endif
 
 #endif /* __XFUNCS_H */
diff --git a/lib/Makefile b/lib/Makefile
index e9f152b21dad..9ab4cad0359c 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -12,6 +12,7 @@ obj-$(CONFIG_VERSION_CMP)	+= strverscmp.o
 obj-y			+= strtox.o
 obj-y			+= kstrtox.o
 obj-y			+= vsprintf.o
+obj-y			+= talloc.o
 obj-$(CONFIG_KASAN)	+= kasan/
 obj-pbl-$(CONFIG_STACKPROTECTOR)	+= stackprot.o
 pbl-$(CONFIG_PBL_CONSOLE) += vsprintf.o
diff --git a/lib/talloc.c b/lib/talloc.c
new file mode 100644
index 000000000000..008f8b5cb0a1
--- /dev/null
+++ b/lib/talloc.c
@@ -0,0 +1,413 @@
+// SPDX-License-Identifier: GPL-2.0-only OR MIT
+/*
+ * Talloc is a replacement for the standard memory allocation routines that
+ * provides structure aware allocations.
+ *
+ * @author Dario Sneidermanis
+ *
+ * Each chunk of talloc'ed memory has a header of the following form:
+ *
+ * +---------+---------+---------+--------···
+ * |  first  |  next   |  prev   | memory
+ * |  child  | sibling | sibling | chunk
+ * +---------+---------+---------+--------···
+ *
+ * Thus, a talloc hierarchy tree would look like this:
+ *
+ *   NULL <-- chunk --> NULL
+ *              ^
+ *              |
+ *              +-> chunk <--> chunk <--> chunk --> NULL
+ *                    |          |          ^
+ *                    v          v          |
+ *                   NULL       NULL        +-> chunk <--> chunk --> NULL
+ *                                                |          |
+ *                                                v          v
+ *                                               NULL       NULL
+ */
+
+#include <stdlib.h>
+#include <string.h>
+#include <linux/bug.h>
+#include <linux/export.h>
+#include <linux/container_of.h>
+#include <asm/sections.h>
+#include "talloc.h"
+
+// TODO difference between set_parent and steal?
+// TODO use a bit from TLSF for extra safety to differentiate talloc
+// TODO allow leaf nodes (that have no children to be destructors!!)
+#define  is_root(hdr) (!(hdr)->prev)
+#define is_first(hdr) ((hdr)->prev->next != (hdr))
+
+static inline void *hdr2mem(struct talloc *hdr)
+{
+	return hdr ? &hdr[1] : NULL;
+}
+
+static inline struct talloc *mem2hdr(const void *mem)
+{
+	return mem ? (void *)mem - sizeof(struct talloc) : NULL;
+}
+
+/**
+ * talloc_ctx_init() - Initialize a raw chunk of memory.
+ *
+ * @hdr: pointer to freshly allocated memory chunk.
+ * @parent: pointer to previously talloc'ed memory chunk from which this
+ *          chunk depends, or NULL.
+ *
+ * Return: pointer to the allocated memory chunk, or NULL if there was an error.
+ */
+static void *talloc_ctx_init(struct talloc *hdr, const void *parent)
+{
+	void *mem;
+
+	if (!hdr)
+		return NULL;
+
+	memset(hdr, 0, sizeof(*hdr));
+
+	mem = hdr2mem(hdr);
+	talloc_steal(parent, mem);
+	return mem;
+}
+
+/**
+ * talloc_usable_size() - Report the size of the talloation
+ *
+ * @mem: pointer to previously talloc'ed memory chunk.
+ *
+ * Return: size of tallocation
+ */
+size_t talloc_usable_size(void *mem)
+{
+	return malloc_usable_size(mem) - sizeof(struct talloc);
+}
+EXPORT_SYMBOL(talloc_usable_size);
+
+/**
+ * talloc_new() - Allocate a talloc object without user data
+ *
+ * @parent: pointer to previously talloc'ed memory chunk from which this
+ *          chunk depends, or NULL.
+ *
+ * Return: pointer to the allocated object, or NULL if there was an error.
+ */
+void *talloc_new(const void *parent)
+{
+	return talloc_ctx_init(malloc(sizeof(struct talloc)), parent);
+}
+EXPORT_SYMBOL(talloc_new);
+
+/**
+ * talloc_size() - Allocate a (contiguous) memory chunk.
+ *
+ * @parent: pointer to previously talloc'ed memory chunk from which this
+ *          chunk depends, or NULL.
+ * @size: amount of memory requested (in bytes).
+ *
+ * Return: pointer to the allocated memory chunk, or NULL if there was an error.
+ */
+void *talloc_size(const void *parent, size_t size)
+{
+	if (!size)
+		return ZERO_SIZE_PTR;
+
+	return talloc_ctx_init(malloc(size + sizeof(struct talloc)), parent);
+}
+EXPORT_SYMBOL(talloc_size);
+
+/**
+ * talloc_strdup() - Duplicate a string
+ *
+ * @parent: pointer to previously talloc'ed memory chunk from which this
+ *          chunk depends, or NULL.
+ * @str: string to duplicate
+ *
+ * Return: pointer to the duplicated string, or NULL if there was an error.
+ */
+char *talloc_strdup(const void *parent, const char *str)
+{
+	size_t len = strlen(str) + 1;
+	void *usr;
+
+	usr = talloc_size(parent, len);
+	if (!usr)
+		return NULL;
+
+	return memcpy(usr, str, len);
+}
+EXPORT_SYMBOL(talloc_strdup);
+
+/**
+ * talloc_strdup_const() - Duplicate a string if not read-only
+ *
+ * @parent: pointer to previously talloc'ed memory chunk from which this
+ *          chunk depends, or NULL.
+ * @size: amount of memory requested (in bytes).
+ *
+ * Return: pointer to the allocated memory chunk, or NULL if there was an error.
+ */
+const char *talloc_strdup_const(const void *parent, const char *str)
+{
+	if (is_barebox_rodata((ulong)str))
+		return str;
+
+	return talloc_strdup(parent, str);
+}
+EXPORT_SYMBOL(talloc_strdup_const);
+
+/**
+ * tzalloc() - Allocate a zeroed (contiguous) memory chunk.
+ *
+ * @parent: pointer to previously talloc'ed memory chunk from which this
+ *          chunk depends, or NULL.
+ * @size: amount of memory requested (in bytes).
+ *
+ * Return: pointer to the allocated memory chunk, or NULL if there was an error.
+ */
+void *talloc_zero_size(const void *parent, size_t size)
+{
+	if (!size)
+		return ZERO_SIZE_PTR;
+
+	return talloc_ctx_init(calloc(1, size + sizeof(struct talloc)), parent);
+}
+EXPORT_SYMBOL(talloc_zero_size);
+
+/**
+ * trealloc() - Modify the size of a talloc'ed memory chunk.
+ *
+ * @parent: parent to set if mem is NULL.
+ * @mem: pointer to previously talloc'ed memory chunk.
+ * @size: amount of memory requested (in bytes).
+ *
+ * Return: pointer to the allocated memory chunk, or NULL if there was an error.
+ */
+void *talloc_realloc_size(const void *parent, void *mem, size_t size)
+{
+	struct talloc *oldhdr, *hdr;
+	void *newmem;
+
+	if (!size) {
+		talloc_free(mem);
+		return ZERO_SIZE_PTR;
+	}
+	if (ZERO_OR_NULL_PTR(mem))
+		mem = NULL;
+
+	oldhdr = mem2hdr(mem);
+
+	newmem = realloc(oldhdr, size + sizeof(*oldhdr));
+	if (!oldhdr || !newmem)
+		return talloc_ctx_init(newmem, parent);
+
+	if (oldhdr == newmem)
+		return mem;
+
+	/* Buffer start address changed, update all references. */
+	hdr = newmem;
+	mem = hdr2mem(hdr);
+
+	if (hdr->child)
+		hdr->child->parent = hdr;
+
+	if (!is_root(hdr)) {
+		if (hdr->next)
+			hdr->next->prev = hdr;
+
+		if (hdr->prev->next == oldhdr)
+			hdr->prev->next = hdr;
+		if (hdr->parent->child == oldhdr)
+			hdr->parent->child = hdr;
+	}
+
+	return mem;
+}
+EXPORT_SYMBOL(talloc_realloc_size);
+
+/**
+ * __tfree() - Deallocate all the descendants of given parent recursively.
+ *
+ * @hdr: pointer to previously talloc'ed memory chunk.
+ */
+static void __tfree(struct talloc *hdr)
+{
+	if (ZERO_OR_NULL_PTR(hdr))
+		return;
+
+	/* Fail if the tree hierarchy has cycles. */
+
+	ASSERT(hdr->prev);
+	hdr->prev = NULL;
+
+	__tfree(hdr->child);
+	__tfree(hdr->next);
+	free(hdr);
+}
+
+/**
+ * talloc_free() - Deallocate a talloc'ed memory chunk and all the chunks depending on it.
+ *
+ * @mem: pointer to previously talloc'ed memory chunk.
+ */
+void talloc_free(void *mem)
+{
+	struct talloc *hdr = mem2hdr(mem);
+
+	if (ZERO_OR_NULL_PTR(hdr))
+		return;
+
+	talloc_steal(NULL, mem);
+
+	__tfree(hdr->child);
+
+	free(hdr);
+}
+EXPORT_SYMBOL(talloc_free);
+
+/**
+ * talloc_free_const() - call talloc_free, unless read/only memory
+ *
+ * @mem: pointer to previously talloc'ed memory chunk.
+ */
+void talloc_free_const(const void *mem)
+{
+	if (is_barebox_rodata((ulong)mem))
+		return;
+
+	talloc_free((void *)mem);
+}
+EXPORT_SYMBOL(talloc_free_const);
+
+/**
+ * talloc_parent() - Get the parent of a talloc'ed memory chunk
+ *
+ * @mem: pointer to previously talloc'ed memory chunk.
+ *
+ * Return: pointer to the parent memory chunk it depends on (could be NULL).
+ */
+void *talloc_parent(const void *mem)
+{
+	struct talloc *hdr = mem2hdr(mem);
+
+	if (ZERO_OR_NULL_PTR(hdr) || is_root(hdr))
+		return NULL;
+
+	while (!is_first(hdr))
+		hdr = hdr->prev;
+
+	return hdr2mem(hdr->parent);
+}
+EXPORT_SYMBOL(talloc_parent);
+
+void mem_set_parent(struct talloc *hdr, struct talloc *parent_hdr)
+{
+	if (ZERO_OR_NULL_PTR(hdr))
+		return;
+
+	if (!is_root(hdr)) {
+		/* Remove node from old tree. */
+		if (hdr->next)
+			hdr->next->prev = hdr->prev;
+
+		if (!is_first(hdr))
+			hdr->prev->next = hdr->next;
+		else
+			hdr->parent->child = hdr->next;
+	}
+
+	hdr->next = hdr->prev = NULL;
+
+	if (parent_hdr) {
+		/* Insert node into new tree. */
+		if (parent_hdr->child) {
+			hdr->next = parent_hdr->child;
+			parent_hdr->child->prev = hdr;
+		}
+
+		hdr->parent = parent_hdr;
+		parent_hdr->child = hdr;
+	}
+}
+EXPORT_SYMBOL(mem_set_parent);
+
+/**
+ * talloc_steal() - Reparent talloc'ed memory chunk
+ *
+ * @parent: pointer to previously talloc'ed memory chunk from which this
+ *          chunk depends, or NULL.
+ * @mem: pointer to previously talloc'ed memory chunk.
+ *
+ * Change the parent of a talloc'ed memory chunk. This will affect the
+ * dependencies of the entire subtree rooted at the given chunk.
+ */
+void talloc_steal(const void *parent, void *mem)
+{
+	struct talloc *hdr = mem2hdr(mem);
+	struct talloc *parent_hdr = mem2hdr(parent);
+
+	mem_set_parent(hdr, parent_hdr);
+}
+EXPORT_SYMBOL(talloc_steal);
+
+/**
+ * talloc_steal_children() - Remove a talloc'ed memory chunk from the dependency tree
+ *
+ * @parent: pointer to previously talloc'ed memory chunk from which this
+ *          chunk's children will depend, or NULL.
+ * @mem: pointer to previously talloc'ed memory chunk.
+ *
+ * Removing a talloc'ed memory chunk from the dependency tree takes care of its
+ * children (they will depend on the specified parent).
+ */
+void talloc_steal_children(const void *parent, void *mem)
+{
+	struct talloc *hdr = mem2hdr(mem);
+	struct talloc *parent_hdr = mem2hdr(parent);
+
+	if (ZERO_OR_NULL_PTR(hdr))
+		return;
+
+	talloc_steal(NULL, mem);
+
+	if (!hdr->child)
+		return;
+
+	if (parent_hdr) {
+		/* Insert mem children in front of the list of parent children. */
+		if (parent_hdr->child) {
+			struct talloc *last = hdr->child;
+
+			while (last->next)
+				last = last->next;
+
+			parent_hdr->child->prev = last;
+			last->next = parent_hdr->child;
+		}
+
+		parent_hdr->child = hdr->child;
+	}
+
+	hdr->child->parent = parent_hdr;
+	hdr->child = NULL;
+}
+EXPORT_SYMBOL(talloc_steal_children);
+
+size_t talloc_total_blocks(const void *mem)
+{
+	struct talloc *hdr = mem2hdr(mem);
+	size_t nblocks = 0;
+
+	if (ZERO_OR_NULL_PTR(hdr))
+		return 0;
+
+	nblocks++;
+
+	for (hdr = hdr->child; hdr; hdr = hdr->next)
+		nblocks++;
+
+	return nblocks;
+}
+EXPORT_SYMBOL(talloc_total_blocks);
diff --git a/lib/xfuncs.c b/lib/xfuncs.c
index 4c694513050e..c34605072411 100644
--- a/lib/xfuncs.c
+++ b/lib/xfuncs.c
@@ -19,6 +19,7 @@
 
 #include <common.h>
 #include <malloc.h>
+#include <talloc.h>
 #include <module.h>
 #include <wchar.h>
 
@@ -44,6 +45,17 @@ void *xmalloc(size_t size)
 }
 EXPORT_SYMBOL(xmalloc);
 
+void *xtalloc_size(const void *parent, size_t size)
+{
+	void *p = NULL;
+
+	if (!(p = talloc_size(parent, size)))
+		enomem_panic(size);
+
+	return p;
+}
+EXPORT_SYMBOL(xtalloc_size);
+
 void *xrealloc(void *ptr, size_t size)
 {
 	void *p = NULL;
@@ -63,6 +75,14 @@ void *xzalloc(size_t size)
 }
 EXPORT_SYMBOL(xzalloc);
 
+void *xtalloc_zero_size(const void *parent, size_t size)
+{
+	void *ptr = xtalloc_size(parent, size);
+	memset(ptr, 0, size);
+	return ptr;
+}
+EXPORT_SYMBOL(xtalloc_zero_size);
+
 char *xstrdup(const char *s)
 {
 	char *p;
-- 
2.47.3



