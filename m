Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YxEFt-0001Kj-46
 for barebox@lists.infradead.org; Tue, 26 May 2015 12:46:50 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 26 May 2015 14:46:21 +0200
Message-Id: <1432644381-29474-3-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1432644381-29474-1-git-send-email-mkl@pengutronix.de>
References: <1432644381-29474-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 2/2] blspec: automatically append bootargs
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

When bootloader spec is used to boot devices it is often desirable
to boot the same image from different media. Since the fs images
need to contain the root= parameters to tell Linux where to boot
from the images can't be identical on different media.

This patch changes this by introducing a 'appendroot' option for
bootloader spec. If set to true, barebox will construct a Linux
commandline option for the device the bootloader spec entry is found
on.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/blspec.c         | 41 ++++++++++++++++++++++++++++++++++++++++-
 drivers/mtd/ubi/kapi.c  |  1 +
 fs/fs.c                 | 13 +++++++++++++
 fs/nfs.c                | 16 ++++++++++++++++
 fs/ubifs/ubifs.c        | 23 +++++++++++++++++++++++
 include/fs.h            |  1 +
 include/linux/mtd/ubi.h |  1 +
 7 files changed, 95 insertions(+), 1 deletion(-)

diff --git a/common/blspec.c b/common/blspec.c
index 11e2a8a53698..c3f0a3138d43 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -622,6 +622,41 @@ int blspec_scan_devicename(struct blspec *blspec, const char *devname)
 	return blspec_scan_device(blspec, dev);
 }
 
+static int blspec_append_root(struct blspec_entry *entry)
+{
+	const char *appendroot;
+	const char *rootarg;
+	struct device_d *fsdev;
+	int ret;
+
+	appendroot = blspec_entry_var_get(entry, "appendroot");
+	if (!appendroot || strcmp(appendroot, "true"))
+		return 0;
+
+	fsdev = get_dev_by_mountpath(entry->rootpath);
+	if (!fsdev) {
+		ret = -EINVAL;
+		pr_err("Cannot get fs device for %s\n", entry->rootpath);
+		goto err_out;
+	}
+
+	rootarg = dev_get_param(fsdev, "linux.bootargs");
+	if (!rootarg) {
+		ret = -EINVAL;
+		pr_err("rootarg not implemented for fs %s\n", dev_name(fsdev));
+		goto err_out;
+	}
+
+	globalvar_add_simple("linux.bootargs.dyn.blspec.appendroot", rootarg);
+
+	return 0;
+
+err_out:
+	pr_err("unable to append root argument\n");
+
+	return ret;
+}
+
 /*
  * blspec_boot - boot an entry
  *
@@ -671,6 +706,10 @@ int blspec_boot(struct blspec_entry *entry, int verbose, int dryrun)
 
 	globalvar_add_simple("linux.bootargs.dyn.blspec", options);
 
+	ret = blspec_append_root(entry);
+	if (ret)
+		goto err_out;
+
 	pr_info("booting %s from %s\n", blspec_entry_var_get(entry, "title"),
 			entry->cdev ? dev_name(entry->cdev->dev) : "none");
 
@@ -689,7 +728,7 @@ int blspec_boot(struct blspec_entry *entry, int verbose, int dryrun)
 	ret = bootm_boot(&data);
 	if (ret)
 		pr_err("Booting failed\n");
-
+err_out:
 	free((char *)data.oftree_file);
 	free((char *)data.initrd_file);
 	free((char *)data.os_file);
diff --git a/drivers/mtd/ubi/kapi.c b/drivers/mtd/ubi/kapi.c
index 08cb8dd7e0e7..7fc1aa8d70cc 100644
--- a/drivers/mtd/ubi/kapi.c
+++ b/drivers/mtd/ubi/kapi.c
@@ -36,6 +36,7 @@ void ubi_do_get_device_info(struct ubi_device *ubi, struct ubi_device_info *di)
 	di->min_io_size = ubi->min_io_size;
 	di->max_write_size = ubi->max_write_size;
 	di->ro_mode = ubi->ro_mode;
+	di->mtd = ubi->mtd;
 }
 EXPORT_SYMBOL_GPL(ubi_do_get_device_info);
 
diff --git a/fs/fs.c b/fs/fs.c
index a056d83d3d92..b8d3d3468f01 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -225,6 +225,19 @@ struct cdev *get_cdev_by_mountpath(const char *path)
 	return fsdev->cdev;
 }
 
+/*
+ * get_cdev_by_mountpath - return the cdev the given path
+ *                         is mounted on
+ */
+struct device_d *get_dev_by_mountpath(const char *path)
+{
+	struct fs_device_d *fsdev;
+
+	fsdev = get_fsdevice_by_path(path);
+
+	return &fsdev->dev;
+}
+
 char *get_mounted_path(const char *path)
 {
 	struct fs_device_d *fdev;
diff --git a/fs/nfs.c b/fs/nfs.c
index 2738c781d72b..ba00270a8b23 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1306,6 +1306,20 @@ static int nfs_stat(struct device_d *dev, const char *filename, struct stat *s)
 	}
 }
 
