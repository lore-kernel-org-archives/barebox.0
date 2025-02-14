Delivery-date: Fri, 14 Feb 2025 11:01:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tisWC-002Dii-0x
	for lore@lore.pengutronix.de;
	Fri, 14 Feb 2025 11:01:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tisWA-0005r2-Ol
	for lore@pengutronix.de; Fri, 14 Feb 2025 11:01:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rVrxitSeTb46lbO57TMs6C1Sy+mgDPnv6c/qJ+HTBq0=; b=i8rG2Gu3zqnOHGib25Td4C+HIO
	HQt7ujptrIlmbCrbjdm3Zevgrm7pVG5Ykc46sRGcKy6PyVqit/8tGwtHFWR5aG3P6/K/cqC3Vj63g
	/jw1Lss3Zb7K9XMYhDw1/VG0UxqdYn01vzPUPX5hll48efVFy8N2nfmM/2v7IS6vANqmnbd2Ke1W/
	FVQaKwODSx6in7w/EA3qjy+aaod4hkZCWcR3Dr9w5Pg020LwP3hNUVkNOf6MJTbI0FWF3Ijmqncaw
	Eoh++QeavXTiDA1RHt9NW1TwdrjIlTt0r6heFTlawwuV2GUr4a6aItAOf57TYQGkGPi4RZ3hbjcMJ
	yzQ34nOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tisVk-0000000EQJ7-2fJ9;
	Fri, 14 Feb 2025 10:01:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tisMd-0000000EOck-09nY
	for barebox@bombadil.infradead.org;
	Fri, 14 Feb 2025 09:52:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=rVrxitSeTb46lbO57TMs6C1Sy+mgDPnv6c/qJ+HTBq0=; b=b+3Ea2lmOXuoJLQfY3+PQCLBYw
	LdxeYp+Jq8Rxtn2SMvv0aNiQEKPaeAJe23250Yobu/m+pX5PNPMunjTAsi5yCk1a9vt/311TMvS6C
	eTe7vozfNCYj/U84R1rNcbn55kZz5NTjf2qHCA44TjjcUq6NNvP8mGnuZX5Ckr9IQLed6Sv2pwP9R
	YRDT2sQoS5LcEjRIo7MqnHEiLcnEQHpJkKqh+HuySdlO3N36YTqkFpA99p66tuWrTA5ss+obP0503
	8g5og9UaGZbbTNnajb0yTX2k6plwog2BYTSDgUkRSswz/ZjuozkUocsZ4EaPI4GE4sH9vD8Fgwawy
	2Ws4rHiA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tisMa-00000001Drp-0pDI
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 09:52:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tisMZ-0003bY-Li; Fri, 14 Feb 2025 10:51:59 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tisMZ-000ta4-1D;
	Fri, 14 Feb 2025 10:51:59 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tisMZ-00BxeG-0v;
	Fri, 14 Feb 2025 10:51:59 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Feb 2025 10:51:57 +0100
Message-Id: <20250214095157.2850839-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250214095157.2850839-1-a.fatoum@pengutronix.de>
References: <20250214095157.2850839-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_095200_495340_EB7E0437 
X-CRM114-Status: GOOD (  10.29  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] fs: drop unused FS_DRIVER_NO_DEV flag
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The flag used to have an effect, but does so no longer, so let's just
drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/bpkfs.c            | 1 -
 fs/devfs.c            | 1 -
 fs/ext4/ext_barebox.c | 1 -
 fs/fat/fat.c          | 1 -
 fs/jffs2/fs.c         | 1 -
 fs/nfs.c              | 1 -
 fs/omap4_usbbootfs.c  | 1 -
 fs/pstore/fs.c        | 1 -
 fs/ramfs.c            | 1 -
 fs/ratpfs.c           | 1 -
 fs/smhfs.c            | 1 -
 fs/tftp.c             | 1 -
 fs/ubifs/ubifs.c      | 1 -
 fs/uimagefs.c         | 1 -
 include/fs.h          | 4 ----
 15 files changed, 18 deletions(-)

