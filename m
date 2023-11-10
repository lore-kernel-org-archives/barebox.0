Delivery-date: Fri, 10 Nov 2023 22:46:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1ZKF-006U2u-2A
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 22:46:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1ZKE-0004ub-RX
	for lore@pengutronix.de; Fri, 10 Nov 2023 22:46:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FZYoMNfzkiJarbv1l8GJNo7WsvtmzAfsfyeRseaDzhI=; b=kqKTNaTJZCw7cErHTAL+6nzOrK
	vAXuEDvA0PDpeXT0xtaOJcIryvCfc1Lk39szp4KO1ReuOL2xeBJt2YWM0OZ5JtV2zLQ4vwzc8m9Ek
	UZhBK4Yx6SZc/anz1Zrvu0uYoRkLGXTO8qGd/W58SbfwQeKbMES4LBs9Q5pOrr6wQL8BI723DJPVZ
	gerQ0D7pTonVRT1L330Gmk/nIU0YwfHOmN9h7I0CZWXqBThRrpiB4lZsNNUo0er66Ds9rbpyd9unW
	wD0qQcQqYxIXH7YwxZOO7nSO1CHTgBaAkgOsgd4hRSdZS+CxfnHiH3VtIy/YCwzXtCTG9C2UC8g91
	SefYwunA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1ZIw-009UHQ-0T;
	Fri, 10 Nov 2023 21:44:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1ZIl-009UC7-0V
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 21:44:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1ZIe-0004Cy-Kp; Fri, 10 Nov 2023 22:44:24 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1ZIe-0086yD-85; Fri, 10 Nov 2023 22:44:24 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1ZIe-00BRGz-0T;
	Fri, 10 Nov 2023 22:44:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 10 Nov 2023 22:44:05 +0100
Message-Id: <20231110214421.2726093-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
References: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_134432_096077_B45C961D 
X-CRM114-Status: GOOD (  34.07  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 02/18] include: add linux/refcount.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For complex interactions, especially in communication protocols, it can
be beneficial to keep the reference counts used in the Linux drivers as
is to avoid resource leaks or use-after-frees.

Provide a simplified kref and refcount API to facilitate this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/asm-generic/cmpxchg-local.h |  64 +++++++
 include/asm-generic/cmpxchg.h       |  26 +++
 include/linux/atomic.h              |  63 +++++++
 include/linux/kref.h                |  90 +++++++++
 include/linux/refcount.h            | 271 ++++++++++++++++++++++++++++
 lib/Makefile                        |   1 +
 lib/refcount.c                      |  34 ++++
 7 files changed, 549 insertions(+)
 create mode 100644 include/asm-generic/cmpxchg-local.h
 create mode 100644 include/asm-generic/cmpxchg.h
 create mode 100644 include/linux/kref.h
 create mode 100644 include/linux/refcount.h
 create mode 100644 lib/refcount.c

