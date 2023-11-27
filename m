Delivery-date: Mon, 27 Nov 2023 07:38:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VFq-00Adv4-2N
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 07:38:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VFq-0007Px-3V
	for lore@pengutronix.de; Mon, 27 Nov 2023 07:38:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=euSj1usAkNrW822JCayB0nAzUf8K0lsq/nDQJRS9vdU=; b=zbxps3VFP6iNvB4O8BuJpYRKxV
	mlTQsp65L1TiMTMY/RshZhjEE1+WmunpNHU88d/FeQizL5LWn9k3ixav7W3x/ichnidsLXPCVVKZt
	vREKGdgRSC2dc0eQVl6iLSMB6/ivPCX1p1DtITJ5mjPPU7RfU+FVD1lmToB56F3PmX3oHCgB/dczT
	Ca+9EnHb5ZfcOgG2MknkQXLq0qNMRFNhBWlP1o7fHyw1t+AYVf+SQzi0Z9Mgwe3xeUjRoFJ4QIErv
	LBR9mFWYfCIzHBvGtQV9yD/NSK4W0BJGshN16XHWLb77Agetr/9yVJuVGkqmG++KjAWtk8je5e2Vm
	zY5Lv2ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VEQ-001Z2E-1i;
	Mon, 27 Nov 2023 06:36:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VE8-001Ywt-31
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 06:36:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VE4-00070d-LY; Mon, 27 Nov 2023 07:36:12 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VE4-00Bsgf-8W; Mon, 27 Nov 2023 07:36:12 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VE4-009Fpr-0a;
	Mon, 27 Nov 2023 07:36:12 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Nov 2023 07:35:56 +0100
Message-Id: <20231127063559.2205776-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127063559.2205776-1-a.fatoum@pengutronix.de>
References: <20231127063559.2205776-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_223617_142779_D6A74566 
X-CRM114-Status: GOOD (  22.43  )
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
Subject: [PATCH 5/8] include: uaccess.h: import from linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Marc Kleine-Budde <mkl@pengutronix.de>

Linux code imported in a follow-up commit will include user-facing ioctl
API that makes heavy use of the user accessors define in uaccess.h.

Instead of rewriting all this, let's just import the Linux header with
the default CONFIG_UACCESS_MEMCPY implementation meant for nommu systems
that don't do any privilege separation.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/asm-generic/uaccess.h | 205 ++++++++++++++++++++++++++++++++++
 include/linux/uaccess.h       |  38 +++++++
 2 files changed, 243 insertions(+)
 create mode 100644 include/asm-generic/uaccess.h
 create mode 100644 include/linux/uaccess.h

