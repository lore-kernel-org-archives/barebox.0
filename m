Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STztJ-0002mq-GZ
 for barebox@lists.infradead.org; Mon, 14 May 2012 18:21:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 May 2012 20:20:59 +0200
Message-Id: <1337019660-12096-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1337019660-12096-1-git-send-email-s.hauer@pengutronix.de>
References: <1337019660-12096-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] add qsort support
To: barebox@lists.infradead.org

This is based on U-Boot code which in turn is based on uclibc
code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/qsort.h |    7 +++++
 lib/Kconfig     |    3 +++
 lib/Makefile    |    1 +
 lib/qsort.c     |   79 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 90 insertions(+)
 create mode 100644 include/qsort.h
 create mode 100644 lib/qsort.c

diff --git a/include/qsort.h b/include/qsort.h
new file mode 100644
index 0000000..bbb2359
--- /dev/null
+++ b/include/qsort.h
@@ -0,0 +1,7 @@
+#ifndef __QSORT_H
+#define __QSORT_H
+
+void qsort(void  *base, size_t nel, size_t width,
+	   int (*comp)(const void *, const void *));
+
+#endif /* __QSORT_H */
diff --git a/lib/Kconfig b/lib/Kconfig
index f886e6e..3bcde5c 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -35,4 +35,7 @@ config BCH
 config BITREV
        bool
 
+config QSORT
+	bool
+
 endmenu
diff --git a/lib/Makefile b/lib/Makefile
index 01a01b5..4e6b1ee 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -33,3 +33,4 @@ obj-$(CONFIG_FDT)	+= fdt/
 obj-$(CONFIG_UNCOMPRESS)	+= uncompress.o
 obj-$(CONFIG_BCH)	+= bch.o
 obj-$(CONFIG_BITREV)	+= bitrev.o
+obj-$(CONFIG_QSORT)	+= qsort.o
diff --git a/lib/qsort.c b/lib/qsort.c
new file mode 100644
index 0000000..f648714
--- /dev/null
+++ b/lib/qsort.c
@@ -0,0 +1,79 @@
+/*
+ * Code adapted from uClibc-0.9.30.3
+ *
+ * It is therefore covered by the GNU LESSER GENERAL PUBLIC LICENSE
+ * Version 2.1, February 1999
+ *
+ * Wolfgang Denk <wd@denx.de>
+ */
+
+/* This code is derived from a public domain shell sort routine by
+ * Ray Gardner and found in Bob Stout's snippets collection.  The
+ * original code is included below in an #if 0/#endif block.
+ *
+ * I modified it to avoid the possibility of overflow in the wgap
+ * calculation, as well as to reduce the generated code size with
+ * bcc and gcc. */
+
+#include <linux/types.h>
+#include <common.h>
+#include <qsort.h>
+
+void qsort(void  *base,
+	   size_t nel,
+	   size_t width,
+	   int (*comp)(const void *, const void *))
+{
+	size_t wgap, i, j, k;
+	char tmp;
+
+	if (nel < 2 || width == 0)
+		return;
+
+	/* check for overflow */
+	if (nel <= ((size_t)(-1)) / width)
+		return;
+
+	wgap = 0;
+	do {
+		wgap = 3 * wgap + 1;
+	} while (wgap < (nel - 1) / 3);
+
+	/*
+	 * From the above, we know that either wgap == 1 < nel or
+	 * ((wgap-1) / 3 < (int) ((nel - 1) / 3) <= (nel - 1) / 3 ==> wgap <  nel.
+	 */
+	wgap *= width;	/* So this can not overflow if wnel doesn't. */
+	nel *= width;	/* Convert nel to 'wnel' */
+	do {
+		i = wgap;
+		do {
+			j = i;
+			do {
+				char *a;
+				char *b;
+
+				j -= wgap;
+				a = j + ((char *)base);
+				b = a + wgap;
+
+				if (comp(a, b) <= 0)
+					break;
+
+				k = width;
+				do {
+					tmp = *a;
+					*a++ = *b;
+					*b++ = tmp;
+				} while (--k);
+			} while (j >= wgap);
+			i += width;
+		} while (i < nel);
+		wgap = (wgap - width) / 3;
+	} while (wgap);
+}
+
+int strcmp_compar(const void *p1, const void *p2)
+{
+	return strcmp((const char *)p1, (const char *)p2);
+}
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
