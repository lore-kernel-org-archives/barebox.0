Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gqfWG-0001Fp-Cs
 for barebox@lists.infradead.org; Mon, 04 Feb 2019 14:46:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Feb 2019 15:46:37 +0100
Message-Id: <20190204144641.19600-2-s.hauer@pengutronix.de>
In-Reply-To: <20190204144641.19600-1-s.hauer@pengutronix.de>
References: <20190204144641.19600-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/5] fs: let truncate take a loff_t argument
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

loff_t is the correct type for file sizes. Use it to allow to truncate
to sizes bigger than 32bit.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs.c           | 2 +-
 fs/efi.c             | 2 +-
 fs/efivarfs.c        | 2 +-
 fs/fat/fat.c         | 2 +-
 fs/nfs.c             | 2 +-
 fs/omap4_usbbootfs.c | 2 +-
 fs/ramfs.c           | 2 +-
 fs/ratpfs.c          | 2 +-
 fs/smhfs.c           | 2 +-
 fs/tftp.c            | 2 +-
 include/fs.h         | 2 +-
 11 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/fs/devfs.c b/fs/devfs.c
index 007dea96d8..aa44e32613 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -168,7 +168,7 @@ static int devfs_ioctl(struct device_d *_dev, FILE *f, int request, void *buf)
 	return cdev_ioctl(cdev, request, buf);
 }
 
-static int devfs_truncate(struct device_d *dev, FILE *f, ulong size)
+static int devfs_truncate(struct device_d *dev, FILE *f, loff_t size)
 {
 	struct cdev *cdev = f->priv;
 
diff --git a/fs/efi.c b/fs/efi.c
index cd4fee79a1..81c1ffe078 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -305,7 +305,7 @@ static int efifs_lseek(struct device_d *dev, FILE *f, loff_t pos)
 	return 0;
 }
 
-static int efifs_truncate(struct device_d *dev, FILE *f, unsigned long size)
+static int efifs_truncate(struct device_d *dev, FILE *f, loff_t size)
 {
 	struct efifs_file *ufile = f->priv;
 	efi_status_t efiret;
diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index d2615774e3..a911eac3bf 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -288,7 +288,7 @@ static int efivarfs_write(struct device_d *_dev, FILE *f, const void *buf, size_
 	return insize;
 }
 
-static int efivarfs_truncate(struct device_d *dev, FILE *f, ulong size)
+static int efivarfs_truncate(struct device_d *dev, FILE *f, loff_t size)
 {
 	struct efivars_file *efile = f->priv;
 	efi_status_t efiret;
diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index 1367577723..394c75ffc4 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -177,7 +177,7 @@ static int fat_write(struct device_d *_dev, FILE *f, const void *buf, size_t ins
 	return outsize;
 }
 
-static int fat_truncate(struct device_d *dev, FILE *f, ulong size)
+static int fat_truncate(struct device_d *dev, FILE *f, loff_t size)
 {
 	FIL *f_file = f->priv;
 	unsigned long lastofs;
diff --git a/fs/nfs.c b/fs/nfs.c
index c58fca78e5..43476d1c35 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -928,7 +928,7 @@ static void nfs_handler(void *ctx, char *packet, unsigned len)
 	nfs_len = len;
 }
 
-static int nfs_truncate(struct device_d *dev, FILE *f, ulong size)
+static int nfs_truncate(struct device_d *dev, FILE *f, loff_t size)
 {
 	return -ENOSYS;
 }
diff --git a/fs/omap4_usbbootfs.c b/fs/omap4_usbbootfs.c
index cc33287b95..169cde7ddb 100644
--- a/fs/omap4_usbbootfs.c
+++ b/fs/omap4_usbbootfs.c
@@ -57,7 +57,7 @@ static int omap4_usbbootfs_write(
 	return -ENOSYS;
 }
 
-static int omap4_usbbootfs_truncate(struct device_d *dev, FILE *f, ulong size)
+static int omap4_usbbootfs_truncate(struct device_d *dev, FILE *f, loff_t size)
 {
 	return -ENOSYS;
 }
diff --git a/fs/ramfs.c b/fs/ramfs.c
index 153b9b614b..4fba40d313 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -347,7 +347,7 @@ static int ramfs_write(struct device_d *_dev, FILE *f, const void *buf, size_t i
 	return insize;
 }
 
-static int ramfs_truncate(struct device_d *dev, FILE *f, ulong size)
+static int ramfs_truncate(struct device_d *dev, FILE *f, loff_t size)
 {
 	struct inode *inode = f->f_inode;
 	struct ramfs_inode *node = to_ramfs_inode(inode);
diff --git a/fs/ratpfs.c b/fs/ratpfs.c
index dffd276541..b6857c6016 100644
--- a/fs/ratpfs.c
+++ b/fs/ratpfs.c
@@ -77,7 +77,7 @@ static int ratpfs_rm(struct device_d __always_unused *dev,
 }
 
 static int ratpfs_truncate(struct device_d __always_unused *dev,
-			  FILE *f, ulong size)
+			  FILE *f, loff_t size)
 {
 	int len_tx = 1 /* type */
 		+ 4 /* handle */
diff --git a/fs/smhfs.c b/fs/smhfs.c
index 7a6933630c..2e99b05979 100644
--- a/fs/smhfs.c
+++ b/fs/smhfs.c
@@ -56,7 +56,7 @@ static int smhfs_rm(struct device_d __always_unused *dev,
 
 static int smhfs_truncate(struct device_d __always_unused *dev,
 			  FILE __always_unused *f,
-			  ulong __always_unused size)
+			  loff_t __always_unused size)
 {
 	return 0;
 }
diff --git a/fs/tftp.c b/fs/tftp.c
index 41f904f29f..43293272d7 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -93,7 +93,7 @@ struct tftp_priv {
 	IPaddr_t server;
 };
 
-static int tftp_truncate(struct device_d *dev, FILE *f, ulong size)
+static int tftp_truncate(struct device_d *dev, FILE *f, loff_t size)
 {
 	return 0;
 }
diff --git a/include/fs.h b/include/fs.h
index 68b6380bc6..aa23bcc228 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -46,7 +46,7 @@ struct fs_driver_d {
 	int (*unlink)(struct device_d *dev, const char *pathname);
 
 	/* Truncate a file to given size */
-	int (*truncate)(struct device_d *dev, FILE *f, ulong size);
+	int (*truncate)(struct device_d *dev, FILE *f, loff_t size);
 
 	int (*open)(struct device_d *dev, FILE *f, const char *pathname);
 	int (*close)(struct device_d *dev, FILE *f);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
