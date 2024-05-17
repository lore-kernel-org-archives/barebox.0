Delivery-date: Fri, 17 May 2024 11:02:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7tUQ-001DO8-0v
	for lore@lore.pengutronix.de;
	Fri, 17 May 2024 11:02:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7tUO-0005yZ-37
	for lore@pengutronix.de; Fri, 17 May 2024 11:02:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1C6WyUfYXaPB9O0k2WMV0omjyl9w1tKOhe7eQzggCd4=; b=tYbtCF1aqOBFbZ0VOftQmVuO0T
	j/JBgJFcl5gKsZ/2uinjPir5xXLaqb/QFjCBtukun8s914EPjERpju3f+M+g6o4FBR8LmECG38BB9
	v47g2yJsa/174a9Ztu4leKfLmWsFYUmQrvtjdEKw5NIryxB0WgMjJc9I6u0pJOZSeeGQdp363o83/
	dJW8F65/RUdXP+Uo4Y2+nnLybWP8k0lPQXBr9GGnKRS1v9ZMv/BYqUOqEz3zqh8Iufl3ne3Yti0J4
	iynmIsE22+Oko3QQhQ1vZAHEIFakqrfWiQYRz3tBvKbI8e7n76wUcKenNrMyGVsGAL4WD9Cqju5dz
	zsejyFnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7tTy-00000007HWN-3Q1z;
	Fri, 17 May 2024 09:02:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7sKt-000000077D1-2tJg
	for barebox@lists.infradead.org;
	Fri, 17 May 2024 07:49:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sKr-0007uc-SK; Fri, 17 May 2024 09:49:01 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sKr-001q1F-Aj; Fri, 17 May 2024 09:49:01 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7sKr-003Dzy-0m;
	Fri, 17 May 2024 09:49:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 17 May 2024 09:49:00 +0200
Message-Id: <20240517074900.768777-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_004904_257639_DDC122B3 
X-CRM114-Status: GOOD (  15.75  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] treewide: use an unsigned type for ioctl commands
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux & BSD define the ioctl command parameter to be always unsigned.
POSIX differs and uses a signed integer instead, but as we are importing
Linux code, it makes sense to use the same signedness to avoid false
positive warnings about sign-extended constants that get truncated.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/nand.c                | 2 +-
 drivers/firmware/qemu_fw_cfg.c | 2 +-
 drivers/misc/jtag.c            | 2 +-
 drivers/misc/storage-by-uuid.c | 2 +-
 drivers/mtd/core.c             | 2 +-
 drivers/mtd/mtd.h              | 2 +-
 drivers/mtd/ubi/barebox.c      | 4 ++--
 drivers/video/fb.c             | 2 +-
 fs/devfs-core.c                | 2 +-
 fs/devfs.c                     | 2 +-
 fs/fs.c                        | 2 +-
 fs/uimagefs.c                  | 2 +-
 include/driver.h               | 4 ++--
 include/fs.h                   | 2 +-
 include/linux/fs.h             | 2 +-
 include/sys/ioctl.h            | 2 +-
 16 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/commands/nand.c b/commands/nand.c
