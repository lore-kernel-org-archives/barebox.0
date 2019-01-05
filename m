Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout1.fh-giessen.de ([212.201.18.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gfqwm-0001HH-LJ
 for barebox@lists.infradead.org; Sat, 05 Jan 2019 18:45:27 +0000
Received: from mx1.fh-giessen.de ([212.201.18.40])
 by mout1.fh-giessen.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.91) (envelope-from <martin.hofmann@mni.thm.de>)
 id 1gfqwb-0004cU-Ku
 for barebox@lists.infradead.org; Sat, 05 Jan 2019 19:45:13 +0100
Received: from mailgate-2.its.fh-giessen.de ([212.201.18.14])
 by mx1.fh-giessen.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.91) (envelope-from <martin.hofmann@mni.thm.de>)
 id 1gfqwb-00ETz4-Gx
 for barebox@lists.infradead.org; Sat, 05 Jan 2019 19:45:13 +0100
Received: from ip-178-203-145-104.hsi10.unitymediagroup.de ([178.203.145.104]
 helo=[192.168.0.73]) by mailgate-2.its.fh-giessen.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.91)
 (envelope-from <martin.hofmann@mni.thm.de>) id 1gfqwb-000Rzf-96
 for barebox@lists.infradead.org; Sat, 05 Jan 2019 19:45:13 +0100
From: Martin Hofmann <martin.hofmann@mni.thm.de>
Message-ID: <4e760479-94dc-d3b5-8056-8c15e743c990@mni.thm.de>
Date: Sat, 5 Jan 2019 19:45:12 +0100
MIME-Version: 1.0
Content-Language: de-DE
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v1 1/1] Add generic implementation for muldi3
To: barebox@lists.infradead.org

Since version v2018.08.0 some shared copies of gcc routines got added to
barebox so that archs don't need to have thier own copy inside thier
lib. The arch I am working on atm also needs support for muldi3 which is
not present as a generic version right now.

This patch addes the generic version form latest linux v4.20 to barebox
and lets the archs select it in thier Kconfig so they don't need to
provide it themself.

Signed-off-by: Martin Hofmann <martin.hofmann_at_mni.thm.de>

---
 include/lib/libgcc.h |  1 +
 lib/Kconfig          |  3 ++
 lib/Makefile         |  1 +
 lib/muldi3.c         | 73 ++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 78 insertions(+)
 create mode 100644 lib/muldi3.c

diff --git a/include/lib/libgcc.h b/include/lib/libgcc.h
index adad27704..f7b9be61f 100644
--- a/include/lib/libgcc.h
+++ b/include/lib/libgcc.h
@@ -43,5 +43,6 @@ typedef union {
 long long __lshrdi3(long long u, word_type b);
 long long __ashldi3(long long u, word_type b);
 long long __ashrdi3(long long u, word_type b);
+long long __muldi3(long long u, long long v);

 #endif /* __ASM_LIBGCC_H */
diff --git a/lib/Kconfig b/lib/Kconfig
index 67680adbb..e048aded8 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -145,4 +145,7 @@ config GENERIC_LIB_ASHRDI3
 config GENERIC_LIB_LSHRDI3
 	bool

+config GENERIC_LIB_MULDI3
+	bool
+
 endmenu
diff --git a/lib/Makefile b/lib/Makefile
index 8ece2c284..e72aa6655 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -72,5 +72,6 @@ obj-$(CONFIG_CRC8)	+= crc8.o
 obj-$(CONFIG_GENERIC_LIB_ASHLDI3) += ashldi3.o
 obj-$(CONFIG_GENERIC_LIB_ASHRDI3) += ashrdi3.o
 obj-$(CONFIG_GENERIC_LIB_LSHRDI3) += lshrdi3.o
+obj-$(CONFIG_GENERIC_LIB_MULDI3)  += muldi3.o

 pbl-$(CONFIG_GENERIC_LIB_ASHLDI3) += ashldi3.o
diff --git a/lib/muldi3.c b/lib/muldi3.c
new file mode 100644
index 000000000..eec810e80
--- /dev/null
+++ b/lib/muldi3.c
@@ -0,0 +1,73 @@
+/*
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, see the file COPYING, or write
+ * to the Free Software Foundation, Inc.
+ */
+
+#include <module.h>
+
+#include <lib/libgcc.h>
+
+#define W_TYPE_SIZE 32
+
+#define __ll_B ((unsigned long) 1 << (W_TYPE_SIZE / 2))
+#define __ll_lowpart(t) ((unsigned long) (t) & (__ll_B - 1))
+#define __ll_highpart(t) ((unsigned long) (t) >> (W_TYPE_SIZE / 2))
+
+/* If we still don't have umul_ppmm, define it using plain C.  */
+#if !defined(umul_ppmm)
+#define umul_ppmm(w1, w0, u, v)						\
+	do {								\
+		unsigned long __x0, __x1, __x2, __x3;			\
+		unsigned short __ul, __vl, __uh, __vh;			\
+									\
+		__ul = __ll_lowpart(u);					\
+		__uh = __ll_highpart(u);				\
+		__vl = __ll_lowpart(v);					\
+		__vh = __ll_highpart(v);				\
+									\
+		__x0 = (unsigned long) __ul * __vl;			\
+		__x1 = (unsigned long) __ul * __vh;			\
+		__x2 = (unsigned long) __uh * __vl;			\
+		__x3 = (unsigned long) __uh * __vh;			\
+									\
+		__x1 += __ll_highpart(__x0); /* this can't give carry */\
+		__x1 += __x2; /* but this indeed can */			\
+		if (__x1 < __x2) /* did we get it? */			\
+		__x3 += __ll_B; /* yes, add it in the proper pos */	\
+									\
+		(w1) = __x3 + __ll_highpart(__x1);			\
+		(w0) = __ll_lowpart(__x1) * __ll_B + __ll_lowpart(__x0);\
+	} while (0)
+#endif
+
+#if !defined(__umulsidi3)
+#define __umulsidi3(u, v) ({				\
+	DWunion __w;					\
+	umul_ppmm(__w.s.high, __w.s.low, u, v);		\
+	__w.ll;						\
+	})
+#endif
+
+long long notrace __muldi3(long long u, long long v)
+{
+	const DWunion uu = {.ll = u};
+	const DWunion vv = {.ll = v};
+	DWunion w = {.ll = __umulsidi3(uu.s.low, vv.s.low)};
+
+	w.s.high += ((unsigned long) uu.s.low * (unsigned long) vv.s.high
+		+ (unsigned long) uu.s.high * (unsigned long) vv.s.low);
+
+	return w.ll;
+}
+EXPORT_SYMBOL(__muldi3);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
