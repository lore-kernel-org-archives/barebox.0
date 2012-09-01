Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T7mww-0006PC-KZ
 for barebox@lists.infradead.org; Sat, 01 Sep 2012 12:37:21 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 89252DC704D
 for <barebox@lists.infradead.org>; Sat,  1 Sep 2012 14:42:31 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  1 Sep 2012 14:37:16 +0200
Message-Id: <1346503053-21862-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120901123511.GA19233@game.jcrosoft.org>
References: <20120901123511.GA19233@game.jcrosoft.org>
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
Subject: [PATCH 01/18] fs: add readlink support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 fs/fs.c      |   58 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/fs.h |    5 +++++
 2 files changed, 63 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 8ab1a3a..dc9deae 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -890,6 +890,64 @@ int close(int fd)
 }
 EXPORT_SYMBOL(close);
 
+int readlink(const char *pathname, char *buf, size_t bufsiz)
+{
+	struct fs_driver_d *fsdrv;
+	struct fs_device_d *fsdev;
+	char *p = normalise_path(pathname);
+	char *freep = p;
+	int ret;
+	size_t len = 0;
+	char tmp[PATH_MAX];
+
+	memset(tmp, 0, PATH_MAX);
+
+	buf[0] = 0;
+
+	ret = path_check_prereq(pathname, S_IFLNK);
+	if (ret)
+		goto out;
+
+	fsdev = get_fs_device_and_root_path(&p);
+	if (!fsdev) {
+		ret = -ENODEV;
+		goto out;
+	}
+	fsdrv = fsdev->driver;
+
+	len = min(bufsiz, (size_t)(PATH_MAX - 1));
+	if (fsdrv->readlink)
+		ret = fsdrv->readlink(&fsdev->dev, p, tmp, len);
+	else
+		ret = -ENOSYS;
+
+	if (ret)
+		goto out;
+
+	if (tmp[0] == '/') {
+		int l = strlen(fsdev->path);
+
+		if (fsdev->path[l - 1] == '/')
+			l--;
+
+		if (l) {
+			len -= l;
+			strncat(buf, fsdev->path, l);
+		}
+	}
+
+	strncat(buf, tmp, len);
+
+out:
+	free(freep);
+
+	if (ret)
+		errno = -ret;
+
+	return ret;
+}
+EXPORT_SYMBOL(readlink);
+
 static int fs_match(struct device_d *dev, struct driver_d *drv)
 {
 	return strcmp(dev->name, drv->name) ? -1 : 0;
diff --git a/include/fs.h b/include/fs.h
index 22470e6..96fe9be 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -51,6 +51,9 @@ struct fs_driver_d {
 	/* Truncate a file to given size */
 	int (*truncate)(struct device_d *dev, FILE *f, ulong size);
 
+	int (*readlink)(struct device_d *dev, const char *pathname, char *name,
+			size_t size);
+
 	int (*open)(struct device_d *dev, FILE *f, const char *pathname);
 	int (*close)(struct device_d *dev, FILE *f);
 	int (*read)(struct device_d *dev, FILE *f, void *buf, size_t size);
@@ -129,6 +132,8 @@ DIR *opendir(const char *pathname);
 struct dirent *readdir(DIR *dir);
 int closedir(DIR *dir);
 
+int readlink(const char *path, char *buf, size_t bufsiz);
+
 int mount (const char *device, const char *fsname, const char *path);
 int umount(const char *pathname);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
