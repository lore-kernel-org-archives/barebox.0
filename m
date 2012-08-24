Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T4lqT-0005ox-VC
 for barebox@lists.infradead.org; Fri, 24 Aug 2012 04:50:12 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 20C3DDC0F71
 for <barebox@lists.infradead.org>; Fri, 24 Aug 2012 06:55:06 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 24 Aug 2012 06:50:03 +0200
Message-Id: <1345783818-28784-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1345783818-28784-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120824044613.GI6271@game.jcrosoft.org>
 <1345783818-28784-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 03/18] fs: add symlink support
To: barebox@lists.infradead.org

Limit it's support to existing file only

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 fs/fs.c      |   43 +++++++++++++++++++++++++++++++++++++++++++
 include/fs.h |    4 ++++
 2 files changed, 47 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index c950054..a19e1f4 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -949,6 +949,49 @@ out:
 }
 EXPORT_SYMBOL(readlink);
 
+int symlink(const char *pathname, const char *newpath)
+{
+	struct fs_driver_d *fsdrv;
+	struct fs_device_d *fsdev;
+	char *p = normalise_path(pathname);
+	int ret;
+	struct stat s;
+
+	if (!stat(p, &s) && S_ISDIR(s.st_mode)) {
+		ret = -ENOSYS;
+		goto out;
+	}
+
+	free(p);
+	p = normalise_path(newpath);
+
+	ret = stat(p, &s);
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
+		ret = -EROFS;
+	}
+
+out:
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
index 52e0f4f..d652ade 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -51,6 +51,8 @@ struct fs_driver_d {
 	/* Truncate a file to given size */
 	int (*truncate)(struct device_d *dev, FILE *f, ulong size);
 
+	int (*symlink)(struct device_d *dev, const char *pathname,
+		       const char *newpath);
 	int (*readlink)(struct device_d *dev, const char *pathname, char *name,
 			size_t size);
 
@@ -136,6 +138,8 @@ DIR *opendir(const char *pathname);
 struct dirent *readdir(DIR *dir);
 int closedir(DIR *dir);
 
+
+int symlink(const char *pathname, const char *newpath);
 ssize_t readlink(const char *path, char *buf, size_t bufsiz);
 
 int mount (const char *device, const char *fsname, const char *path);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
