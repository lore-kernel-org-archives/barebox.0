Delivery-date: Fri, 06 Jun 2025 10:59:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNSuy-004K8p-2l
	for lore@lore.pengutronix.de;
	Fri, 06 Jun 2025 10:59:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNSur-0003jl-TV
	for lore@pengutronix.de; Fri, 06 Jun 2025 10:59:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q+0CkQbfhEBUqDJbkvi6dfqtlp3hPsUaVB3uRln8Bog=; b=npoiR4JMalAPf2fYpPa2cqMX0w
	Wh7FdZlrJVuJzW0QynQMNBHo+ymlbbpkJUzwskl12JkNr57ichs2WCqFssojf2J4Vr+hwpsKsNLjL
	pGzjsD/ORpGbMxorMjaKNSX81ZQq6dBEJ0R8GXFgk5BGyZW6lyOr0rP+tQ7vjM1dSFoHIIGHTrhg0
	DqlsHbdnx7LiFfo6IZDOETQ81DdBcZty+slYdtnLBvhzDMh6dNAuiUAWsbeGigpx6J/5Pm+wU37L+
	FGHrGgODdY+1+9nZtKmMruztNti2NmltOmHm2Bb9E1QHIi5RxzdJVDIdiLNU++yyXGJGXq/mVdEEm
	s44Eq8gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNSu6-0000000HSO5-3eD1;
	Fri, 06 Jun 2025 08:58:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNSu0-0000000HSK7-3KSQ
	for barebox@lists.infradead.org;
	Fri, 06 Jun 2025 08:58:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNStz-0002si-08; Fri, 06 Jun 2025 10:58:15 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  6 Jun 2025 10:58:05 +0200
Message-Id: <20250606085813.2183260-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250606085813.2183260-1-a.fatoum@barebox.org>
References: <20250606085813.2183260-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250606_015817_139930_2CAE9FAA 
X-CRM114-Status: GOOD (  37.00  )
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
Subject: [PATCH 02/10] Port Linux __cleanup() based guard infrastructure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Kernel code is increasingly switching to make use of the new cleanup
mechanism. This will also be useful for us in barebox to avoid leaks
that are now biting us when fuzzing.

As first step, let's import the infrastructure along with dummy guards
for mutexes and spinlocks, which can be built upon in future.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Makefile                       |   3 -
 include/linux/cleanup.h        | 401 +++++++++++++++++++++++++++++++++
 include/linux/compiler-clang.h |  11 +
 include/linux/compiler_types.h |   6 +
 include/linux/mutex.h          |   8 +-
 include/linux/spinlock.h       |  17 +-
 6 files changed, 439 insertions(+), 7 deletions(-)
 create mode 100644 include/linux/cleanup.h

diff --git a/Makefile b/Makefile
index 031d5bdd3e20..8ab361ed63ed 100644
--- a/Makefile
+++ b/Makefile
@@ -783,9 +783,6 @@ KBUILD_USERLDFLAGS += $(filter -m32 -m64, $(KBUILD_CFLAGS))
 NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
 CHECKFLAGS     += $(NOSTDINC_FLAGS)
 
-# warn about C99 declaration after statement
-KBUILD_CFLAGS += $(call cc-option,-Wdeclaration-after-statement,)
-
 # warn about e.g. (unsigned)x < 0
 KBUILD_CFLAGS += $(call cc-option,-Wtype-limits)
 