diff --git a/include/asm-generic/cmpxchg-local.h b/include/asm-generic/cmpxchg-local.h
new file mode 100644
index 000000000000..d93b103d5ca2
--- /dev/null
+++ b/include/asm-generic/cmpxchg-local.h
@@ -0,0 +1,64 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_GENERIC_CMPXCHG_LOCAL_H
+#define __ASM_GENERIC_CMPXCHG_LOCAL_H
+
+#include <linux/types.h>
+#include <linux/compiler.h>
+
+extern unsigned long wrong_size_cmpxchg(volatile void *ptr)
+	__noreturn;
+
+/*
+ * Generic version of __cmpxchg_local (disables interrupts). Takes an unsigned
+ * long parameter, supporting various types of architectures.
+ */
+static inline unsigned long __generic_cmpxchg_local(volatile void *ptr,
+		unsigned long old, unsigned long new, int size)
+{
+	unsigned long prev;
+
+	/*
+	 * Sanity checking, compile-time.
+	 */
+	if (size == 8 && sizeof(unsigned long) != 8)
+		wrong_size_cmpxchg(ptr);
+
+	switch (size) {
+	case 1: prev = *(u8 *)ptr;
+		if (prev == old)
+			*(u8 *)ptr = (u8)new;
+		break;
+	case 2: prev = *(u16 *)ptr;
+		if (prev == old)
+			*(u16 *)ptr = (u16)new;
+		break;
+	case 4: prev = *(u32 *)ptr;
+		if (prev == old)
+			*(u32 *)ptr = (u32)new;
+		break;
+	case 8: prev = *(u64 *)ptr;
+		if (prev == old)
+			*(u64 *)ptr = (u64)new;
+		break;
+	default:
+		wrong_size_cmpxchg(ptr);
+	}
+	return prev;
+}
+
+/*
+ * Generic version of __cmpxchg64_local. Takes an u64 parameter.
+ */
+static inline u64 __generic_cmpxchg64_local(volatile void *ptr,
+		u64 old, u64 new)
+{
+	u64 prev;
+
+	prev = *(u64 *)ptr;
+	if (prev == old)
+		*(u64 *)ptr = new;
+
+	return prev;
+}
+
+#endif
diff --git a/include/asm-generic/cmpxchg.h b/include/asm-generic/cmpxchg.h
new file mode 100644
index 000000000000..b90524135efe
--- /dev/null
+++ b/include/asm-generic/cmpxchg.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Generic non-atomic cmpxchg for porting kernel code.
+ */
+
+#ifndef __ASM_GENERIC_CMPXCHG_H
+#define __ASM_GENERIC_CMPXCHG_H
+
+#ifdef CONFIG_SMP
+#error "Cannot use generic cmpxchg on SMP"
+#endif
+
+#include <asm-generic/cmpxchg-local.h>
+
+#define generic_cmpxchg_local(ptr, o, n) ({					\
+	((__typeof__(*(ptr)))__generic_cmpxchg_local((ptr), (unsigned long)(o),	\
+			(unsigned long)(n), sizeof(*(ptr))));			\
+})
+
+#define generic_cmpxchg64_local(ptr, o, n) \
+	__generic_cmpxchg64_local((ptr), (o), (n))
+
+#define cmpxchg		generic_cmpxchg_local
+#define cmpxchg64	generic_cmpxchg64_local
+
+#endif
diff --git a/include/linux/atomic.h b/include/linux/atomic.h
index 9304ab4a34ba..c7bdf5857ce8 100644
--- a/include/linux/atomic.h
+++ b/include/linux/atomic.h
@@ -3,5 +3,68 @@
 #define LINUX_ATOMIC_H_
 
 #include <asm-generic/atomic.h>
+#include <linux/compiler.h>
+#include <asm-generic/cmpxchg.h>
+
+#define raw_cmpxchg_relaxed cmpxchg
+
+/**
+ * raw_atomic_cmpxchg_relaxed() - atomic compare and exchange with relaxed ordering
+ * @v: pointer to atomic_t
+ * @old: int value to compare with
+ * @new: int value to assign
+ *
+ * If (@v == @old), atomically updates @v to @new with relaxed ordering.
+ *
+ * Safe to use in noinstr code; prefer atomic_cmpxchg_relaxed() elsewhere.
+ *
+ * Return: The original value of @v.
+ */
+static __always_inline int
+raw_atomic_cmpxchg_relaxed(atomic_t *v, int old, int new)
+{
+	return raw_cmpxchg_relaxed(&v->counter, old, new);
+}
+
+/**
+ * atomic_try_cmpxchg_relaxed() - atomic compare and exchange with relaxed ordering
+ * @v: pointer to atomic_t
+ * @old: pointer to int value to compare with
+ * @new: int value to assign
+ *
+ * If (@v == @old), atomically updates @v to @new with relaxed ordering.
+ * Otherwise, updates @old to the current value of @v.
+ *
+ * Return: @true if the exchange occured, @false otherwise.
+ */
+static __always_inline bool
+atomic_try_cmpxchg_relaxed(atomic_t *v, int *old, int new)
+{
+	int r, o = *old;
+	r = raw_atomic_cmpxchg_relaxed(v, o, new);
+	if (unlikely(r != o))
+		*old = r;
+	return likely(r == o);
+}
+
+/**
+ * atomic_fetch_add() - atomic add
+ * @i: int value to add
+ * @v: pointer to atomic_t
+ *
+ * Atomically updates @v to (@v + @i).
+ *
+ * Return: The original value of @v.
+ */
+static __always_inline int
+atomic_fetch_add(int i, atomic_t *v)
+{
+	int old = v->counter;
+	v->counter += i;
+	return old;
+}
+#define atomic_fetch_add_relaxed atomic_fetch_add
+#define atomic_fetch_sub(i, v) atomic_fetch_add(-i, v)
+#define atomic_fetch_sub_release atomic_fetch_sub
 
 #endif
