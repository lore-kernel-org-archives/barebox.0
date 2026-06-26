Delivery-date: Fri, 26 Jun 2026 10:51:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2HY-00A19z-1M
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 10:51:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2HW-000208-Kr
	for lore@pengutronix.de; Fri, 26 Jun 2026 10:51:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qvqs9ZispN7JY7c8r1vWkQ1mPSn5D7I86xS1Gm1CFyY=; b=iCz8RKZ4KMXXG0dNg8pzRmWw9h
	+zn+4yEJgeFMHudZmLH+788Yxo09ru3eZrPK/0FEcaOkwlHKyB9rbmPaWewd+bAoxo2+CqBWntFTW
	dzwfCFHMJ8CFIWiwAAtpo22BgYje9DlGmcv1j//zZsn7zRuj8KmTubzGo1tX6JBwB79Lbb709ycSl
	BV5FIZtJehVXEhClynAcbe0F4gReHnbs2DJRlffFqClJIgydy/k2Q2CeLVhmT4oAccMSWNlH5G0L9
	qzas9gUq6xOjHEuPx9Jz2i2nSqWRn4jtu/zpIVK3dXip78LE8g7Vs/2y/8EnIOPPW0GYVAroC3bm7
	LbpqhKJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Ci-0000000AtNu-1hwE;
	Fri, 26 Jun 2026 08:46:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Cd-0000000AtEv-3dlD
	for barebox@bombadil.infradead.org;
	Fri, 26 Jun 2026 08:46:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=qvqs9ZispN7JY7c8r1vWkQ1mPSn5D7I86xS1Gm1CFyY=; b=K2D0mynV5Mcm8nST0jlg1ammYc
	L79Qo1qZ1TpyIgs+dIO2QdZj0m9Ys1hnWsezbnqC/8mzVil4wT6IysjExPgyHh4UbQff8TkqH6MRz
	kKr3QLYc5PvBgJFvRNb0krxIFBNIyzhIBuVcC+7+1jTGy8wDs0s7SucD7OkoB2/5kxbakqc5bFGdW
	TFN4CFyZqVGsJky8sRntbtuD8QlExeS0q/tzQFcfqXhFZSWKgYKy5mAKE9n2UFh5MbI0hgvlpkcpN
	mw+1lJ5JQT2WlMWHLe7rRoVAIPKUuXrOxKpNT1xyU3fSLvAXcWQn/1aiPpN4UoEa40z/B7TPC4/j/
	L8NCz3CQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wd2CY-00000004cm5-2Fs4
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 08:46:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd2CW-0003ZP-AR; Fri, 26 Jun 2026 10:46:16 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 10:42:33 +0200
Message-ID: <20260626084608.1388806-23-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626084608.1388806-1-a.fatoum@barebox.org>
References: <20260626084608.1388806-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_094619_704780_C82F2AFA 
X-CRM114-Status: GOOD (  17.21  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 22/26] fs: fat: support larger block device sectors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The FAT filesystem implementation already has variable sector size support,
but we kept _MAX_SS fixed at the minimum of 512 bytes, which disabled it.

Further, the glue between the filesystem and the cdev layer still hardcoded
512-byte.

Set _MAX_SS as 4096 and fix the glue to be able to use the underlying
block device's block size.

PBL is kept at the existing fixed 512-byte sector size.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 fs/fat/diskio.h     |  9 ++++++++
 fs/fat/fat-diskio.c | 10 ++++++++-
 fs/fat/fat.c        | 51 +++++++++++++++++++++++++++++++++------------
 fs/fat/ffconf.h     |  6 +++++-
 4 files changed, 61 insertions(+), 15 deletions(-)

diff --git a/fs/fat/diskio.h b/fs/fat/diskio.h
index 57626d2fbd7b..04a587e3bc47 100644
--- a/fs/fat/diskio.h
+++ b/fs/fat/diskio.h
@@ -14,6 +14,7 @@
 
 #define _USE_IOCTL	1	/* 1: Use disk_ioctl fucntion */
 
+#include "disks.h"
 #include "integer.h"
 
 
@@ -42,6 +43,14 @@ DRESULT disk_write (FATFS *fatfs, const BYTE*, DWORD, BYTE);
 #endif
 DRESULT disk_ioctl (FATFS *fatfs, BYTE, void*);
 
+#if IN_PROPER
+unsigned int disk_sector_size(FATFS *fat);
+#else
+static inline unsigned int disk_sector_size(FATFS *fat)
+{
+	return SECTOR_SIZE;
+}
+#endif
 
 
 /* Disk Status Bits (DSTATUS) */
