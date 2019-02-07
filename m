Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from calrissian.rohieb.name ([81.20.132.56] helo=rohieb.name)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grsKs-0005iu-Kt
 for barebox@lists.infradead.org; Thu, 07 Feb 2019 22:40:07 +0000
From: Roland Hieber <rohieb@rohieb.name>
Date: Thu,  7 Feb 2019 23:39:03 +0100
Message-Id: <20190207223906.24394-3-rohieb@rohieb.name>
In-Reply-To: <20190207223906.24394-1-rohieb@rohieb.name>
References: <20190207223906.24394-1-rohieb@rohieb.name>
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
Subject: [PATCH 3/6] include: add SPDX GPL-2.0-only license tags for files
 without licensing information
To: barebox@lists.infradead.org
Cc: rhi@pengutronix.de, Roland Hieber <rohieb@rohieb.name>

According to our /README, GPL-2.0-only applies for the whole project
except noted otherwise.

Signed-off-by: Roland Hieber <rohieb@rohieb.name>
---
 include/abort.h             | 1 +
 include/bbu.h               | 1 +
 include/block.h             | 1 +
 include/blspec.h            | 1 +
 include/boot.h              | 1 +
 include/bootchooser.h       | 1 +
 include/bootm.h             | 1 +
 include/bootsource.h        | 1 +
 include/bunzip2.h           | 1 +
 include/byteorder.h         | 1 +
 include/cache.h             | 1 +
 include/clock.h             | 1 +
 include/cmdlinepart.h       | 1 +
 include/complete.h          | 1 +
 include/console_countdown.h | 1 +
 include/crc.h               | 1 +
 include/crc7.h              | 1 +
 include/dirent.h            | 1 +
 include/dma-dir.h           | 1 +
 include/efi.h               | 1 +
 include/elf.h               | 1 +
 include/envfs.h             | 1 +
 include/errno.h             | 1 +
 include/fb.h                | 1 +
 include/fcntl.h             | 1 +
 include/fdt.h               | 1 +
 include/file-list.h         | 1 +
 include/filetype.h          | 1 +
 include/fs.h                | 1 +
 include/globalvar.h         | 1 +
 include/gpio.h              | 1 +
 include/gpio_keys.h         | 1 +
 include/gunzip.h            | 1 +
 include/image-metadata.h    | 1 +
 include/init.h              | 1 +
 include/io.h                | 1 +
 include/ioctl.h             | 1 +
 include/kallsyms.h          | 1 +
 include/kgdb.h              | 1 +
 include/led.h               | 1 +
 include/libbb.h             | 2 +-
 include/libfile.h           | 1 +
 include/libgen.h            | 1 +
 include/lzo.h               | 1 +
 include/magicvar.h          | 1 +
 include/malloc.h            | 1 +
 include/math.h              | 1 +
 include/memory.h            | 1 +
 include/memtest.h           | 1 +
 include/mmu.h               | 1 +
 include/module.h            | 1 +
 include/nand.h              | 1 +
 include/notifier.h          | 1 +
 include/of.h                | 1 +
 include/of_address.h        | 1 +
 include/of_device.h         | 1 +
 include/of_pci.h            | 1 +
 include/param.h             | 1 +
 include/parseopt.h          | 1 +
 include/partition.h         | 1 +
 include/phy-id-list.h       | 1 +
 include/pinctrl.h           | 1 +
 include/poweroff.h          | 1 +
 include/printk.h            | 1 +
 include/progress.h          | 1 +
 include/pwm.h               | 1 +
 include/qsort.h             | 1 +
 include/ratp.h              | 3 ++-
 include/ratp_bb.h           | 1 +
 include/readkey.h           | 1 +
 include/regmap.h            | 1 +
 include/regulator.h         | 1 +
 include/restart.h           | 1 +
 include/serdev.h            | 1 +
 include/sntp.h              | 1 +
 include/state.h             | 1 +
 include/stdio.h             | 1 +
 include/stdlib.h            | 1 +
 include/string.h            | 1 +
 include/stringlist.h        | 1 +
 include/twl6030_pwrbtn.h    | 1 +
 include/types.h             | 1 +
 include/ubiformat.h         | 1 +
 include/uncompress.h        | 1 +
 include/unistd.h            | 1 +
 include/usb_dfu_trailer.h   | 1 +
 include/wchar.h             | 1 +
 include/xfuncs.h            | 1 +
 88 files changed, 89 insertions(+), 2 deletions(-)

diff --git a/include/abort.h b/include/abort.h
index 326467c25f..02d394237d 100644
--- a/include/abort.h
+++ b/include/abort.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __ABORT_H
 #define __ABORT_H
 
 #include <asm/barebox.h>
 
 #if defined ARCH_HAS_DATA_ABORT_MASK && !defined __PBL__
 
 /*
  * data_abort_mask - ignore data aborts
  *
  * If data aborts are ignored the data abort handler
  * will just return.
  */
 void data_abort_mask(void);
 