diff --git a/include/linux/kref.h b/include/linux/kref.h
new file mode 100644
index 000000000000..6add3d91da95
--- /dev/null
+++ b/include/linux/kref.h
@@ -0,0 +1,90 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * kref.h - library routines for handling generic reference counted objects
+ *
+ * Copyright (C) 2004 Greg Kroah-Hartman <greg@kroah.com>
+ * Copyright (C) 2004 IBM Corp.
+ *
+ * based on kobject.h which was:
+ * Copyright (C) 2002-2003 Patrick Mochel <mochel@osdl.org>
+ * Copyright (C) 2002-2003 Open Source Development Labs
+ */
+
+#ifndef _KREF_H_
+#define _KREF_H_
+
+#include <linux/refcount.h>
+
+struct kref {
+	refcount_t refcount;
+};
+
+#define KREF_INIT(n)	{ .refcount = REFCOUNT_INIT(n), }
+
+/**
+ * kref_init - initialize object.
+ * @kref: object in question.
+ */
+static inline void kref_init(struct kref *kref)
+{
+	refcount_set(&kref->refcount, 1);
+}
+
+static inline unsigned int kref_read(const struct kref *kref)
+{
+	return refcount_read(&kref->refcount);
+}
+
+/**
+ * kref_get - increment refcount for object.
+ * @kref: object.
+ */
+static inline void kref_get(struct kref *kref)
+{
+	refcount_inc(&kref->refcount);
+}
+
+/**
+ * kref_put - decrement refcount for object.
+ * @kref: object.
+ * @release: pointer to the function that will clean up the object when the
+ *	     last reference to the object is released.
+ *	     This pointer is required, and it is not acceptable to pass kfree
+ *	     in as this function.
+ *
+ * Decrement the refcount, and if 0, call release().
+ * Return 1 if the object was removed, otherwise return 0.  Beware, if this
+ * function returns 0, you still can not count on the kref from remaining in
+ * memory.  Only use the return value if you want to see if the kref is now
+ * gone, not present.
+ */
+static inline int kref_put(struct kref *kref, void (*release)(struct kref *kref))
+{
+	if (refcount_dec_and_test(&kref->refcount)) {
+		release(kref);
+		return 1;
+	}
+	return 0;
+}
+
+/**
+ * kref_get_unless_zero - Increment refcount for object unless it is zero.
+ * @kref: object.
+ *
+ * Return non-zero if the increment succeeded. Otherwise return 0.
+ *
+ * This function is intended to simplify locking around refcounting for
+ * objects that can be looked up from a lookup structure, and which are
+ * removed from that lookup structure in the object destructor.
+ * Operations on such objects require at least a read lock around
+ * lookup + kref_get, and a write lock around kref_put + remove from lookup
+ * structure. Furthermore, RCU implementations become extremely tricky.
+ * With a lookup followed by a kref_get_unless_zero *with return value check*
+ * locking in the kref_put path can be deferred to the actual removal from
+ * the lookup structure and RCU lookups become trivial.
+ */
+static inline int __must_check kref_get_unless_zero(struct kref *kref)
+{
+	return refcount_inc_not_zero(&kref->refcount);
+}
+#endif /* _KREF_H_ */
diff --git a/include/linux/refcount.h b/include/linux/refcount.h
new file mode 100644
index 000000000000..81eed1bbadb3
--- /dev/null
+++ b/include/linux/refcount.h
@@ -0,0 +1,271 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef _LINUX_REFCOUNT_H
+#define _LINUX_REFCOUNT_H
+
+#include <linux/atomic.h>
+#include <linux/bug.h>
+#include <linux/compiler.h>
+#include <linux/limits.h>
+
+/**
+ * typedef refcount_t - variant of atomic_t specialized for reference counts
+ * @refs: atomic_t counter field
+ *
+ * The counter saturates at REFCOUNT_SATURATED and will not move once
+ * there. This avoids wrapping the counter and causing 'spurious'
+ * use-after-free bugs.
+ */
+typedef struct refcount_struct {
+	atomic_t refs;
+} refcount_t;
+
+#define REFCOUNT_INIT(n)	{ .refs = ATOMIC_INIT(n), }
+#define REFCOUNT_MAX		INT_MAX
+#define REFCOUNT_SATURATED	(INT_MIN / 2)
+
+enum refcount_saturation_type {
+	REFCOUNT_ADD_NOT_ZERO_OVF,
+	REFCOUNT_ADD_OVF,
+	REFCOUNT_ADD_UAF,
+	REFCOUNT_SUB_UAF,
+	REFCOUNT_DEC_LEAK,
+};
+
+void refcount_warn_saturate(refcount_t *r, enum refcount_saturation_type t);
+
+/**
+ * refcount_set - set a refcount's value
+ * @r: the refcount
+ * @n: value to which the refcount will be set
+ */
+static inline void refcount_set(refcount_t *r, int n)
+{
+	atomic_set(&r->refs, n);
+}
+
+/**
+ * refcount_read - get a refcount's value
+ * @r: the refcount
+ *
+ * Return: the refcount's value
+ */
+static inline unsigned int refcount_read(const refcount_t *r)
+{
+	return atomic_read(&r->refs);
+}
+
+static inline __must_check bool __refcount_add_not_zero(int i, refcount_t *r, int *oldp)
+{
+	int old = refcount_read(r);
+
+	do {
+		if (!old)
+			break;
+	} while (!atomic_try_cmpxchg_relaxed(&r->refs, &old, old + i));
+
+	if (oldp)
+		*oldp = old;
+
+	if (unlikely(old < 0 || old + i < 0))
+		refcount_warn_saturate(r, REFCOUNT_ADD_NOT_ZERO_OVF);
+
+	return old;
+}
+
+/**
+ * refcount_add_not_zero - add a value to a refcount unless it is 0
+ * @i: the value to add to the refcount
+ * @r: the refcount
+ *
+ * Will saturate at REFCOUNT_SATURATED and WARN.
+ *
+ * Provides no memory ordering, it is assumed the caller has guaranteed the
+ * object memory to be stable (RCU, etc.). It does provide a control dependency
+ * and thereby orders future stores. See the comment on top.
+ *
+ * Use of this function is not recommended for the normal reference counting
+ * use case in which references are taken and released one at a time.  In these
+ * cases, refcount_inc(), or one of its variants, should instead be used to
+ * increment a reference count.
+ *
+ * Return: false if the passed refcount is 0, true otherwise
+ */
+static inline __must_check bool refcount_add_not_zero(int i, refcount_t *r)
+{
+	return __refcount_add_not_zero(i, r, NULL);
+}
+
+static inline void __refcount_add(int i, refcount_t *r, int *oldp)
+{
+	int old = atomic_fetch_add_relaxed(i, &r->refs);
+
+	if (oldp)
+		*oldp = old;
+
+	if (unlikely(!old))
+		refcount_warn_saturate(r, REFCOUNT_ADD_UAF);
+	else if (unlikely(old < 0 || old + i < 0))
+		refcount_warn_saturate(r, REFCOUNT_ADD_OVF);
+}
+
+/**
+ * refcount_add - add a value to a refcount
+ * @i: the value to add to the refcount
+ * @r: the refcount
+ *
+ * Similar to atomic_add(), but will saturate at REFCOUNT_SATURATED and WARN.
+ *
+ * Provides no memory ordering, it is assumed the caller has guaranteed the
+ * object memory to be stable (RCU, etc.). It does provide a control dependency
+ * and thereby orders future stores. See the comment on top.
+ *
+ * Use of this function is not recommended for the normal reference counting
+ * use case in which references are taken and released one at a time.  In these
+ * cases, refcount_inc(), or one of its variants, should instead be used to
+ * increment a reference count.
+ */
+static inline void refcount_add(int i, refcount_t *r)
+{
+	__refcount_add(i, r, NULL);
+}
+
+static inline __must_check bool __refcount_inc_not_zero(refcount_t *r, int *oldp)
+{
+	return __refcount_add_not_zero(1, r, oldp);
+}
+
+/**
+ * refcount_inc_not_zero - increment a refcount unless it is 0
+ * @r: the refcount to increment
+ *
+ * Similar to atomic_inc_not_zero(), but will saturate at REFCOUNT_SATURATED
+ * and WARN.
+ *
+ * Provides no memory ordering, it is assumed the caller has guaranteed the
+ * object memory to be stable (RCU, etc.). It does provide a control dependency
+ * and thereby orders future stores. See the comment on top.
+ *
+ * Return: true if the increment was successful, false otherwise
+ */
+static inline __must_check bool refcount_inc_not_zero(refcount_t *r)
+{
+	return __refcount_inc_not_zero(r, NULL);
+}
+
+static inline void __refcount_inc(refcount_t *r, int *oldp)
+{
+	__refcount_add(1, r, oldp);
+}
+
+/**
+ * refcount_inc - increment a refcount
+ * @r: the refcount to increment
+ *
+ * Similar to atomic_inc(), but will saturate at REFCOUNT_SATURATED and WARN.
+ *
+ * Provides no memory ordering, it is assumed the caller already has a
+ * reference on the object.
+ *
+ * Will WARN if the refcount is 0, as this represents a possible use-after-free
+ * condition.
+ */
+static inline void refcount_inc(refcount_t *r)
+{
+	__refcount_inc(r, NULL);
+}
+
+static inline __must_check bool __refcount_sub_and_test(int i, refcount_t *r, int *oldp)
+{
+	int old = atomic_fetch_sub_release(i, &r->refs);
+
+	if (oldp)
+		*oldp = old;
+
+	if (old == i)
+		return true;
+
+	if (unlikely(old < 0 || old - i < 0))
+		refcount_warn_saturate(r, REFCOUNT_SUB_UAF);
+
+	return false;
+}
+
+/**
+ * refcount_sub_and_test - subtract from a refcount and test if it is 0
+ * @i: amount to subtract from the refcount
+ * @r: the refcount
+ *
+ * Similar to atomic_dec_and_test(), but it will WARN, return false and
+ * ultimately leak on underflow and will fail to decrement when saturated
+ * at REFCOUNT_SATURATED.
+ *
+ * Provides release memory ordering, such that prior loads and stores are done
+ * before, and provides an acquire ordering on success such that free()
+ * must come after.
+ *
+ * Use of this function is not recommended for the normal reference counting
+ * use case in which references are taken and released one at a time.  In these
+ * cases, refcount_dec(), or one of its variants, should instead be used to
+ * decrement a reference count.
+ *
+ * Return: true if the resulting refcount is 0, false otherwise
+ */
+static inline __must_check bool refcount_sub_and_test(int i, refcount_t *r)
+{
+	return __refcount_sub_and_test(i, r, NULL);
+}
+
+static inline __must_check bool __refcount_dec_and_test(refcount_t *r, int *oldp)
+{
+	return __refcount_sub_and_test(1, r, oldp);
+}
+
+/**
+ * refcount_dec_and_test - decrement a refcount and test if it is 0
+ * @r: the refcount
+ *
+ * Similar to atomic_dec_and_test(), it will WARN on underflow and fail to
+ * decrement when saturated at REFCOUNT_SATURATED.
+ *
+ * Provides release memory ordering, such that prior loads and stores are done
+ * before, and provides an acquire ordering on success such that free()
+ * must come after.
+ *
+ * Return: true if the resulting refcount is 0, false otherwise
+ */
+static inline __must_check bool refcount_dec_and_test(refcount_t *r)
+{
+	return __refcount_dec_and_test(r, NULL);
+}
+
+static inline void __refcount_dec(refcount_t *r, int *oldp)
+{
+	int old = atomic_fetch_sub_release(1, &r->refs);
+
+	if (oldp)
+		*oldp = old;
+
+	if (unlikely(old <= 1))
+		refcount_warn_saturate(r, REFCOUNT_DEC_LEAK);
+}
+
+/**
+ * refcount_dec - decrement a refcount
+ * @r: the refcount
+ *
+ * Similar to atomic_dec(), it will WARN on underflow and fail to decrement
+ * when saturated at REFCOUNT_SATURATED.
+ *
+ * Provides release memory ordering, such that prior loads and stores are done
+ * before.
+ */
+static inline void refcount_dec(refcount_t *r)
+{
+	__refcount_dec(r, NULL);
+}
+
+extern __must_check bool refcount_dec_if_one(refcount_t *r);
+extern __must_check bool refcount_dec_not_one(refcount_t *r);
+
+#endif /* _LINUX_REFCOUNT_H */
diff --git a/lib/Makefile b/lib/Makefile
index 2b577becc444..492dd53436ce 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -70,6 +70,7 @@ obj-$(CONFIG_BAREBOX_LOGO)     += logo/
 obj-y			+= reed_solomon/
 obj-$(CONFIG_RATP)	+= ratp.o
 obj-y			+= list_sort.o
