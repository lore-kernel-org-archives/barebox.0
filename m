Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qc0-f177.google.com ([209.85.216.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TC8IV-0001Bi-Ng
 for barebox@lists.infradead.org; Thu, 13 Sep 2012 12:13:32 +0000
Received: by qcsu28 with SMTP id u28so1967639qcs.36
 for <barebox@lists.infradead.org>; Thu, 13 Sep 2012 05:13:30 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 13 Sep 2012 14:13:29 +0200
Message-ID: <CAJfOKByn43d80YRB52D2RQXVhvweAzQYv2MvRtVyh2-+q5XBQg@mail.gmail.com>
From: Franck Jullien <franck.jullien@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC][FAT] Handle MBR on the first sector
To: barebox <barebox@lists.infradead.org>

*** Did not send this email with git because it's no working where I am **

We may have some disk with MBR as a first sector. In this case, the
current FAT check returns an error. However, the FAT sector exist and
the MBR can tell us where it is.

This patch make the FAT fs try to find the FAT boot sector on the first
sector of the first partition in case it is not on sector 0.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 fs/fat/ff.c |   24 ++++++++++++++++++++----
 1 files changed, 20 insertions(+), 4 deletions(-)

diff --git a/fs/fat/ff.c b/fs/fat/ff.c
index 66db1d6..6a4ae32 100644
--- a/fs/fat/ff.c
+++ b/fs/fat/ff.c
@@ -191,6 +191,7 @@
 #define	FSI_Nxt_Free		492	/* FSI: Last allocated cluster (4) */
 #define MBR_Table		446	/* MBR: Partition table offset (2) */
 #define	SZ_PTE			16	/* MBR: Size of a partition table entry */
+#define MBR_StartSector		8	/* MBR: Offset of Starting Sector in
Partition Table Entry */
 #define BS_55AA			510	/* Boot sector signature (2) */

 #define	DIR_Name		0	/* Short file name (11) */
@@ -1533,11 +1534,15 @@ int follow_path (	/* 0(0): successful, !=0:
error code */
  */
 static int check_fs (	/* 0:The FAT BR, 1:Valid BR but not an FAT,
2:Not a BR, 3:Disk error */
 	FATFS *fs,	/* File system object */
-	DWORD sect	/* Sector# (lba) to check if it is an FAT boot record or not */
+	DWORD sect,	/* Sector# (lba) to check if it is an FAT boot record or not */
+	DWORD *bootsec
 )
 {
 	int ret;

+	if(bootsec)
+		*bootsec = 0;
+
 	/* Load boot record */
 	ret = disk_read(fs, fs->win, sect, 1);
 	if (ret)
@@ -1553,6 +1558,12 @@ static int check_fs (	/* 0:The FAT BR, 1:Valid
BR but not an FAT, 2:Not a BR, 3:
 	if ((LD_DWORD(&fs->win[BS_FilSysType32]) & 0xFFFFFF) == 0x544146)
 		return 0;

+	if(bootsec)
+		/* This must be an MBR, so return the starting sector of the
+		 * first partition so we could check if there is a FAT boot
+		 * sector there */
+		*bootsec = LD_WORD(&fs->win[MBR_Table + MBR_StartSector]);
+
 	return -ENODEV;
 }

@@ -1565,6 +1576,7 @@ static int chk_mounted (	/* 0(0): successful,
!=0: any error occurred */
 )
 {
 	BYTE fmt, b;
+	DWORD first_boot_sect;
 	DWORD bsect, fasize, tsect, sysect, nclst, szbfat;
 	WORD nrsv;

@@ -1579,9 +1591,13 @@ static int chk_mounted (	/* 0(0): successful,
!=0: any error occurred */
 		return -EIO;
 #endif
 	/* Search FAT partition on the drive. Supports only generic
partitionings, FDISK and SFD. */
-	fmt = check_fs(fs, bsect = 0);	/* Check sector 0 if it is a VBR */
-	if (fmt)
-		return fmt; /* No FAT volume is found */
+	fmt = check_fs(fs, bsect = 0, &first_boot_sect);	/* Check sector 0
if it is a VBR */
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