diff --git a/fs/bpkfs.c b/fs/bpkfs.c
index 26ce73ce6bcf..fe6154c555a4 100644
--- a/fs/bpkfs.c
+++ b/fs/bpkfs.c
@@ -504,7 +504,6 @@ static struct fs_driver bpkfs_driver = {
 	.read      = bpkfs_read,
 	.lseek     = bpkfs_lseek,
 	.legacy_ops = &bpkfs_ops,
-	.flags     = 0,
 	.type = filetype_bpk,
 	.drv = {
 		.probe  = bpkfs_probe,
diff --git a/fs/devfs.c b/fs/devfs.c
index 1bc64676b24d..38a85bac3c49 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -312,7 +312,6 @@ static struct fs_driver devfs_driver = {
 	.protect   = devfs_protect,
 	.discard_range = devfs_discard_range,
 	.memmap    = devfs_memmap,
-	.flags     = FS_DRIVER_NO_DEV,
 	.drv = {
 		.probe  = devfs_probe,
 		.remove = devfs_delete,
diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
index 163c4d2fe1b7..b1888bc4a954 100644
--- a/fs/ext4/ext_barebox.c
+++ b/fs/ext4/ext_barebox.c
@@ -301,7 +301,6 @@ static void ext_remove(struct device *dev)
 static struct fs_driver ext_driver = {
 	.read      = ext_read,
 	.type      = filetype_ext,
-	.flags     = 0,
 	.drv = {
 		.probe  = ext_probe,
 		.remove = ext_remove,
diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index d5eade165f1a..15a7b2a96927 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -397,7 +397,6 @@ static struct fs_driver fat_driver = {
 #endif
 	.legacy_ops = &fat_ops,
 	.type = filetype_fat,
-	.flags     = 0,
 	.drv = {
 		.probe  = fat_probe,
 		.remove = fat_remove,
diff --git a/fs/jffs2/fs.c b/fs/jffs2/fs.c
index 3514b0fb3b5a..5952ea9e904f 100644
--- a/fs/jffs2/fs.c
+++ b/fs/jffs2/fs.c
@@ -461,7 +461,6 @@ static void jffs2_remove(struct device *dev)
 static struct fs_driver jffs2_driver = {
 	.read = jffs2_read,
 	.type = filetype_jffs2,
-	.flags     = 0,
 	.drv = {
 		.probe  = jffs2_probe,
 		.remove = jffs2_remove,
diff --git a/fs/nfs.c b/fs/nfs.c
index 51bf15196c4e..530d9c6672d8 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1555,7 +1555,6 @@ static struct fs_driver nfs_driver = {
 	.lseek     = nfs_lseek,
 	.write     = nfs_write,
 	.truncate  = nfs_truncate,
-	.flags     = 0,
 	.drv = {
 		.probe  = nfs_probe,
 		.remove = nfs_remove,
diff --git a/fs/omap4_usbbootfs.c b/fs/omap4_usbbootfs.c
index ad40e9b2c5aa..9c1524c56cc5 100644
--- a/fs/omap4_usbbootfs.c
+++ b/fs/omap4_usbbootfs.c
@@ -160,7 +160,6 @@ static const struct fs_legacy_ops omap4_usbbootfs_ops = {
 static struct fs_driver omap4_usbbootfs_driver = {
 	.read    = omap4_usbbootfs_read,
 	.legacy_ops = &omap4_usbbootfs_ops,
-	.flags	 = 0,
 	.drv = {
 		.probe	= omap4_usbbootfs_probe,
 		.remove	= omap4_usbbootfs_remove,
diff --git a/fs/pstore/fs.c b/fs/pstore/fs.c
index 157f24aaaf72..b77d238ade73 100644
--- a/fs/pstore/fs.c
+++ b/fs/pstore/fs.c
@@ -287,7 +287,6 @@ static const struct fs_legacy_ops pstore_ops = {
 static struct fs_driver pstore_driver = {
 	.read      = pstore_read,
 	.lseek     = pstore_lseek,
-	.flags     = FS_DRIVER_NO_DEV,
 	.legacy_ops = &pstore_ops,
 	.type = filetype_uimage,
 	.drv = {
diff --git a/fs/ramfs.c b/fs/ramfs.c
index 6a824f56fdae..ab3c44270d43 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -444,7 +444,6 @@ static struct fs_driver ramfs_driver = {
 	.write     = ramfs_write,
 	.memmap    = ramfs_memmap,
 	.truncate  = ramfs_truncate,
-	.flags     = FS_DRIVER_NO_DEV,
 	.drv = {
 		.probe  = ramfs_probe,
 		.remove = ramfs_remove,
diff --git a/fs/ratpfs.c b/fs/ratpfs.c
index 5a1f8febd219..c3c3a248b681 100644
--- a/fs/ratpfs.c
+++ b/fs/ratpfs.c
@@ -456,7 +456,6 @@ static struct fs_driver ratpfs_driver = {
 	.write     = ratpfs_write,
 	.truncate  = ratpfs_truncate,
 	.legacy_ops = &ratpfs_ops,
-	.flags     = FS_DRIVER_NO_DEV,
 	.drv = {
 		.probe  = ratpfs_probe,
 		.remove = ratpfs_remove,
diff --git a/fs/smhfs.c b/fs/smhfs.c
index 425055d98ba8..e0e98f5213e9 100644
--- a/fs/smhfs.c
+++ b/fs/smhfs.c
@@ -150,7 +150,6 @@ static struct fs_driver smhfs_driver = {
 	.write     = smhfs_write,
 	.truncate  = smhfs_truncate,
 	.legacy_ops = &smhfs_ops,
-	.flags     = FS_DRIVER_NO_DEV,
 	.drv = {
 		.probe  = smhfs_probe,
 		.remove = smhfs_remove,
diff --git a/fs/tftp.c b/fs/tftp.c
index 81b87dfcf9e0..b2d5df4aa384 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -1115,7 +1115,6 @@ static struct fs_driver tftp_driver = {
 	.lseek     = tftp_lseek,
 	.write     = tftp_write,
 	.truncate  = tftp_truncate,
-	.flags     = 0,
 	.drv = {
 		.probe  = tftp_probe,
 		.remove = tftp_remove,
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index ef30ae3554f8..45b41ed7541d 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -504,7 +504,6 @@ static void ubifs_remove(struct device *dev)
 static struct fs_driver ubifs_driver = {
 	.read      = ubifs_read,
 	.type = filetype_ubifs,
-	.flags     = 0,
 	.drv = {
 		.probe  = ubifs_probe,
 		.remove = ubifs_remove,
diff --git a/fs/uimagefs.c b/fs/uimagefs.c
index 7ce1a15e0cbe..be268d3679d9 100644
--- a/fs/uimagefs.c
+++ b/fs/uimagefs.c
@@ -530,7 +530,6 @@ static struct fs_driver uimagefs_driver = {
 	.lseek     = uimagefs_lseek,
 	.ioctl	   = uimagefs_ioctl,
 	.legacy_ops = &uimagefs_ops,
-	.flags     = 0,
 	.type = filetype_uimage,
 	.drv = {
 		.probe  = uimagefs_probe,
diff --git a/include/fs.h b/include/fs.h
index 3b8dd93d41d6..fafd91343b5c 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -19,8 +19,6 @@ struct partition;
 struct node_d;
 struct stat;
 
-#define FS_DRIVER_NO_DEV	1
-
 /**
  * enum erase_type - Type of erase operation
  * @ERASE_TO_WRITE: Conduct low-level erase operation to prepare for a write
@@ -86,8 +84,6 @@ struct fs_driver {
 	struct driver drv;
 
 	enum filetype type;
-
-	unsigned long flags;
 };
 
 #define dev_to_fs_device(d) container_of(d, struct fs_device, dev)
-- 
2.39.5