diff --git a/fs/fat/fat-diskio.c b/fs/fat/fat-diskio.c
index aa16d3bdc44b..6ba18993b870 100644
--- a/fs/fat/fat-diskio.c
+++ b/fs/fat/fat-diskio.c
@@ -23,7 +23,15 @@ DWORD get_fattime(void)
 
 DRESULT disk_ioctl (FATFS *fat, BYTE command, void *buf)
 {
-	return 0;
+	switch (command) {
+	case GET_SECTOR_SIZE:
+		*(WORD *)buf = disk_sector_size(fat);
+		return RES_OK;
+	case CTRL_SYNC:
+		return RES_OK;
+	default:
+		return RES_PARERR;
+	}
 }
 
 WCHAR ff_convert(WCHAR src, UINT dir)
diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index 93d1e08b8456..0402db1d945a 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -25,6 +25,8 @@
 #include <linux/ctype.h>
 #include <xfuncs.h>
 #include <fcntl.h>
+#include <block.h>
+#include <linux/sizes.h>
 #include "ff.h"
 #include "integer.h"
 #include "diskio.h"
@@ -36,33 +38,44 @@ struct fat_priv {
 
 /* ---------------------------------------------------------------*/
 
+unsigned int disk_sector_size(FATFS *fat)
+{
+	struct fat_priv *priv = fat->userdata;
+
+	return cdev_blocksize(priv->cdev);
+}
+
 DRESULT disk_read(FATFS *fat, BYTE *buf, DWORD sector, BYTE count)
 {
 	struct fat_priv *priv = fat->userdata;
+	unsigned int sector_size = disk_sector_size(fat);
+	size_t len = count * sector_size;
 	int ret;
 
 	debug("%s: sector: %ld count: %d\n", __func__, sector, count);
 
-	ret = cdev_read(priv->cdev, buf, count << 9, (loff_t)sector * 512, 0);
-	if (ret != count << 9)
-		return ret;
+	ret = cdev_read(priv->cdev, buf, len, (loff_t)sector * sector_size, 0);
+	if (ret != len)
+		return RES_ERROR;
 
-	return 0;
+	return RES_OK;
 }
 
 DRESULT disk_write(FATFS *fat, const BYTE *buf, DWORD sector, BYTE count)
 {
 	struct fat_priv *priv = fat->userdata;
+	unsigned int sector_size = disk_sector_size(fat);
+	size_t len = count * sector_size;
 	int ret;
 
 	debug("%s: buf: %p sector: %ld count: %d\n",
 			__func__, buf, sector, count);
 
-	ret = cdev_write(priv->cdev, buf, count << 9, (loff_t)sector * 512, 0);
-	if (ret != count << 9)
-		return ret;
+	ret = cdev_write(priv->cdev, buf, len, (loff_t)sector * sector_size, 0);
+	if (ret != len)
+		return RES_ERROR;
 
-	return 0;
+	return RES_OK;
 }
 
 /* ---------------------------------------------------------------*/
@@ -342,14 +355,27 @@ static int fat_stat(struct device *dev, const char *filename, struct stat *s)
 static int fat_probe(struct device *dev)
 {
 	struct fs_device *fsdev = dev_to_fs_device(dev);
-	struct fat_priv *priv = xzalloc(sizeof(struct fat_priv));
+	struct fat_priv *priv;
+	unsigned int blocksize;
 	int ret;
 
-	dev->priv = priv;
-
 	ret = fsdev_open_cdev(fsdev);
 	if (ret)
-		goto err_open;
+		return ret;
+
+	/*
+	 * No need to cleanup fsdev_open_cdev(), only way to invoke this
+	 * probe function is via mount() and that will already take care
+	 * of calling fs_remove for us.
+	 */
+	blocksize = cdev_blocksize(fsdev->cdev);
+	if (blocksize > SZ_4K) {
+		dev_err(dev, "FAT on %u-byte block devices is unsupported\n",
+			blocksize);
+		return -ENOSYS;
+	}
+
+	priv = dev->priv = xzalloc(sizeof(struct fat_priv));
 
 	priv->cdev = fsdev->cdev;
 	fsdev->sb.s_casefold = true;
@@ -362,7 +388,6 @@ static int fat_probe(struct device *dev)
 	return 0;
 
 err_mount:
-err_open:
 	free(priv);
 
 	return ret;
diff --git a/fs/fat/ffconf.h b/fs/fat/ffconf.h
index abf7d1e92e0b..b7dbf39efbf7 100644
--- a/fs/fat/ffconf.h
+++ b/fs/fat/ffconf.h
@@ -103,7 +103,11 @@
 /* Number of volumes (logical drives) to be used. */
 
 
-#define	_MAX_SS		512		/* 512, 1024, 2048 or 4096 */
+#if IN_PROPER
+#define	_MAX_SS		4096		/* 512, 1024, 2048 or 4096 */
+#else
+#define	_MAX_SS		512
+#endif
 /* Maximum sector size to be handled.
 /  Always set 512 for memory card and hard disk but a larger value may be
 /  required for on-board flash memory, floppy disk and optical disk.
-- 
2.47.3



