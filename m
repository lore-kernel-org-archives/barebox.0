Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XmMfm-0003fa-DP
 for barebox@lists.infradead.org; Thu, 06 Nov 2014 13:00:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Nov 2014 13:59:34 +0100
Message-Id: <1415278778-20826-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1415278778-20826-1-git-send-email-s.hauer@pengutronix.de>
References: <1415278778-20826-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/11] libfile: Add copy_recursive
To: barebox@lists.infradead.org

To recursively copy a directory tree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/libfile.h |  2 ++
 lib/libfile.c     | 40 ++++++++++++++++++++++++++++++++++++++++
 2 files changed, 42 insertions(+)

diff --git a/include/libfile.h b/include/libfile.h
index 6c48ce0..d5b914a 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -15,6 +15,8 @@ int write_file(const char *filename, void *buf, size_t size);
 
 int copy_file(const char *src, const char *dst, int verbose);
 
+int copy_recursive(const char *src, const char *dst);
+
 int compare_file(const char *f1, const char *f2);
 
 #endif /* __LIBFILE_H */
diff --git a/lib/libfile.c b/lib/libfile.c
index 7ed4b93..8acff04 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -332,6 +332,46 @@ out:
 }
 EXPORT_SYMBOL(copy_file);
 
+int copy_recursive(const char *src, const char *dst)
+{
+	struct stat s;
+	DIR *dir;
+	struct dirent *d;
+	int ret;
+
+	ret = stat(src, &s);
+	if (ret)
+		return ret;
+
+	if (!S_ISDIR(s.st_mode))
+		return copy_file(src, dst, 0);
+
+	ret = make_directory(dst);
+	if (ret)
+		return ret;
+
+	dir = opendir(src);
+	if (!dir)
+		return -EIO;
+
+	while ((d = readdir(dir))) {
+		char *from, *to;
+		if (!strcmp(d->d_name, ".") || !strcmp(d->d_name, ".."))
+			continue;
+
+		from = asprintf("%s/%s", src, d->d_name);
+		to = asprintf("%s/%s", dst, d->d_name);
+		ret = copy_recursive(from, to);
+		if (ret)
+			break;
+		free(from);
+		free(to);
+	}
+	closedir(dir);
+
+	return ret;
+}
+
 /**
  * compare_file - Compare two files
  * @f1:		The first file
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
