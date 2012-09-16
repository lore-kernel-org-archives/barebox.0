Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f177.google.com ([209.85.212.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TDLX4-0005wk-Mo
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 20:33:35 +0000
Received: by wibhn17 with SMTP id hn17so1219752wib.0
 for <barebox@lists.infradead.org>; Sun, 16 Sep 2012 13:33:32 -0700 (PDT)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Sun, 16 Sep 2012 22:33:33 +0200
Message-Id: <1347827613-25769-2-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1347827613-25769-1-git-send-email-franck.jullien@gmail.com>
References: <1347827613-25769-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 2/2] fs/fat: Handle MBR on the first sector
To: barebox@lists.infradead.org

Use the new filetype.c file detection function to support disk with MBR on the first
sector.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 fs/fat/ff.c |   27 ++++++++++++---------------
 1 files changed, 12 insertions(+), 15 deletions(-)

diff --git a/fs/fat/ff.c b/fs/fat/ff.c
index 66db1d6..622845a 100644
--- a/fs/fat/ff.c
+++ b/fs/fat/ff.c
@@ -93,6 +93,7 @@
 #include <errno.h>
 #include <malloc.h>
 #include <linux/ctype.h>
+#include <filetype.h>
 #include "ff.h"			/* FatFs configurations and declarations */
 #include "diskio.h"		/* Declarations of low level disk I/O functions */
 
@@ -1533,7 +1534,8 @@ int follow_path (	/* 0(0): successful, !=0: error code */
  */
 static int check_fs (	/* 0:The FAT BR, 1:Valid BR but not an FAT, 2:Not a BR, 3:Disk error */
 	FATFS *fs,	/* File system object */
-	DWORD sect	/* Sector# (lba) to check if it is an FAT boot record or not */
+	DWORD sect,	/* Sector# (lba) to check if it is an FAT boot record or not */
+	DWORD *bootsec
 )
 {
 	int ret;
@@ -1542,18 +1544,8 @@ static int check_fs (	/* 0:The FAT BR, 1:Valid BR but not an FAT, 2:Not a BR, 3:
 	ret = disk_read(fs, fs->win, sect, 1);
 	if (ret)
 		return ret;
-	/* Check record signature (always placed at offset 510 even if the sector size is>512) */
-	if (LD_WORD(&fs->win[BS_55AA]) != 0xAA55)
-		return -ENODEV;
 
-	/* Check "FAT" string */
-	if ((LD_DWORD(&fs->win[BS_FilSysType]) & 0xFFFFFF) == 0x544146)
-		return 0;
-
-	if ((LD_DWORD(&fs->win[BS_FilSysType32]) & 0xFFFFFF) == 0x544146)
-		return 0;
-
-	return -ENODEV;
+	return is_fat_boot_sector(fs->win, bootsec);
 }
 
 /*
@@ -1565,6 +1557,7 @@ static int chk_mounted (	/* 0(0): successful, !=0: any error occurred */
 )
 {
 	BYTE fmt, b;
+	DWORD first_boot_sect;
 	DWORD bsect, fasize, tsect, sysect, nclst, szbfat;
 	WORD nrsv;
 
@@ -1579,9 +1572,13 @@ static int chk_mounted (	/* 0(0): successful, !=0: any error occurred */
 		return -EIO;
 #endif
 	/* Search FAT partition on the drive. Supports only generic partitionings, FDISK and SFD. */
-	fmt = check_fs(fs, bsect = 0);	/* Check sector 0 if it is a VBR */
-	if (fmt)
-		return fmt; /* No FAT volume is found */
+	fmt = check_fs(fs, bsect = 0, &first_boot_sect);	/* Check sector 0 if it is a VBR */
+	if (fmt && first_boot_sect != 0) {
+		/* Sector 0 is an MBR, now check for FAT in the first partition */
+		fmt = check_fs(fs, bsect = first_boot_sect, NULL);
+		if(fmt)
+			return fmt; /* No FAT volume is found */
+	}
 
 	/* Following code initializes the file system object */
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
