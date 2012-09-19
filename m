Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TEI9N-0007PY-Cm
 for barebox@lists.infradead.org; Wed, 19 Sep 2012 11:09:02 +0000
Received: by weyr3 with SMTP id r3so516033wey.36
 for <barebox@lists.infradead.org>; Wed, 19 Sep 2012 04:09:00 -0700 (PDT)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Wed, 19 Sep 2012 13:09:02 +0200
Message-Id: <1348052942-13853-2-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1348052942-13853-1-git-send-email-franck.jullien@gmail.com>
References: <1348052942-13853-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 2/2] [v2] fs/fat: Handle MBR on the first sector
To: barebox@lists.infradead.org

Use filetype to detect FAT boot sector.
Add support for disk with MBR on the first sector.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 fs/fat/ff.c |   37 +++++++++++++++++++------------------
 1 files changed, 19 insertions(+), 18 deletions(-)

diff --git a/fs/fat/ff.c b/fs/fat/ff.c
index 66db1d6..33f8b61 100644
--- a/fs/fat/ff.c
+++ b/fs/fat/ff.c
@@ -93,6 +93,7 @@
 #include <errno.h>
 #include <malloc.h>
 #include <linux/ctype.h>
+#include <filetype.h>
 #include "ff.h"			/* FatFs configurations and declarations */
 #include "diskio.h"		/* Declarations of low level disk I/O functions */
 
@@ -1531,29 +1532,20 @@ int follow_path (	/* 0(0): successful, !=0: error code */
 /*
  * Load boot record and check if it is an FAT boot record
  */
-static int check_fs (	/* 0:The FAT BR, 1:Valid BR but not an FAT, 2:Not a BR, 3:Disk error */
+static enum filetype check_fs (	/* 0:The FAT BR, 1:Valid BR but not an FAT, 2:Not a BR, 3:Disk error */
 	FATFS *fs,	/* File system object */
-	DWORD sect	/* Sector# (lba) to check if it is an FAT boot record or not */
+	DWORD sect,	/* Sector# (lba) to check if it is an FAT boot record or not */
+	DWORD *bootsec
 )
 {
-	int ret;
+	enum filetype ret;
 
 	/* Load boot record */
 	ret = disk_read(fs, fs->win, sect, 1);
 	if (ret)
-		return ret;
-	/* Check record signature (always placed at offset 510 even if the sector size is>512) */
-	if (LD_WORD(&fs->win[BS_55AA]) != 0xAA55)
-		return -ENODEV;
-
-	/* Check "FAT" string */
-	if ((LD_DWORD(&fs->win[BS_FilSysType]) & 0xFFFFFF) == 0x544146)
-		return 0;
-
-	if ((LD_DWORD(&fs->win[BS_FilSysType32]) & 0xFFFFFF) == 0x544146)
-		return 0;
+		return filetype_unknown;
 
-	return -ENODEV;
+	return is_fat_or_mbr(fs->win, bootsec);
 }
 
 /*
@@ -1565,8 +1557,10 @@ static int chk_mounted (	/* 0(0): successful, !=0: any error occurred */
 )
 {
 	BYTE fmt, b;
+	DWORD first_boot_sect;
 	DWORD bsect, fasize, tsect, sysect, nclst, szbfat;
 	WORD nrsv;
+	enum filetype type;
 
 	INIT_LIST_HEAD(&fs->dirtylist);
 
@@ -1579,9 +1573,16 @@ static int chk_mounted (	/* 0(0): successful, !=0: any error occurred */
 		return -EIO;
 #endif
 	/* Search FAT partition on the drive. Supports only generic partitionings, FDISK and SFD. */
-	fmt = check_fs(fs, bsect = 0);	/* Check sector 0 if it is a VBR */
-	if (fmt)
-		return fmt; /* No FAT volume is found */
+	type = check_fs(fs, bsect = 0, &first_boot_sect);	/* Check sector 0 if it is a VBR */
+	if (type == filetype_mbr) {
+		/* Sector 0 is an MBR, now check for FAT in the first partition */
+		type = check_fs(fs, bsect = first_boot_sect, NULL);
+		if (type != filetype_fat)
+			return -ENODEV;
+	}
+
+	if (type == filetype_unknown)
+		return -ENODEV;
 
 	/* Following code initializes the file system object */
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
