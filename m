Delivery-date: Wed, 20 Aug 2025 16:32:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojri-002eJ8-0D
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 16:32:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojrf-0006b6-V2
	for lore@pengutronix.de; Wed, 20 Aug 2025 16:32:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Za5KdXzdic0QafM8lbEvsNVJixmvLBF28uxE9fJgekA=; b=yAzRAnCmzy/aCDz8//MwXPvZOE
	lpWmd0VBi1ejRQrbC4qCA2dRKCCG3s31LiSziYKS6MSASXqR4rrp8MXhBsGH84B0pJU0MK+Vw41FS
	P+cojwBb3QSnBI0TONEbtPZOXg7PxYX8MPsVYVMYaZn1hz/sE/bTtfGuRso3a4ZrrjsrqwouSPVdp
	wuSeP18U6pMoX6wIqpXnetqI8rvwiFqii7ssw8kOEKBVpgau2tM2xyyn7CK2Vl4MDGd5/xCQFvp5g
	u6hdI3f3ZfE4qK5NoOgQm7k6dc8rPRc5B9YBkUG4674cAQszsWnXpz4vRFuPZ9mTHE5ezkCGlKGLS
	UtXURjNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uojr2-0000000E4Yk-1J0U;
	Wed, 20 Aug 2025 14:31:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoixR-0000000Dok7-37rv
	for barebox@bombadil.infradead.org;
	Wed, 20 Aug 2025 13:34:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=Za5KdXzdic0QafM8lbEvsNVJixmvLBF28uxE9fJgekA=; b=McCaMaBg75NWJnF0IpiNisUBOl
	CciWMuZlITOiSmErAmQBSu6Jg5YBRq+pI/xChnGNP14Ik+gM97OhNg1vxkbc0zaj2Uc+KrphjZbZp
	CVm4EHZkP2atpUFuseSoMG/4LL0NTuFgFB08DMZCPIKfYXz35Jh1aTbU+tl237MNBM59jDCLbt1tL
	kuSKkk6Wdoom1XPxnJo09LBdT/ofri0ug70PTyp3x1SmPCduQbu9aElnhAMojQ28GgzgDFKvn7/1I
	f4FJHjuwCrTuZMGdfKNjnvCYLha0EUIjyblADW7Usl0UTWvYTmD8ZBAZNwKGyUQIM86e8SFeD4bBx
	9D8qfbSw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoixK-00000000KkM-3tlV
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 13:34:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoixI-0003Hk-Of; Wed, 20 Aug 2025 15:34:20 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoixI-001Fsq-1k;
	Wed, 20 Aug 2025 15:34:20 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihK-004jSI-1v;
	Wed, 20 Aug 2025 15:17:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 Aug 2025 15:18:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-security-policies-v1-23-76fde70fdbd8@pengutronix.de>
References: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
In-Reply-To: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755695870; l=13436;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=xlgli7ojtALC49zfco5YdUeGfjwZ15s13AaNhlezjrY=;
 b=XUEAx3P7NNU8rPA9H/r9v4t8RVNPySiDSzmyXL+LyHipXLkzKa3+Ya0/ZamMxVx0uhDh1Nqve
 mhbKKc1hkHRBxNr1AHr5F1goL0HtjzHjeTWFuN/f4CngHOwkgyG1qrg
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_143423_359123_5348121F 
X-CRM114-Status: GOOD (  18.94  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 23/24] security: add filesystem security policies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We don't have any trusted filesystems in barebox and a manipulated
filesystem could trick barebox into crashing, so add security policies
for the barebox filesystems.

Some filesystems might be considered secure in special cases, so each
filesystem gets its own option. devfs and ramfs are not optional though
as these are purely internal and do not read untrusted data.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Sconfig                |  1 +
 fs/9p/vfs_super.c      |  4 +++
 fs/Sconfig             | 76 ++++++++++++++++++++++++++++++++++++++++++++++++++
 fs/cramfs/cramfs.c     |  4 +++
 fs/efi.c               |  4 +++
 fs/efivarfs.c          |  4 +++
 fs/ext4/ext_barebox.c  |  5 ++++
 fs/fat/fat.c           |  5 ++++
 fs/jffs2/fs.c          |  5 ++++
 fs/nfs.c               |  6 ++++
 fs/pstore/ram.c        |  4 +++
 fs/qemu_fw_cfg.c       |  6 ++++
 fs/smhfs.c             |  5 ++++
 fs/squashfs/squashfs.c |  4 +++
 fs/tftp.c              |  6 ++++
 fs/ubifs/ubifs.c       |  6 ++++
 fs/ubootvarfs.c        |  6 ++++
 fs/uimagefs.c          |  4 +++
 18 files changed, 155 insertions(+)

