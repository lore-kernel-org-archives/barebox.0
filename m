Delivery-date: Fri, 06 Jun 2025 10:59:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNSuw-004K87-0X
	for lore@lore.pengutronix.de;
	Fri, 06 Jun 2025 10:59:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNSuq-0003hK-FE
	for lore@pengutronix.de; Fri, 06 Jun 2025 10:59:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q8cOSBwUzUawfXXRp8vA/DnRlsEU2s4SKVS2j/mQmmY=; b=J7IRcpUCoj5gQ39NtI6yqsH1iA
	t6OsQLSA1Wi3eRygEXiotmIMYcpBbDLAUU0pUMa+I2hwiqviw0pIeAryDZX6zibAg+DpfOWdxfOPf
	1eiEcZsglvhV0nD7tub4vRtipN+iQRkJcoFJpvomZdQrKwQR25KXSnw8DN/pkQYn3sY7QOvFRLRZd
	SFZK6xoMNtjZz80J5tqxdrRPeFZa+0SzvRbpnzqmGfUPgkvpbkDQS0ryDsS7ilTOQ6z9YS0VVDwF5
	dtxBXz5pB6PO+UhFogB69DwYXMIpPbIUAf0m3kEy/jY5mZUi4IFdDR/xQ4QHHjHJ+GnyLhvSOtkdZ
	UkFsA0Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNSu8-0000000HSPI-01EF;
	Fri, 06 Jun 2025 08:58:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNSu0-0000000HSK9-3KXj
	for barebox@lists.infradead.org;
	Fri, 06 Jun 2025 08:58:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNStz-0002si-Fb; Fri, 06 Jun 2025 10:58:15 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  6 Jun 2025 10:58:07 +0200
Message-Id: <20250606085813.2183260-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250606085813.2183260-1-a.fatoum@barebox.org>
References: <20250606085813.2183260-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250606_015817_139622_2607EFCA 
X-CRM114-Status: GOOD (  34.56  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/10] lib: add iov_iter I/O vector iterator support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I/O vector iterators are a frequent sight in Linux file system drivers
and are also used in the incoming 9PFS support, so provide the
definitions in barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/linux/uio.h      | 305 +++++++++++++++++++++++++++++++++++++++
 include/uapi/linux/uio.h |  23 +++
 lib/Makefile             |   1 +
 lib/iov_iter.c           | 245 +++++++++++++++++++++++++++++++
 4 files changed, 574 insertions(+)
 create mode 100644 include/linux/uio.h
 create mode 100644 include/uapi/linux/uio.h
 create mode 100644 lib/iov_iter.c

