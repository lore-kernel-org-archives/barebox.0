Delivery-date: Wed, 14 Dec 2022 13:37:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5R0P-003cq1-Sk
	for lore@lore.pengutronix.de; Wed, 14 Dec 2022 13:37:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p5R0O-0002Hn-8G
	for lore@pengutronix.de; Wed, 14 Dec 2022 13:37:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VSJ5G+c0Xl/9leoTC1ZutwO8FI440TlShOpE5HVES/Q=; b=rzrzIG7IY69J1RXfvoMhoyha+Z
	htvS+LuCroT6E7jwJ5iFWxseFtZzjpNT1r5t6xc0KKzulxAznhBjkKzhWopsudq556K76zQ3M4Fid
	VdcqerJMCDZZolyytxPhQcKzsDTPUXwU7PEmHn45LyL6OXEsb+wS/7MTiruydIVWdqlPfLjbRXrGb
	0i2j2Ac2mk7aZHVCpXcgeBHk+YohgPXpOrWYZEmY9Oc0pxHenKJrcSgWR+zZoTTK62nuzEgyNOBwB
	INiOVuyFuklIuLleqA/Um5iNXS+rb9CS6EQWw7nQXYn1vqQz91tWxRu/LmPb6e6bwhnuMySDnW1nF
	2vz7le9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5Qyv-00GML9-UV; Wed, 14 Dec 2022 12:35:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5Qyi-00GMF1-Pu
	for barebox@lists.infradead.org; Wed, 14 Dec 2022 12:35:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p5Qyh-0001sT-Ih; Wed, 14 Dec 2022 13:35:15 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1p5Qyg-004TOI-7P; Wed, 14 Dec 2022 13:35:15 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1p5Qyg-000nNO-35; Wed, 14 Dec 2022 13:35:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 14 Dec 2022 13:35:12 +0100
Message-Id: <20221214123512.189688-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221214123512.189688-1-s.hauer@pengutronix.de>
References: <20221214123512.189688-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221214_043517_208200_57DFBF99 
X-CRM114-Status: GOOD (  18.82  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] Rename struct fs_driver_d to fs_driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Remove the meaningless '_d' suffix.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mount.c       |  2 +-
 fs/bpkfs.c             |  2 +-
 fs/cramfs/cramfs.c     |  2 +-
 fs/devfs.c             |  2 +-
 fs/efi.c               |  2 +-
 fs/efivarfs.c          |  2 +-
 fs/ext4/ext_barebox.c  |  2 +-
 fs/fat/fat.c           |  2 +-
 fs/fs.c                | 32 ++++++++++++++++----------------
 fs/jffs2/fs.c          |  2 +-
 fs/nfs.c               |  2 +-
 fs/omap4_usbbootfs.c   |  2 +-
 fs/pstore/fs.c         |  2 +-
 fs/ramfs.c             |  2 +-
 fs/ratpfs.c            |  2 +-
 fs/smhfs.c             |  2 +-
 fs/squashfs/squashfs.c |  2 +-
 fs/tftp.c              |  2 +-
 fs/ubifs/ubifs.c       |  2 +-
 fs/ubootvarfs.c        |  2 +-
 fs/uimagefs.c          |  2 +-
 include/dirent.h       |  2 +-
 include/fs.h           |  8 ++++----
 23 files changed, 41 insertions(+), 41 deletions(-)

diff --git a/commands/mount.c b/commands/mount.c
index 9684edf7c5..fddd770dc9 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -48,7 +48,7 @@ static int do_mount(int argc, char *argv[])
 		if (verbose) {
 			printf("\nSupported filesystems:\n\n");
 			bus_for_each_driver(&fs_bus, drv) {
-				struct fs_driver_d * fsdrv = drv_to_fs_driver(drv);
+				struct fs_driver * fsdrv = drv_to_fs_driver(drv);
 				printf("%s\n", fsdrv->drv.name);
 			}
 		}
diff --git a/fs/bpkfs.c b/fs/bpkfs.c
index 6e22a5ebec..ea2c279585 100644
--- a/fs/bpkfs.c
+++ b/fs/bpkfs.c
@@ -491,7 +491,7 @@ err:
 	return ret;
 }
 
