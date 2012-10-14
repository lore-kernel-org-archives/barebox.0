Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo5.mail-out.ovh.net ([178.32.116.78]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TNVA2-0003ut-FQ
 for barebox@lists.infradead.org; Sun, 14 Oct 2012 20:51:47 +0000
Received: from mail619.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 2AF61FF94E8
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2012 22:58:22 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 14 Oct 2012 22:49:22 +0200
Message-Id: <1350247764-18132-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20121014204622.GT13639@game.jcrosoft.org>
References: <20121014204622.GT13639@game.jcrosoft.org>
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
Subject: [PATCH 1/3] import include/linux/math64.h
To: barebox@lists.infradead.org

need by mtd_dataflash

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/linux/math64.h |  121 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 121 insertions(+)
 create mode 100644 include/linux/math64.h

diff --git a/include/linux/math64.h b/include/linux/math64.h
new file mode 100644
index 0000000..71dd6d7
--- /dev/null
+++ b/include/linux/math64.h
@@ -0,0 +1,121 @@
+#ifndef _LINUX_MATH64_H
+#define _LINUX_MATH64_H
+
+#include <linux/types.h>
+#include <asm-generic/div64.h>
+
+#if BITS_PER_LONG == 64
+
+#define div64_long(x,y) div64_s64((x),(y))
+
+/**
+ * div_u64_rem - unsigned 64bit divide with 32bit divisor with remainder
+ *
+ * This is commonly provided by 32bit archs to provide an optimized 64bit
+ * divide.
+ */
+static inline u64 div_u64_rem(u64 dividend, u32 divisor, u32 *remainder)
+{
+	*remainder = dividend % divisor;
+	return dividend / divisor;
+}
+
+/**
+ * div_s64_rem - signed 64bit divide with 32bit divisor with remainder
+ */
+static inline s64 div_s64_rem(s64 dividend, s32 divisor, s32 *remainder)
+{
+	*remainder = dividend % divisor;
+	return dividend / divisor;
+}
+
+/**
+ * div64_u64 - unsigned 64bit divide with 64bit divisor
+ */
+static inline u64 div64_u64(u64 dividend, u64 divisor)
+{
+	return dividend / divisor;
+}
+
+/**
+ * div64_s64 - signed 64bit divide with 64bit divisor
+ */
+static inline s64 div64_s64(s64 dividend, s64 divisor)
+{
+	return dividend / divisor;
+}
+
+#elif BITS_PER_LONG == 32
+
+#define div64_long(x,y) div_s64((x),(y))
+
+#ifndef div_u64_rem
+static inline u64 div_u64_rem(u64 dividend, u32 divisor, u32 *remainder)
+{
+	*remainder = do_div(dividend, divisor);
+	return dividend;
+}
+#endif
+
+#ifndef div_s64_rem
+extern s64 div_s64_rem(s64 dividend, s32 divisor, s32 *remainder);
+#endif
+
+#ifndef div64_u64
+extern u64 div64_u64(u64 dividend, u64 divisor);
+#endif
+
+#ifndef div64_s64
+extern s64 div64_s64(s64 dividend, s64 divisor);
+#endif
+
+#endif /* BITS_PER_LONG */
+
+/**
+ * div_u64 - unsigned 64bit divide with 32bit divisor
+ *
+ * This is the most common 64bit divide and should be used if possible,
+ * as many 32bit archs can optimize this variant better than a full 64bit
+ * divide.
+ */
+#ifndef div_u64
+static inline u64 div_u64(u64 dividend, u32 divisor)
+{
+	u32 remainder;
+	return div_u64_rem(dividend, divisor, &remainder);
+}
+#endif
+
+/**
+ * div_s64 - signed 64bit divide with 32bit divisor
+ */
+#ifndef div_s64
+static inline s64 div_s64(s64 dividend, s32 divisor)
+{
+	s32 remainder;
+	return div_s64_rem(dividend, divisor, &remainder);
+}
+#endif
+
+u32 iter_div_u64_rem(u64 dividend, u32 divisor, u64 *remainder);
+
+static __always_inline u32
+__iter_div_u64_rem(u64 dividend, u32 divisor, u64 *remainder)
+{
+	u32 ret = 0;
+
+	while (dividend >= divisor) {
+		/* The following asm() prevents the compiler from
+		   optimising this loop into a modulo operation.  */
+		asm("" : "+rm"(dividend));
+
+		dividend -= divisor;
+		ret++;
+	}
+
+	*remainder = dividend;
+
+	return ret;
+}
+
+#endif /* _LINUX_MATH64_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
