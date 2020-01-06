Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioWIP-0000HU-AE
 for barebox@lists.infradead.org; Mon, 06 Jan 2020 17:36:13 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon,  6 Jan 2020 18:35:37 +0100
Message-Id: <20200106173540.20367-3-ahmad@a3f.at>
In-Reply-To: <20200106173540.20367-1-ahmad@a3f.at>
References: <20200106173540.20367-1-ahmad@a3f.at>
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
Subject: [RFC PATCH 2/5] fs: fat: extend for in-PBL support
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de

The AT91 BootROM loads a boot.bin file from the first FAT partition
into SRAM, when booting from MMC. To avoid the need for two barebox
configurations for each of the bootloader stages, add PBL support
for reading from FAT. This way each stage need only have a different
PBL entry point.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 fs/Makefile      |   2 +-
 fs/fat/Kconfig   |   7 +++
 fs/fat/Makefile  |   4 +-
 fs/fat/diskio.h  |   7 ++-
 fs/fat/fat-pbl.c | 148 +++++++++++++++++++++++++++++++++++++++++++++++
 fs/fat/ff.c      | 104 +++++++++++++++++++--------------
 fs/fat/ff.h      |  17 ++++--
 include/pbl.h    |   1 +
 8 files changed, 237 insertions(+), 53 deletions(-)
 create mode 100644 fs/fat/fat-pbl.c

diff --git a/fs/Makefile b/fs/Makefile
index 9889a6507c1b..89ccc8947dc0 100644
--- a/fs/Makefile
+++ b/fs/Makefile
@@ -4,7 +4,7 @@ obj-$(CONFIG_FS_RAMFS)	+= ramfs.o
 obj-y			+= devfs-core.o
 obj-$(CONFIG_FS_LEGACY) += legacy.o
 obj-$(CONFIG_FS_DEVFS)	+= devfs.o
-obj-$(CONFIG_FS_FAT)	+= fat/
+obj-pbl-$(CONFIG_FS_FAT)	+= fat/
 obj-y	+= fs.o libfs.o
 obj-$(CONFIG_FS_UBIFS)	+= ubifs/
 obj-$(CONFIG_FS_TFTP)	+= tftp.o
diff --git a/fs/fat/Kconfig b/fs/fat/Kconfig
index b1def851cfb8..bc3b4b69e870 100644
--- a/fs/fat/Kconfig
+++ b/fs/fat/Kconfig
@@ -8,9 +8,16 @@ if FS_FAT
 config FS_FAT_WRITE
 	bool
 	prompt "FAT write support"
+	help
+	  Enable support for writing in FAT partitions.
+	  Note: This doesn't apply to FAT usage in barebox PBL.
+
 
 config FS_FAT_LFN
 	bool
 	prompt "Support long filenames"
+	help
+	  Enable support for file names other than 8.3.
+	  Note: This doesn't apply to FAT usage in barebox PBL.
 
 endif
diff --git a/fs/fat/Makefile b/fs/fat/Makefile
index efc89ec67db8..2a8a787d5438 100644
--- a/fs/fat/Makefile
+++ b/fs/fat/Makefile
@@ -1 +1,3 @@
-obj-y += ff.o fat.o
+obj-y += fat.o
+pbl-y += fat-pbl.o
+obj-pbl-y += ff.o
diff --git a/fs/fat/diskio.h b/fs/fat/diskio.h
index f0d29dc390d5..aee1ce2b0b3b 100644
--- a/fs/fat/diskio.h
+++ b/fs/fat/diskio.h
@@ -4,7 +4,12 @@
 
 #ifndef _DISKIO
 
-#define _READONLY	0	/* 1: Remove write functions */
+#ifdef __PBL__
+#define _READONLY	1	/* 1: Remove write functions */
+#else
+#define _READONLY	0
+#endif
+
 #define _USE_IOCTL	1	/* 1: Use disk_ioctl fucntion */
 
 #include "integer.h"
