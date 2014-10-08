Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XbsAR-0008J1-0N
 for barebox@lists.infradead.org; Wed, 08 Oct 2014 14:24:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 Oct 2014 16:24:13 +0200
Message-Id: <1412778255-4153-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] fs: implement fstat
To: barebox@lists.infradead.org

fstat is useful to get information about an already opened file. Add
it to barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c      | 16 ++++++++++++++++
 include/fs.h |  1 +
 2 files changed, 17 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 436f5cb..ffdfa2c 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1472,6 +1472,22 @@ out:
 }
 EXPORT_SYMBOL(lstat);
 
+int fstat(int fd, struct stat *s)
+{
+	FILE *f;
+	struct fs_device_d *fsdev;
+
+	if (check_fd(fd))
+		return -errno;
+
+	f = &files[fd];
+
+	fsdev = f->fsdev;
+
+	return fsdev->driver->stat(&fsdev->dev, f->path, s);
+}
+EXPORT_SYMBOL(fstat);
+
 int mkdir (const char *pathname, mode_t mode)
 {
 	struct fs_driver_d *fsdrv;
diff --git a/include/fs.h b/include/fs.h
index 6eddb23..63e35ca 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -114,6 +114,7 @@ int close(int fd);
 int flush(int fd);
 int lstat(const char *filename, struct stat *s);
 int stat(const char *filename, struct stat *s);
+int fstat(int fd, struct stat *s);
 ssize_t read(int fd, void *buf, size_t count);
 ssize_t pread(int fd, void *buf, size_t count, loff_t offset);
 int ioctl(int fd, int request, void *buf);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