diff --git a/Sconfig b/Sconfig
index 878d5055af2967617219cbadbfd8bee3f85236bd..183a6687f0d1687ccb1a6191a629ccace0eb929e 100644
--- a/Sconfig
+++ b/Sconfig
@@ -8,3 +8,4 @@ source "security/Sconfig"
 source "common/Sconfig"
 source "drivers/usb/gadget/Sconfig"
 source "commands/Sconfig"
+source "fs/Sconfig"
diff --git a/fs/9p/vfs_super.c b/fs/9p/vfs_super.c
index 6a451d9ef514fbe7d9cc636add2c240cbcf9cf86..911511e25932a53ce8479974282a50630f8a2987 100644
--- a/fs/9p/vfs_super.c
+++ b/fs/9p/vfs_super.c
@@ -20,6 +20,7 @@
 #include <net/9p/9p.h>
 #include <net/9p/client.h>
 #include <net/9p/transport.h>
+#include <security/config.h>
 
 #include "v9fs.h"
 #include "v9fs_vfs.h"
@@ -98,6 +99,9 @@ int v9fs_mount(struct device *dev)
 	struct p9_fid *fid;
 	int retval = 0;
 
+	if (!IS_ALLOWED(SCONFIG_9P_FS))
+		return -EPERM;
+
 	p9_debug(P9_DEBUG_VFS, "\n");
 
 	v9ses = kzalloc(sizeof(struct v9fs_session_info), GFP_KERNEL);
diff --git a/fs/Sconfig b/fs/Sconfig
new file mode 100644
index 0000000000000000000000000000000000000000..1d7ad28c08de9cc019dfc39b0162f3b9acd6c4a0
--- /dev/null
+++ b/fs/Sconfig
@@ -0,0 +1,76 @@
+menu "Filesystems"
+
+config FS_EXTERNAL
+	bool "Allow mounting external file systems"
+	help
+	  Say y to permit mounting file systems beyond devfs and ramfs.
+
+if FS_EXTERNAL
+
+config FS_CRAMFS
+	bool "Allow CRAMFS"
+	depends on $(kconfig-enabled,FS_CRAMFS)
+
+config FS_EXT4
+	bool "Allow ext4 FS"
+	depends on $(kconfig-enabled,FS_EXT4)
+
+config FS_TFTP
+	bool "Allow TFTP"
+	depends on $(kconfig-enabled,FS_TFTP)
+
+config FS_NFS
+	bool "Allow NFS"
+	depends on $(kconfig-enabled,FS_NFS)
+
+config 9P_FS
+	bool "Allow 9P FS"
+	depends on $(kconfig-enabled,9P_FS)
+
+config FS_EFI
+	bool "Allow EFI FS"
+	depends on $(kconfig-enabled,FS_EFI)
+
+config FS_EFIVARS
+	bool "Allow EFI VAR FS"
+	depends on $(kconfig-enabled,FS_EFIVARS)
+
+config FS_FAT
+	bool "Allow FAT FS"
+	depends on $(kconfig-enabled,FS_FAT)
+
+config FS_JFFS2
+	bool "Allow JFFS2"
+	depends on $(kconfig-enabled,FS_JFFS2)
+
+config FS_UBIFS
+	bool "Allow UBIFS"
+	depends on $(kconfig-enabled,FS_UBIFS)
+
+config FS_UIMAGEFS
+	bool "Allow uImage FS"
+	depends on $(kconfig-enabled,FS_UIMAGEFS)
+
+config FS_SMHFS
+	bool "Allow SMHFS"
+	depends on $(kconfig-enabled,FS_SMHFS)
+
+config FS_PSTORE
+	bool "Allow pstore FS"
+	depends on $(kconfig-enabled,FS_PSTORE)
+
+config FS_SQUASHFS
+	bool "Allow squashfs"
+	depends on $(kconfig-enabled,FS_SQUASHFS)
+
+config FS_UBOOTVARFS
+	bool "Allow U-Boot Variable FS"
+	depends on $(kconfig-enabled,FS_UBOOTVARFS)
+
+config QEMU_FW_CFG
+	bool "Allow Qemu FW FS"
+	depends on $(kconfig-enabled,QEMU_FW_CFG)
+
+endif
+
+endmenu
diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
index 641a6d2b0526f01b5ea64f9a59aa9086883e2b57..594f97a808f27525f3bab05bc8e88e7e5eeafc89 100644
--- a/fs/cramfs/cramfs.c
+++ b/fs/cramfs/cramfs.c
@@ -31,6 +31,7 @@
 #include <errno.h>
 #include <fs.h>
 #include <xfuncs.h>