index d07444aee0be..d80ec24a7b92 100644
--- a/commands/nand.c
+++ b/commands/nand.c
@@ -102,7 +102,7 @@ static int do_nand(int argc, char *argv[])
 
 	if (command == NAND_MARKBAD || command == NAND_MARKGOOD) {
 		const char *str;
-		int ctl;
+		unsigned int ctl;
 
 		if (command == NAND_MARKBAD) {
 			str = "bad";
diff --git a/drivers/firmware/qemu_fw_cfg.c b/drivers/firmware/qemu_fw_cfg.c
index 3f129a2c1e02..71af4d973cd3 100644
--- a/drivers/firmware/qemu_fw_cfg.c
+++ b/drivers/firmware/qemu_fw_cfg.c
@@ -75,7 +75,7 @@ static void fw_cfg_io_cleanup(struct fw_cfg *fw_cfg)
 	release_region(fw_cfg->iores);
 }
 
-static int fw_cfg_ioctl(struct cdev *cdev, int request, void *buf)
+static int fw_cfg_ioctl(struct cdev *cdev, unsigned int request, void *buf)
 {
 	struct fw_cfg *fw_cfg = to_fw_cfg(cdev);
 	int ret = 0;
diff --git a/drivers/misc/jtag.c b/drivers/misc/jtag.c
index e884e58bac0f..d7cd2dabf7bc 100644
--- a/drivers/misc/jtag.c
+++ b/drivers/misc/jtag.c
@@ -80,7 +80,7 @@ static void jtag_output(const struct jtag_platdata *pdata,
 	}
 }
 
-static int jtag_ioctl(struct cdev *inode, int cmd, void *arg)
+static int jtag_ioctl(struct cdev *inode, unsigned int cmd, void *arg)
 {
 	int ret = 0;
 	struct jtag_info *info = (struct jtag_info *)inode->priv;
diff --git a/drivers/misc/storage-by-uuid.c b/drivers/misc/storage-by-uuid.c
index 5548f477a4c8..db15b64d7dcf 100644
--- a/drivers/misc/storage-by-uuid.c
+++ b/drivers/misc/storage-by-uuid.c
@@ -33,7 +33,7 @@ static ssize_t sbu_write(struct cdev *cdev, const void *buf, size_t count, loff_
 	return cdev_write(sbu->rcdev, buf, count, offset, flags);
 }
 
-static int sbu_ioctl(struct cdev *cdev, int request, void *buf)
+static int sbu_ioctl(struct cdev *cdev, unsigned int request, void *buf)
 {
 	struct sbu *sbu = cdev->priv;
 
diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index ec2c3ff7bb41..562443275fe6 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -243,7 +243,7 @@ static int mtd_op_protect(struct cdev *cdev, size_t count, loff_t offset, int pr
 
 #endif /* CONFIG_MTD_WRITE */
 
-int mtd_ioctl(struct cdev *cdev, int request, void *buf)
+int mtd_ioctl(struct cdev *cdev, unsigned int request, void *buf)
 {
 	int ret = 0;
 	struct mtd_info *mtd = cdev->priv;
diff --git a/drivers/mtd/mtd.h b/drivers/mtd/mtd.h
index 725731e6266d..c0af4f39d4c4 100644
--- a/drivers/mtd/mtd.h
+++ b/drivers/mtd/mtd.h
@@ -30,4 +30,4 @@ struct cdev;
  */
 void mtdcore_add_hook(struct mtddev_hook *hook);
 
-int mtd_ioctl(struct cdev *cdev, int request, void *buf);
+int mtd_ioctl(struct cdev *cdev, unsigned int request, void *buf);
diff --git a/drivers/mtd/ubi/barebox.c b/drivers/mtd/ubi/barebox.c
index 7ae5b4c4b4ff..5d7bf69cc7c2 100644
--- a/drivers/mtd/ubi/barebox.c
+++ b/drivers/mtd/ubi/barebox.c
@@ -178,7 +178,7 @@ static int ubi_volume_cdev_truncate(struct cdev *cdev, size_t size)
 	return 0;
 }
 
-static int ubi_volume_cdev_ioctl(struct cdev *cdev, int cmd, void *buf)
+static int ubi_volume_cdev_ioctl(struct cdev *cdev, unsigned int cmd, void *buf)
 {
 	struct ubi_volume_cdev_priv *priv = cdev->priv;
 	struct ubi_device *ubi = priv->ubi;
@@ -450,7 +450,7 @@ int ubi_api_rename_volumes(int ubi_num, struct ubi_rnvol_req *req)
 	return err;
 }
 
-static int ubi_cdev_ioctl(struct cdev *cdev, int cmd, void *buf)
+static int ubi_cdev_ioctl(struct cdev *cdev, unsigned int cmd, void *buf)
 {
 	struct ubi_device *ubi = cdev->priv;
 
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 6f412d62c434..a752c114e2d0 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -9,7 +9,7 @@
 #include <fs.h>
 #include <init.h>
 
-static int fb_ioctl(struct cdev* cdev, int req, void *data)
+static int fb_ioctl(struct cdev* cdev, unsigned int req, void *data)
 {
 	struct fb_info *info = cdev->priv;
 	struct fb_info **fb;
diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 21e5c2dc969a..ed445fbd4712 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -261,7 +261,7 @@ int cdev_flush(struct cdev *cdev)
 	return cdev->ops->flush(cdev);
 }
 
-int cdev_ioctl(struct cdev *cdev, int request, void *buf)
+int cdev_ioctl(struct cdev *cdev, unsigned int request, void *buf)
 {
 	if (!cdev->ops->ioctl)
 		return -EINVAL;
diff --git a/fs/devfs.c b/fs/devfs.c
index f5bad5aa9bf2..9dbfa91b1d9f 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -124,7 +124,7 @@ static int devfs_flush(struct device *_dev, FILE *f)
 	return cdev_flush(cdev);
 }
 
-static int devfs_ioctl(struct device *_dev, FILE *f, int request, void *buf)
+static int devfs_ioctl(struct device *_dev, FILE *f, unsigned int request, void *buf)
 {
 	struct cdev *cdev = f->priv;
 
diff --git a/fs/fs.c b/fs/fs.c
index 3a5298649cc1..656434f67ffa 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -381,7 +381,7 @@ int ftruncate(int fd, loff_t length)
 	return 0;
 }
 
-int ioctl(int fd, int request, void *buf)
+int ioctl(int fd, unsigned int request, void *buf)
 {
 	struct fs_driver *fsdrv;
 	FILE *f = fd_to_file(fd, false);
diff --git a/fs/uimagefs.c b/fs/uimagefs.c
index 735a35e5000f..6913685c0cf6 100644
--- a/fs/uimagefs.c
+++ b/fs/uimagefs.c
@@ -181,7 +181,7 @@ static int uimagefs_stat(struct device *dev, const char *filename,
 	return 0;
 }
 
-static int uimagefs_ioctl(struct device *dev, FILE *f, int request, void *buf)
+static int uimagefs_ioctl(struct device *dev, FILE *f, unsigned int request, void *buf)
 {
 	struct uimagefs_handle *priv = dev->priv;
 
diff --git a/include/driver.h b/include/driver.h
index c8eb7605e768..1c263158181f 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -441,7 +441,7 @@ struct cdev_operations {
 	/*! Called in response of write to this device. Required */
 	ssize_t (*write)(struct cdev*, const void* buf, size_t count, loff_t offset, ulong flags);
 
-	int (*ioctl)(struct cdev*, int, void *);
+	int (*ioctl)(struct cdev*, unsigned int, void *);
 	int (*lseek)(struct cdev*, loff_t);
 	int (*open)(struct cdev*, unsigned long flags);
 	int (*close)(struct cdev*);
@@ -528,7 +528,7 @@ int cdev_close(struct cdev *cdev);
 int cdev_flush(struct cdev *cdev);
 ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags);
 ssize_t cdev_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags);
-int cdev_ioctl(struct cdev *cdev, int cmd, void *buf);
+int cdev_ioctl(struct cdev *cdev, unsigned int cmd, void *buf);
 int cdev_erase(struct cdev *cdev, loff_t count, loff_t offset);
 int cdev_lseek(struct cdev*, loff_t);
 int cdev_protect(struct cdev*, size_t count, loff_t offset, int prot);
diff --git a/include/fs.h b/include/fs.h
index 70903142e89b..f87c4c40273f 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -56,7 +56,7 @@ struct fs_driver {
 	int (*flush)(struct device *dev, FILE *f);
 	int (*lseek)(struct device *dev, FILE *f, loff_t pos);
 
-	int (*ioctl)(struct device *dev, FILE *f, int request, void *buf);
+	int (*ioctl)(struct device *dev, FILE *f, unsigned int request, void *buf);
 	int (*erase)(struct device *dev, FILE *f, loff_t count,
 			loff_t offset);
 	int (*protect)(struct device *dev, FILE *f, size_t count,
diff --git a/include/linux/fs.h b/include/linux/fs.h
index fc1357137ade..b1161c4a881f 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -471,7 +471,7 @@ struct file_operations {
 	int (*iterate) (struct file *, struct dir_context *);
 	ssize_t (*read) (struct file *, char __user *, size_t, loff_t *);
 	ssize_t (*write) (struct file *, const char __user *, size_t, loff_t *);
-	int (*ioctl) (struct file *, int request, void *buf);
+	int (*ioctl) (struct file *, unsigned int request, void *buf);
 	int (*truncate) (struct file *, loff_t);
 };
 
diff --git a/include/sys/ioctl.h b/include/sys/ioctl.h
index 5a949f1f3c0c..5b5ca1c37389 100644
--- a/include/sys/ioctl.h
+++ b/include/sys/ioctl.h
@@ -3,6 +3,6 @@
 #ifndef __SYS_IOCTL_H
 #define __SYS_IOCTL_H
 
-int ioctl(int fd, int request, void *buf);
+int ioctl(int fd, unsigned int request, void *buf);
 
 #endif /* __SYS_IOCTL_H */
-- 
2.39.2



