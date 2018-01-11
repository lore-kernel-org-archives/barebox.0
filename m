Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZXdJ-000458-V5
 for barebox@lists.infradead.org; Thu, 11 Jan 2018 07:50:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Jan 2018 08:50:06 +0100
Message-Id: <20180111075012.9050-2-s.hauer@pengutronix.de>
In-Reply-To: <20180111075012.9050-1-s.hauer@pengutronix.de>
References: <20180111075012.9050-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/7] fs: implement ftruncate
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c          | 22 ++++++++++++++++++++++
 include/unistd.h |  1 +
 2 files changed, 23 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index f61ee091b5..051af8d19f 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -742,6 +742,28 @@ int creat(const char *pathname, mode_t mode)
 }
 EXPORT_SYMBOL(creat);
 
+int ftruncate(int fd, loff_t length)
+{
+	struct fs_driver_d *fsdrv;
+	FILE *f;
+	int ret;
+
+	if (check_fd(fd))
+		return -errno;
+
+	f = &files[fd];
+
+	fsdrv = f->fsdev->driver;
+
+	ret = fsdrv->truncate(&f->fsdev->dev, f, length);
+	if (ret)
+		return ret;
+
+	f->size = length;
+
+	return 0;
+}
+
 int ioctl(int fd, int request, void *buf)
 {
 	struct fs_driver_d *fsdrv;
diff --git a/include/unistd.h b/include/unistd.h
index 31f430a5b6..f392e6dd6c 100644
--- a/include/unistd.h
+++ b/include/unistd.h
@@ -20,5 +20,6 @@ int symlink(const char *pathname, const char *newpath);
 int readlink(const char *path, char *buf, size_t bufsiz);
 int chdir(const char *pathname);
 const char *getcwd(void);
+int ftruncate(int fd, loff_t length);
 
 #endif /* __UNISTD_H */
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
