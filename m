Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eecE2-0005gY-DQ
 for barebox@lists.infradead.org; Thu, 25 Jan 2018 07:45:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 25 Jan 2018 08:45:15 +0100
Message-Id: <20180125074520.10320-4-s.hauer@pengutronix.de>
In-Reply-To: <20180125074520.10320-1-s.hauer@pengutronix.de>
References: <20180125074520.10320-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/8] libfile: implement make_temp
To: Barebox List <barebox@lists.infradead.org>

Create a make_temp() function which creates a name for a temporary file.
Since we do not have any concurrency in barebox we do not need to create
the file right away and can leave that to the caller. Unlike unix
mktemp the resulting filename is dynamically allocated and must be
freed by the caller.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/libfile.h |  2 ++
 lib/libfile.c     | 27 +++++++++++++++++++++++++++
 2 files changed, 29 insertions(+)

diff --git a/include/libfile.h b/include/libfile.h
index dd0b00f988..6dbb81a241 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -26,4 +26,6 @@ int make_directory(const char *pathname);
 
 int unlink_recursive(const char *path, char **failedpath);
 
+char *make_temp(const char *template);
+
 #endif /* __LIBFILE_H */
diff --git a/lib/libfile.c b/lib/libfile.c
index 6b70306dbd..79054eb5ac 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -20,6 +20,7 @@
 #include <malloc.h>
 #include <libfile.h>
 #include <progress.h>
+#include <stdlib.h>
 #include <linux/stat.h>
 
 /*
@@ -485,3 +486,29 @@ int open_and_lseek(const char *filename, int mode, loff_t pos)
 
 	return fd;
 }
+
+/**
+ * make_temp - create a name for a temporary file
+ * @template:	The filename prefix
+ *
+ * This function creates a name for a temporary file. @template is used as a
+ * template for the name which gets appended a 8-digit hexadecimal number to
+ * create a unique filename.
+ *
+ * Return: This function returns a filename which can be used as a temporary
+ *         file lateron. The returned filename must be freed by the caller.
+ */
+char *make_temp(const char *template)
+{
+	char *name = NULL;
+	struct stat s;
+	int ret;
+
+	do {
+		free(name);
+		name = basprintf("/tmp/%s-%08x", template, random32());
+		ret = stat(name, &s);
+	} while (!ret);
+
+	return name;
+}
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
