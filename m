Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-x234.google.com ([2607:f8b0:400e:c01::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uj9g7-0004fk-6T
 for barebox@lists.infradead.org; Sun, 02 Jun 2013 14:54:40 +0000
Received: by mail-pb0-f52.google.com with SMTP id xa12so4500663pbc.25
 for <barebox@lists.infradead.org>; Sun, 02 Jun 2013 07:54:16 -0700 (PDT)
From: Masaki Muranaka <monaka@monami-ya.jp>
Date: Sun,  2 Jun 2013 23:53:48 +0900
Message-Id: <1370184829-66576-2-git-send-email-monaka@monami-ya.com>
In-Reply-To: <1370184829-66576-1-git-send-email-monaka@monami-ya.com>
References: <1370184829-66576-1-git-send-email-monaka@monami-ya.com>
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
Subject: [PATCH 2/3] Refactor malloc.h.
To: barebox@lists.infradead.org

 Some functions should be defined in stdlib.h or unistd.h.
---
 include/malloc.h       |  8 +++-----
 include/malloc_isoc.h  | 11 +++++++++++
 include/malloc_posix.h |  8 ++++++++
 include/stdlib.h       |  1 +
 include/unistd.h       |  6 ++++++
 5 files changed, 29 insertions(+), 5 deletions(-)
 create mode 100644 include/malloc_isoc.h
 create mode 100644 include/malloc_posix.h
 create mode 100644 include/unistd.h

diff --git a/include/malloc.h b/include/malloc.h
index 7b9b062..9554597 100644
--- a/include/malloc.h
+++ b/include/malloc.h
@@ -5,20 +5,18 @@
 
 /* Public routines */
 
-void* malloc(size_t);
-void free(void*);
-void* realloc(void*, size_t);
+#include <malloc_isoc.h>
+#include <malloc_posix.h>
+
 void* memalign(size_t, size_t);
 void* vallocc(size_t);
 void* pvalloc(size_t);
-void* calloc(size_t, size_t);
 void cfree(void*);
 int malloc_trim(size_t);
 size_t malloc_usable_size(void*);
 void malloc_stats(void);
 int mallopt(int, int);
 struct mallinfo mallinfo(void);
-void *sbrk(ptrdiff_t increment);
 
 #endif
 
diff --git a/include/malloc_isoc.h b/include/malloc_isoc.h
new file mode 100644
index 0000000..728cdd9
--- /dev/null
+++ b/include/malloc_isoc.h
@@ -0,0 +1,11 @@
+#ifndef BAREBOX_MALLOC_ISOC_H__
+#define BAREBOX_MALLOC_ISOC_H__
+
+#include <types.h>
+
+void* malloc(size_t);
+void free(void*);
+void* realloc(void*, size_t);
+void* calloc(size_t, size_t);
+
+#endif /* BAREBOX_MALLOC_ISOC_H__ */
diff --git a/include/malloc_posix.h b/include/malloc_posix.h
new file mode 100644
index 0000000..d10675d
--- /dev/null
+++ b/include/malloc_posix.h
@@ -0,0 +1,8 @@
+#ifndef BAREBOX_MALLOC_POSIX_H__
+#define BAREBOX_MALLOC_POSIX_H__
+
+#include <types.h>
+
+void *sbrk(ptrdiff_t increment);
+
+#endif /* BAREBOX_MALLOC_POSIX_H__ */
diff --git a/include/stdlib.h b/include/stdlib.h
index dc72013..0d82bbf 100644
--- a/include/stdlib.h
+++ b/include/stdlib.h
@@ -12,5 +12,6 @@ void srand(unsigned int seed);
 /* fill a buffer with pseudo-random data */
 void get_random_bytes(char *buf, int len);
 
+#include <malloc_isoc.h>
 
 #endif /* __STDLIB_H */
diff --git a/include/unistd.h b/include/unistd.h
new file mode 100644
index 0000000..a6abfa6
--- /dev/null
+++ b/include/unistd.h
@@ -0,0 +1,6 @@
+#ifndef BAREBOX_UNISTD_H__
+#define BAREBOX_UNISTD_H__
+
+#include <malloc_posix.h>
+
+#endif /* BAREBOX_UNISTD_H__ */
-- 
1.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
