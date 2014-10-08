Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XbsAR-0008J4-0H
 for barebox@lists.infradead.org; Wed, 08 Oct 2014 14:24:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 Oct 2014 16:24:14 +0200
Message-Id: <1412778255-4153-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1412778255-4153-1-git-send-email-s.hauer@pengutronix.de>
References: <1412778255-4153-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] libfile: add diff_file function
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/libfile.h |  2 ++
 lib/libfile.c     | 71 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 73 insertions(+)

diff --git a/include/libfile.h b/include/libfile.h
index 4a25a91..315adb2 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -15,4 +15,6 @@ int write_file(const char *filename, void *buf, size_t size);
 
 int copy_file(const char *src, const char *dst, int verbose);
 
+int diff_file(const char *f1, const char *f2);
+
 #endif /* __LIBFILE_H */
diff --git a/lib/libfile.c b/lib/libfile.c
index c626e2f..1d773e3 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -331,3 +331,74 @@ out:
 	return ret;
 }
 EXPORT_SYMBOL(copy_file);
+
+/**
+ * diff_file - Compare two files
+ * @f1:		The first file
+ * @f2:		The second file
+ *
+ * Return: 0 if both files are identical, 1 if they differ,
+ *         a negative error code if some error occured
+ */
+int diff_file(const char *f1, const char *f2)
+{
+	int fd1, fd2, ret;
+	struct stat s1, s2;
+	void *buf1, *buf2;
+	loff_t left;
+
+	fd1 = open(f1, O_RDONLY);
+	if (fd1 < 0)
+		return -errno;
+
+	fd2 = open(f2, O_RDONLY);
+	if (fd2 < 0) {
+		ret = -errno;
+		goto err_out1;
+	}
+
+	ret = fstat(fd1, &s1);
+	if (ret)
+		goto err_out2;
+
+	ret = fstat(fd2, &s2);
+	if (ret)
+		goto err_out2;
+
+	if (s1.st_size != s2.st_size)
+		return 1;
+
+	buf1 = xmalloc(RW_BUF_SIZE);
+	buf2 = xmalloc(RW_BUF_SIZE);
+
+	left = s1.st_size;
+	while (left) {
+		loff_t now = min(left, (loff_t)RW_BUF_SIZE);
+
+		ret = read_full(fd1, buf1, now);
+		if (ret < 0)
+			goto err_out3;
+
+		ret = read_full(fd2, buf2, now);
+		if (ret < 0)
+			goto err_out3;
+
+		if (memcmp(buf1, buf2, now)) {
+			ret = 1;
+			goto err_out3;
+		}
+
+		left -= now;
+	}
+
+	ret = 0;
+
+err_out3:
+	free(buf1);
+	free(buf2);
+err_out2:
+	close(fd2);
+err_out1:
+	close(fd1);
+	return ret;
+}
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
