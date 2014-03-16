Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPBR3-0003QG-64
 for barebox@lists.infradead.org; Sun, 16 Mar 2014 13:49:05 +0000
Received: by mail-la0-f49.google.com with SMTP id mc6so2905354lab.8
 for <barebox@lists.infradead.org>; Sun, 16 Mar 2014 06:48:42 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 16 Mar 2014 17:48:12 +0400
Message-Id: <1394977701-5889-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1394977701-5889-1-git-send-email-antonynpavlov@gmail.com>
References: <1394977701-5889-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 01/10] import _AC and UL macros from linux kernel
To: barebox@lists.infradead.org

This macros are used in exported from linux TI DaVinci code.
Also this macros are used in MIPS cache support code.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/include/asm/memory.h |  7 +++++++
 include/linux/const.h         | 27 +++++++++++++++++++++++++++
 2 files changed, 34 insertions(+)

diff --git a/arch/arm/include/asm/memory.h b/arch/arm/include/asm/memory.h
index 28afaa3..52114d0 100644
--- a/arch/arm/include/asm/memory.h
+++ b/arch/arm/include/asm/memory.h
@@ -3,6 +3,13 @@
 
 #include <memory.h>
 
+#include <linux/const.h>
+/*
+ * Allow for constants defined here to be used from assembly code
+ * by prepending the UL suffix only with actual C code compilation.
+ */
+#define UL(x) _AC(x, UL)
+
 static inline void arm_add_mem_device(const char* name, resource_size_t start,
 				    resource_size_t size)
 {
diff --git a/include/linux/const.h b/include/linux/const.h
new file mode 100644
index 0000000..c872bfd
--- /dev/null
+++ b/include/linux/const.h
@@ -0,0 +1,27 @@
+/* const.h: Macros for dealing with constants.  */
+
+#ifndef _LINUX_CONST_H
+#define _LINUX_CONST_H
+
+/* Some constant macros are used in both assembler and
+ * C code.  Therefore we cannot annotate them always with
+ * 'UL' and other type specifiers unilaterally.  We
+ * use the following macros to deal with this.
+ *
+ * Similarly, _AT() will cast an expression with a type in C, but
+ * leave it unchanged in asm.
+ */
+
+#ifdef __ASSEMBLY__
+#define _AC(X,Y)	X
+#define _AT(T,X)	X
+#else
+#define __AC(X,Y)	(X##Y)
+#define _AC(X,Y)	__AC(X,Y)
+#define _AT(T,X)	((T)(X))
+#endif
+
+#define _BITUL(x)	(_AC(1,UL) << (x))
+#define _BITULL(x)	(_AC(1,ULL) << (x))
+
+#endif /* !(_LINUX_CONST_H) */
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
