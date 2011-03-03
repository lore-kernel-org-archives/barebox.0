Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHUO-0003Ml-Ih
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:59:27 +0000
Received: by mail-wy0-f177.google.com with SMTP id 23so1675998wyf.36
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:59:20 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:49 +0100
Message-Id: <4d701d47.9009d80a.2cd3.5e97@mx.google.com>
In-Reply-To: <n>
References: <n>
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
Subject: [PATCH 35/54] Add arch/nios2/include/asm/int-ll64.h
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/include/asm/int-ll64.h

---
 arch/nios2/include/asm/int-ll64.h |   78 +++++++++++++++++++++++++++++++++++++
 1 files changed, 78 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/include/asm/int-ll64.h

diff --git a/arch/nios2/include/asm/int-ll64.h b/arch/nios2/include/asm/int-ll64.h
new file mode 100644
index 0000000..f394147
--- /dev/null
+++ b/arch/nios2/include/asm/int-ll64.h
@@ -0,0 +1,78 @@
+/*
+ * asm-generic/int-ll64.h
+ *
+ * Integer declarations for architectures which use "long long"
+ * for 64-bit types.
+ */
+
+#ifndef _ASM_GENERIC_INT_LL64_H
+#define _ASM_GENERIC_INT_LL64_H
+
+#include <asm/bitsperlong.h>
+
+#ifndef __ASSEMBLY__
+/*
+ * __xx is ok: it doesn't pollute the POSIX namespace. Use these in the
+ * header files exported to user space
+ */
+
+typedef __signed__ char __s8;
+typedef unsigned char __u8;
+
+typedef __signed__ short __s16;
+typedef unsigned short __u16;
+
+typedef __signed__ int __s32;
+typedef unsigned int __u32;
+
+#ifdef __GNUC__
+__extension__ typedef __signed__ long long __s64;
+__extension__ typedef unsigned long long __u64;
+#else
+typedef __signed__ long long __s64;
+typedef unsigned long long __u64;
+#endif
+
+#endif /* __ASSEMBLY__ */
+
+#ifdef __KERNEL__
+
+#ifndef __ASSEMBLY__
+
+typedef signed char s8;
+typedef unsigned char u8;
+
+typedef signed short s16;
+typedef unsigned short u16;
+
+typedef signed int s32;
+typedef unsigned int u32;
+
+typedef signed long long s64;
+typedef unsigned long long u64;
+
+#define S8_C(x)  x
+#define U8_C(x)  x ## U
+#define S16_C(x) x
+#define U16_C(x) x ## U
+#define S32_C(x) x
+#define U32_C(x) x ## U
+#define S64_C(x) x ## LL
+#define U64_C(x) x ## ULL
+
+#else /* __ASSEMBLY__ */
+
+#define S8_C(x)  x
+#define U8_C(x)  x
+#define S16_C(x) x
+#define U16_C(x) x
+#define S32_C(x) x
+#define U32_C(x) x
+#define S64_C(x) x
+#define U64_C(x) x
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __KERNEL__ */
+
+#endif /* _ASM_GENERIC_INT_LL64_H */
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
