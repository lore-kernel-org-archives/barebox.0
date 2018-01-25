Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eecE2-0005gz-DM
 for barebox@lists.infradead.org; Thu, 25 Jan 2018 07:45:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 25 Jan 2018 08:45:16 +0100
Message-Id: <20180125074520.10320-5-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/8] libfile: implement a function to cache a file
To: Barebox List <barebox@lists.infradead.org>

Due to the nature of TFTP which can't lseek and due to the silliness
of our filesystem implementation which can't cache accesses we have to
manually cache files on TFTP filesystems sometimes. Make it easier
for them by providing a cache_file() function which copies the file
from TFTP to RAM.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/libfile.h |  2 ++
 lib/libfile.c     | 30 +++++++++++++++++++++++++++++-
 2 files changed, 31 insertions(+), 1 deletion(-)

diff --git a/include/libfile.h b/include/libfile.h
index 6dbb81a241..beec7cff79 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -28,4 +28,6 @@ int unlink_recursive(const char *path, char **failedpath);
 
 char *make_temp(const char *template);
 
+int cache_file(const char *path, char **newpath);
+
 #endif /* __LIBFILE_H */
diff --git a/lib/libfile.c b/lib/libfile.c
index 79054eb5ac..6dce5cbfee 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -496,7 +496,7 @@ int open_and_lseek(const char *filename, int mode, loff_t pos)
  * create a unique filename.
  *
  * Return: This function returns a filename which can be used as a temporary
- *         file lateron. The returned filename must be freed by the caller.
+ *         file later on. The returned filename must be freed by the caller.
  */
 char *make_temp(const char *template)
 {
@@ -512,3 +512,31 @@ char *make_temp(const char *template)
 
 	return name;
 }
+
+/**
+ * cache_file - Cache a file in /tmp
+ * @path:	The file to cache
+ * @newpath:	The return path where the file is copied to
+ *
+ * This function copies a given file to /tmp and returns its name in @newpath.
+ * @newpath is dynamically allocated and must be freed by the caller.
+ *
+ * Return: 0 for success, negative error code otherwise.
+ */
+int cache_file(const char *path, char **newpath)
+{
+	char *npath;
+	int ret;
+
+	npath = make_temp("filecache");
+
+	ret = copy_file(path, npath, 0);
+	if (ret) {
+		free(npath);
+		return ret;
+	}
+
+	*newpath = npath;
+
+	return 0;
+}
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