diff --git a/include/bbu.h b/include/bbu.h
index 0ed355b539..030e3d932b 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __INCLUDE_BBU_H
 #define __INCLUDE_BBU_H
 
 #include <asm-generic/errno.h>
 #include <linux/list.h>
 #include <linux/types.h>
 #include <filetype.h>
 
 struct bbu_data {
 #define BBU_FLAG_FORCE	(1 << 0)
 #define BBU_FLAG_YES	(1 << 1)
 	unsigned long flags;
 	int force;
 	const void *image;
 	const char *imagefile;
diff --git a/include/block.h b/include/block.h
index 91377679b0..bd87efdc62 100644
--- a/include/block.h
+++ b/include/block.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __BLOCK_H
 #define __BLOCK_H
 
 #include <driver.h>
 #include <linux/list.h>
 
 struct block_device;
 
 struct block_device_ops {
 	int (*read)(struct block_device *, void *buf, int block, int num_blocks);
 	int (*write)(struct block_device *, const void *buf, int block, int num_blocks);
 	int (*flush)(struct block_device *);
 };
 
 struct chunk;
diff --git a/include/blspec.h b/include/blspec.h
index 7d911f030b..37076cd47c 100644
--- a/include/blspec.h
+++ b/include/blspec.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __LOADER_H__
 #define __LOADER_H__
 
 #include <linux/list.h>
 #include <boot.h>
 
 struct blspec_entry {
 	struct bootentry entry;
 
 	struct device_node *node;
 	struct cdev *cdev;
 	char *rootpath;
 	char *configpath;
 };
 
diff --git a/include/boot.h b/include/boot.h
index 4f7612ab80..4054c27d93 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __BOOT_H
 #define __BOOT_H
 
 #include <of.h>
 #include <menu.h>
 #include <environment.h>
 
 #ifdef CONFIG_FLEXIBLE_BOOTARGS
 const char *linux_bootargs_get(void);
 int linux_bootargs_overwrite(const char *bootargs);
 #else
 static inline const char *linux_bootargs_get(void)
 {
 	return getenv("bootargs");
 }
diff --git a/include/bootchooser.h b/include/bootchooser.h
index 7822c01459..2cfd5b126a 100644
--- a/include/bootchooser.h
+++ b/include/bootchooser.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __BOOTCHOOSER_H
 #define __BOOTCHOOSER_H
 
 #include <of.h>
 #include <boot.h>
 
 struct bootchooser;
 struct bootchooser_target;
 
 struct bootchooser *bootchooser_get(void);
 int bootchooser_save(struct bootchooser *bootchooser);
 int bootchooser_put(struct bootchooser *bootchooser);
 
 void bootchooser_info(struct bootchooser *bootchooser);
 
diff --git a/include/bootm.h b/include/bootm.h
index fdc73f711a..6c66015761 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __BOOTM_H
 #define __BOOTM_H
 
 #include <image.h>
 #include <filetype.h>
 #include <linux/list.h>
 
 enum bootm_verify {
 	BOOTM_VERIFY_NONE,
 	BOOTM_VERIFY_HASH,
 	BOOTM_VERIFY_SIGNATURE,
 	BOOTM_VERIFY_AVAILABLE,
 };
 
 struct bootm_data {
diff --git a/include/bootsource.h b/include/bootsource.h
index 29347aaeb0..d9aba1fdcd 100644
--- a/include/bootsource.h
+++ b/include/bootsource.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __BOOTSOURCE_H__
 #define __BOOTSOURCE_H__
 
 enum bootsource {
 	BOOTSOURCE_UNKNOWN,
 	BOOTSOURCE_NAND,
 	BOOTSOURCE_NOR,
 	BOOTSOURCE_MMC,
 	BOOTSOURCE_I2C,
 	BOOTSOURCE_I2C_EEPROM,
 	BOOTSOURCE_SPI,
 	BOOTSOURCE_SPI_EEPROM,
 	BOOTSOURCE_SPI_NOR,
 	BOOTSOURCE_SERIAL,
 	BOOTSOURCE_ONENAND,
diff --git a/include/bunzip2.h b/include/bunzip2.h
index 115272137a..55404ff846 100644
--- a/include/bunzip2.h
+++ b/include/bunzip2.h
@@ -1,10 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef DECOMPRESS_BUNZIP2_H
 #define DECOMPRESS_BUNZIP2_H
 
 int bunzip2(unsigned char *inbuf, int len,
 	    int(*fill)(void*, unsigned int),
 	    int(*flush)(void*, unsigned int),
 	    unsigned char *output,
 	    int *pos,
 	    void(*error)(char *x));
 #endif
diff --git a/include/byteorder.h b/include/byteorder.h
index 4b255a5fab..c3cac85013 100644
--- a/include/byteorder.h
+++ b/include/byteorder.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __BYTEORDER_H__
 #define __BYTEORDER_H__
 
 /*
  * The standard macros for converting between host and network byte order are
  * badly named. So ntohl converts 32 bits even on architectures where a long is
  * 64 bit wide although the 'l' suffix suggests that it's working on longs.
  *
  * So this file introduces variants that use the bitcount as suffix instead of
  * 's' or 'l'.
  */
 
 #include <asm/byteorder.h>
 
 #define ntoh16(x)	__be16_to_cpu(x)
diff --git a/include/cache.h b/include/cache.h
index 23841dcd06..37e008794b 100644
--- a/include/cache.h
+++ b/include/cache.h
@@ -1,14 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __CACHE_H
 #define __CACHE_H
 
 int	icache_status (void);
 void	icache_enable (void);
 void	icache_disable(void);
 int	dcache_status (void);
 void	dcache_enable (void);
 void	dcache_disable(void);
 int	checkicache   (void);
 int	checkdcache   (void);
 
 #endif /* __CACHE_H */
 
diff --git a/include/clock.h b/include/clock.h
index 5f2f53ab66..ec8fff6e94 100644
--- a/include/clock.h
+++ b/include/clock.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef CLOCK_H
 #define CLOCK_H
 
 #include <types.h>
 #include <linux/time.h>
 
 #define CLOCKSOURCE_MASK(bits) (uint64_t)((bits) < 64 ? ((1ULL<<(bits))-1) : -1)
 
 struct clocksource {
 	uint32_t	shift;
 	uint32_t	mult;
 	uint64_t	(*read)(void);
 	uint64_t	cycle_last;
 	uint64_t	mask;
 	int		priority;
diff --git a/include/cmdlinepart.h b/include/cmdlinepart.h
index bf8cdfa62a..9f5bdf610a 100644
--- a/include/cmdlinepart.h
+++ b/include/cmdlinepart.h
@@ -1,14 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __CMD_LINE_PART_H
 #define __CMD_LINE_PART_H
 
 #define CMDLINEPART_ADD_DEVNAME (1 << 0)
 
 int cmdlinepart_do_parse_one(const char *devname, const char *partstr,
 				 const char **endp, loff_t *offset,
 				 loff_t devsize, loff_t *retsize,
 				 unsigned int partition_flags);
 
 int cmdlinepart_do_parse(const char *devname, const char *parts, loff_t devsize,
 		unsigned partition_flags);
 
 #endif /* __CMD_LINE_PART_H */
diff --git a/include/complete.h b/include/complete.h
index 491ba66cb4..763d256bf4 100644
--- a/include/complete.h
+++ b/include/complete.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __COMPLETE_
 #define __COMPLETE_
 
 #include <linux/list.h>
 #include <malloc.h>
 #include <stringlist.h>
 
 #define COMPLETE_END		0
 #define COMPLETE_CONTINUE	1
 
 int complete(char *instr, char **outstr);
 void complete_reset(void);
 
 int command_complete(struct string_list *sl, char *instr);
 int device_complete(struct string_list *sl, char *instr);
diff --git a/include/console_countdown.h b/include/console_countdown.h
index c6c2d5c00e..6586808ff2 100644
--- a/include/console_countdown.h
+++ b/include/console_countdown.h
@@ -1,13 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __CONSOLE_COUNTDOWN_H
 #define __CONSOLE_COUNTDOWN_H
 
 #define CONSOLE_COUNTDOWN_SILENT (1 << 0)
 #define CONSOLE_COUNTDOWN_ANYKEY (1 << 1)
 #define CONSOLE_COUNTDOWN_RETURN (1 << 3)
 #define CONSOLE_COUNTDOWN_CTRLC (1 << 4)
 #define CONSOLE_COUNTDOWN_EXTERN (1 << 5)
 
 int console_countdown(int timeout_s, unsigned flags, char *out_key);
 void console_countdown_abort(void);
 
 #endif /* __CONSOLE_COUNTDOWN_H */
diff --git a/include/crc.h b/include/crc.h
index 847a0a4b64..e25d24d1b6 100644
--- a/include/crc.h
+++ b/include/crc.h
@@ -1,14 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __INCLUDE_CRC_H
 #define __INCLUDE_CRC_H
 
 #include <linux/types.h>
 
 /* 16 bit CRC with polynomial x^16+x^12+x^5+1 */
 extern uint16_t cyg_crc16(const unsigned char *s, int len);
 
 uint32_t crc32(uint32_t, const void *, unsigned int);
 uint32_t crc32_no_comp(uint32_t, const void *, unsigned int);
 int file_crc(char *filename, unsigned long start, unsigned long size,
 	     unsigned long *crc, unsigned long *total);
 
 #endif /* __INCLUDE_CRC_H */
diff --git a/include/crc7.h b/include/crc7.h
index 0c41cc341f..27d2dae422 100644
--- a/include/crc7.h
+++ b/include/crc7.h
@@ -1,14 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef _LINUX_CRC7_H
 #define _LINUX_CRC7_H
 #include <common.h>
 
 extern const u8 crc7_syndrome_table[256];
 
 static inline u8 crc7_byte(u8 crc, u8 data)
 {
 	return crc7_syndrome_table[(crc << 1) ^ data];
 }
 
 extern u8 crc7(u8 crc, const u8 *buffer, size_t len);
 
 #endif
diff --git a/include/dirent.h b/include/dirent.h
index 1df5d90452..d7b5e78b27 100644
--- a/include/dirent.h
+++ b/include/dirent.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __DIRENT_H
 #define __DIRENT_H
 
 #include <linux/list.h>
 
 struct dirent {
 	char d_name[256];
 };
 
 typedef struct dir {
 	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
 	struct node_d *node;
 	struct dirent d;
 	void *priv; /* private data for the fs driver */
diff --git a/include/dma-dir.h b/include/dma-dir.h
index 970764c5b3..d3b1a27b4f 100644
--- a/include/dma-dir.h
+++ b/include/dma-dir.h
@@ -1,11 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __DMA_DIR_H
 #define __DMA_DIR_H
 
 enum dma_data_direction {
 	DMA_BIDIRECTIONAL = 0,
 	DMA_TO_DEVICE = 1,
 	DMA_FROM_DEVICE = 2,
 	DMA_NONE = 3,
 };
 
 #endif /* __DMA_DIR_H */
diff --git a/include/efi.h b/include/efi.h
index 7cc5fe05fa..7c7d8ebd07 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef _LINUX_EFI_H
 #define _LINUX_EFI_H
 
 /*
  * Extensible Firmware Interface
  * Based on 'Extensible Firmware Interface Specification' version 0.9, April 30, 1999
  *
  * Copyright (C) 1999 VA Linux Systems
  * Copyright (C) 1999 Walt Drummond <drummond@valinux.com>
  * Copyright (C) 1999, 2002-2003 Hewlett-Packard Co.
  *	David Mosberger-Tang <davidm@hpl.hp.com>
  *	Stephane Eranian <eranian@hpl.hp.com>
  */
 #include <linux/string.h>
 #include <linux/types.h>
diff --git a/include/elf.h b/include/elf.h
index 92c8d9c127..3566df8526 100644
--- a/include/elf.h
+++ b/include/elf.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef _LINUX_ELF_H
 #define _LINUX_ELF_H
 
 #include <linux/types.h>
 #include <linux/list.h>
 //#include <linux/auxvec.h>
 //#include <linux/elf-em.h>
 #include <asm/elf.h>
 
 struct file;
 
 #ifndef elf_read_implies_exec
   /* Executables for which elf_read_implies_exec() returns TRUE will
      have the READ_IMPLIES_EXEC personality flag set automatically.
      Override in asm/elf.h as needed.  */
diff --git a/include/envfs.h b/include/envfs.h
index 27c4b42c6b..b138eafed2 100644
--- a/include/envfs.h
+++ b/include/envfs.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef _ENVFS_H
 #define _ENVFS_H
 
 #ifdef __BAREBOX__
 #include <errno.h>
 #include <asm/byteorder.h>
 #include <linux/stringify.h>
 #endif
 
 #define ENVFS_MAJOR		1
 #define ENVFS_MINOR		0
 
 #define ENVFS_MAGIC		    0x798fba79	/* some random number */
 #define ENVFS_INODE_MAGIC	0x67a8c78d
 #define ENVFS_INODE_END_MAGIC	0x68a8c78d
diff --git a/include/errno.h b/include/errno.h
index 496ccab0ee..50f00de5d6 100644
--- a/include/errno.h
+++ b/include/errno.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __ERRNO_H
 #define __ERRNO_H
 
 #include <asm-generic/errno.h>
 #include <linux/err.h>
 
 extern int errno;
 
 void perror(const char *s);
 const char *errno_str(void);
 const char *strerror(int errnum);
 
 static inline const char *strerrorp(const void *errp)
 {
 	return strerror(-PTR_ERR(errp));
diff --git a/include/fb.h b/include/fb.h
index 271b939968..e17d07ae0c 100644
--- a/include/fb.h
+++ b/include/fb.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __FB_H
 #define __FB_H
 
 #include <ioctl.h>
 #include <param.h>
 #include <driver.h>
 #include <linux/bitops.h>
 
 #define FB_VISUAL_TRUECOLOR		2	/* True color	*/
 #define FB_VISUAL_PSEUDOCOLOR		3	/* Pseudo color (like atari) */
 #define FB_VISUAL_DIRECTCOLOR		4	/* Direct color */
 #define FB_VISUAL_STATIC_PSEUDOCOLOR	5	/* Pseudo color readonly */
 
 #define FB_SYNC_HOR_HIGH_ACT	1	/* horizontal sync high active	*/
 #define FB_SYNC_VERT_HIGH_ACT	2	/* vertical sync high active	*/
diff --git a/include/fcntl.h b/include/fcntl.h
index 98020bdfb1..2e7c0eed34 100644
--- a/include/fcntl.h
+++ b/include/fcntl.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __FCNTL_H
 #define __FCNTL_H
 
 #include <linux/types.h>
 
 /* open/fcntl - O_SYNC is only implemented on blocks devices and on files
    located on an ext2 file system */
 #define O_ACCMODE	00000003
 #define O_RDONLY	00000000
 #define O_WRONLY	00000001
 #define O_RDWR		00000002
 #define O_CREAT		00000100	/* not fcntl */
 #define O_EXCL		00000200	/* not fcntl */
 #define O_TRUNC		00001000	/* not fcntl */
 #define O_APPEND	00002000
diff --git a/include/fdt.h b/include/fdt.h
index 1ccd4c6734..387df867db 100644
--- a/include/fdt.h
+++ b/include/fdt.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef _FDT_H
 #define _FDT_H
 
 #include <linux/types.h>
 
 #ifndef __ASSEMBLY__
 
 #define _B(n)	((unsigned long long)((uint8_t *)&x)[n])
 
 #define fdt32_to_cpu(x)	be32_to_cpu(x)
 #define cpu_to_fdt32(x) cpu_to_be32(x)
 
 static inline uint64_t fdt64_to_cpu(uint64_t x)
 {
 	return (_B(0) << 56) | (_B(1) << 48) | (_B(2) << 40) | (_B(3) << 32)
diff --git a/include/file-list.h b/include/file-list.h
index 404d8d64bb..9a9edfa378 100644
--- a/include/file-list.h
+++ b/include/file-list.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __FILE_LIST
 #define __FILE_LIST
 
 #define FILE_LIST_FLAG_SAFE	(1 << 0)
 #define FILE_LIST_FLAG_READBACK	(1 << 1)
 #define FILE_LIST_FLAG_CREATE	(1 << 2)
 #define FILE_LIST_FLAG_UBI	(1 << 3)
 
 struct file_list_entry {
 	char *name;
 	char *filename;
 	unsigned long flags;
 	struct list_head list;
 };
 
diff --git a/include/filetype.h b/include/filetype.h
index 395053dd59..c83a845eef 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __FILE_TYPE_H
 #define __FILE_TYPE_H
 
 #include <linux/string.h>
 #include <linux/types.h>
 
 /*
  * List of file types we know
  */
 enum filetype {
 	filetype_unknown,
 	filetype_arm_zimage,
 	filetype_lzo_compressed,
 	filetype_lz4_compressed,
 	filetype_arm_barebox,
diff --git a/include/fs.h b/include/fs.h
index 181318f404..e21a877619 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __FS_H
 #define __FS_H
 
 #include <unistd.h>
 #include <fcntl.h>
 #include <sys/ioctl.h>
 #include <dirent.h>
 #include <sys/mount.h>
 #include <sys/stat.h>
 #include <driver.h>
 #include <filetype.h>
 #include <linux/fs.h>
 #include <linux/string.h>
 
 #define PATH_MAX       1024        /* include/linux/limits.h */
diff --git a/include/globalvar.h b/include/globalvar.h
index 67391e2042..fc85e93e14 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __GLOBALVAR_H
 #define __GLOBALVAR_H
 
 #include <param.h>
 #include <driver.h>
 #include <linux/err.h>
 #include <stringlist.h>
 
 extern struct device_d global_device;
 
 #ifdef CONFIG_GLOBALVAR
 int globalvar_add_simple(const char *name, const char *value);
 
 void globalvar_remove(const char *name);
 char *globalvar_get_match(const char *match, const char *separator);
diff --git a/include/gpio.h b/include/gpio.h
index 38d6ba2df9..bef03d5fb9 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __GPIO_H
 #define __GPIO_H
 
 #include <linux/types.h>
 #include <linux/list.h>
 
 #ifdef CONFIG_GENERIC_GPIO
 void gpio_set_value(unsigned gpio, int value);
 int gpio_get_value(unsigned gpio);
 int gpio_direction_output(unsigned gpio, int value);
 int gpio_direction_input(unsigned gpio);
 #else
 static inline void gpio_set_value(unsigned gpio, int value)
 {
 }
diff --git a/include/gpio_keys.h b/include/gpio_keys.h
index f4a22e16db..f12bed2a0b 100644
--- a/include/gpio_keys.h
+++ b/include/gpio_keys.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef _GPIO_KEYS_H
 #define _GPIO_KEYS_H
 
 #include <poller.h>
 #include <kfifo.h>
 
 struct gpio_keys_button {
 	/* Configuration parameters */
 	int code;
 
 	int gpio;
 	int active_low;
 };
 
 struct gpio_keys_platform_data {
diff --git a/include/gunzip.h b/include/gunzip.h
index b9018941d1..0a959d5eb7 100644
--- a/include/gunzip.h
+++ b/include/gunzip.h
@@ -1,10 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef GUNZIP_H
 #define GUNZIP_H
 
 int gunzip(unsigned char *inbuf, int len,
 	   int(*fill)(void*, unsigned int),
 	   int(*flush)(void*, unsigned int),
 	   unsigned char *output,
 	   int *pos,
 	   void(*error_fn)(char *x));
 #endif
diff --git a/include/image-metadata.h b/include/image-metadata.h
index 8739bffb92..232ba8e705 100644
--- a/include/image-metadata.h
+++ b/include/image-metadata.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __INCLUDE_IMAGE_METADTA_H
 #define __INCLUDE_IMAGE_METADTA_H
 
 /*
  * barebox Image MetaData (IMD)
  *
  * IMD is a mechanism to store metadata in barebox images. With IMD
  * it's possible to extract the release, the build timestamp and the
  * board type from a barebox image.
  *
  * Since there is no fixed place in the image suitable for all SoC image
  * types the metadata can be stored anywhere in the image and is found
  * by iterating over the image. The metadata starts with a start header
  * and ends with an end header. All tags in between carry the payload.
  *
diff --git a/include/init.h b/include/init.h
index 527d49afec..d1cef14b07 100644
--- a/include/init.h
+++ b/include/init.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef _INIT_H
 #define _INIT_H
 
 /*
  * fake define to simplify the linux sync
  */
 #define __init
 #define __initdata
 #define __initconst
 #define __exit
 #define __exitdata
 
 /* For assembly routines */
 #define __BARE_INIT	.section ".text_bare_init.text","ax"
 
diff --git a/include/io.h b/include/io.h
index 8eb56b061f..9130020722 100644
--- a/include/io.h
+++ b/include/io.h
@@ -1,6 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __IO_H
 #define __IO_H
 
 #include <asm/io.h>
 
 #endif /* __IO_H */
diff --git a/include/ioctl.h b/include/ioctl.h
index 1ade20f905..3290a52519 100644
--- a/include/ioctl.h
+++ b/include/ioctl.h
@@ -1,6 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __IOCTL_H
 #define __IOCTL_H
 
 #include <asm-generic/ioctl.h>
 
 #endif /* __IOCTL_H */
diff --git a/include/kallsyms.h b/include/kallsyms.h
index 69b84d2c6c..e0b3ff7cd5 100644
--- a/include/kallsyms.h
+++ b/include/kallsyms.h
@@ -1,12 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __KALLSYMS_H
 #define __KALLSYMS_H
 
 #define KSYM_NAME_LEN 128
 #define KSYM_SYMBOL_LEN (sizeof("%s+%#lx/%#lx [%s]") + (KSYM_NAME_LEN - 1) + \
 		2*(BITS_PER_LONG*3/10) + (MODULE_NAME_LEN - 1) + 1)
 unsigned long kallsyms_lookup_name(const char *name);
 
 /* Look up a kernel symbol and return it in a text buffer. */
 int sprint_symbol(char *buffer, unsigned long address);
 
 #endif /* __KALLSYMS_H */
diff --git a/include/kgdb.h b/include/kgdb.h
index f543cd6e18..1f23833f92 100644
--- a/include/kgdb.h
+++ b/include/kgdb.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __KGDB_H__
 #define __KGDB_H__
 
 #include <asm/ptrace.h>
 
 #define KGDBERR_BADPARAMS	1
 #define KGDBERR_NOTHEXDIG	2
 #define KGDBERR_MEMFAULT	3
 #define KGDBERR_NOSPACE		4
 #define KGDBERR_ALIGNFAULT	5
 
 #define KGDBDATA_MAXREGS	8
 #define KGDBDATA_MAXPRIV	8
 
 #define KGDBEXIT_TYPEMASK	0xff
diff --git a/include/led.h b/include/led.h
index 0ce857129d..6b6aff922a 100644
--- a/include/led.h
+++ b/include/led.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __LED_H
 #define __LED_H
 
 #include <linux/list.h>
 
 #include <errno.h>
 #include <of.h>
 
 struct led {
 	void (*set)(struct led *, unsigned int value);
 	int max_value;
 	char *name;
 	int num;
 	struct list_head list;
 
diff --git a/include/libbb.h b/include/libbb.h
index 1f6afaa27a..a365f1d5a1 100644
--- a/include/libbb.h
+++ b/include/libbb.h
@@ -1,16 +1,16 @@
-
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __LIBBB_H
 #define __LIBBB_H
 
 #include <linux/stat.h>
 
 #define DOT_OR_DOTDOT(s) ((s)[0] == '.' && (!(s)[1] || ((s)[1] == '.' && !(s)[2])))
 
 char *concat_path_file(const char *path, const char *filename);
 char *concat_subpath_file(const char *path, const char *f);
 int execable_file(const char *name);
 char *find_execable(const char *filename);
 char* last_char_is(const char *s, int c);
 
 enum {
 	ACTION_RECURSE     = (1 << 0),
diff --git a/include/libfile.h b/include/libfile.h
index f1d6951877..350ddddf70 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __LIBFILE_H
 #define __LIBFILE_H
 
 int pwrite_full(int fd, const void *buf, size_t size, loff_t offset);
 int write_full(int fd, const void *buf, size_t size);
 int read_full(int fd, void *buf, size_t size);
 
 char *read_file_line(const char *fmt, ...);
 
 void *read_file(const char *filename, size_t *size);
 
 int read_file_2(const char *filename, size_t *size, void **outbuf,
 		loff_t max_size);
 
 int write_file(const char *filename, const void *buf, size_t size);
diff --git a/include/libgen.h b/include/libgen.h
index 71f06eb6f6..6c0f039efa 100644
--- a/include/libgen.h
+++ b/include/libgen.h
@@ -1,9 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __LIBGEN_H
 #define __LIBGEN_H
 
 char *basename (char *path);
 char *posix_basename(char *path);
 char *dirname (char *path);
 
 #endif /* __LIBGEN_H */
 
diff --git a/include/lzo.h b/include/lzo.h
index 6c34be13ef..f46f38b0ed 100644
--- a/include/lzo.h
+++ b/include/lzo.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __LZO_H__
 #define __LZO_H__
 /*
  *  LZO Public Kernel Interface
  *  A mini subset of the LZO real-time data compression library
  *
  *  Copyright (C) 1996-2012 Markus F.X.J. Oberhumer <markus@oberhumer.com>
  *
  *  The full LZO package can be found at:
  *  http://www.oberhumer.com/opensource/lzo/
  *
  *  Changed for Linux kernel use by:
  *  Nitin Gupta <nitingupta910@gmail.com>
  *  Richard Purdie <rpurdie@openedhand.com>
  */
diff --git a/include/magicvar.h b/include/magicvar.h
index bb5bd2591f..9fb89a84cc 100644
--- a/include/magicvar.h
+++ b/include/magicvar.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __MAGIC_VARS_H
 #define __MAGIC_VARS_H
 
 #include <linux/stringify.h>
 
 struct magicvar {
 	const char *name;
 	const char *description;
 };
 
 extern struct magicvar __barebox_magicvar_start;
 extern struct magicvar __barebox_magicvar_end;
 
 #ifdef CONFIG_CMD_MAGICVAR_HELP
 #define MAGICVAR_DESCRIPTION(d)		(d)
diff --git a/include/malloc.h b/include/malloc.h
index 0d3c9e97a0..971fc4058b 100644
--- a/include/malloc.h
+++ b/include/malloc.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __MALLOC_H
 #define __MALLOC_H
 
 #include <types.h>
 
 void *malloc(size_t);
 void free(void *);
 void *realloc(void *, size_t);
 void *memalign(size_t, size_t);
 void *calloc(size_t, size_t);
 void malloc_stats(void);
 void *sbrk(ptrdiff_t increment);
 
 int mem_malloc_is_initialized(void);
 
diff --git a/include/math.h b/include/math.h
index 5648e3f9c1..1e59a8479e 100644
--- a/include/math.h
+++ b/include/math.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /* math.h - interface to shell math "library" -- this allows shells to share
  *          the implementation of arithmetic $((...)) expansions.
  *
  * This aims to be a POSIX shell math library as documented here:
  *	http://www.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#tag_18_06_04
  *
  * See math.c for internal documentation.
  */
 
 /* The math library has just one function:
  *
  * arith_t arith(arith_state_t *state, const char *expr);
  *
  * The expr argument is the math string to parse.  All normal expansions must
  * be done already.  i.e. no dollar symbols should be present.
diff --git a/include/memory.h b/include/memory.h
index 73ee7661ef..906d9f7b26 100644
--- a/include/memory.h
+++ b/include/memory.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __MEM_MALLOC_H
 #define __MEM_MALLOC_H
 
 #include <linux/types.h>
 #include <linux/list.h>
 
 void mem_malloc_init(void *start, void *end);
 ulong mem_malloc_start(void);
 ulong mem_malloc_end(void);
 
 struct memory_bank {
 	struct list_head list;
 	struct device_d *dev;
 	unsigned long start;
 	unsigned long size;
diff --git a/include/memtest.h b/include/memtest.h
index 0100a6c58c..df0a391cc3 100644
--- a/include/memtest.h
+++ b/include/memtest.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __MEMTEST_H
 #define __MEMTEST_H
 
 #include <linux/ioport.h>
 
 struct mem_test_resource {
 	struct resource *r;
 	struct list_head list;
 };
 
 int mem_test_request_regions(struct list_head *list);
 void mem_test_release_regions(struct list_head *list);
 struct mem_test_resource *mem_test_biggest_region(struct list_head *list);
 
 int mem_test_bus_integrity(resource_size_t _start, resource_size_t _end);
diff --git a/include/mmu.h b/include/mmu.h
index 66b246f6d2..2e23853df3 100644
--- a/include/mmu.h
+++ b/include/mmu.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __MMU_H
 #define __MMU_H
 
 #define MAP_UNCACHED	0
 #define MAP_CACHED	1
 
 /*
  * Depending on the architecture the default mapping can be
  * cached or uncached. Without ARCH_HAS_REMAP being set this
  * is mapping type is the only one supported.
  */
 #define MAP_DEFAULT	MAP_ARCH_DEFAULT
 
 #include <asm/mmu.h>
 
diff --git a/include/module.h b/include/module.h
index 460a34fe2b..abf740a789 100644
--- a/include/module.h
+++ b/include/module.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __MODULE_H
 #define __MODULE_H
 
 #include <elf.h>
 #include <linux/compiler.h>
 #include <linux/list.h>
 
 #ifndef MODULE_SYMBOL_PREFIX
 #define MODULE_SYMBOL_PREFIX
 #endif
 
 #define MODULE_NAME_LEN (64 - sizeof(unsigned long))
 #define THIS_MODULE	0
 
 #ifdef CONFIG_MODULES
diff --git a/include/nand.h b/include/nand.h
index fb3b5a1088..f0114a227d 100644
--- a/include/nand.h
+++ b/include/nand.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __NAND_H__
 #define __NAND_H__
 
 struct nand_bb;
 
 #ifdef CONFIG_NAND
 int dev_add_bb_dev(const char *filename, const char *name);
 int dev_remove_bb_dev(const char *name);
 struct cdev *mtd_add_bb(struct mtd_info *mtd, const char *name);
 void mtd_del_bb(struct mtd_info *mtd);
 #else
 static inline int dev_add_bb_dev(const char *filename, const char *name) {
 	return 0;
 }
 static inline int dev_remove_bb_dev(const char *name)
diff --git a/include/notifier.h b/include/notifier.h
index e0df3e666b..432b66c4ca 100644
--- a/include/notifier.h
+++ b/include/notifier.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __NOTIFIER_H
 #define __NOTIFIER_H
 
 #include <linux/list.h>
 
 /*
  * Notifer chains loosely based on the according Linux framework
  */
 
 struct notifier_block {
 	int (*notifier_call)(struct notifier_block *, unsigned long, void *);
 	struct list_head list;
 };
 
 struct notifier_head {
diff --git a/include/of.h b/include/of.h
index 184acb4741..e5d73fe970 100644
--- a/include/of.h
+++ b/include/of.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __OF_H
 #define __OF_H
 
 #include <fdt.h>
 #include <errno.h>
 #include <linux/types.h>
 #include <linux/list.h>
 #include <asm/byteorder.h>
 
 /* Default string compare functions */
 #define of_compat_cmp(s1, s2, l)	strcasecmp((s1), (s2))
 #define of_prop_cmp(s1, s2)		strcmp((s1), (s2))
 #define of_node_cmp(s1, s2)		strcasecmp((s1), (s2))
 
 #define OF_BAD_ADDR      ((u64)-1)
diff --git a/include/of_address.h b/include/of_address.h
index ebf3ec2a24..37aa037118 100644
--- a/include/of_address.h
+++ b/include/of_address.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __OF_ADDRESS_H
 #define __OF_ADDRESS_H
 
 #include <common.h>
 #include <of.h>
 
 struct of_pci_range_parser {
 	struct device_node *node;
 	const __be32 *range;
 	const __be32 *end;
 	int np;
 	int pna;
 };
 
 struct of_pci_range {
diff --git a/include/of_device.h b/include/of_device.h
index 44c1c0f545..d9b36e61af 100644
--- a/include/of_device.h
+++ b/include/of_device.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __OF_DEVICE_H
 #define __OF_DEVICE_H
 
 #include <driver.h>
 #include <of.h>
 
 
 #ifdef CONFIG_OFTREE
 extern const struct of_device_id *of_match_device(
 	const struct of_device_id *matches, const struct device_d *dev);
 
 /**
  * of_driver_match_device - Tell if a driver's of_match_table matches a device.
  * @drv: the device_driver structure to test
  * @dev: the device structure to match against
diff --git a/include/of_pci.h b/include/of_pci.h
index c95cb0135a..c787150936 100644
--- a/include/of_pci.h
+++ b/include/of_pci.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __OF_PCI_H
 #define __OF_PCI_H
 
 #include <linux/pci.h>
 
 #ifdef CONFIG_OF_PCI
 int of_pci_get_devfn(struct device_node *np);
 
 #else
 static inline int of_pci_get_devfn(struct device_node *np)
 {
 	return -EINVAL;
 }
 
 #endif
diff --git a/include/param.h b/include/param.h
index b618a2305d..338fbc6fc4 100644
--- a/include/param.h
+++ b/include/param.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef PARAM_H
 #define PARAM_H
 
 #include <linux/err.h>
 #include <linux/types.h>
 #include <linux/list.h>
 
 #define PARAM_FLAG_RO	(1 << 0)
 #define PARAM_GLOBALVAR_UNQUALIFIED	(1 << 1)
 
 struct device_d;
 typedef uint32_t          IPaddr_t;
 
 enum param_type {
 	PARAM_TYPE_STRING = 0,
diff --git a/include/parseopt.h b/include/parseopt.h
index 273a371ac3..5a40bdc219 100644
--- a/include/parseopt.h
+++ b/include/parseopt.h
@@ -1,11 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __PARSEOPT_H__
 #define __PARSEOPT_H__
 void parseopt_llu_suffix(const char *options, const char *opt,
 			 unsigned long long *val);
 
 void parseopt_b(const char *options, const char *opt, bool *val);
 void parseopt_hu(const char *options, const char *opt, unsigned short *val);
 void parseopt_u16(const char *options, const char *opt, uint16_t *val);
 void parseopt_str(const char *options, const char *opt, char **val);
 
 #endif /* __PARSEOPT_H__ */
diff --git a/include/partition.h b/include/partition.h
index 32570530eb..373134afad 100644
--- a/include/partition.h
+++ b/include/partition.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __PARTITION_H
 #define __PARTITION_H
 
 #include <driver.h>
 
 struct partition {
         int num;
 
 	int flags;
 
         loff_t offset;
 
         struct device_d *physdev;
         struct device_d device;
 
diff --git a/include/phy-id-list.h b/include/phy-id-list.h
index a6070a0248..f770c775b8 100644
--- a/include/phy-id-list.h
+++ b/include/phy-id-list.h
@@ -1,12 +1,13 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 /*
  * List of all Etherenet PHY IDs that is not found in any .h files in
  * include/linux
  */
 
 
 #ifndef __PHY_ID_LIST__
 #define __PHY_ID_LIST__
 
 #define PHY_ID_BCM54220 0x600d8589
 
 #endif
diff --git a/include/pinctrl.h b/include/pinctrl.h
index 7d8716996d..0fd7f49118 100644
--- a/include/pinctrl.h
+++ b/include/pinctrl.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef PINCTRL_H
 #define PINCTRL_H
 
 struct pinctrl_device;
 
 struct pinctrl_ops {
 	int (*set_state)(struct pinctrl_device *, struct device_node *);
 	int (*set_direction)(struct pinctrl_device *, unsigned int, bool);
 	int (*get_direction)(struct pinctrl_device *, unsigned int);
 };
 
 struct pinctrl_device {
 	struct device_d *dev;
 	struct pinctrl_ops *ops;
 	struct list_head list;
diff --git a/include/poweroff.h b/include/poweroff.h
index ae9557db5d..217b68cdf9 100644
--- a/include/poweroff.h
+++ b/include/poweroff.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __INCLUDE_POWEROFF_H
 #define __INCLUDE_POWEROFF_H
 
 void __noreturn poweroff_machine(void);
 
 struct poweroff_handler {
 	void (*poweroff)(struct poweroff_handler *);
 	int priority;
 	const char *name;
 	struct list_head list;
 };
 
 int poweroff_handler_register(struct poweroff_handler *);
 int poweroff_handler_register_fn(void (*poweroff_fn)(struct poweroff_handler *));
 
diff --git a/include/printk.h b/include/printk.h
index ab2c64cf3c..5140b0c828 100644
--- a/include/printk.h
+++ b/include/printk.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __PRINTK_H
 #define __PRINTK_H
 
 #include <linux/list.h>
 
 #define MSG_EMERG      0    /* system is unusable */
 #define MSG_ALERT      1    /* action must be taken immediately */
 #define MSG_CRIT       2    /* critical conditions */
 #define MSG_ERR        3    /* error conditions */
 #define MSG_WARNING    4    /* warning conditions */
 #define MSG_NOTICE     5    /* normal but significant condition */
 #define MSG_INFO       6    /* informational */
 #define MSG_DEBUG      7    /* debug-level messages */
 #define MSG_VDEBUG     8    /* verbose debug messages */
 
diff --git a/include/progress.h b/include/progress.h
index 5c4dd1e775..75aa9c4f86 100644
--- a/include/progress.h
+++ b/include/progress.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __PROGRSS_H
 #define __PROGRSS_H
 
 /* Initialize a progress bar. If max > 0 a one line progress
  * bar is printed where 'max' corresponds to 100%. If max == 0
  * a multi line progress bar is printed.
  */
 void init_progression_bar(int max);
 
 /* update a progress bar to a new value. If now < 0 then a
  * spinner is printed.
  */
 void show_progress(int now);
 
 #endif /*  __PROGRSS_H */
diff --git a/include/pwm.h b/include/pwm.h
index 911c760839..dcc81af867 100644
--- a/include/pwm.h
+++ b/include/pwm.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __PWM_H
 #define __PWM_H
 
 struct pwm_device;
 struct device_d;
 
 /*
  * pwm_request - request a PWM device
  */
 struct pwm_device *pwm_request(const char *pwmname);
 
 struct pwm_device *of_pwm_request(struct device_node *np, const char *con_id);
 
 /*
  * pwm_free - free a PWM device
diff --git a/include/qsort.h b/include/qsort.h
index d279dc2810..f8d889ea1e 100644
--- a/include/qsort.h
+++ b/include/qsort.h
@@ -1,9 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __QSORT_H
 #define __QSORT_H
 
 void qsort(void  *base, size_t nel, size_t width,
 	   int (*comp)(const void *, const void *));
 
 int strcmp_compar(const void *p1, const void *p2);
 
 #endif /* __QSORT_H */
diff --git a/include/ratp.h b/include/ratp.h
index d2a8192357..9abe9900ec 100644
--- a/include/ratp.h
+++ b/include/ratp.h
@@ -1,20 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __RATP_H
 #define __RATP_H
 
 struct ratp {
 	struct ratp_internal *internal;
 	int (*send)(struct ratp *, void *pkt, int len);
 	int (*recv)(struct ratp *, uint8_t *data);
 };
 
 int ratp_establish(struct ratp *ratp, bool active, int timeout_ms);
 void ratp_close(struct ratp *ratp);
 int ratp_recv(struct ratp *ratp, void **data, size_t *len);
 int ratp_send(struct ratp *ratp, const void *data, size_t len);
 int ratp_send_complete(struct ratp *ratp, const uint8_t *data, size_t len,
 		   void (*complete)(void *ctx, int status), void *complete_ctx);
 int ratp_poll(struct ratp *ratp);
 bool ratp_closed(struct ratp *ratp);
 bool ratp_busy(struct ratp *ratp);
 
-#endif /* __RATP_H */
\ No newline at end of file
+#endif /* __RATP_H */
diff --git a/include/ratp_bb.h b/include/ratp_bb.h
index b6699979b6..a4f28c642c 100644
--- a/include/ratp_bb.h
+++ b/include/ratp_bb.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __RATP_BB_H
 #define __RATP_BB_H
 
 #include <linux/stringify.h>
 
 #define BB_RATP_TYPE_COMMAND		1
 #define BB_RATP_TYPE_COMMAND_RETURN	2
 #define BB_RATP_TYPE_CONSOLEMSG		3
 #define BB_RATP_TYPE_PING		4
 #define BB_RATP_TYPE_PONG		5
 #define BB_RATP_TYPE_GETENV		6
 #define BB_RATP_TYPE_GETENV_RETURN	7
 #define BB_RATP_TYPE_FS			8
 #define BB_RATP_TYPE_FS_RETURN		9
 #define BB_RATP_TYPE_MD			10
diff --git a/include/readkey.h b/include/readkey.h
index ed1cd1542d..fdb96426e0 100644
--- a/include/readkey.h
+++ b/include/readkey.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef READKEY_H
 #define READKEY_H
 
 #define CTL_CH(c)		((c) - 'a' + 1)
 
 /* Ascii keys */
 #define BB_KEY_ENTER		'\n'
 #define BB_KEY_RETURN		'\r'
 
 /* Misc. non-Ascii keys */
 #define BB_KEY_UP		CTL_CH('p')	/* cursor key Up	*/
 #define BB_KEY_DOWN		CTL_CH('n')	/* cursor key Down	*/
 #define BB_KEY_RIGHT		CTL_CH('f')	/* Cursor Key Right	*/
 #define BB_KEY_LEFT		CTL_CH('b')	/* cursor key Left	*/
 #define BB_KEY_HOME		CTL_CH('a')	/* Cursor Key Home	*/
diff --git a/include/regmap.h b/include/regmap.h
index 09b7b57d52..8528f81079 100644
--- a/include/regmap.h
+++ b/include/regmap.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __REGMAP_H
 #define __REGMAP_H
 
 /**
  * Configuration for the register map of a device.
  *
  * @name: Optional name of the regmap. Useful when a device has multiple
  *        register regions.
  *
  * @reg_bits: Number of bits in a register address, mandatory.
  * @reg_stride: The register address stride. Valid register addresses are a
  *              multiple of this value. If set to 0, a value of 1 will be
  *              used.
  * @pad_bits: Number of bits of padding between register and value.
  * @val_bits: Number of bits in a register value, mandatory.
diff --git a/include/regulator.h b/include/regulator.h
index 367e13f05b..3f76ff65e9 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __REGULATOR_H
 #define __REGULATOR_H
 
 /* struct regulator is an opaque object for consumers */
 struct regulator;
 
 struct regulator_dev {
 	struct regulator_ops *ops;
 	int boot_on;
 };
 
 struct regulator_ops {
 	/* enable/disable regulator */
 	int (*enable) (struct regulator_dev *);
 	int (*disable) (struct regulator_dev *);
diff --git a/include/restart.h b/include/restart.h
index 79b57c8e11..7ec0910e94 100644
--- a/include/restart.h
+++ b/include/restart.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __INCLUDE_RESTART_H
 #define __INCLUDE_RESTART_H
 
 void __noreturn restart_machine(void);
 
 struct restart_handler {
 	void (*restart)(struct restart_handler *);
 	int priority;
 	const char *name;
 	struct list_head list;
 };
 
 int restart_handler_register(struct restart_handler *);
 int restart_handler_register_fn(void (*restart_fn)(struct restart_handler *));
 
diff --git a/include/serdev.h b/include/serdev.h
index f5d34f5276..7c17552140 100644
--- a/include/serdev.h
+++ b/include/serdev.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef _SERDEV_H_
 #define _SERDEV_H_
 
 #include <driver.h>
 #include <poller.h>
 #include <kfifo.h>
 
 /**
  * struct serdev_device - Basic representation of an serdev device
  *
  * @dev:		Corresponding device
  * @fifo:		Circular buffer used for console draining
  * @buf:		Buffer used to pass Rx data to consumers
  * @poller		Async poller used to poll this serdev
  * @polling_interval:	Async poller periodicity
diff --git a/include/sntp.h b/include/sntp.h
index bfcfcfa8c8..05cad129cd 100644
--- a/include/sntp.h
+++ b/include/sntp.h
@@ -1,8 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __SNTP_H
 #define __SNTP_H
 
 #include <types.h>
 
 s64 sntp(const char *server);
 
 #endif /* __SNTP_H */
diff --git a/include/state.h b/include/state.h
index 4e995a19ef..5bfa426c5e 100644
--- a/include/state.h
+++ b/include/state.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __STATE_H
 #define __STATE_H
 
 #include <of.h>
 
 struct state;
 
 int state_backend_dtb_file(struct state *state, const char *of_path,
 		const char *path);
 int state_backend_raw_file(struct state *state, const char *of_path,
 		const char *path, off_t offset, size_t size);
 
 struct state *state_new_from_node(struct device_node *node, bool readonly);
 void state_release(struct state *state);
 
diff --git a/include/stdio.h b/include/stdio.h
index 7b2a42b817..c9b8e376b5 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __STDIO_H
 #define __STDIO_H
 
 #include <stdarg.h>
 #include <console.h>
 
 /*
  * STDIO based functions (can always be used)
  */
 
 /* serial stuff */
 void serial_printf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
 
 int sprintf(char *buf, const char *fmt, ...) __attribute__ ((format(__printf__, 2, 3)));
 int snprintf(char *buf, size_t size, const char *fmt, ...) __attribute__ ((format(__printf__, 3, 4)));
diff --git a/include/stdlib.h b/include/stdlib.h
index ee3f229968..d405608724 100644
--- a/include/stdlib.h
+++ b/include/stdlib.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __STDLIB_H
 #define __STDLIB_H
 
 #include <types.h>
 
 #define RAND_MAX 32767
 
 /* return a pseudo-random integer in the range [0, RAND_MAX] */
 unsigned int rand(void);
 
 /* set the seed for rand () */
 void srand(unsigned int seed);
 
 /* fill a buffer with pseudo-random data */
 void get_random_bytes(void *buf, int len);
diff --git a/include/string.h b/include/string.h
index 8c63f22491..120a613d46 100644
--- a/include/string.h
+++ b/include/string.h
@@ -1,11 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __STRING_H
 #define __STRING_H
 
 #include <linux/string.h>
 
 int strtobool(const char *str, int *val);
 
 void *__default_memset(void *, int, __kernel_size_t);
 void *__default_memcpy(void * dest,const void *src,size_t count);
 
 #endif /* __STRING_H */
diff --git a/include/stringlist.h b/include/stringlist.h
index e85500a994..5cd452ca5f 100644
--- a/include/stringlist.h
+++ b/include/stringlist.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __STRINGLIST_H
 #define __STRINGLIST_H
 
 #include <linux/list.h>
 
 struct string_list {
 	struct list_head list;
 	char *str;
 };
 
 int string_list_add(struct string_list *sl, const char *str);
 int string_list_add_asprintf(struct string_list *sl, const char *fmt, ...);
 int string_list_add_sorted(struct string_list *sl, const char *str);
 int string_list_contains(struct string_list *sl, const char *str);
 void string_list_print_by_column(struct string_list *sl);
diff --git a/include/twl6030_pwrbtn.h b/include/twl6030_pwrbtn.h
index c4e13d1f1d..4c8e166256 100644
--- a/include/twl6030_pwrbtn.h
+++ b/include/twl6030_pwrbtn.h
@@ -1,9 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef _TWL6030_PWRBTN_H
 #define _TWL6030_PWRBTN_H
 
 struct twl6030_pwrbtn_platform_data {
 	/* key code */
 	int code;
 };
 
 #endif
diff --git a/include/types.h b/include/types.h
index 0bfe3b9a0b..a6739394e0 100644
--- a/include/types.h
+++ b/include/types.h
@@ -1,10 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __TYPES_H
 #define __TYPES_H
 
 #include <linux/types.h>
 
 typedef volatile unsigned long	vu_long;
 typedef volatile unsigned short vu_short;
 typedef volatile unsigned char	vu_char;
 
 #endif /* __TYPES_H */
diff --git a/include/ubiformat.h b/include/ubiformat.h
index 8a7a16ac18..eca62ae6db 100644
--- a/include/ubiformat.h
+++ b/include/ubiformat.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __UBIFORMAT_H
 #define __UBIFORMAT_H
 
 #include <linux/types.h>
 
 struct ubiformat_args {
 	unsigned int yes:1;
 	unsigned int quiet:1;
 	unsigned int verbose:1;
 	unsigned int override_ec:1;
 	unsigned int novtbl:1;
 	unsigned int manual_subpage;
 	int subpage_size;
 	int vid_hdr_offs;
 	int ubi_ver;
diff --git a/include/uncompress.h b/include/uncompress.h
index d146c90768..4bdb03d4f5 100644
--- a/include/uncompress.h
+++ b/include/uncompress.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __UNCOMPRESS_H
 #define __UNCOMPRESS_H
 
 int uncompress(unsigned char *inbuf, int len,
 	   int(*fill)(void*, unsigned int),
 	   int(*flush)(void*, unsigned int),
 	   unsigned char *output,
 	   int *pos,
 	   void(*error_fn)(char *x));
 
 int uncompress_fd_to_fd(int infd, int outfd,
 	   void(*error_fn)(char *x));
 
 int uncompress_fd_to_buf(int infd, void *output,
 	   void(*error_fn)(char *x));
diff --git a/include/unistd.h b/include/unistd.h
index f392e6dd6c..06ce355809 100644
--- a/include/unistd.h
+++ b/include/unistd.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __UNISTD_H
 #define __UNISTD_H
 
 #include <linux/types.h>
 
 struct stat;
 
 int unlink(const char *pathname);
 int close(int fd);
 int lstat(const char *filename, struct stat *s);
 int stat(const char *filename, struct stat *s);
 int fstat(int fd, struct stat *s);
 ssize_t read(int fd, void *buf, size_t count);
 ssize_t pread(int fd, void *buf, size_t count, loff_t offset);
 ssize_t write(int fd, const void *buf, size_t count);
diff --git a/include/usb_dfu_trailer.h b/include/usb_dfu_trailer.h
index 2cf66a590c..64b8407275 100644
--- a/include/usb_dfu_trailer.h
+++ b/include/usb_dfu_trailer.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef _USB_DFU_TRAILER_H
 #define _USB_DFU_TRAILER_H
 
 /* trailer handling for DFU files */
 
 #define BAREBOX_DFU_TRAILER_V1	1
 #define BAREBOX_DFU_TRAILER_MAGIC	0x19731978
 struct barebox_dfu_trailer {
 	u_int32_t	magic;
 	u_int16_t	version;
 	u_int16_t	length;
 	u_int16_t	vendor;
 	u_int16_t	product;
 	u_int32_t	revision;
 } __attribute__((packed));
diff --git a/include/wchar.h b/include/wchar.h
index adb4f373e9..b601cc6207 100644
--- a/include/wchar.h
+++ b/include/wchar.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __WCHAR_H
 #define __WCHAR_H
 
 #include <linux/types.h>
 #include <linux/stddef.h>
 
 wchar_t *strdup_wchar(const wchar_t *src);
 
 char *strcpy_wchar_to_char(char *dst, const wchar_t *src);
 
 wchar_t *strcpy_char_to_wchar(wchar_t *dst, const char *src);
 
 wchar_t *strdup_char_to_wchar(const char *src);
 
 char *strdup_wchar_to_char(const wchar_t *src);
diff --git a/include/xfuncs.h b/include/xfuncs.h
index e3f120a040..a9132d3787 100644
--- a/include/xfuncs.h
+++ b/include/xfuncs.h
@@ -1,15 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
 #ifndef __XFUNCS_H
 #define __XFUNCS_H
 
 #include <linux/types.h>
 #include <stdarg.h>
 #include <wchar.h>
 
 void *xmalloc(size_t size);
 void *xrealloc(void *ptr, size_t size);
 void *xzalloc(size_t size);
 char *xstrdup(const char *s);
 char *xstrndup(const char *s, size_t size);
 void* xmemalign(size_t alignment, size_t bytes);
 void* xmemdup(const void *orig, size_t size);
 char *xasprintf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
-- 
2.19.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