+obj-y			+= refcount.o
 obj-y			+= int_sqrt.o
 obj-y			+= parseopt.o
 obj-y			+= clz_ctz.o
diff --git a/lib/refcount.c b/lib/refcount.c
new file mode 100644
index 000000000000..8c6f98b48032
--- /dev/null
+++ b/lib/refcount.c
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Out-of-line refcount functions.
+ */
+
+#include <linux/refcount.h>
+#include <linux/printk.h>
+
+#define REFCOUNT_WARN(str)	WARN_ONCE(1, "refcount_t: " str ".\n")
+
+void refcount_warn_saturate(refcount_t *r, enum refcount_saturation_type t)
+{
+	refcount_set(r, REFCOUNT_SATURATED);
+
+	switch (t) {
+	case REFCOUNT_ADD_NOT_ZERO_OVF:
+		REFCOUNT_WARN("saturated; leaking memory");
+		break;
+	case REFCOUNT_ADD_OVF:
+		REFCOUNT_WARN("saturated; leaking memory");
+		break;
+	case REFCOUNT_ADD_UAF:
+		REFCOUNT_WARN("addition on 0; use-after-free");
+		break;
+	case REFCOUNT_SUB_UAF:
+		REFCOUNT_WARN("underflow; use-after-free");
+		break;
+	case REFCOUNT_DEC_LEAK:
+		REFCOUNT_WARN("decrement hit 0; leaking memory");
+		break;
+	default:
+		REFCOUNT_WARN("unknown saturation event!?");
+	}
+}
-- 
2.39.2



