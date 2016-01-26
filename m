Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aO122-0005aA-I0
 for barebox@lists.infradead.org; Tue, 26 Jan 2016 10:39:32 +0000
Received: by mail-wm0-x242.google.com with SMTP id 123so16572789wmz.2
 for <barebox@lists.infradead.org>; Tue, 26 Jan 2016 02:39:10 -0800 (PST)
From: yegorslists@googlemail.com
Date: Tue, 26 Jan 2016 11:38:37 +0100
Message-Id: <1453804717-6563-3-git-send-email-yegorslists@googlemail.com>
In-Reply-To: <1453804717-6563-1-git-send-email-yegorslists@googlemail.com>
References: <1453804717-6563-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH 3/3] fs: import magic.h from Linux kernel
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

include/linux/magic.h provides MAGIC numbers for various
file systems.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 fs/cramfs/cramfs.c         |  1 +
 fs/ext4/ext4_common.c      |  3 +-
 fs/ext4/ext_common.h       |  2 --
 include/cramfs/cramfs_fs.h |  1 -
 include/linux/magic.h      | 82 ++++++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 85 insertions(+), 4 deletions(-)
 create mode 100644 include/linux/magic.h

diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
index 97f028a..988fa7e 100644
--- a/fs/cramfs/cramfs.c
+++ b/fs/cramfs/cramfs.c
@@ -34,6 +34,7 @@
 
 #include <asm/byteorder.h>
 #include <linux/stat.h>
+#include <linux/magic.h>
 #include <cramfs/cramfs_fs.h>
 
 /* These two macros may change in future, to provide better st_ino
diff --git a/fs/ext4/ext4_common.c b/fs/ext4/ext4_common.c
index 04b1915..590f54d 100644
--- a/fs/ext4/ext4_common.c
+++ b/fs/ext4/ext4_common.c
@@ -32,6 +32,7 @@
 #include <malloc.h>
 #include <linux/stat.h>
 #include <linux/time.h>
+#include <linux/magic.h>
 #include <asm/byteorder.h>
 #include <dma.h>
 
@@ -499,7 +500,7 @@ int ext4fs_mount(struct ext_filesystem *fs)
 		goto fail;
 
 	/* Make sure this is an ext2 filesystem. */