-static struct fs_driver_d bpkfs_driver = {
+static struct fs_driver bpkfs_driver = {
 	.open      = bpkfs_open,
 	.close     = bpkfs_close,
 	.read      = bpkfs_read,
diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
index 4322bbffd4..4676af8a55 100644
--- a/fs/cramfs/cramfs.c
+++ b/fs/cramfs/cramfs.c
@@ -496,7 +496,7 @@ static void cramfs_remove(struct device *dev)
 	free(priv);
 }
 
-static struct fs_driver_d cramfs_driver = {
+static struct fs_driver cramfs_driver = {
 	.read		= cramfs_read,
 	.drv = {
 		.probe = cramfs_probe,
diff --git a/fs/devfs.c b/fs/devfs.c
index eaee51c375..c30ae4f384 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -314,7 +314,7 @@ static void devfs_delete(struct device *dev)
 {
 }
 
-static struct fs_driver_d devfs_driver = {
+static struct fs_driver devfs_driver = {
 	.read      = devfs_read,
 	.write     = devfs_write,
 	.lseek     = devfs_lseek,
diff --git a/fs/efi.c b/fs/efi.c
index 12275e4a85..0789f6ecee 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -479,7 +479,7 @@ static void efifs_remove(struct device *dev)
 	free(dev->priv);
 }
 
-static struct fs_driver_d efifs_driver = {
+static struct fs_driver efifs_driver = {
 	.create    = efifs_create,
 	.unlink    = efifs_unlink,
 	.open      = efifs_open,
diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index bba2c33340..5d805aefbf 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -347,7 +347,7 @@ static void efivarfs_remove(struct device *dev)
 	free(priv);
 }
 
-static struct fs_driver_d efivarfs_driver = {
+static struct fs_driver efivarfs_driver = {
 	.create    = efivars_create,
 	.unlink    = efivars_unlink,
 	.open      = efivarfs_open,
diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
index e0b5951e86..93dc9b4b14 100644
--- a/fs/ext4/ext_barebox.c
+++ b/fs/ext4/ext_barebox.c
@@ -298,7 +298,7 @@ static void ext_remove(struct device *dev)
 	free(fs);
 }
 
-static struct fs_driver_d ext_driver = {
+static struct fs_driver ext_driver = {
 	.read      = ext_read,
 	.type      = filetype_ext,
 	.flags     = 0,
diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index 79c7d26ab7..f3c7f9b863 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -373,7 +373,7 @@ static void fat_remove(struct device *dev)
 	free(dev->priv);
 }
 
-static struct fs_driver_d fat_driver = {
+static struct fs_driver fat_driver = {
 	.open      = fat_open,
 	.close     = fat_close,
 	.read      = fat_read,
diff --git a/fs/fs.c b/fs/fs.c
index 0e1e9b0dd0..752688b574 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -179,7 +179,7 @@ static FILE *files;
 static struct dentry *d_root;
 static struct vfsmount *mnt_root;
 
-static struct fs_driver_d *ramfs_driver;
+static struct fs_driver *ramfs_driver;
 
 static int init_fs(void)
 {
@@ -313,7 +313,7 @@ EXPORT_SYMBOL(creat);
 
 static int fsdev_truncate(struct device *dev, FILE *f, loff_t length)
 {
-	struct fs_driver_d *fsdrv = f->fsdev->driver;
+	struct fs_driver *fsdrv = f->fsdev->driver;
 
 	return fsdrv->truncate ? fsdrv->truncate(dev, f, length) : -EROFS;
 }
@@ -343,7 +343,7 @@ int ftruncate(int fd, loff_t length)
 
 int ioctl(int fd, int request, void *buf)
 {
-	struct fs_driver_d *fsdrv;
+	struct fs_driver *fsdrv;
 	FILE *f = fd_to_file(fd);
 	int ret;
 
@@ -363,7 +363,7 @@ int ioctl(int fd, int request, void *buf)
 
 static ssize_t __read(FILE *f, void *buf, size_t count)
 {
-	struct fs_driver_d *fsdrv;
+	struct fs_driver *fsdrv;
 	int ret;
 
 	if ((f->flags & O_ACCMODE) == O_WRONLY) {
@@ -425,7 +425,7 @@ EXPORT_SYMBOL(read);
 
 static ssize_t __write(FILE *f, const void *buf, size_t count)
 {
-	struct fs_driver_d *fsdrv;
+	struct fs_driver *fsdrv;
 	int ret;
 
 	fsdrv = f->fsdev->driver;
@@ -494,7 +494,7 @@ EXPORT_SYMBOL(write);
 
 int flush(int fd)
 {
-	struct fs_driver_d *fsdrv;
+	struct fs_driver *fsdrv;
 	FILE *f = fd_to_file(fd);
 	int ret;
 
@@ -515,7 +515,7 @@ int flush(int fd)
 
 loff_t lseek(int fd, loff_t offset, int whence)
 {
-	struct fs_driver_d *fsdrv;
+	struct fs_driver *fsdrv;
 	FILE *f = fd_to_file(fd);
 	loff_t pos;
 	int ret;
@@ -569,7 +569,7 @@ EXPORT_SYMBOL(lseek);
 
 int erase(int fd, loff_t count, loff_t offset)
 {
-	struct fs_driver_d *fsdrv;
+	struct fs_driver *fsdrv;
 	FILE *f = fd_to_file(fd);
 	int ret;
 
@@ -601,7 +601,7 @@ EXPORT_SYMBOL(erase);
 
 int protect(int fd, size_t count, loff_t offset, int prot)
 {
-	struct fs_driver_d *fsdrv;
+	struct fs_driver *fsdrv;
 	FILE *f = fd_to_file(fd);
 	int ret;
 
@@ -631,7 +631,7 @@ EXPORT_SYMBOL(protect);
 
 int discard_range(int fd, loff_t count, loff_t offset)
 {
-	struct fs_driver_d *fsdrv;
+	struct fs_driver *fsdrv;
 	FILE *f = fd_to_file(fd);
 	int ret;
 
@@ -675,7 +675,7 @@ int protect_file(const char *file, int prot)
 
 void *memmap(int fd, int flags)
 {
-	struct fs_driver_d *fsdrv;
+	struct fs_driver *fsdrv;
 	FILE *f = fd_to_file(fd);
 	void *retp = MAP_FAILED;
 	int ret;
@@ -702,7 +702,7 @@ EXPORT_SYMBOL(memmap);
 
 int close(int fd)
 {
-	struct fs_driver_d *fsdrv;
+	struct fs_driver *fsdrv;
 	FILE *f = fd_to_file(fd);
 	int ret = 0;
 
@@ -735,7 +735,7 @@ static int fs_probe(struct device *dev)
 {
 	struct fs_device *fsdev = dev_to_fs_device(dev);
 	struct driver *drv = dev->driver;
-	struct fs_driver_d *fsdrv = container_of(drv, struct fs_driver_d, drv);
+	struct fs_driver *fsdrv = container_of(drv, struct fs_driver, drv);
 	int ret;
 
 	ret = dev->driver->probe(dev);
@@ -847,7 +847,7 @@ static int fs_bus_init(void)
 }
 pure_initcall(fs_bus_init);
 
-int register_fs_driver(struct fs_driver_d *fsdrv)
+int register_fs_driver(struct fs_driver *fsdrv)
 {
 	fsdrv->drv.bus = &fs_bus;
 	register_driver(&fsdrv->drv);
@@ -863,7 +863,7 @@ const char *fs_detect(const char *filename, const char *fsoptions)
 {
 	enum filetype type;
 	struct driver *drv;
-	struct fs_driver_d *fdrv;
+	struct fs_driver *fdrv;
 	bool loop = false;
 	unsigned long long offset = 0;
 
@@ -2491,7 +2491,7 @@ EXPORT_SYMBOL(rmdir);
 int open(const char *pathname, int flags, ...)
 {
 	struct fs_device *fsdev;
-	struct fs_driver_d *fsdrv;
+	struct fs_driver *fsdrv;
 	struct super_block *sb;
 	FILE *f;
 	int error = 0;
diff --git a/fs/jffs2/fs.c b/fs/jffs2/fs.c
index 8b526f7b7f..6f2cbff6c9 100644
--- a/fs/jffs2/fs.c
+++ b/fs/jffs2/fs.c
@@ -466,7 +466,7 @@ static void jffs2_remove(struct device *dev)
 }
 
 
-static struct fs_driver_d jffs2_driver = {
+static struct fs_driver jffs2_driver = {
 	.open = jffs2_open,
 	.close = jffs2_close,
 	.read = jffs2_read,
diff --git a/fs/nfs.c b/fs/nfs.c
index 1b38923ce0..446d0f7946 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1530,7 +1530,7 @@ static void nfs_remove(struct device *dev)
 	free(npriv);
 }
 
-static struct fs_driver_d nfs_driver = {
+static struct fs_driver nfs_driver = {
 	.open      = nfs_open,
 	.close     = nfs_close,
 	.read      = nfs_read,
diff --git a/fs/omap4_usbbootfs.c b/fs/omap4_usbbootfs.c
index 1ccfe14182..985d968cc5 100644
--- a/fs/omap4_usbbootfs.c
+++ b/fs/omap4_usbbootfs.c
@@ -149,7 +149,7 @@ static void omap4_usbbootfs_remove(struct device *dev)
 {
 }
 
-static struct fs_driver_d omap4_usbbootfs_driver = {
+static struct fs_driver omap4_usbbootfs_driver = {
 	.open    = omap4_usbbootfs_open,
 	.close   = omap4_usbbootfs_close,
 	.read    = omap4_usbbootfs_read,
diff --git a/fs/pstore/fs.c b/fs/pstore/fs.c
index 24b5306d15..777e2448cc 100644
--- a/fs/pstore/fs.c
+++ b/fs/pstore/fs.c
@@ -254,7 +254,7 @@ static int pstore_probe(struct device *dev)
 	return 0;
 }
 
-static struct fs_driver_d pstore_driver = {
+static struct fs_driver pstore_driver = {
 	.open      = pstore_open,
 	.close     = pstore_close,
 	.read      = pstore_read,
diff --git a/fs/ramfs.c b/fs/ramfs.c
index 9e1f22c152..117e69b70c 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -450,7 +450,7 @@ static void ramfs_remove(struct device *dev)
 {
 }
 
-static struct fs_driver_d ramfs_driver = {
+static struct fs_driver ramfs_driver = {
 	.read      = ramfs_read,
 	.write     = ramfs_write,
 	.memmap    = ramfs_memmap,
diff --git a/fs/ratpfs.c b/fs/ratpfs.c
index 8432198ebd..9e85fc596e 100644
--- a/fs/ratpfs.c
+++ b/fs/ratpfs.c
@@ -438,7 +438,7 @@ static void ratpfs_remove(struct device __always_unused *dev)
 	barebox_ratp_fs_mount(NULL);
 }
 
-static struct fs_driver_d ratpfs_driver = {
+static struct fs_driver ratpfs_driver = {
 	.open      = ratpfs_open,
 	.close     = ratpfs_close,
 	.read      = ratpfs_read,
diff --git a/fs/smhfs.c b/fs/smhfs.c
index 6431b894f6..5165bf9394 100644
--- a/fs/smhfs.c
+++ b/fs/smhfs.c
@@ -148,7 +148,7 @@ static void smhfs_remove(struct device __always_unused *dev)
 {
 }
 
-static struct fs_driver_d smhfs_driver = {
+static struct fs_driver smhfs_driver = {
 	.open      = smhfs_open,
 	.close     = smhfs_close,
 	.read      = smhfs_read,
diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
index 17663d8976..f2e5769a19 100644
--- a/fs/squashfs/squashfs.c
+++ b/fs/squashfs/squashfs.c
@@ -251,7 +251,7 @@ struct squashfs_dir {
 	char root_d_name[256];
 };
 
-static struct fs_driver_d squashfs_driver = {
+static struct fs_driver squashfs_driver = {
 	.open		= squashfs_open,
 	.close		= squashfs_close,
 	.read		= squashfs_read,
diff --git a/fs/tftp.c b/fs/tftp.c
index 6509d97d7e..0b0b86a1a0 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -1051,7 +1051,7 @@ static void tftp_remove(struct device *dev)
 	free(priv);
 }
 
-static struct fs_driver_d tftp_driver = {
+static struct fs_driver tftp_driver = {
 	.open      = tftp_open,
 	.close     = tftp_close,
 	.read      = tftp_read,
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index 8a190309aa..ad288f4daa 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -503,7 +503,7 @@ static void ubifs_remove(struct device *dev)
 	free(priv);
 }
 
-static struct fs_driver_d ubifs_driver = {
+static struct fs_driver ubifs_driver = {
 	.open      = ubifs_open,
 	.close     = ubifs_close,
 	.read      = ubifs_read,
diff --git a/fs/ubootvarfs.c b/fs/ubootvarfs.c
index 2559cfd111..32cf574e57 100644
--- a/fs/ubootvarfs.c
+++ b/fs/ubootvarfs.c
@@ -481,7 +481,7 @@ static void ubootvarfs_remove(struct device *dev)
 	free(data);
 }
 
-static struct fs_driver_d ubootvarfs_driver = {
+static struct fs_driver ubootvarfs_driver = {
 	.truncate = ubootvarfs_truncate,
 	.read = ubootvarfs_read,
 	.write = ubootvarfs_write,
diff --git a/fs/uimagefs.c b/fs/uimagefs.c
index 4e98d82f38..9cae2091da 100644
--- a/fs/uimagefs.c
+++ b/fs/uimagefs.c
@@ -520,7 +520,7 @@ err:
 	return ret;
 }
 
-static struct fs_driver_d uimagefs_driver = {
+static struct fs_driver uimagefs_driver = {
 	.open      = uimagefs_open,
 	.close     = uimagefs_close,
 	.read      = uimagefs_read,
diff --git a/include/dirent.h b/include/dirent.h
index b8fbfafe3c..75627730f8 100644
--- a/include/dirent.h
+++ b/include/dirent.h
@@ -10,7 +10,7 @@ struct dirent {
 
 typedef struct dir {
 	struct device *dev;
-	struct fs_driver_d *fsdrv;
+	struct fs_driver *fsdrv;
 	struct dirent d;
 	void *priv; /* private data for the fs driver */
 	struct list_head entries;
diff --git a/include/fs.h b/include/fs.h
index e792c9e9ba..c64e78b38c 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -39,7 +39,7 @@ typedef struct filep {
 
 #define FS_DRIVER_NO_DEV	1
 
-struct fs_driver_d {
+struct fs_driver {
 	int (*probe) (struct device *dev);
 
 	/* create a file. The file is guaranteed to not exist */
@@ -97,7 +97,7 @@ struct fs_device {
 	char *backingstore; /* the device we are associated with */
 	struct device dev; /* our own device */
 
-	struct fs_driver_d *driver;
+	struct fs_driver *driver;
 
 	struct cdev *cdev;
 	bool loop;
@@ -121,7 +121,7 @@ static inline bool is_tftp_fs(const char *path)
 	return __is_tftp_fs(path);
 }
 
-#define drv_to_fs_driver(d) container_of(d, struct fs_driver_d, drv)
+#define drv_to_fs_driver(d) container_of(d, struct fs_driver, drv)
 
 int flush(int fd);
 int umount_by_cdev(struct cdev *cdev);
@@ -158,7 +158,7 @@ char *get_mounted_path(const char *path);
 struct cdev *get_cdev_by_mountpath(const char *path);
 
 /* Register a new filesystem driver */
-int register_fs_driver(struct fs_driver_d *fsdrv);
+int register_fs_driver(struct fs_driver *fsdrv);
 
 void automount_remove(const char *_path);
 int automount_add(const char *path, const char *cmd);
-- 
2.30.2