diff --git a/fs/fat/fat-pbl.c b/fs/fat/fat-pbl.c
new file mode 100644
index 000000000000..bd158bff8278
--- /dev/null
+++ b/fs/fat/fat-pbl.c
@@ -0,0 +1,148 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * fat.c - FAT filesystem barebox driver
+ *
+ * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ */
+
+#define pr_fmt(fmt) "fat-pbl: " fmt
+
+#include <common.h>
+#include "integer.h"
+#include "ff.h"
+#include "diskio.h"
+#include "pbl.h"
+
+/* ---------------------------------------------------------------*/
+
+DRESULT disk_read(FATFS *fat, BYTE *buf, DWORD sector, BYTE count)
+{
+	struct pbl_bio *bio = fat->userdata;
+	int ret;
+
+	debug("%s: sector: %ld count: %d\n", __func__, sector, count);
+
+	ret = bio->read(bio, sector, buf, count);
+	if (ret != count)
+		return ret;
+
+	return 0;
+}
+
+DSTATUS disk_status(FATFS *fat)
+{
+	return 0;
+}
+
+DWORD get_fattime(void)
+{
+	return 0;
+}
+
+DRESULT disk_ioctl (FATFS *fat, BYTE command, void *buf)
+{
+	return 0;
+}
+
+WCHAR ff_convert(WCHAR src, UINT dir)
+{
+	if (src <= 0x80)
+		return src;
+	else
+		return '?';
+}
+
+WCHAR ff_wtoupper(WCHAR chr)
+{
+	if (chr > 0x80)
+		return '?';
+
+	if ('a' <= chr && chr <= 'z')
+		return  chr + 'A' - 'a';
+
+	return chr;
+}
+
+static int fat_loadimage(FATFS *fs, const char *filename, void *dest, unsigned int len)
+{
+	FIL	file = {};
+	UINT	nread;
+	int	ret;
+
+	ret = f_open(fs, &file, filename, FA_OPEN_EXISTING | FA_READ);
+	if (ret) {
+		pr_debug("f_open(%s) failed: %d\n", filename, ret);
+		return ret;
+	}
+
+	ret = f_read(&file, dest, len, &nread);
+	if (ret) {
+		pr_debug("f_read failed: %d\n", ret);
+		return ret;
+	}
+
+	if (f_size(&file) > len)
+		return -ENOSPC;
+
+	return 0;
+}
+
+int pbl_fat_load(struct pbl_bio *bio, const char *filename, void *dest, unsigned int len)
+{
+	FATFS	fs = {};
+	int	ret;
+
+	fs.userdata = bio;
+
+	/* mount fs */
+	ret = f_mount(&fs);
+	if (ret) {
+		pr_debug("f_mount(%s) failed: %d\n", filename, ret);
+		return ret;
+	}
+
+	pr_debug("Reading file %s to 0x%p\n", filename, dest);
+
+	return fat_loadimage(&fs, filename, dest, len);
+}
+
+#define BS_55AA                     510     /* Boot sector signature (2) */
+#define BS_FilSysType               54      /* File system type (1) */
+#define BS_FilSysType32             82      /* File system type (1) */
+#define MBR_Table           446     /* MBR: Partition table offset (2) */
+#define MBR_StartSector             8
+
+enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec)
+{
+	/*
+	 * bootsec can be used to return index of the first sector in the
+	 * first partition
+	 */
+	if (bootsec)
+		*bootsec = 0;
+
+	/*
+	 * Check record signature (always placed at offset 510 even if the
+	 * sector size is > 512)
+	 */
+	if (get_unaligned_le16(&sector[BS_55AA]) != 0xAA55)
+		return filetype_unknown;
+
+	/* Check "FAT" string */
+	if ((get_unaligned_le32(&sector[BS_FilSysType]) & 0xFFFFFF) == 0x544146)
+		return filetype_fat;
+
+	if ((get_unaligned_le32(&sector[BS_FilSysType32]) & 0xFFFFFF) == 0x544146)
+		return filetype_fat;
+
+	if (bootsec)
+		/*
+		 * This must be an MBR, so return the starting sector of the
+		 * first partition so we could check if there is a FAT boot
+		 * sector there
+		 */
+		*bootsec = get_unaligned_le16(&sector[MBR_Table + MBR_StartSector]);
+
+	return filetype_mbr;
+}
+
diff --git a/fs/fat/ff.c b/fs/fat/ff.c
index 4d30433e5f03..29e4c8adb614 100644
--- a/fs/fat/ff.c
+++ b/fs/fat/ff.c
@@ -92,10 +92,24 @@
 #include <string.h>
 #include <errno.h>
 #include <malloc.h>