diff --git a/include/asm-generic/uaccess.h b/include/asm-generic/uaccess.h
new file mode 100644
index 000000000000..73f1a895fd47
--- /dev/null
+++ b/include/asm-generic/uaccess.h
@@ -0,0 +1,205 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_GENERIC_UACCESS_H
+#define __ASM_GENERIC_UACCESS_H
+
+/*
+ * User space memory access functions, these should work
+ * on any machine that has kernel and user data in the same
+ * address space, e.g. all NOMMU machines.
+ */
+#include <linux/barebox-wrapper.h>
+#include <linux/bug.h>
+#include <linux/string.h>
+#include <asm/unaligned.h>
+
+static inline void might_fault(void) { }
+static inline int access_ok(const void __user *ptr, unsigned long size) { return 1; }
+
+static __always_inline int
+__get_user_fn(size_t size, const void __user *from, void *to)
+{
+	BUILD_BUG_ON(!__builtin_constant_p(size));
+
+	switch (size) {
+	case 1:
+		*(u8 *)to = *((u8 __force *)from);
+		return 0;
+	case 2:
+		*(u16 *)to = get_unaligned((u16 __force *)from);
+		return 0;
+	case 4:
+		*(u32 *)to = get_unaligned((u32 __force *)from);
+		return 0;
+	case 8:
+		*(u64 *)to = get_unaligned((u64 __force *)from);
+		return 0;
+	default:
+		BUILD_BUG();
+		return 0;
+	}
+
+}
+#define __get_user_fn(sz, u, k)	__get_user_fn(sz, u, k)
+
+static __always_inline int
+__put_user_fn(size_t size, void __user *to, void *from)
+{
+	BUILD_BUG_ON(!__builtin_constant_p(size));
+
+	switch (size) {
+	case 1:
+		*(u8 __force *)to = *(u8 *)from;
+		return 0;
+	case 2:
+		put_unaligned(*(u16 *)from, (u16 __force *)to);
+		return 0;
+	case 4:
+		put_unaligned(*(u32 *)from, (u32 __force *)to);
+		return 0;
+	case 8:
+		put_unaligned(*(u64 *)from, (u64 __force *)to);
+		return 0;
+	default:
+		BUILD_BUG();
+		return 0;
+	}
+}
+#define __put_user_fn(sz, u, k)	__put_user_fn(sz, u, k)
+
+#define __get_kernel_nofault(dst, src, type, err_label)			\
+do {									\
+	*((type *)dst) = get_unaligned((type *)(src));			\
+	if (0) /* make sure the label looks used to the compiler */	\
+		goto err_label;						\
+} while (0)
+
+#define __put_kernel_nofault(dst, src, type, err_label)			\
+do {									\
+	put_unaligned(*((type *)src), (type *)(dst));			\
+	if (0) /* make sure the label looks used to the compiler */	\
+		goto err_label;						\
+} while (0)
+
+static inline __must_check unsigned long
+raw_copy_from_user(void *to, const void __user * from, unsigned long n)
+{
+	memcpy(to, (const void __force *)from, n);
+	return 0;
+}
+
+static inline __must_check unsigned long
+raw_copy_to_user(void __user *to, const void *from, unsigned long n)
+{
+	memcpy((void __force *)to, from, n);
+	return 0;
+}
+
+/*
+ * These are the main single-value transfer routines.  They automatically
+ * use the right size if we just have the right pointer type.
+ * This version just falls back to copy_{from,to}_user, which should
+ * provide a fast-path for small values.
+ */
+#define __put_user(x, ptr) \
+({								\
+	__typeof__(*(ptr)) __x = (x);				\
+	int __pu_err = -EFAULT;					\
+        __chk_user_ptr(ptr);                                    \
+	switch (sizeof (*(ptr))) {				\
+	case 1:							\
+	case 2:							\
+	case 4:							\
+	case 8:							\
+		__pu_err = __put_user_fn(sizeof (*(ptr)),	\
+					 ptr, &__x);		\
+		break;						\
+	default:						\
+		__put_user_bad();				\
+		break;						\
+	 }							\
+	__pu_err;						\
+})
+
+#define put_user(x, ptr)					\
+({								\
+	void __user *__p = (ptr);				\
+	might_fault();						\
+	access_ok(__p, sizeof(*ptr)) ?		\
+		__put_user((x), ((__typeof__(*(ptr)) __user *)__p)) :	\
+		-EFAULT;					\
+})
+
+extern int __put_user_bad(void) __attribute__((noreturn));
+
+#define __get_user(x, ptr)					\
+({								\
+	int __gu_err = -EFAULT;					\
+	__chk_user_ptr(ptr);					\
+	switch (sizeof(*(ptr))) {				\
+	case 1: {						\
+		unsigned char __x = 0;				\
+		__gu_err = __get_user_fn(sizeof (*(ptr)),	\
+					 ptr, &__x);		\
+		(x) = *(__force __typeof__(*(ptr)) *) &__x;	\
+		break;						\
+	};							\
+	case 2: {						\
+		unsigned short __x = 0;				\
+		__gu_err = __get_user_fn(sizeof (*(ptr)),	\
+					 ptr, &__x);		\
+		(x) = *(__force __typeof__(*(ptr)) *) &__x;	\
+		break;						\
+	};							\
+	case 4: {						\
+		unsigned int __x = 0;				\
+		__gu_err = __get_user_fn(sizeof (*(ptr)),	\
+					 ptr, &__x);		\
+		(x) = *(__force __typeof__(*(ptr)) *) &__x;	\
+		break;						\
+	};							\
+	case 8: {						\
+		unsigned long long __x = 0;			\
+		__gu_err = __get_user_fn(sizeof (*(ptr)),	\
+					 ptr, &__x);		\
+		(x) = *(__force __typeof__(*(ptr)) *) &__x;	\
+		break;						\
+	};							\
+	default:						\
+		__get_user_bad();				\
+		break;						\
+	}							\
+	__gu_err;						\
+})
+
+#define get_user(x, ptr)					\
+({								\
+	const void __user *__p = (ptr);				\
+	might_fault();						\
+	access_ok(__p, sizeof(*ptr)) ?		\
+		__get_user((x), (__typeof__(*(ptr)) __user *)__p) :\
+		((x) = (__typeof__(*(ptr)))0,-EFAULT);		\
+})
+
+extern int __get_user_bad(void) __attribute__((noreturn));
+
+/*
+ * Zero Userspace
+ */
+static inline __must_check unsigned long
+__clear_user(void __user *to, unsigned long n)
+{
+	memset((void __force *)to, 0, n);
+	return 0;
+}
+
+static inline __must_check unsigned long
+clear_user(void __user *to, unsigned long n)
+{
+	might_fault();
+	if (!access_ok(to, n))
+		return n;
+
+	return __clear_user(to, n);
+}
+
+#endif /* __ASM_GENERIC_UACCESS_H */
diff --git a/include/linux/uaccess.h b/include/linux/uaccess.h
new file mode 100644
index 000000000000..94d59dcc44e0
--- /dev/null
+++ b/include/linux/uaccess.h
@@ -0,0 +1,38 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __LINUX_UACCESS_H__
+#define __LINUX_UACCESS_H__
+
+#include <asm-generic/uaccess.h>
+
+
+/*
+ * Check at compile time that something is of a particular type.
+ * Always evaluates to 1 so you may use it easily in comparisons.
+ */
+#define typecheck(type,x) \
+({	type __dummy; \
+	typeof(x) __dummy2; \
+	(void)(&__dummy == &__dummy2); \
+	1; \
+})
+
+#define u64_to_user_ptr(x) (		\
+{					\
+	typecheck(u64, (x));		\
+	(void __user *)(uintptr_t)(x);	\
+}					\
+)
+
+static __always_inline unsigned long __must_check
+copy_from_user(void *to, const void __user *from, unsigned long n)
+{
+	return raw_copy_from_user(to, from, n);
+}
+
+static __always_inline unsigned long __must_check
+copy_to_user(void __user *to, const void *from, unsigned long n)
+{
+	return raw_copy_to_user(to, from, n);
+}
+
+#endif		/* __LINUX_UACCESS_H__ */
-- 
2.39.2