+#include <security/config.h>
 
 #include <asm/byteorder.h>
 #include <linux/stat.h>
@@ -450,6 +451,9 @@ static int cramfs_probe(struct device *dev)
 	struct super_block *sb;
 	struct inode *root;
 
+	if (!IS_ALLOWED(SCONFIG_FS_CRAMFS))
+		return -EPERM;
+
 	fsdev = dev_to_fs_device(dev);
 	sb = &fsdev->sb;
 
diff --git a/fs/efi.c b/fs/efi.c
index da15c9078051c167b56f75a81a083810f16061ce..e4c33b959f46f3eecc9f32cb0143607063f871a2 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -31,6 +31,7 @@
 #include <efi/efi-payload.h>
 #include <efi/efi-device.h>
 #include <linux/stddef.h>
+#include <security/config.h>
 
 struct efifs_priv {
 	struct efi_file_handle *root_dir;
@@ -399,6 +400,9 @@ static int efifs_probe(struct device *dev)
 	struct device *efi = get_device_by_name(fsdev->backingstore);
 	struct efi_device *udev = container_of(efi, struct efi_device, dev);
 
+	if (!IS_ALLOWED(SCONFIG_FS_EFI))
+		return -EPERM;
+
 	priv = xzalloc(sizeof(struct efifs_priv));
 	priv->protocol = udev->protocol;
 	dev->priv = priv;
diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index 9717a6340676ae447f54851f4346908699d04517..386c633e8f327dc4234c3ed43f27f421dc868242 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -30,6 +30,7 @@
 #include <linux/ctype.h>
 #include <efi/efi-payload.h>
 #include <efi/efi-device.h>
+#include <security/config.h>
 
 struct efivarfs_inode {
 	s16 *name;
@@ -302,6 +303,9 @@ static int efivarfs_probe(struct device *dev)
 	size_t size;
 	struct efivarfs_priv *priv;
 
+	if (!IS_ALLOWED(SCONFIG_FS_EFIVARS))
+		return -EPERM;
+
 	name[0] = 0;
 
 	priv = xzalloc(sizeof(*priv));
diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
index e75478684ff39418fcfac0d53287aa2e67949361..12c497d070b3704ad1e23f5c2f1c18d9d69de1d3 100644
--- a/fs/ext4/ext_barebox.c
+++ b/fs/ext4/ext_barebox.c
@@ -25,6 +25,8 @@
 #include <linux/ctype.h>
 #include <xfuncs.h>
 #include <fcntl.h>
+#include <security/config.h>
+
 #include "ext4_common.h"
 
 ssize_t ext4fs_devread(struct ext_filesystem *fs, sector_t __sector, int byte_offset,
@@ -257,6 +259,9 @@ static int ext_probe(struct device *dev)
 	struct super_block *sb = &fsdev->sb;
 	struct inode *inode;
 
+	if (!IS_ALLOWED(SCONFIG_FS_EXT4))
+		return -EPERM;
+
 	fs = xzalloc(sizeof(*fs));
 
 	dev->priv = fs;
diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index 15a7b2a9692723f1a13c797bc89047a4c6fe44a3..82925aee026a848a0c97b9f20c1121a0586b6c11 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -25,6 +25,8 @@
 #include <linux/ctype.h>
 #include <xfuncs.h>
 #include <fcntl.h>
+#include <security/config.h>
+
 #include "ff.h"
 #include "integer.h"
 #include "diskio.h"
@@ -346,6 +348,9 @@ static int fat_probe(struct device *dev)
 	struct fat_priv *priv = xzalloc(sizeof(struct fat_priv));
 	int ret;
 
+	if (!IS_ALLOWED(SCONFIG_FS_FAT))
+		return -EPERM;
+
 	dev->priv = priv;
 
 	ret = fsdev_open_cdev(fsdev);
diff --git a/fs/jffs2/fs.c b/fs/jffs2/fs.c
index 5952ea9e904fa03240245a8977429814d69c28d6..cb01a791632386e33023ce940a32dd7c50aece55 100644
--- a/fs/jffs2/fs.c
+++ b/fs/jffs2/fs.c
@@ -20,6 +20,8 @@
 #include <linux/mtd/mtd.h>
 #include <linux/pagemap.h>
 #include <linux/stat.h>
+#include <security/config.h>
+
 #include "compr.h"
 #include "nodelist.h"
 #include "os-linux.h"
@@ -400,6 +402,9 @@ static int jffs2_probe(struct device *dev)
 	struct jffs2_sb_info *ctx;
 	int ret;
 
+	if (!IS_ALLOWED(SCONFIG_FS_JFFS2))
+		return -EPERM;
+
 	fsdev = dev_to_fs_device(dev);
 	sb = &fsdev->sb;
 
diff --git a/fs/nfs.c b/fs/nfs.c
index 17e1e7cfa1f1d66fab3b1b3e5efd3dc0fcb26327..d43f5b595f6ee3d5ad10ffcfbc5fc0bd85cce2e8 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -36,6 +36,7 @@
 #include <parseopt.h>
 #include <bootargs.h>
 #include <magicvar.h>
+#include <security/config.h>
 
 #define SUNRPC_PORT     111
 
@@ -1442,6 +1443,11 @@ static int nfs_probe(struct device *dev)
 	struct inode *inode;
 	int ret;
 
+	if (!IS_ALLOWED(SCONFIG_FS_NFS)) {
+		ret = -EPERM;
+		goto err;
+	}
+
 	dev->priv = npriv;
 
 	INIT_LIST_HEAD(&npriv->packets);
diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index e48317e09d5b86f50871c01c098aabe6c8e476ec..29c3ccbe2d468c15de713f2ef6f0dc5e2e293d86 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -38,6 +38,7 @@
 #include <common.h>
 #include <of.h>
 #include <of_address.h>
+#include <security/config.h>
 
 #define RAMOOPS_KERNMSG_HDR "===="
 #define MIN_MEM_SIZE 4096UL
@@ -538,6 +539,9 @@ static int ramoops_probe(struct device *dev)
 	int err = -EINVAL;
 	char kernelargs[512];
 
+	if (!IS_ALLOWED(SCONFIG_FS_PSTORE))
+		return -EPERM;
+
 	if (IS_ENABLED(CONFIG_OFTREE) && !pdata) {
 		pdata = kzalloc(sizeof(*pdata), GFP_KERNEL);
 		if (!pdata) {
diff --git a/fs/qemu_fw_cfg.c b/fs/qemu_fw_cfg.c
index caf5415746494d1f087bed4f9603f7d2bc47b9b0..49b8da0e45b99a03b2a25f41bdf41ac74565bc92 100644
--- a/fs/qemu_fw_cfg.c
+++ b/fs/qemu_fw_cfg.c
@@ -19,6 +19,7 @@
 #include <wchar.h>
 #include <linux/err.h>
 #include <linux/ctype.h>
+#include <security/config.h>
 
 struct fw_cfg_fs_inode {
 	struct inode inode;
@@ -348,6 +349,11 @@ static int fw_cfg_fs_probe(struct device *dev)
 	struct super_block *sb = &fsdev->sb;
 	int ret;
 
+	if (!IS_ALLOWED(SCONFIG_FS_QEMU_FW_CFG)) {
+		ret = -EPERM;
+		goto free_data;
+	}
+
 	dev->priv = data;
 
 	data->next_ino = U16_MAX + 1;
diff --git a/fs/smhfs.c b/fs/smhfs.c
index 3a3b4bdc1d94239fcacd0c485e6e2ff3067df9ec..f66f64a9976216283d7b33582758f305a86aace0 100644
--- a/fs/smhfs.c
+++ b/fs/smhfs.c
@@ -23,6 +23,7 @@
 #include <errno.h>
 #include <linux/stat.h>
 #include <asm/semihosting.h>
+#include <security/config.h>
 
 static int file_to_fd(const struct file *f)
 {
@@ -129,7 +130,11 @@ static int smhfs_stat(struct device __always_unused *dev,
 
 static int smhfs_probe(struct device __always_unused *dev)
 {
+	if (!IS_ALLOWED(SCONFIG_FS_SMHFS))
+		return -EPERM;
+
 	/* TODO: Add provisions to detect if debugger is connected */
+
 	return 0;
 }
 
diff --git a/fs/squashfs/squashfs.c b/fs/squashfs/squashfs.c
index 471bcae4eb034d04bf5a9322dc981703b899783a..841d347582e3510ff1e112b9e1338016c1d43bfa 100644
--- a/fs/squashfs/squashfs.c
+++ b/fs/squashfs/squashfs.c
@@ -7,6 +7,7 @@
 #include <errno.h>
 #include <fs.h>
 #include <xfuncs.h>
+#include <security/config.h>
 
 #include <linux/fs.h>
 #include <linux/stat.h>
@@ -95,6 +96,9 @@ static int squashfs_probe(struct device *dev)
 	int ret;
 	struct super_block *sb;
 
+	if (!IS_ALLOWED(SCONFIG_FS_SQUASHFS))
+		return -EPERM;
+
 	fsdev = dev_to_fs_device(dev);
 	sb = &fsdev->sb;
 
diff --git a/fs/tftp.c b/fs/tftp.c
index 01ebcbfc7ae44e57fda0745cc05030704b9ea695..3ba13030b8850ea9dc2aab6d0ec874acce22bc03 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -36,6 +36,7 @@
 #include <parseopt.h>
 #include <linux/sizes.h>
 #include <linux/netfs.h>
+#include <security/config.h>
 
 #include "tftp-selftest.h"
 
@@ -1063,6 +1064,11 @@ static int tftp_probe(struct device *dev)
 	struct inode *inode;
 	int ret;
 
+	if (!IS_ALLOWED(SCONFIG_FS_CRAMFS)) {
+		ret = -EPERM;
+		goto err;
+	}
+
 	dev->priv = priv;
 
 	ret = resolv(fsdev->backingstore, &priv->server);
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index 45b41ed7541dbfef1e9ca82afee2297a4727b571..e85cd6db053c9582c2b41de7a1947c35d0757843 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -21,6 +21,7 @@
 #include <linux/zlib.h>
 #include <linux/zstd.h>
 #include <linux/mtd/mtd.h>
+#include <security/config.h>
 
 #include "ubifs.h"
 
@@ -456,6 +457,11 @@ static int ubifs_probe(struct device *dev)
 	struct ubifs_priv *priv = xzalloc(sizeof(struct ubifs_priv));
 	int ret;
 
+	if (!IS_ALLOWED(SCONFIG_FS_UBIFS)) {
+		ret = -EPERM;
+		goto err_free;
+	}
+
 	dev->priv = priv;
 
 	ret = fsdev_open_cdev(fsdev);
diff --git a/fs/ubootvarfs.c b/fs/ubootvarfs.c
index 8cb0d0fa6499c90a0f5fef97eaa8bfb35c3211dc..c3130e9ce7390ff0e2ea7d10b6d7944c42449242 100644
--- a/fs/ubootvarfs.c
+++ b/fs/ubootvarfs.c
@@ -19,6 +19,7 @@
 #include <wchar.h>
 #include <linux/err.h>
 #include <linux/ctype.h>
+#include <security/config.h>
 
 /**
  * Some theory of operation:
@@ -433,6 +434,11 @@ static int ubootvarfs_probe(struct device *dev)
 	void *map;
 	int ret;
 
+	if (!IS_ALLOWED(SCONFIG_FS_UBOOTVARFS)) {
+		ret = -EPERM;
+		goto free_data;
+	}
+
 	dev->priv = data;
 
 	data->fd = open(fsdev->backingstore, O_RDWR);
diff --git a/fs/uimagefs.c b/fs/uimagefs.c
index be268d3679d93e242cb1249cc64cc5720added01..624b408ba1a38adef25b25289f330de24fb3129f 100644
--- a/fs/uimagefs.c
+++ b/fs/uimagefs.c
@@ -18,6 +18,7 @@
 #include <rtc.h>
 #include <crc.h>
 #include <libfile.h>
+#include <security/config.h>
 
 static bool uimagefs_is_data_file(struct uimagefs_handle_data *d)
 {
@@ -497,6 +498,9 @@ static int uimagefs_probe(struct device *dev)
 	struct uimagefs_handle *priv;
 	int ret = 0;
 
+	if (!IS_ALLOWED(SCONFIG_FS_UIMAGEFS))
+		return -EPERM;
+
 	priv = xzalloc(sizeof(struct uimagefs_handle));
 	INIT_LIST_HEAD(&priv->list);
 	dev->priv = priv;

-- 
2.39.5