-#include <linux/ctype.h>
 #include <filetype.h>
 #include "ff.h"			/* FatFs configurations and declarations */
 #include "diskio.h"		/* Declarations of low level disk I/O functions */
+#include <pbl.h>
+
+#ifndef __PBL__
+#include <linux/ctype.h>
+#else
+static inline int isupper(int ch)
+{
+	return 'A' <= ch && ch <= 'Z';
+}
+
+static inline int islower(int ch)
+{
+	return 'a' <= ch && ch <= 'z';
+}
+#endif
 
 #if _FATFS != 8237
 #error Wrong include file (ff.h).
@@ -214,7 +228,7 @@
 #define	DDE			0xE5	/* Deleted directory enrty mark in DIR_Name[0] */
 #define	NDDE			0x05	/* Replacement of a character collides with DDE */
 
-#ifndef CONFIG_FS_FAT_LFN
+#ifndef FS_FAT_LFN
 #define	DEF_NAMEBUF		BYTE sfn[12]
 #define INIT_BUF(dobj)		(dobj).fn = sfn
 #define	FREE_BUF()
@@ -250,7 +264,7 @@ int move_window (
 
 	wsect = fs->winsect;
 	if (wsect != sector) {	/* Changed current window */
-#ifdef CONFIG_FS_FAT_WRITE
+#ifdef FS_FAT_WRITE
 		if (fs->wflag) {	/* Write back dirty window if needed */
 			if (disk_write(fs, fs->win, wsect, 1) != RES_OK)
 				return -EIO;
@@ -277,7 +291,7 @@ int move_window (
 /*
  * Clean-up cached data
  */
-#ifdef CONFIG_FS_FAT_WRITE
+#ifdef FS_FAT_WRITE
 static
 int sync (	/* 0: successful, -EIO: failed */
 	FATFS *fs	/* File system object */
@@ -372,7 +386,7 @@ static DWORD get_fat (	/* 0xFFFFFFFF:Disk error, 1:Internal error, Else:Cluster
 /*
  * FAT access - Change value of a FAT entry
  */
-#ifdef CONFIG_FS_FAT_WRITE
+#ifdef FS_FAT_WRITE
 
 static int put_fat (
 	FATFS *fs,	/* File system object */
@@ -431,7 +445,7 @@ static int put_fat (
 
 	return res;
 }
-#endif /* CONFIG_FS_FAT_WRITE */
+#endif /* FS_FAT_WRITE */
 
 
 
@@ -439,7 +453,7 @@ static int put_fat (
 /*
  * FAT handling - Remove a cluster chain
  */
-#ifdef CONFIG_FS_FAT_WRITE
+#ifdef FS_FAT_WRITE
 static
 int remove_chain (
 	FATFS *fs,			/* File system object */
@@ -506,7 +520,7 @@ int remove_chain (
 /*
  * FAT handling - Stretch or Create a cluster chain
  */
-#ifdef CONFIG_FS_FAT_WRITE
+#ifdef FS_FAT_WRITE
 static
 DWORD create_chain (	/* 0:No free cluster, 1:Internal error, 0xFFFFFFFF:Disk error, >=2:New cluster# */
 	FATFS *fs,	/* File system object */
@@ -566,7 +580,7 @@ DWORD create_chain (	/* 0:No free cluster, 1:Internal error, 0xFFFFFFFF:Disk err
 
 	return ncl; /* Return new cluster number or error code */
 }
-#endif /* CONFIG_FS_FAT_WRITE */
+#endif /* FS_FAT_WRITE */
 
 /*
  * Directory handling - Set directory index
@@ -657,7 +671,7 @@ static int dir_next (	/* 0:Succeeded, FR_NO_FILE:End of table, FR_DENIED:EOT and
 					return -EIO;
 
 				if (clst >= dj->fs->n_fatent) {	/* When it reached end of dynamic table */
-#ifdef CONFIG_FS_FAT_WRITE
+#ifdef FS_FAT_WRITE
 					BYTE c;
 
 					if (!stretch)
@@ -708,7 +722,7 @@ static int dir_next (	/* 0:Succeeded, FR_NO_FILE:End of table, FR_DENIED:EOT and
 /*
  * LFN handling - Test/Pick/Fit an LFN segment from/to directory entry
  */
-#ifdef CONFIG_FS_FAT_LFN
+#ifdef FS_FAT_LFN
 
 /* Offset of LFN chars in the directory entry */
 static const BYTE LfnOfs[] = {1,3,5,7,9,14,16,18,20,22,24,28,30};
@@ -784,7 +798,7 @@ int pick_lfn (		/* 1:Succeeded, 0:Buffer overflow */
 }
 
 
-#ifdef CONFIG_FS_FAT_WRITE
+#ifdef FS_FAT_WRITE
 static
 void fit_lfn (
 	const WCHAR *lfnbuf,	/* Pointer to the LFN buffer */
@@ -824,7 +838,7 @@ void fit_lfn (
 /*
  * Create numbered name
  */
-#if defined(CONFIG_FS_FAT_LFN) && defined(CONFIG_FS_FAT_WRITE)
+#if defined(FS_FAT_LFN) && defined(FS_FAT_WRITE)
 static void gen_numname (
 	BYTE *dst,		/* Pointer to generated SFN */
 	const BYTE *src,	/* Pointer to source SFN to be modified */
@@ -874,7 +888,7 @@ static void gen_numname (
 /*
  * Calculate sum of an SFN
  */
-#ifdef CONFIG_FS_FAT_LFN
+#ifdef FS_FAT_LFN
 static BYTE sum_sfn (
 	const BYTE *dir		/* Ptr to directory entry */
 )
@@ -897,7 +911,7 @@ static int dir_find (
 {
 	int res;
 	BYTE c, *dir;
-#ifdef CONFIG_FS_FAT_LFN
+#ifdef FS_FAT_LFN
 	BYTE a, ord, sum;
 #endif
 
@@ -905,7 +919,7 @@ static int dir_find (
 	if (res != 0)
 		return res;
 
-#ifdef CONFIG_FS_FAT_LFN
+#ifdef FS_FAT_LFN
 	ord = sum = 0xFF;
 #endif
 	do {
@@ -919,7 +933,7 @@ static int dir_find (
 			res = -ENOENT;
 			break;
 		}
-#ifdef CONFIG_FS_FAT_LFN	/* LFN configuration */
+#ifdef FS_FAT_LFN	/* LFN configuration */
 		a = dir[DIR_Attr] & AM_MASK;
 		if (c == DDE || ((a & AM_VOL) && a != AM_LFN)) {
 			/* An entry without valid data */
@@ -970,7 +984,7 @@ static int dir_read (
 {
 	int res;
 	BYTE c, *dir;
-#ifdef CONFIG_FS_FAT_LFN
+#ifdef FS_FAT_LFN
 	BYTE a, ord = 0xFF, sum = 0xFF;
 #endif
 
@@ -986,7 +1000,7 @@ static int dir_read (
 			res = -ENOENT;
 			break;
 		}
-#ifdef CONFIG_FS_FAT_LFN	/* LFN configuration */
+#ifdef FS_FAT_LFN	/* LFN configuration */
 		a = dir[DIR_Attr] & AM_MASK;
 		if (c == DDE || c == '.' || ((a & AM_VOL) && a != AM_LFN)) {	/* An entry without valid data */
 			ord = 0xFF;
@@ -1025,7 +1039,7 @@ static int dir_read (
 /*
  * Register an object to the directory
  */
-#ifdef CONFIG_FS_FAT_WRITE
+#ifdef FS_FAT_WRITE
 static
 int dir_register (	/* 0:Successful, FR_DENIED:No free entry or too many SFN collision, -EIO:Disk error */
 	FF_DIR *dj	/* Target directory with object name to be created */
@@ -1033,7 +1047,7 @@ int dir_register (	/* 0:Successful, FR_DENIED:No free entry or too many SFN coll
 {
 	int res;
 	BYTE c, *dir;
-#ifdef CONFIG_FS_FAT_LFN	/* LFN configuration */
+#ifdef FS_FAT_LFN	/* LFN configuration */
 	WORD n, ne, is;
 	BYTE sn[12], *fn, sum;
 	WCHAR *lfn;
@@ -1127,7 +1141,7 @@ int dir_register (	/* 0:Successful, FR_DENIED:No free entry or too many SFN coll
 			dir = dj->dir;
 			memset(dir, 0, SZ_DIR);	/* Clean the entry */
 			memcpy(dir, dj->fn, 11);	/* Put SFN */
-#ifdef CONFIG_FS_FAT_LFN
+#ifdef FS_FAT_LFN
 			dir[DIR_NTres] = *(dj->fn+NS) & (NS_BODY | NS_EXT);	/* Put NT flag */
 #endif
 			dj->fs->wflag = 1;
@@ -1136,18 +1150,18 @@ int dir_register (	/* 0:Successful, FR_DENIED:No free entry or too many SFN coll
 
 	return res;
 }
-#endif /* CONFIG_FS_FAT_WRITE */
+#endif /* FS_FAT_WRITE */
 
 /*
  * Remove an object from the directory
  */
-#if defined CONFIG_FS_FAT_WRITE
+#if defined FS_FAT_WRITE
 static int dir_remove (	/* 0: Successful, -EIO: A disk error */
 	FF_DIR *dj				/* Directory object pointing the entry to be removed */
 )
 {
 	int res;
-#ifdef CONFIG_FS_FAT_LFN	/* LFN configuration */
+#ifdef FS_FAT_LFN	/* LFN configuration */
 	WORD i;
 
 	i = dj->index;	/* SFN index */
@@ -1181,7 +1195,7 @@ static int dir_remove (	/* 0: Successful, -EIO: A disk error */
 
 	return res;
 }
-#endif /* CONFIG_FS_FAT_WRITE */
+#endif /* FS_FAT_WRITE */
 
 /*
  * Pick a segment and create the object name in directory form
@@ -1195,7 +1209,7 @@ static int create_name (
 	static const BYTE excvt[] = _EXCVT;	/* Upper conversion table for extended chars */
 #endif
 
-#ifdef CONFIG_FS_FAT_LFN	/* LFN configuration */
+#ifdef FS_FAT_LFN	/* LFN configuration */
 	BYTE b, cf;
 	WCHAR w, *lfn;
 	UINT i, ni, si, di;
@@ -1410,7 +1424,7 @@ static void get_fileinfo (		/* No return code */
 				break;
 			if (c == NDDE)
 				c = (TCHAR)DDE;
-#ifdef CONFIG_FS_FAT_LFN
+#ifdef FS_FAT_LFN
 			if ((nt & NS_BODY) && isupper(c))
 				c += 0x20;
 #endif
@@ -1428,7 +1442,7 @@ static void get_fileinfo (		/* No return code */
 				c = dir[i];
 				if (c == ' ')
 					break;
-#ifdef CONFIG_FS_FAT_LFN
+#ifdef FS_FAT_LFN
 				if ((nt & NS_EXT) && isupper(c))
 					c += 0x20;
 #endif
@@ -1449,7 +1463,7 @@ static void get_fileinfo (		/* No return code */
 	}
 	*p = 0;		/* Terminate SFN str by a \0 */
 
-#ifdef CONFIG_FS_FAT_LFN
+#ifdef FS_FAT_LFN
 	if (fno->lfname && fno->lfsize) {
 		TCHAR *tp = fno->lfname;
 		WCHAR w, *lfn;
@@ -1668,7 +1682,7 @@ static int chk_mounted (	/* 0(0): successful, !=0: any error occurred */
 	if (fs->fsize < (szbfat + (SS(fs) - 1)) / SS(fs))
 		return -EINVAL;
 
-#ifdef CONFIG_FS_FAT_WRITE
+#ifdef FS_FAT_WRITE
 	/* Initialize cluster allocation information */
 	fs->free_clust = 0xFFFFFFFF;
 	fs->last_clust = 0;
@@ -1723,7 +1737,7 @@ int f_open (
 
 	fp->fs = NULL;		/* Clear file object */
 
-#ifdef CONFIG_FS_FAT_WRITE
+#ifdef FS_FAT_WRITE
 	mode &= FA_READ | FA_WRITE | FA_CREATE_ALWAYS | FA_OPEN_ALWAYS | FA_CREATE_NEW;
 	dj.fs = fatfs;
 #else
@@ -1735,7 +1749,7 @@ int f_open (
 		res = follow_path(&dj, path);	/* Follow the file path */
 	dir = dj.dir;
 
-#ifdef CONFIG_FS_FAT_WRITE	/* R/W configuration */
+#ifdef FS_FAT_WRITE	/* R/W configuration */
 	if (res == 0) {
 		if (!dir)	/* Current dir itself */
 			res = -EISDIR;
@@ -1870,7 +1884,7 @@ int f_read (
 					cc = fp->fs->csize - csect;
 				if (disk_read(fp->fs, rbuff, sect, (BYTE)cc) != RES_OK)
 					ABORT(fp->fs, -EIO);
-#if defined CONFIG_FS_FAT_WRITE
+#if defined FS_FAT_WRITE
 				/* Replace one of the read sectors with cached data if it contains a dirty sector */
 				if ((fp->flag & FA__DIRTY) && fp->dsect - sect < cc)
 					memcpy(rbuff + ((fp->dsect - sect) * SS(fp->fs)), fp->buf, SS(fp->fs));
@@ -1879,7 +1893,7 @@ int f_read (
 				continue;
 			}
 			if (fp->dsect != sect) {	/* Load data sector if not in cache */
-#ifdef CONFIG_FS_FAT_WRITE
+#ifdef FS_FAT_WRITE
 				if (fp->flag & FA__DIRTY) {	/* Write-back dirty sector cache */
 					if (disk_write(fp->fs, fp->buf, fp->dsect, 1) != RES_OK)
 						ABORT(fp->fs, -EIO);
@@ -1903,7 +1917,7 @@ int f_read (
 
 
 
-#ifdef CONFIG_FS_FAT_WRITE
+#ifdef FS_FAT_WRITE
 /*
  * Write File
  */
@@ -2044,7 +2058,7 @@ int f_sync (
 	return res;
 }
 
-#endif /* CONFIG_FS_FAT_WRITE */
+#endif /* FS_FAT_WRITE */
 
 /*
  * Close File
@@ -2053,7 +2067,7 @@ int f_close (
 	FIL *fp		/* Pointer to the file object to be closed */
 )
 {
-#ifndef CONFIG_FS_FAT_WRITE
+#ifndef FS_FAT_WRITE
 	fp->fs = 0;	/* Discard file object */
 	return 0;
 #else
@@ -2082,7 +2096,7 @@ int f_lseek (
 		return -ERESTARTSYS;
 
 	if (ofs > fp->fsize	/* In read-only mode, clip offset with the file size */
-#ifdef CONFIG_FS_FAT_WRITE
+#ifdef FS_FAT_WRITE
 		 && !(fp->flag & FA_WRITE)
 #endif
 		) ofs = fp->fsize;
@@ -2098,7 +2112,7 @@ int f_lseek (
 			clst = fp->clust;
 		} else {					/* When seek to back cluster, */
 			clst = fp->sclust;			/* start from the first cluster */
-#ifdef CONFIG_FS_FAT_WRITE
+#ifdef FS_FAT_WRITE
 			if (clst == 0) {			/* If no cluster chain, create a new chain */
 				clst = create_chain(fp->fs, 0);
 				if (clst == 1)
@@ -2112,7 +2126,7 @@ int f_lseek (
 		}
 		if (clst != 0) {
 			while (ofs > bcs) {	/* Cluster following loop */
-#ifdef CONFIG_FS_FAT_WRITE
+#ifdef FS_FAT_WRITE
 				if (fp->flag & FA_WRITE) {	/* Check if in write mode or not */
 					/* Force stretch if in write mode */
 					clst = create_chain(fp->fs, clst);
@@ -2143,7 +2157,7 @@ int f_lseek (
 		}
 	}
 	if (fp->fptr % SS(fp->fs) && nsect != fp->dsect) {	/* Fill sector cache if needed */
-#ifdef CONFIG_FS_FAT_WRITE
+#ifdef FS_FAT_WRITE
 		if (fp->flag & FA__DIRTY) {	/* Write-back dirty sector cache */
 			if (disk_write(fp->fs, fp->buf, fp->dsect, 1) != RES_OK)
 				ABORT(fp->fs, -EIO);
@@ -2154,7 +2168,7 @@ int f_lseek (
 			ABORT(fp->fs, -EIO);
 		fp->dsect = nsect;
 	}
-#ifdef CONFIG_FS_FAT_WRITE
+#ifdef FS_FAT_WRITE
 	if (fp->fptr > fp->fsize) {	/* Set file change flag if the file size is extended */
 		fp->fsize = fp->fptr;
 		fp->flag |= FA__WRITTEN;
@@ -2269,7 +2283,7 @@ int f_stat (
 	return res;
 }
 
-#ifdef CONFIG_FS_FAT_WRITE
+#ifdef FS_FAT_WRITE
 /*
  * Get Number of Free Clusters
  */
@@ -2706,4 +2720,4 @@ out:
 
 	return res;
 }
-#endif /* CONFIG_FS_FAT_WRITE */
+#endif /* FS_FAT_WRITE */
diff --git a/fs/fat/ff.h b/fs/fat/ff.h
index e86ca3aae063..57a86805c93a 100644
--- a/fs/fat/ff.h
+++ b/fs/fat/ff.h
@@ -17,6 +17,13 @@
 #ifndef _FATFS
 #define _FATFS	8237	/* Revision ID */
 
+#if defined(CONFIG_FS_FAT_LFN) && !defined(__PBL__)
+#define FS_FAT_LFN 1
+#endif
+#if defined(CONFIG_FS_FAT_WRITE) && !defined(__PBL__)
+#define FS_FAT_WRITE 1
+#endif
+
 #include <asm/unaligned.h>
 #include <linux/list.h>
 
@@ -30,7 +37,7 @@
 /* Type of path name strings on FatFs API */
 
 #if _LFN_UNICODE			/* Unicode string */
-#ifndef CONFIG_FS_FAT_LFN
+#ifndef FS_FAT_LFN
 #error _LFN_UNICODE must be 0 in non-LFN cfg.
 #endif
 #ifndef _INC_TCHAR
@@ -63,7 +70,7 @@ typedef struct {
 #if _MAX_SS != 512
 	WORD	ssize;		/* Bytes per sector (512,1024,2048,4096) */
 #endif
-#ifdef CONFIG_FS_FAT_WRITE
+#ifdef FS_FAT_WRITE
 	DWORD	last_clust;	/* Last allocated cluster */
 	DWORD	free_clust;	/* Number of free clusters */
 	DWORD	fsi_sector;	/* fsinfo sector (FAT32) */
@@ -92,7 +99,7 @@ typedef struct {
 	DWORD	sclust;		/* File start cluster (0 when fsize==0) */
 	DWORD	clust;		/* Current cluster */
 	DWORD	dsect;		/* Current data sector */
-#ifdef CONFIG_FS_FAT_WRITE
+#ifdef FS_FAT_WRITE
 	DWORD	dir_sect;	/* Sector containing the directory entry */
 	BYTE*	dir_ptr;	/* Ponter to the directory entry in the window */
 #endif
@@ -119,7 +126,7 @@ typedef struct {
 	DWORD	sect;			/* Current sector */
 	BYTE*	dir;			/* Pointer to the current SFN entry in the win[] */
 	BYTE*	fn;			/* Pointer to the SFN (in/out) {file[8],ext[3],status[1]} */
-#ifdef CONFIG_FS_FAT_LFN
+#ifdef FS_FAT_LFN
 	WCHAR*	lfn;			/* Pointer to the LFN working buffer */
 	WORD	lfn_idx;		/* Last matched LFN index number (0xFFFF:No LFN) */
 #endif
@@ -135,7 +142,7 @@ typedef struct {
 	WORD	ftime;			/* Last modified time */
 	BYTE	fattrib;		/* Attribute */
 	TCHAR	fname[13];		/* Short file name (8.3 format) */
-#ifdef CONFIG_FS_FAT_LFN
+#ifdef FS_FAT_LFN
 	TCHAR*	lfname;			/* Pointer to the LFN buffer */
 	UINT 	lfsize;			/* Size of LFN buffer in TCHAR */
 #endif
diff --git a/include/pbl.h b/include/pbl.h
index 7cc162dfd039..346bdc006f39 100644
--- a/include/pbl.h
+++ b/include/pbl.h
@@ -20,6 +20,7 @@ struct pbl_bio {
 	void *priv;
 	int (*read)(struct pbl_bio *bio, off_t block_off, void *buf, unsigned int nblocks);
 };
+int pbl_fat_load(struct pbl_bio *, const char *filename, void *dest, unsigned int len);
 #else
 #define IN_PBL	0
 #endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
