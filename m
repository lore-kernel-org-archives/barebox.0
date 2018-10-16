Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gCUpa-0004d6-97
 for barebox@lists.infradead.org; Tue, 16 Oct 2018 19:16:58 +0000
Received: by mail-pf1-x441.google.com with SMTP id l81-v6so11931598pfg.3
 for <barebox@lists.infradead.org>; Tue, 16 Oct 2018 12:16:27 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Oct 2018 12:15:43 -0700
Message-Id: <20181016191552.16690-14-andrew.smirnov@gmail.com>
In-Reply-To: <20181016191552.16690-1-andrew.smirnov@gmail.com>
References: <20181016191552.16690-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 13/22] linux: string: Port kbasename()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port kbasename() from Linux and use it to implement basename() we
already have.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/linux/string.h | 12 ++++++++++++
 lib/libgen.c           | 16 ++--------------
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/include/linux/string.h b/include/linux/string.h
index 3418b4fbe..c9823dab8 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -111,6 +111,18 @@ extern char *strim(char *);
 
 void *memchr_inv(const void *start, int c, size_t bytes);
 
+/**
+ * kbasename - return the last part of a pathname.
+ *
+ * @path: path to extract the filename from.
+ */
+static inline const char *kbasename(const char *path)
+{
+	const char *tail = strrchr(path, '/');
+	return tail ? tail + 1 : path;
+}
+
+
 #ifdef __cplusplus
 }
 #endif
diff --git a/lib/libgen.c b/lib/libgen.c
index 08ef3528a..61a8670fb 100644
--- a/lib/libgen.c
+++ b/lib/libgen.c
@@ -17,23 +17,11 @@
 
 #include <common.h>
 #include <libgen.h>
+#include <linux/string.h>
 
 char *basename (char *path)
 {
-	char *fname;
-
-	if(!strchr(path, '/'))
-		return path;
-
-	fname = path + strlen(path) - 1;
-	while (fname >= path) {
-		if (*fname == '/') {
-			fname++;
-			break;
-		}
-		fname--;
-	}
-	return fname;
+	return (char *)kbasename(path);
 }
 EXPORT_SYMBOL(basename);
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
