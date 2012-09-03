Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T8Y1k-0008AM-BG
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 14:53:24 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id A4840DC08C5
 for <barebox@lists.infradead.org>; Mon,  3 Sep 2012 16:58:41 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  3 Sep 2012 16:53:40 +0200
Message-Id: <1346684020-998-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120903145042.GD19931@game.jcrosoft.org>
References: <20120903145042.GD19931@game.jcrosoft.org>
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
Subject: [PATCH 01/18 v4] fs: add readlink support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 fs/fs.c      |   37 +++++++++++++++++++++++++++++++++++++
 include/fs.h |    5 +++++
 2 files changed, 42 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 8ab1a3a..2320c3c 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -890,6 +890,43 @@ int close(int fd)
 }
 EXPORT_SYMBOL(close);
 
+int readlink(const char *pathname, char *buf, size_t bufsiz)
+{
+	struct fs_driver_d *fsdrv;
+	struct fs_device_d *fsdev;
+	char *p = normalise_path(pathname);
+	char *freep = p;
+	int ret;
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
+	if (fsdrv->readlink)
+		ret = fsdrv->readlink(&fsdev->dev, p, buf, bufsiz);
+	else
+		ret = -ENOSYS;
+
+	if (ret)
+		goto out;
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
