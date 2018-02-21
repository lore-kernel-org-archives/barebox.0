Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eoR5u-0007bY-9q
 for barebox@lists.infradead.org; Wed, 21 Feb 2018 09:53:47 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1eoR5i-0007XQ-RR
 for barebox@lists.infradead.org; Wed, 21 Feb 2018 10:53:34 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 21 Feb 2018 10:53:33 +0100
Message-Id: <20180221095334.30747-2-l.stach@pengutronix.de>
In-Reply-To: <20180221095334.30747-1-l.stach@pengutronix.de>
References: <20180221095334.30747-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/3] lib: add weak clz/ctz functions
To: barebox@lists.infradead.org

This is a copy of the Linux kernel implementation. This adds weak
functions for the clz and ctz gcc builtins. Normally GCC will map
those builtins to CPU instructions directly, but for CPUs where those
are unavailable, we need to provide a fallback implementation.

Fixes build of the zlib decompressor on ARMv4 CPUs.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 lib/Makefile  |  1 +
 lib/clz_ctz.c | 59 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 60 insertions(+)
 create mode 100644 lib/clz_ctz.c

diff --git a/lib/Makefile b/lib/Makefile
index a6a32e0d1fd2..29cad3501f0c 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -64,3 +64,4 @@ obj-y			+= list_sort.o
 obj-y			+= int_sqrt.o
 obj-y			+= parseopt.o
 obj-y			+= find_bit.o
+obj-y			+= clz_ctz.o
diff --git a/lib/clz_ctz.c b/lib/clz_ctz.c
new file mode 100644
index 000000000000..b5ac7f447ac1
--- /dev/null
+++ b/lib/clz_ctz.c
@@ -0,0 +1,59 @@
+/*
+ * lib/clz_ctz.c
+ *
+ * Copyright (C) 2013 Chanho Min <chanho.min@lge.com>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ * The functions in this file aren't called directly, but are required by
+ * GCC builtins such as __builtin_ctz, and therefore they can't be removed
+ * despite appearing unreferenced in kernel source.
+ *
+ * __c[lt]z[sd]i2 can be overridden by linking arch-specific versions.
+ */
+
+#include <linux/bitops.h>
+#include <linux/kernel.h>
+
+int __weak __ctzsi2(int val);
+int __weak __ctzsi2(int val)
+{
+	return __ffs(val);
+}
+
+int __weak __clzsi2(int val);
+int __weak __clzsi2(int val)
+{
+	return 32 - fls(val);
+}
+
+int __weak __clzdi2(long val);
+int __weak __ctzdi2(long val);
+#if BITS_PER_LONG == 32
+
+int __weak __clzdi2(long val)
+{
+	return 32 - fls((int)val);
+}
+
+int __weak __ctzdi2(long val)
+{
+	return __ffs((u32)val);
+}
+
+#elif BITS_PER_LONG == 64
+
+int __weak __clzdi2(long val)
+{
+	return 64 - fls64((u64)val);
+}
+
+int __weak __ctzdi2(long val)
+{
+	return __ffs64((u64)val);
+}
+
+#else
+#error BITS_PER_LONG not 32 or 64
+#endif
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