diff --git a/include/linux/cleanup.h b/include/linux/cleanup.h
new file mode 100644
index 000000000000..d796f1b1c8fc
--- /dev/null
+++ b/include/linux/cleanup.h
@@ -0,0 +1,401 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_CLEANUP_H
+#define _LINUX_CLEANUP_H
+
+#include <linux/compiler.h>
+
+/**
+ * DOC: scope-based cleanup helpers
+ *
+ * The "goto error" pattern is notorious for introducing subtle resource
+ * leaks. It is tedious and error prone to add new resource acquisition
+ * constraints into code paths that already have several unwind
+ * conditions. The "cleanup" helpers enable the compiler to help with
+ * this tedium and can aid in maintaining LIFO (last in first out)
+ * unwind ordering to avoid unintentional leaks.
+ *
+ * As drivers make up the majority of the kernel code base, here is an
+ * example of using these helpers to clean up PCI drivers. The target of
+ * the cleanups are occasions where a goto is used to unwind a device
+ * reference (pci_dev_put()), or unlock the device (pci_dev_unlock())
+ * before returning.
+ *
+ * The DEFINE_FREE() macro can arrange for PCI device references to be
+ * dropped when the associated variable goes out of scope::
+ *
+ *	DEFINE_FREE(pci_dev_put, struct pci_dev *, if (_T) pci_dev_put(_T))
+ *	...
+ *	struct pci_dev *dev __free(pci_dev_put) =
+ *		pci_get_slot(parent, PCI_DEVFN(0, 0));
+ *
+ * The above will automatically call pci_dev_put() if @dev is non-NULL
+ * when @dev goes out of scope (automatic variable scope). If a function
+ * wants to invoke pci_dev_put() on error, but return @dev (i.e. without
+ * freeing it) on success, it can do::
+ *
+ *	return no_free_ptr(dev);
+ *
+ * ...or::
+ *
+ *	return_ptr(dev);
+ *
+ * The DEFINE_GUARD() macro can arrange for the PCI device lock to be
+ * dropped when the scope where guard() is invoked ends::
+ *
+ *	DEFINE_GUARD(pci_dev, struct pci_dev *, pci_dev_lock(_T), pci_dev_unlock(_T))
+ *	...
+ *	guard(pci_dev)(dev);
+ *
+ * The lifetime of the lock obtained by the guard() helper follows the
+ * scope of automatic variable declaration. Take the following example::
+ *
+ *	func(...)
+ *	{
+ *		if (...) {
+ *			...
+ *			guard(pci_dev)(dev); // pci_dev_lock() invoked here
+ *			...
+ *		} // <- implied pci_dev_unlock() triggered here
+ *	}
+ *
+ * Observe the lock is held for the remainder of the "if ()" block not
+ * the remainder of "func()".
+ *
+ * Now, when a function uses both __free() and guard(), or multiple
+ * instances of __free(), the LIFO order of variable definition order
+ * matters. GCC documentation says:
+ *
+ * "When multiple variables in the same scope have cleanup attributes,
+ * at exit from the scope their associated cleanup functions are run in
+ * reverse order of definition (last defined, first cleanup)."
+ *
+ * When the unwind order matters it requires that variables be defined
+ * mid-function scope rather than at the top of the file.  Take the
+ * following example and notice the bug highlighted by "!!"::
+ *
+ *	LIST_HEAD(list);
+ *	DEFINE_MUTEX(lock);
+ *
+ *	struct object {
+ *	        struct list_head node;
+ *	};
+ *
+ *	static struct object *alloc_add(void)
+ *	{
+ *	        struct object *obj;
+ *
+ *	        lockdep_assert_held(&lock);
+ *	        obj = kzalloc(sizeof(*obj), GFP_KERNEL);
+ *	        if (obj) {
+ *	                LIST_HEAD_INIT(&obj->node);
+ *	                list_add(obj->node, &list):
+ *	        }
+ *	        return obj;
+ *	}
+ *
+ *	static void remove_free(struct object *obj)
+ *	{
+ *	        lockdep_assert_held(&lock);
+ *	        list_del(&obj->node);
+ *	        kfree(obj);
+ *	}
+ *
+ *	DEFINE_FREE(remove_free, struct object *, if (_T) remove_free(_T))
+ *	static int init(void)
+ *	{
+ *	        struct object *obj __free(remove_free) = NULL;
+ *	        int err;
+ *
+ *	        guard(mutex)(&lock);
+ *	        obj = alloc_add();
+ *
+ *	        if (!obj)
+ *	                return -ENOMEM;
+ *
+ *	        err = other_init(obj);
+ *	        if (err)
+ *	                return err; // remove_free() called without the lock!!
+ *
+ *	        no_free_ptr(obj);
+ *	        return 0;
+ *	}
+ *
+ * That bug is fixed by changing init() to call guard() and define +
+ * initialize @obj in this order::
+ *
+ *	guard(mutex)(&lock);
+ *	struct object *obj __free(remove_free) = alloc_add();
+ *
+ * Given that the "__free(...) = NULL" pattern for variables defined at
+ * the top of the function poses this potential interdependency problem
+ * the recommendation is to always define and assign variables in one
+ * statement and not group variable definitions at the top of the
+ * function when __free() is used.
+ *
+ * Lastly, given that the benefit of cleanup helpers is removal of
+ * "goto", and that the "goto" statement can jump between scopes, the
+ * expectation is that usage of "goto" and cleanup helpers is never
+ * mixed in the same function. I.e. for a given routine, convert all
+ * resources that need a "goto" cleanup to scope-based cleanup, or
+ * convert none of them.
+ */
+
+/*
+ * DEFINE_FREE(name, type, free):
+ *	simple helper macro that defines the required wrapper for a __free()
+ *	based cleanup function. @free is an expression using '_T' to access the
+ *	variable. @free should typically include a NULL test before calling a
+ *	function, see the example below.
+ *
+ * __free(name):
+ *	variable attribute to add a scoped based cleanup to the variable.
+ *
+ * no_free_ptr(var):
+ *	like a non-atomic xchg(var, NULL), such that the cleanup function will
+ *	be inhibited -- provided it sanely deals with a NULL value.
+ *
+ *	NOTE: this has __must_check semantics so that it is harder to accidentally
+ *	leak the resource.
+ *
+ * return_ptr(p):
+ *	returns p while inhibiting the __free().
+ *
+ * Ex.
+ *
+ * DEFINE_FREE(kfree, void *, if (_T) kfree(_T))
+ *
+ * void *alloc_obj(...)
+ * {
+ *	struct obj *p __free(kfree) = kmalloc(...);
+ *	if (!p)
+ *		return NULL;
+ *
+ *	if (!init_obj(p))
+ *		return NULL;
+ *
+ *	return_ptr(p);
+ * }
+ *
+ * NOTE: the DEFINE_FREE()'s @free expression includes a NULL test even though
+ * kfree() is fine to be called with a NULL value. This is on purpose. This way
+ * the compiler sees the end of our alloc_obj() function as:
+ *
+ *	tmp = p;
+ *	p = NULL;
+ *	if (p)
+ *		kfree(p);
+ *	return tmp;
+ *
+ * And through the magic of value-propagation and dead-code-elimination, it
+ * eliminates the actual cleanup call and compiles into:
+ *
+ *	return p;
+ *
+ * Without the NULL test it turns into a mess and the compiler can't help us.
+ */
+
+#define DEFINE_FREE(_name, _type, _free) \
+	static inline void __free_##_name(void *p) { _type _T = *(_type *)p; _free; }
+
+#define __free(_name)	__cleanup(__free_##_name)
+
+#define __get_and_null(p, nullvalue)   \
+	({                                  \
+		__auto_type __ptr = &(p);   \
+		__auto_type __val = *__ptr; \
+		*__ptr = nullvalue;         \
+		__val;                      \
+	})
+
+static inline __must_check
+const volatile void * __must_check_fn(const volatile void *val)
+{ return val; }
+
+#define no_free_ptr(p) \
+	((typeof(p)) __must_check_fn(__get_and_null(p, NULL)))
+
+#define return_ptr(p)	return no_free_ptr(p)
+
+
+/*
+ * DEFINE_CLASS(name, type, exit, init, init_args...):
+ *	helper to define the destructor and constructor for a type.
+ *	@exit is an expression using '_T' -- similar to FREE above.
+ *	@init is an expression in @init_args resulting in @type
+ *
+ * EXTEND_CLASS(name, ext, init, init_args...):
+ *	extends class @name to @name@ext with the new constructor
+ *
+ * CLASS(name, var)(args...):
+ *	declare the variable @var as an instance of the named class
+ *
+ * Ex.
+ *
+ * DEFINE_CLASS(fdget, struct fd, fdput(_T), fdget(fd), int fd)
+ *
+ *	CLASS(fdget, f)(fd);
+ *	if (!fd_file(f))
+ *		return -EBADF;
+ *
+ *	// use 'f' without concern
+ */
+
+#define DEFINE_CLASS(_name, _type, _exit, _init, _init_args...)		\
+typedef _type class_##_name##_t;					\
+static inline void class_##_name##_destructor(_type *p)			\
+{ _type _T = *p; _exit; }						\
+static inline _type class_##_name##_constructor(_init_args)		\
+{ _type t = _init; return t; }
+
+#define EXTEND_CLASS(_name, ext, _init, _init_args...)			\
+typedef class_##_name##_t class_##_name##ext##_t;			\
+static inline void class_##_name##ext##_destructor(class_##_name##_t *p)\
+{ class_##_name##_destructor(p); }					\
+static inline class_##_name##_t class_##_name##ext##_constructor(_init_args) \
+{ class_##_name##_t t = _init; return t; }
+
+#define CLASS(_name, var)						\
+	class_##_name##_t var __cleanup(class_##_name##_destructor) =	\
+		class_##_name##_constructor
+
+
+/*
+ * DEFINE_GUARD(name, type, lock, unlock):
+ *	trivial wrapper around DEFINE_CLASS() above specifically
+ *	for locks.
+ *
+ * DEFINE_GUARD_COND(name, ext, condlock)
+ *	wrapper around EXTEND_CLASS above to add conditional lock
+ *	variants to a base class, eg. mutex_trylock() or
+ *	mutex_lock_interruptible().
+ *
+ * guard(name):
+ *	an anonymous instance of the (guard) class, not recommended for
+ *	conditional locks.
+ *
+ * scoped_guard (name, args...) { }:
+ *	similar to CLASS(name, scope)(args), except the variable (with the
+ *	explicit name 'scope') is declard in a for-loop such that its scope is
+ *	bound to the next (compound) statement.
+ *
+ *	for conditional locks the loop body is skipped when the lock is not
+ *	acquired.
+ *
+ * scoped_cond_guard (name, fail, args...) { }:
+ *      similar to scoped_guard(), except it does fail when the lock
+ *      acquire fails.
+ *
+ */
+
+#define DEFINE_GUARD(_name, _type, _lock, _unlock) \
+	DEFINE_CLASS(_name, _type, if (_T) { _unlock; }, ({ _lock; _T; }), _type _T); \
+	static inline void * class_##_name##_lock_ptr(class_##_name##_t *_T) \
+	{ return *_T; }
+
+#define DEFINE_GUARD_COND(_name, _ext, _condlock) \
+	EXTEND_CLASS(_name, _ext, \
+		     ({ void *_t = _T; if (_T && !(_condlock)) _t = NULL; _t; }), \
+		     class_##_name##_t _T) \
+	static inline void * class_##_name##_ext##_lock_ptr(class_##_name##_t *_T) \
+	{ return class_##_name##_lock_ptr(_T); }
+
+#define guard(_name) \
+	CLASS(_name, __UNIQUE_ID(guard))
+
+#define __guard_ptr(_name) class_##_name##_lock_ptr
+
+#define scoped_guard(_name, args...)					\
+	for (CLASS(_name, scope)(args),					\
+	     *done = NULL; __guard_ptr(_name)(&scope) && !done; done = (void *)1)
+
+#define scoped_cond_guard(_name, _fail, args...) \
+	for (CLASS(_name, scope)(args), \
+	     *done = NULL; !done; done = (void *)1) \
+		if (!__guard_ptr(_name)(&scope)) _fail; \
+		else
+
+/*
+ * Additional helper macros for generating lock guards with types, either for
+ * locks that don't have a native type (eg. RCU, preempt) or those that need a
+ * 'fat' pointer (eg. spin_lock_irqsave).
+ *
+ * DEFINE_LOCK_GUARD_0(name, lock, unlock, ...)
+ * DEFINE_LOCK_GUARD_1(name, type, lock, unlock, ...)
+ * DEFINE_LOCK_GUARD_1_COND(name, ext, condlock)
+ *
+ * will result in the following type:
+ *
+ *   typedef struct {
+ *	type *lock;		// 'type := void' for the _0 variant
+ *	__VA_ARGS__;
+ *   } class_##name##_t;
+ *
+ * As above, both _lock and _unlock are statements, except this time '_T' will
+ * be a pointer to the above struct.
+ */
+
+#define __DEFINE_UNLOCK_GUARD(_name, _type, _unlock, ...)		\
+typedef struct {							\
+	_type *lock;							\
+	__VA_ARGS__;							\
+} class_##_name##_t;							\
+									\
+static inline void class_##_name##_destructor(class_##_name##_t *_T)	\
+{									\
+	if (_T->lock) { _unlock; }					\
+}									\
+									\
+static inline void *class_##_name##_lock_ptr(class_##_name##_t *_T)	\
+{									\
+	return _T->lock;						\
+}
+
+
+#define __DEFINE_LOCK_GUARD_1(_name, _type, _lock)			\
+static inline class_##_name##_t class_##_name##_constructor(_type *l)	\
+{									\
+	class_##_name##_t _t = { .lock = l }, *_T = &_t;		\
+	_lock;								\
+	return _t;							\
+}
+
+#define __DEFINE_LOCK_GUARD_0(_name, _lock)				\
+static inline class_##_name##_t class_##_name##_constructor(void)	\
+{									\
+	class_##_name##_t _t = { .lock = (void*)1 },			\
+			 *_T __maybe_unused = &_t;			\
+	_lock;								\
+	return _t;							\
+}
+
+#define DEFINE_LOCK_GUARD_1(_name, _type, _lock, _unlock, ...)		\
+__DEFINE_UNLOCK_GUARD(_name, _type, _unlock, __VA_ARGS__)		\
+__DEFINE_LOCK_GUARD_1(_name, _type, _lock)
+
+#define DEFINE_LOCK_GUARD_0(_name, _lock, _unlock, ...)			\
+__DEFINE_UNLOCK_GUARD(_name, void, _unlock, __VA_ARGS__)		\
+__DEFINE_LOCK_GUARD_0(_name, _lock)
+
+#define DEFINE_LOCK_GUARD_1_COND(_name, _ext, _condlock)		\
+	EXTEND_CLASS(_name, _ext,					\
+		     ({ class_##_name##_t _t = { .lock = l }, *_T = &_t;\
+		        if (_T->lock && !(_condlock)) _T->lock = NULL;	\
+			_t; }),						\
+		     typeof_member(class_##_name##_t, lock) l)		\
+	static inline void * class_##_name##_ext##_lock_ptr(class_##_name##_t *_T) \
+	{ return class_##_name##_lock_ptr(_T); }
+
+
+#define dummy_do(arg, ...)	((void)arg)
+#define dummy_undo(arg, ...)	((void)arg)
+
+#define DEFINE_DUMMY_GUARD(_name, _type) \
+	DEFINE_GUARD(_name, _type, dummy_do(_T), dummy_undo(_T))
+
+#define DEFINE_DUMMY_GUARD_1(_name, _type, ...)		\
+	__DEFINE_UNLOCK_GUARD(_name, _type, dummy_undo(_T))		\
+	__DEFINE_LOCK_GUARD_1(_name, _type, dummy_do(_T))
+
+
+
+#endif /* _LINUX_CLEANUP_H */
diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index b1ce500fe8b3..681e347283b2 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -3,6 +3,17 @@
 #error "Please don't include <linux/compiler-clang.h> directly, include <linux/compiler.h> instead."
 #endif
 
+/* Compiler specific definitions for Clang compiler */
+
+/*
+ * Clang prior to 17 is being silly and considers many __cleanup() variables
+ * as unused (because they are, their sole purpose is to go out of scope).
+ *
+ * https://github.com/llvm/llvm-project/commit/877210faa447f4cc7db87812f8ed80e398fedd61
+ */
+#undef __cleanup
+#define __cleanup(func) __maybe_unused __attribute__((__cleanup__(func)))
+
 /* Some compiler specific definitions are overwritten here
  * for Clang compiler
  */
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 87ab117aca13..9aac751af7ab 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -54,6 +54,12 @@ extern void __chk_io_ptr(const volatile void __iomem *);
 #define ___PASTE(a,b) a##b
 #define __PASTE(a,b) ___PASTE(a,b)
 
+/*
+ *   gcc: https://gcc.gnu.org/onlinedocs/gcc/Common-Variable-Attributes.html#index-cleanup-variable-attribute
+ * clang: https://clang.llvm.org/docs/AttributeReference.html#cleanup
+ */
+#define __cleanup(func)			__attribute__((__cleanup__(func)))
+
 #ifdef __KERNEL__
 
 /*
diff --git a/include/linux/mutex.h b/include/linux/mutex.h
index f511c45814e7..5b3ac89f9bab 100644
--- a/include/linux/mutex.h
+++ b/include/linux/mutex.h
@@ -12,9 +12,11 @@
 #ifndef __LINUX_MUTEX_H
 #define __LINUX_MUTEX_H
 
+#include <linux/cleanup.h>
+
 #define mutex_init(...)
-#define mutex_lock(...)
-#define mutex_unlock(...)
+#define mutex_lock(lock) ((void)0)
+#define mutex_unlock(lock) ((void)0)
 #define mutex_lock_nested(...)
 #define mutex_unlock_nested(...)
 #define mutex_is_locked(...)	0
@@ -22,4 +24,6 @@ struct mutex { int i; };
 
 #define DEFINE_MUTEX(obj) struct mutex  __always_unused obj
 
+DEFINE_DUMMY_GUARD(mutex, struct mutex *)
+
 #endif /* __LINUX_MUTEX_H */
diff --git a/include/linux/spinlock.h b/include/linux/spinlock.h
index 6f90fb1cad43..c2d09eaf9064 100644
--- a/include/linux/spinlock.h
+++ b/include/linux/spinlock.h
@@ -3,15 +3,28 @@
 #ifndef __LINUX_SPINLOCK_H
 #define __LINUX_SPINLOCK_H
 
+#include <linux/cleanup.h>
+
 typedef int   spinlock_t;
 #define spin_lock_init(...)
-#define spin_lock(...)
+#define spin_lock(lock)
 #define spin_lock_bh spin_lock
-#define spin_unlock(...)
+#define spin_lock_irq spin_lock
+#define spin_unlock(lock)
 #define spin_unlock_bh spin_unlock
+#define spin_unlock_irq spin_unlock
 #define spin_lock_irqsave(lock, flags) do { flags = 0; } while (0)
 #define spin_unlock_irqrestore(lock, flags) do { flags = flags; } while (0)
 
 #define DEFINE_SPINLOCK(lock) spinlock_t __always_unused lock
 
+DEFINE_DUMMY_GUARD_1(spinlock, spinlock_t,
+		     spin_lock(_T->lock),
+		     spin_unlock(_T->lock))
+
+DEFINE_DUMMY_GUARD_1(spinlock_irqsave, spinlock_t,
+		     spin_lock_irqsave(_T->lock, _T->flags),
+		     spin_unlock_irqrestore(_T->lock, _T->flags),
+		     unsigned long flags)
+
 #endif /* __LINUX_SPINLOCK_H */
-- 
2.39.5



