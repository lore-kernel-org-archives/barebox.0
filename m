Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0kdH-0002Yf-Fw
 for barebox@lists.infradead.org; Wed, 19 Apr 2017 08:06:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Apr 2017 10:06:10 +0200
Message-Id: <20170419080612.19797-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] libgen: implement posix_basename
To: Barebox List <barebox@lists.infradead.org>

There are two different versions of basename(): The GNU version and the
POSIX version. The GNU version never modifies its argument and returns
the empty string when path has a trailing slash, and in particular also
when it is "/". The POSIX version modifies its argument and thus works
properly with strings which have a trailing "/".

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/libgen.h |  1 +
 lib/libgen.c     | 23 +++++++++++++++++++++++
 2 files changed, 24 insertions(+)

diff --git a/include/libgen.h b/include/libgen.h
index cd27fd11e3..71f06eb6f6 100644
--- a/include/libgen.h
+++ b/include/libgen.h
@@ -2,6 +2,7 @@
 #define __LIBGEN_H
 
 char *basename (char *path);
+char *posix_basename(char *path);
 char *dirname (char *path);
 
 #endif /* __LIBGEN_H */
diff --git a/lib/libgen.c b/lib/libgen.c
index 1e43cf3f29..08ef3528af 100644
--- a/lib/libgen.c
+++ b/lib/libgen.c
@@ -37,6 +37,29 @@ char *basename (char *path)
 }
 EXPORT_SYMBOL(basename);
 
+/*
+ * There are two different versions of basename(): The GNU version implemented
+ * above and the POSIX version. The GNU version never modifies its argument and
+ * returns the empty string when path has a trailing slash, and in particular
+ * also when it is "/".
+ */
+char *posix_basename(char *path)
+{
+	char *fname;
+
+	fname = path + strlen(path) - 1;
+
+	while (*fname == '/') {
+		if (fname == path)
+			return path;
+		*fname = '\0';
+		fname--;
+	}
+
+	return basename(path);
+}
+EXPORT_SYMBOL(posix_basename);
+
 char *dirname (char *path)
 {
 	char *fname;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