diff --git a/include/linux/uio.h b/include/linux/uio.h
new file mode 100644
index 000000000000..8724c04a4acb
--- /dev/null
+++ b/include/linux/uio.h
@@ -0,0 +1,305 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ *	Berkeley style UIO structures	-	Alan Cox 1994.
+ */
+#ifndef __LINUX_UIO_H
+#define __LINUX_UIO_H
+
+#include <linux/kernel.h>
+#include <uapi/linux/uio.h>
+
+struct page;
+
+typedef unsigned int __bitwise iov_iter_extraction_t;
+
+struct kvec {
+	void *iov_base; /* and that should *never* hold a userland pointer */
+	size_t iov_len;
+};
+
+enum iter_type {
+	/* iter types */
+	ITER_KVEC,
+};
+
+#define ITER_SOURCE	1	// == WRITE
+#define ITER_DEST	0	// == READ
+
+struct iov_iter_state {
+	size_t iov_offset;
+	size_t count;
+	unsigned long nr_segs;
+};
+
+struct iov_iter {
+	u8 iter_type;
+	bool nofault;
+	bool data_source;
+	size_t iov_offset;
+	struct {
+		union {
+			/* use iter_iov() to get the current vec */
+			const struct iovec *__iov;
+			const struct kvec *kvec;
+		};
+		size_t count;
+	};
+	unsigned long nr_segs;
+};
+
+static inline const struct iovec *iter_iov(const struct iov_iter *iter)
+{
+	return iter->__iov;
+}
+
+static inline enum iter_type iov_iter_type(const struct iov_iter *i)
+{
+	return i->iter_type;
+}
+
+static inline void iov_iter_save_state(struct iov_iter *iter,
+				       struct iov_iter_state *state)
+{
+	state->iov_offset = iter->iov_offset;
+	state->count = iter->count;
+	state->nr_segs = iter->nr_segs;
+}
+
+static inline bool iter_is_iovec(const struct iov_iter *i)
+{
+	return false;
+}
+
+static inline bool iov_iter_is_kvec(const struct iov_iter *i)
+{
+	return iov_iter_type(i) == ITER_KVEC;
+}
+
+/*
+ * Total number of bytes covered by an iovec.
+ *
+ * NOTE that it is not safe to use this function until all the iovec's
+ * segment lengths have been validated.  Because the individual lengths can
+ * overflow a size_t when added together.
+ */
+static inline size_t iov_length(const struct iovec *iov, unsigned long nr_segs)
+{
+	unsigned long seg;
+	size_t ret = 0;
+
+	for (seg = 0; seg < nr_segs; seg++)
+		ret += iov[seg].iov_len;
+	return ret;
+}
+
+void iov_iter_advance(struct iov_iter *i, size_t bytes);
+void iov_iter_revert(struct iov_iter *i, size_t bytes);
+size_t fault_in_iov_iter_readable(const struct iov_iter *i, size_t bytes);
+size_t fault_in_iov_iter_writeable(const struct iov_iter *i, size_t bytes);
+size_t iov_iter_single_seg_count(const struct iov_iter *i);
+
+__must_check size_t copy_to_iter(const void *addr, size_t bytes, struct iov_iter *i);
+__must_check size_t copy_from_iter(void *addr, size_t bytes, struct iov_iter *i);
+__must_check size_t copy_from_iter_nocache(void *addr, size_t bytes, struct iov_iter *i);
+
+static __always_inline __must_check
+bool copy_to_iter_full(const void *addr, size_t bytes, struct iov_iter *i)
+{
+	size_t copied = copy_to_iter(addr, bytes, i);
+	if (likely(copied == bytes))
+		return true;
+	iov_iter_revert(i, copied);
+	return false;
+}
+
+static __always_inline __must_check
+bool copy_from_iter_full(void *addr, size_t bytes, struct iov_iter *i)
+{
+	size_t copied = copy_from_iter(addr, bytes, i);
+	if (likely(copied == bytes))
+		return true;
+	iov_iter_revert(i, copied);
+	return false;
+}
+
+static __always_inline __must_check
+bool copy_from_iter_full_nocache(void *addr, size_t bytes, struct iov_iter *i)
+{
+	size_t copied = copy_from_iter_nocache(addr, bytes, i);
+	if (likely(copied == bytes))
+		return true;
+	iov_iter_revert(i, copied);
+	return false;
+}
+
+size_t iov_iter_zero(size_t bytes, struct iov_iter *);
+bool iov_iter_is_aligned(const struct iov_iter *i, unsigned addr_mask,
+			unsigned len_mask);
+unsigned long iov_iter_alignment(const struct iov_iter *i);
+unsigned long iov_iter_gap_alignment(const struct iov_iter *i);
+void iov_iter_kvec(struct iov_iter *i, unsigned int direction, const struct kvec *kvec,
+			unsigned long nr_segs, size_t count);
+int iov_iter_npages(const struct iov_iter *i, int maxpages);
+
+const void *dup_iter(struct iov_iter *new, struct iov_iter *old, gfp_t flags);
+
+static inline size_t iov_iter_count(const struct iov_iter *i)
+{
+	return i->count;
+}
+
+/*
+ * Cap the iov_iter by given limit; note that the second argument is
+ * *not* the new size - it's upper limit for such.  Passing it a value
+ * greater than the amount of data in iov_iter is fine - it'll just do
+ * nothing in that case.
+ */
+static inline void iov_iter_truncate(struct iov_iter *i, u64 count)
+{
+	/*
+	 * count doesn't have to fit in size_t - comparison extends both
+	 * operands to u64 here and any value that would be truncated by
+	 * conversion in assignement is by definition greater than all
+	 * values of size_t, including old i->count.
+	 */
+	if (i->count > count)
+		i->count = count;
+}
+
+/*
+ * reexpand a previously truncated iterator; count must be no more than how much
+ * we had shrunk it.
+ */
+static inline void iov_iter_reexpand(struct iov_iter *i, size_t count)
+{
+	i->count = count;
+}
+
+static inline int
+iov_iter_npages_cap(struct iov_iter *i, int maxpages, size_t max_bytes)
+{
+	size_t shorted = 0;
+	int npages;
+
+	if (iov_iter_count(i) > max_bytes) {
+		shorted = iov_iter_count(i) - max_bytes;
+		iov_iter_truncate(i, max_bytes);
+	}
+	npages = iov_iter_npages(i, maxpages);
+	if (shorted)
+		iov_iter_reexpand(i, iov_iter_count(i) + shorted);
+
+	return npages;
+}
+
+struct iovec *iovec_from_user(const struct iovec __user *uvector,
+		unsigned long nr_segs, unsigned long fast_segs,
+		struct iovec *fast_iov, bool compat);
+ssize_t import_iovec(int type, const struct iovec __user *uvec,
+		 unsigned nr_segs, unsigned fast_segs, struct iovec **iovp,
+		 struct iov_iter *i);
+ssize_t __import_iovec(int type, const struct iovec __user *uvec,
+		 unsigned nr_segs, unsigned fast_segs, struct iovec **iovp,
+		 struct iov_iter *i, bool compat);
+
+struct sg_table;
+ssize_t extract_iter_to_sg(struct iov_iter *iter, size_t len,
+			   struct sg_table *sgtable, unsigned int sg_max,
+			   iov_iter_extraction_t extraction_flags);
+
+typedef size_t (*iov_step_f)(void *iter_base, size_t progress, size_t len,
+			     void *priv, void *priv2);
+typedef size_t (*iov_ustep_f)(void __user *iter_base, size_t progress, size_t len,
+			      void *priv, void *priv2);
+
+/*
+ * Handle ITER_KVEC.
+ */
+static __always_inline
+size_t iterate_kvec(struct iov_iter *iter, size_t len, void *priv, void *priv2,
+		    iov_step_f step)
+{
+	const struct kvec *p = iter->kvec;
+	size_t progress = 0, skip = iter->iov_offset;
+
+	do {
+		size_t remain, consumed;
+		size_t part = min(len, p->iov_len - skip);
+
+		if (likely(part)) {
+			remain = step(p->iov_base + skip, progress, part, priv, priv2);
+			consumed = part - remain;
+			progress += consumed;
+			skip += consumed;
+			len -= consumed;
+			if (skip < p->iov_len)
+				break;
+		}
+		p++;
+		skip = 0;
+	} while (len);
+
+	iter->nr_segs -= p - iter->kvec;
+	iter->kvec = p;
+	iter->iov_offset = skip;
+	iter->count -= progress;
+	return progress;
+}
+
+/**
+ * iterate_and_advance2 - Iterate over an iterator
+ * @iter: The iterator to iterate over.
+ * @len: The amount to iterate over.
+ * @priv: Data for the step functions.
+ * @priv2: More data for the step functions.
+ * @ustep: Function for UBUF/IOVEC iterators; given __user addresses.
+ * @step: Function for other iterators; given kernel addresses.
+ *
+ * Iterate over the next part of an iterator, up to the specified length.  The
+ * buffer is presented in segments, which for kernel iteration are broken up by
+ * physical pages and mapped, with the mapped address being presented.
+ *
+ * Two step functions, @step and @ustep, must be provided, one for handling
+ * mapped kernel addresses and the other is given user addresses which have the
+ * potential to fault since no pinning is performed.
+ *
+ * The step functions are passed the address and length of the segment, @priv,
+ * @priv2 and the amount of data so far iterated over (which can, for example,
+ * be added to @priv to point to the right part of a second buffer).  The step
+ * functions should return the amount of the segment they didn't process (ie. 0
+ * indicates complete processsing).
+ *
+ * This function returns the amount of data processed (ie. 0 means nothing was
+ * processed and the value of @len means processes to completion).
+ */
+static __always_inline
+size_t iterate_and_advance2(struct iov_iter *iter, size_t len, void *priv,
+			    void *priv2, iov_ustep_f ustep, iov_step_f step)
+{
+	if (unlikely(iter->count < len))
+		len = iter->count;
+	if (unlikely(!len))
+		return 0;
+
+	return iterate_kvec(iter, len, priv, priv2, step);
+}
+
+
+/**
+ * iterate_and_advance - Iterate over an iterator
+ * @iter: The iterator to iterate over.
+ * @len: The amount to iterate over.
+ * @priv: Data for the step functions.
+ * @ustep: Function for UBUF/IOVEC iterators; given __user addresses.
+ * @step: Function for other iterators; given kernel addresses.
+ *
+ * As iterate_and_advance2(), but priv2 is always NULL.
+ */
+static __always_inline
+size_t iterate_and_advance(struct iov_iter *iter, size_t len, void *priv,
+			   iov_ustep_f ustep, iov_step_f step)
+{
+	return iterate_and_advance2(iter, len, priv, NULL, ustep, step);
+}
+
+#endif
diff --git a/include/uapi/linux/uio.h b/include/uapi/linux/uio.h
new file mode 100644
index 000000000000..1edb1422a786
--- /dev/null
+++ b/include/uapi/linux/uio.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0+ WITH Linux-syscall-note */
+/*
+ *	Berkeley style UIO structures	-	Alan Cox 1994.
+ *
+ *		This program is free software; you can redistribute it and/or
+ *		modify it under the terms of the GNU General Public License
+ *		as published by the Free Software Foundation; either version
+ *		2 of the License, or (at your option) any later version.
+ */
+#ifndef _UAPI__LINUX_UIO_H
+#define _UAPI__LINUX_UIO_H
+
+#include <linux/compiler.h>
+#include <linux/types.h>
+
+
+struct iovec
+{
+	void __user *iov_base;	/* BSD uses caddr_t (1003.1g requires void *) */
+	__kernel_size_t iov_len; /* Must be size_t (1003.1g) */
+};
+
+#endif /* _UAPI__LINUX_UIO_H */
diff --git a/lib/Makefile b/lib/Makefile
index 0d1d22c0845b..a1ca2803a095 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -32,6 +32,7 @@ obj-y			+= recursive_action.o
 obj-y			+= make_directory.o
 obj-y			+= arith.o
 obj-$(CONFIG_IDR)	+= idr.o