-	if (__le16_to_cpu(data->sblock.magic) != EXT2_MAGIC) {
+	if (__le16_to_cpu(data->sblock.magic) != EXT2_SUPER_MAGIC) {
 		ret = -EINVAL;
 		goto fail;
 	}
diff --git a/fs/ext4/ext_common.h b/fs/ext4/ext_common.h
index 517a1c1..704d8e6 100644
--- a/fs/ext4/ext_common.h
+++ b/fs/ext4/ext_common.h
@@ -33,8 +33,6 @@
 #define SECTOR_SIZE		0x200
 #define SECTOR_BITS		9
 
-/* Magic value used to identify an ext2 filesystem.  */
-#define	EXT2_MAGIC			0xEF53
 /* Amount of indirect blocks in an inode.  */
 #define INDIRECT_BLOCKS			12
 /* Maximum lenght of a pathname.  */
diff --git a/include/cramfs/cramfs_fs.h b/include/cramfs/cramfs_fs.h
index 8c53fc7..d2b67c5 100644
--- a/include/cramfs/cramfs_fs.h
+++ b/include/cramfs/cramfs_fs.h
@@ -1,7 +1,6 @@
 #ifndef __CRAMFS_H
 #define __CRAMFS_H
 
-#define CRAMFS_MAGIC		0x28cd3d45	/* some random number */
 #define CRAMFS_SIGNATURE	"Compressed ROMFS"
 
 /*
diff --git a/include/linux/magic.h b/include/linux/magic.h
new file mode 100644
index 0000000..0de181a
--- /dev/null
+++ b/include/linux/magic.h
@@ -0,0 +1,82 @@
+#ifndef __LINUX_MAGIC_H__
+#define __LINUX_MAGIC_H__
+
+#define ADFS_SUPER_MAGIC	0xadf5
+#define AFFS_SUPER_MAGIC	0xadff
+#define AFS_SUPER_MAGIC                0x5346414F
+#define AUTOFS_SUPER_MAGIC	0x0187
+#define CODA_SUPER_MAGIC	0x73757245
+#define CRAMFS_MAGIC		0x28cd3d45	/* some random number */
+#define CRAMFS_MAGIC_WEND	0x453dcd28	/* magic number with the wrong endianess */
+#define DEBUGFS_MAGIC          0x64626720
+#define SECURITYFS_MAGIC	0x73636673
+#define SELINUX_MAGIC		0xf97cff8c
+#define SMACK_MAGIC		0x43415d53	/* "SMAC" */
+#define RAMFS_MAGIC		0x858458f6	/* some random number */
+#define TMPFS_MAGIC		0x01021994
+#define HUGETLBFS_MAGIC 	0x958458f6	/* some random number */
+#define SQUASHFS_MAGIC		0x73717368
+#define ECRYPTFS_SUPER_MAGIC	0xf15f
+#define EFS_SUPER_MAGIC		0x414A53
+#define EXT2_SUPER_MAGIC	0xEF53
+#define EXT3_SUPER_MAGIC	0xEF53
+#define XENFS_SUPER_MAGIC	0xabba1974
+#define EXT4_SUPER_MAGIC	0xEF53
+#define BTRFS_SUPER_MAGIC	0x9123683E
+#define NILFS_SUPER_MAGIC	0x3434
+#define F2FS_SUPER_MAGIC	0xF2F52010
+#define HPFS_SUPER_MAGIC	0xf995e849
+#define ISOFS_SUPER_MAGIC	0x9660
+#define JFFS2_SUPER_MAGIC	0x72b6
+#define PSTOREFS_MAGIC		0x6165676C
+#define EFIVARFS_MAGIC		0xde5e81e4
+#define HOSTFS_SUPER_MAGIC	0x00c0ffee
+#define OVERLAYFS_SUPER_MAGIC	0x794c7630
+
+#define MINIX_SUPER_MAGIC	0x137F		/* minix v1 fs, 14 char names */
+#define MINIX_SUPER_MAGIC2	0x138F		/* minix v1 fs, 30 char names */
+#define MINIX2_SUPER_MAGIC	0x2468		/* minix v2 fs, 14 char names */
+#define MINIX2_SUPER_MAGIC2	0x2478		/* minix v2 fs, 30 char names */
+#define MINIX3_SUPER_MAGIC	0x4d5a		/* minix v3 fs, 60 char names */
+
+#define MSDOS_SUPER_MAGIC	0x4d44		/* MD */
+#define NCP_SUPER_MAGIC		0x564c		/* Guess, what 0x564c is :-) */
+#define NFS_SUPER_MAGIC		0x6969
+#define OPENPROM_SUPER_MAGIC	0x9fa1
+#define QNX4_SUPER_MAGIC	0x002f		/* qnx4 fs detection */
+#define QNX6_SUPER_MAGIC	0x68191122	/* qnx6 fs detection */
+
+#define REISERFS_SUPER_MAGIC	0x52654973	/* used by gcc */
+					/* used by file system utilities that
+	                                   look at the superblock, etc.  */
+#define REISERFS_SUPER_MAGIC_STRING	"ReIsErFs"
+#define REISER2FS_SUPER_MAGIC_STRING	"ReIsEr2Fs"
+#define REISER2FS_JR_SUPER_MAGIC_STRING	"ReIsEr3Fs"
+
+#define SMB_SUPER_MAGIC		0x517B
+#define CGROUP_SUPER_MAGIC	0x27e0eb
+#define CGROUP2_SUPER_MAGIC	0x63677270
+
+
+#define STACK_END_MAGIC		0x57AC6E9D
+
+#define TRACEFS_MAGIC          0x74726163
+
+#define V9FS_MAGIC		0x01021997
+
+#define BDEVFS_MAGIC            0x62646576
+#define BINFMTFS_MAGIC          0x42494e4d
+#define DEVPTS_SUPER_MAGIC	0x1cd1
+#define FUTEXFS_SUPER_MAGIC	0xBAD1DEA
+#define PIPEFS_MAGIC            0x50495045
+#define PROC_SUPER_MAGIC	0x9fa0
+#define SOCKFS_MAGIC		0x534F434B
+#define SYSFS_MAGIC		0x62656572
+#define USBDEVICE_SUPER_MAGIC	0x9fa2
+#define MTD_INODE_FS_MAGIC      0x11307854
+#define ANON_INODE_FS_MAGIC	0x09041934
+#define BTRFS_TEST_MAGIC	0x73727279
+#define NSFS_MAGIC		0x6e736673
+#define BPF_FS_MAGIC		0xcafe4a11
+
+#endif /* __LINUX_MAGIC_H__ */
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
