Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T8z8L-00080v-R1
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 19:50:05 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 62BF4DC5AFC
 for <barebox@lists.infradead.org>; Tue,  4 Sep 2012 21:55:20 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  4 Sep 2012 21:50:02 +0200
Message-Id: <1346788217-16042-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346788217-16042-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120904194720.GB32603@game.jcrosoft.org>
 <1346788217-16042-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 04/19] fs: add symlink support
To: barebox@lists.infradead.org

Limit it's support to existing file only

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 fs/fs.c      |   51 +++++++++++++++++++++++++++++++++++++++++++++++++++
 include/fs.h |    3 +++
 2 files changed, 54 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 323b6c2..f46c606 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -927,6 +927,57 @@ out:
 }
 EXPORT_SYMBOL(readlink);
 
+int symlink(const char *pathname, const char *newpath)
+{
+	struct fs_driver_d *fsdrv;
+	struct fs_device_d *fsdev;
+	char *p;
+	char *freep = normalise_path(pathname);
+	int ret;
+	struct stat s;
+
+	if (!freep)
+		return -ENOMEM;
+
+	if (!stat(freep, &s) && S_ISDIR(s.st_mode)) {
+		ret = -ENOSYS;
+		goto out;
+	}
+
+	free(freep);
+	freep = p = normalise_path(newpath);
+
+	if (!p)
+		return -ENOMEM;
+
+	ret = lstat(p, &s);
+	if (!ret) {
+		ret = -EEXIST;
+		goto out;
+	}
+
+	fsdev = get_fs_device_and_root_path(&p);
+	if (!fsdev) {
+		ret = -ENODEV;
+		goto out;
+	}
+	fsdrv = fsdev->driver;
+
+	if (fsdrv->symlink) {
+		ret = fsdrv->symlink(&fsdev->dev, pathname, p);
+	} else {
+		ret = -EPERM;
+	}
+
+out:
+	free(freep);
+	if (ret)
+		errno = -ret;
+
+	return ret;
+}
+EXPORT_SYMBOL(symlink);
+
 static int fs_match(struct device_d *dev, struct driver_d *drv)
 {
 	return strcmp(dev->name, drv->name) ? -1 : 0;
diff --git a/include/fs.h b/include/fs.h
index 98210cf..d96de0e 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -50,6 +50,8 @@ struct fs_driver_d {
 	/* Truncate a file to given size */
 	int (*truncate)(struct device_d *dev, FILE *f, ulong size);
 
+	int (*symlink)(struct device_d *dev, const char *pathname,
+		       const char *newpath);
 	int (*readlink)(struct device_d *dev, const char *pathname, char *name,
 			size_t size);
 
@@ -131,6 +133,7 @@ DIR *opendir(const char *pathname);
 struct dirent *readdir(DIR *dir);
 int closedir(DIR *dir);
 
+int symlink(const char *pathname, const char *newpath);
 int readlink(const char *path, char *buf, size_t bufsiz);
 
 int mount (const char *device, const char *fsname, const char *path);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
