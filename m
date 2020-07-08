Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jt4o3-00036E-UT
 for barebox@lists.infradead.org; Wed, 08 Jul 2020 07:47:53 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  8 Jul 2020 09:47:36 +0200
Message-Id: <20200708074739.359-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200708074739.359-1-a.fatoum@pengutronix.de>
References: <20200708074739.359-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/5] include: delete unreferenced u-boot part.h header
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

It's unused, the functions that it declares aren't defined in barebox
and the <ide.h> header it references doesn't exist.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/part.h | 104 -------------------------------------------------
 1 file changed, 104 deletions(-)
 delete mode 100644 include/part.h

diff --git a/include/part.h b/include/part.h
deleted file mode 100644
index e98647c70c35..000000000000
--- a/include/part.h
+++ /dev/null
@@ -1,104 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-/*
- * (C) Copyright 2000-2004
- * Wolfgang Denk, DENX Software Engineering, wd@denx.de.
- */
-#ifndef _PART_H
-#define _PART_H
-#include <ide.h>
-
-typedef struct block_dev_desc {
-	int		if_type;	/* type of the interface */
-	int	        dev;	  	/* device number */
-	unsigned char	part_type;  	/* partition type */
-	unsigned char	target;		/* target SCSI ID */
-	unsigned char	lun;		/* target LUN */
-	unsigned char	type;		/* device type */
-	unsigned char	removable;	/* removable device */
-#ifdef CONFIG_LBA48
-	unsigned char	lba48;		/* device can use 48bit addr (ATA/ATAPI v7) */
-#endif
-	lbaint_t		lba;	  	/* number of blocks */
-	unsigned long	blksz;		/* block size */
-	unsigned char	vendor [40+1]; 	/* IDE model, SCSI Vendor */
-	unsigned char	product[20+1];	/* IDE Serial no, SCSI product */
-	unsigned char	revision[8+1];	/* firmware revision */
-	unsigned long	(*block_read)(int dev,
-				      unsigned long start,
-				      lbaint_t blkcnt,
-				      unsigned long *buffer);
-}block_dev_desc_t;
-
-/* Interface types: */
-#define IF_TYPE_UNKNOWN		0
-#define IF_TYPE_IDE		1
-#define IF_TYPE_SCSI		2
-#define IF_TYPE_ATAPI		3
-#define IF_TYPE_USB		4
-#define IF_TYPE_DOC		5
-#define IF_TYPE_MMC		6
-
-/* Part types */
-#define PART_TYPE_UNKNOWN	0x00
-#define PART_TYPE_MAC		0x01
-#define PART_TYPE_DOS		0x02
-#define PART_TYPE_ISO		0x03
-#define PART_TYPE_AMIGA		0x04
-
-/*
- * Type string for barebox bootable partitions
- */
-#define BOOT_PART_TYPE	"barebox"	/* primary boot partition type	*/
-#define BOOT_PART_COMP	"PPCBoot"	/* PPCBoot compatibility type	*/
-
-/* device types */
-#define DEV_TYPE_UNKNOWN	0xff	/* not connected */
-#define DEV_TYPE_HARDDISK	0x00	/* harddisk */
-#define DEV_TYPE_TAPE		0x01	/* Tape */
-#define DEV_TYPE_CDROM		0x05	/* CD-ROM */
-#define DEV_TYPE_OPDISK		0x07	/* optical disk */
-
-typedef struct disk_partition {
-	ulong	start;		/* # of first block in partition	*/
-	ulong	size;		/* number of blocks in partition	*/
-	ulong	blksz;		/* block size in bytes			*/
-	uchar	name[32];	/* partition name			*/
-	uchar	type[32];	/* string type description		*/
-} disk_partition_t;
-
-/* disk/part.c */
-int get_partition_info (block_dev_desc_t * dev_desc, int part, disk_partition_t *info);
-void print_part (block_dev_desc_t *dev_desc);
-void  init_part (block_dev_desc_t *dev_desc);
-void dev_print(block_dev_desc_t *dev_desc);
-
-
-#ifdef CONFIG_MAC_PARTITION
-/* disk/part_mac.c */
-int get_partition_info_mac (block_dev_desc_t * dev_desc, int part, disk_partition_t *info);
-void print_part_mac (block_dev_desc_t *dev_desc);
-int   test_part_mac (block_dev_desc_t *dev_desc);
-#endif
-
-#ifdef CONFIG_DOS_PARTITION
-/* disk/part_dos.c */
-int get_partition_info_dos (block_dev_desc_t * dev_desc, int part, disk_partition_t *info);
-void print_part_dos (block_dev_desc_t *dev_desc);
-int   test_part_dos (block_dev_desc_t *dev_desc);
-#endif
-
-#ifdef CONFIG_ISO_PARTITION
-/* disk/part_iso.c */
-int get_partition_info_iso (block_dev_desc_t * dev_desc, int part, disk_partition_t *info);
-void print_part_iso (block_dev_desc_t *dev_desc);
-int   test_part_iso (block_dev_desc_t *dev_desc);
-#endif
-
-#ifdef CONFIG_AMIGA_PARTITION
-/* disk/part_amiga.c */
-int get_partition_info_amiga (block_dev_desc_t * dev_desc, int part, disk_partition_t *info);
-void print_part_amiga (block_dev_desc_t *dev_desc);
-int   test_part_amiga (block_dev_desc_t *dev_desc);
-#endif
-
-#endif /* _PART_H */
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
