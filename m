Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo1.mail-out.ovh.net ([178.32.97.215]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1StAD3-00084q-AL
 for barebox@lists.infradead.org; Mon, 23 Jul 2012 04:25:34 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id D2B54FF9327
 for <barebox@lists.infradead.org>; Mon, 23 Jul 2012 06:31:08 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 23 Jul 2012 06:26:00 +0200
Message-Id: <1343017563-27932-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1343017563-27932-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120723042052.GK22657@game.jcrosoft.org>
 <1343017563-27932-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/7] decompressor: import malloc/free implementation for linux
 3.4
To: barebox@lists.infradead.org

This is need for gunzip support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/linux/decompress/mm.h |   68 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 include/linux/decompress/mm.h

diff --git a/include/linux/decompress/mm.h b/include/linux/decompress/mm.h
new file mode 100644
index 0000000..0c35411
--- /dev/null
+++ b/include/linux/decompress/mm.h
@@ -0,0 +1,68 @@
+/*
+ * linux/compr_mm.h
+ *
+ * Memory management for pre-boot and ramdisk uncompressors
+ *
+ * Authors: Alain Knaff <alain@knaff.lu>
+ *
+ */
+
+#ifndef DECOMPR_MM_H
+#define DECOMPR_MM_H
+
+#ifdef STATIC
+
+/* Code active when included from pre-boot environment: */
+
+/*
+ * Some architectures want to ensure there is no local data in their
+ * pre-boot environment, so that data can arbitrarily relocated (via
+ * GOT references).  This is achieved by defining STATIC_RW_DATA to
+ * be null.
+ */
+#ifndef STATIC_RW_DATA
+#define STATIC_RW_DATA static
+#endif
+
+/* A trivial malloc implementation, adapted from
+ *  malloc by Hannu Savolainen 1993 and Matthias Urlichs 1994
+ */
+STATIC_RW_DATA unsigned long malloc_ptr;
+STATIC_RW_DATA int malloc_count;
+
+static void *malloc(int size)
+{
+	void *p;
+
+	if (size < 0)
+		return NULL;
+	if (!malloc_ptr)
+		malloc_ptr = free_mem_ptr;
+
+	malloc_ptr = (malloc_ptr + 3) & ~3;     /* Align */
+
+	p = (void *)malloc_ptr;
+	malloc_ptr += size;
+
+	if (free_mem_end_ptr && malloc_ptr >= free_mem_end_ptr)
+		return NULL;
+
+	malloc_count++;
+	return p;
+}
+
+static void free(void *where)
+{
+	malloc_count--;
+	if (!malloc_count)
+		malloc_ptr = free_mem_ptr;
+}
+
+#define large_malloc(a) malloc(a)
+#define large_free(a) free(a)
+
+#define INIT
+
+#endif /* STATIC */
+
+#endif /* DECOMPR_MM_H */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