+obj-y			+= iov_iter.o
 obj-y			+= math/
 obj-y			+= uuid.o
 obj-$(CONFIG_XXHASH)	+= xxhash.o
diff --git a/lib/iov_iter.c b/lib/iov_iter.c
new file mode 100644
index 000000000000..d8b6efb73920
--- /dev/null
+++ b/lib/iov_iter.c
@@ -0,0 +1,245 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <linux/export.h>
+#include <linux/uio.h>
+#include <linux/pagemap.h>
+#include <linux/slab.h>
+#include <linux/scatterlist.h>
+#include <linux/uaccess.h>
+
+#define MAX_RW_COUNT (INT_MAX & PAGE_MASK)
+
+static __always_inline
+size_t copy_to_user_iter(void __user *iter_to, size_t progress,
+			 size_t len, void *from, void *priv2)
+{
+	if (access_ok(iter_to, len)) {
+		from += progress;
+		len = raw_copy_to_user(iter_to, from, len);
+	}
+	return len;
+}
+
+static __always_inline
+size_t copy_from_user_iter(void __user *iter_from, size_t progress,
+			   size_t len, void *to, void *priv2)
+{
+	size_t res = len;
+
+	if (access_ok(iter_from, len)) {
+		to += progress;
+		res = raw_copy_from_user(to, iter_from, len);
+	}
+	return res;
+}
+
+static __always_inline
+size_t memcpy_to_iter(void *iter_to, size_t progress,
+		      size_t len, void *from, void *priv2)
+{
+	memcpy(iter_to, from + progress, len);
+	return 0;
+}
+
+static __always_inline
+size_t memcpy_from_iter(void *iter_from, size_t progress,
+			size_t len, void *to, void *priv2)
+{
+	memcpy(to + progress, iter_from, len);
+	return 0;
+}
+
+static __always_inline
+size_t zero_to_user_iter(void __user *iter_to, size_t progress,
+			 size_t len, void *priv, void *priv2)
+{
+	return clear_user(iter_to, len);
+}
+
+static __always_inline
+size_t zero_to_iter(void *iter_to, size_t progress,
+		    size_t len, void *priv, void *priv2)
+{
+	memset(iter_to, 0, len);
+	return 0;
+}
+
+static void iov_iter_iovec_advance(struct iov_iter *i, size_t size)
+{
+	const struct iovec *iov, *end;
+
+	if (!i->count)
+		return;
+	i->count -= size;
+
+	size += i->iov_offset; // from beginning of current segment
+	for (iov = iter_iov(i), end = iov + i->nr_segs; iov < end; iov++) {
+		if (likely(size < iov->iov_len))
+			break;
+		size -= iov->iov_len;
+	}
+	i->iov_offset = size;
+	i->nr_segs -= iov - iter_iov(i);
+	i->__iov = iov;
+}
+
+void iov_iter_advance(struct iov_iter *i, size_t size)
+{
+	if (unlikely(i->count < size))
+		size = i->count;
+	if (likely(iter_is_iovec(i) || iov_iter_is_kvec(i))) {
+		/* iovec and kvec have identical layouts */
+		iov_iter_iovec_advance(i, size);
+	}
+}
+EXPORT_SYMBOL(iov_iter_advance);
+
+void iov_iter_revert(struct iov_iter *i, size_t unroll)
+{
+	if (!unroll)
+		return;
+	if (WARN_ON(unroll > MAX_RW_COUNT))
+		return;
+	i->count += unroll;
+	if (unroll <= i->iov_offset) {
+		i->iov_offset -= unroll;
+		return;
+	}
+	unroll -= i->iov_offset;
+	/* same logics for iovec and kvec */
+	const struct iovec *iov = iter_iov(i);
+	while (1) {
+		size_t n = (--iov)->iov_len;
+		i->nr_segs++;
+		if (unroll <= n) {
+			i->__iov = iov;
+			i->iov_offset = n - unroll;
+			return;
+		}
+		unroll -= n;
+	}
+}
+EXPORT_SYMBOL(iov_iter_revert);
+
+/*
+ * Return the count of just the current iov_iter segment.
+ */
+size_t iov_iter_single_seg_count(const struct iov_iter *i)
+{
+	if (i->nr_segs > 1) {
+		if (likely(iter_is_iovec(i) || iov_iter_is_kvec(i)))
+			return min(i->count, iter_iov(i)->iov_len - i->iov_offset);
+	}
+	return i->count;
+}
+EXPORT_SYMBOL(iov_iter_single_seg_count);
+
+void iov_iter_kvec(struct iov_iter *i, unsigned int direction,
+			const struct kvec *kvec, unsigned long nr_segs,
+			size_t count)
+{
+	*i = (struct iov_iter){
+		.iter_type = ITER_KVEC,
+		.data_source = direction,
+		.kvec = kvec,
+		.nr_segs = nr_segs,
+		.iov_offset = 0,
+		.count = count
+	};
+}
+EXPORT_SYMBOL(iov_iter_kvec);
+
+static bool iov_iter_aligned_iovec(const struct iov_iter *i, unsigned addr_mask,
+				   unsigned len_mask)
+{
+	const struct iovec *iov = iter_iov(i);
+	size_t size = i->count;
+	size_t skip = i->iov_offset;
+
+	do {
+		size_t len = iov->iov_len - skip;
+
+		if (len > size)
+			len = size;
+		if (len & len_mask)
+			return false;
+		if ((unsigned long)(iov->iov_base + skip) & addr_mask)
+			return false;
+
+		iov++;
+		size -= len;
+		skip = 0;
+	} while (size);
+
+	return true;
+}
+
+/**
+ * iov_iter_is_aligned() - Check if the addresses and lengths of each segments
+ * 	are aligned to the parameters.
+ *
+ * @i: &struct iov_iter to restore
+ * @addr_mask: bit mask to check against the iov element's addresses
+ * @len_mask: bit mask to check against the iov element's lengths
+ *
+ * Return: false if any addresses or lengths intersect with the provided masks
+ */
+bool iov_iter_is_aligned(const struct iov_iter *i, unsigned addr_mask,
+			 unsigned len_mask)
+{
+	if (likely(iter_is_iovec(i) || iov_iter_is_kvec(i)))
+		return iov_iter_aligned_iovec(i, addr_mask, len_mask);
+
+	return true;
+}
+EXPORT_SYMBOL_GPL(iov_iter_is_aligned);
+
+static unsigned long iov_iter_alignment_iovec(const struct iov_iter *i)
+{
+	const struct iovec *iov = iter_iov(i);
+	unsigned long res = 0;
+	size_t size = i->count;
+	size_t skip = i->iov_offset;
+
+	do {
+		size_t len = iov->iov_len - skip;
+		if (len) {
+			res |= (unsigned long)iov->iov_base + skip;
+			if (len > size)
+				len = size;
+			res |= len;
+			size -= len;
+		}
+		iov++;
+		skip = 0;
+	} while (size);
+	return res;
+}
+
+unsigned long iov_iter_alignment(const struct iov_iter *i)
+{
+	/* iovec and kvec have identical layouts */
+	if (likely(iter_is_iovec(i) || iov_iter_is_kvec(i)))
+		return iov_iter_alignment_iovec(i);
+
+	return 0;
+}
+EXPORT_SYMBOL(iov_iter_alignment);
+
+size_t copy_to_iter(const void *addr, size_t bytes, struct iov_iter *i)
+{
+	if (WARN_ON_ONCE(i->data_source))
+		return 0;
+	return iterate_and_advance(i, bytes, (void *)addr,
+				   copy_to_user_iter, memcpy_to_iter);
+}
+EXPORT_SYMBOL(copy_to_iter);
+
+size_t copy_from_iter(void *addr, size_t bytes, struct iov_iter *i)
+{
+	if (WARN_ON_ONCE(!i->data_source))
+		return 0;
+
+	return iterate_and_advance(i, bytes, addr,
+				   copy_from_user_iter, memcpy_from_iter);
+}
+EXPORT_SYMBOL(copy_from_iter);
-- 
2.39.5