+static void nfs_set_rootarg(struct nfs_priv *npriv, struct device_d *dev)
+{
+	char *str;
+	const char *ip;
+
+	ip = ip_to_string(npriv->server);
+	str = asprintf("root=/dev/nfs nfsroot=%s:%s,v3,tcp",
+			ip, npriv->path);
+
+	dev_add_param_fixed(dev, "linux.bootargs", str);
+
+	free(str);
+}
+
 static int nfs_probe(struct device_d *dev)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
@@ -1369,6 +1383,8 @@ static int nfs_probe(struct device_d *dev)
 		goto err2;
 	}
 
+	nfs_set_rootarg(npriv, dev);
+
 	free(tmp);
 
 	return 0;
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index 68d90b36e75a..48a68372d062 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -36,6 +36,7 @@
 #include <linux/zlib.h>
 #include <xfuncs.h>
 #include <fcntl.h>
+#include <linux/mtd/mtd.h>
 
 #include "ubifs.h"
 
@@ -584,6 +585,26 @@ static int ubifs_readlink(struct device_d *dev, const char *pathname, char *buf,
 	return 0;
 }
 
+static void ubifs_set_rootarg(struct ubifs_priv *priv, struct device_d *dev)
+{
+	struct ubi_volume_info vi = {};
+	struct ubi_device_info di = {};
+	struct mtd_info *mtd;
+	char *str;
+
+	ubi_get_volume_info(priv->ubi, &vi);
+	ubi_get_device_info(vi.ubi_num, &di);
+
+	mtd = di.mtd;
+
+	str = asprintf("root=ubi0:%s ubi.mtd=%s rootfstype=ubifs",
+			vi.name, mtd->cdev.partname);
+
+	dev_add_param_fixed(dev, "linux.bootargs", str);
+
+	free(str);
+}
+
 static int ubifs_probe(struct device_d *dev)
 {
 	struct fs_device_d *fsdev = dev_to_fs_device(dev);
@@ -612,6 +633,8 @@ static int ubifs_probe(struct device_d *dev)
 		goto err;
 	}
 
+	ubifs_set_rootarg(priv, dev);
+
 	return 0;
 err:
 	ubi_close_volume(priv->ubi);
diff --git a/include/fs.h b/include/fs.h
index f95464de6a01..81a166c37cef 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -174,6 +174,7 @@ char *normalise_link(const char *pathname, const char* symlink);
 char *get_mounted_path(const char *path);
 
 struct cdev *get_cdev_by_mountpath(const char *path);
+struct device_d *get_dev_by_mountpath(const char *path);
 
 /* Register a new filesystem driver */
 int register_fs_driver(struct fs_driver_d *fsdrv);
diff --git a/include/linux/mtd/ubi.h b/include/linux/mtd/ubi.h
index 274ec4ee41ea..0614681d731c 100644
--- a/include/linux/mtd/ubi.h
+++ b/include/linux/mtd/ubi.h
@@ -154,6 +154,7 @@ struct ubi_device_info {
 	int max_write_size;
 	int ro_mode;
 	dev_t cdev;
+	struct mtd_info *mtd;
 };
 
 /*
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
