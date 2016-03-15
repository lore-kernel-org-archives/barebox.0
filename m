Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1afmxS-0005LL-UI
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:16:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:15:27 +0100
Message-Id: <1458040534-6171-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1458040534-6171-1-git-send-email-s.hauer@pengutronix.de>
References: <1458040534-6171-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/16] remove now unused libmtd
To: Barebox List <barebox@lists.infradead.org>

The only user of libmtd was ubiformat which now uses the mtd-peb API,
so remove the now unused libmtd.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/Kconfig     |   1 -
 include/mtd/libmtd.h | 149 ---------------------
 lib/Kconfig          |   3 -
 lib/Makefile         |   1 -
 lib/libmtd.c         | 368 ---------------------------------------------------
 5 files changed, 522 deletions(-)
 delete mode 100644 include/mtd/libmtd.h
 delete mode 100644 lib/libmtd.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 9519a44..1724391 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -694,7 +694,6 @@ config CMD_UBI
 config CMD_UBIFORMAT
 	tristate
 	depends on MTD_UBI
-	select LIBMTD
 	select LIBSCAN
 	select LIBUBIGEN
 	prompt "ubiformat"
diff --git a/include/mtd/libmtd.h b/include/mtd/libmtd.h
deleted file mode 100644
index 65c390a..0000000
--- a/include/mtd/libmtd.h
+++ /dev/null
@@ -1,149 +0,0 @@
-/*
- * Copyright (C) 2008, 2009 Nokia Corporation
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
- * the GNU General Public License for more details.
- * Author: Artem Bityutskiy
- *
- * MTD library.
- */
-
-#ifndef __LIBMTD_H__
-#define __LIBMTD_H__
-
-/* Maximum MTD device name length */
-#define MTD_NAME_MAX 127
-/* Maximum MTD device type string length */
-#define MTD_TYPE_MAX 64
-
-/**
- * struct mtd_dev_info - information about an MTD device.
- * @node: node pointing to device
- * @type: flash type (constants like %MTD_NANDFLASH defined in mtd-abi.h)
- * @type_str: static R/O flash type string
- * @name: device name
- * @size: device size in bytes
- * @eb_cnt: count of eraseblocks
- * @eb_size: eraseblock size
- * @min_io_size: minimum input/output unit size
- * @subpage_size: sub-page size
- * @oob_size: OOB size (zero if the device does not have OOB area)
- * @region_cnt: count of additional erase regions
- * @writable: zero if the device is read-only
- * @bb_allowed: non-zero if the MTD device may have bad eraseblocks
- */
-struct mtd_dev_info
-{
-	const char *node;
-	int type;
-	const char type_str[MTD_TYPE_MAX + 1];
-	long long size;
-	int eb_cnt;
-	int eb_size;
-	int min_io_size;
-	int subpage_size;
-	int oob_size;
-	int region_cnt;
-	unsigned int writable:1;
-	unsigned int bb_allowed:1;
-};
-
-/**
- * mtd_get_dev_info - get information about an MTD device.
- * @desc: MTD library descriptor
- * @node: name of the MTD device node
- * @mtd: the MTD device information is returned here
- *
- * This function gets information about MTD device defined by the @node device
- * node file and saves this information in the @mtd object. Returns %0 in case
- * of success and %-1 in case of failure. If MTD subsystem is not present in the
- * system, or the MTD device does not exist, errno is set to @ENODEV.
- */
-int mtd_get_dev_info(const char *node, struct mtd_dev_info *mtd);
-
-/**
- * libmtd_erase - erase an eraseblock.
- * @desc: MTD library descriptor
- * @mtd: MTD device description object
- * @fd: MTD device node file descriptor
- * @eb: eraseblock to erase
- *
- * This function erases eraseblock @eb of MTD device described by @fd. Returns
- * %0 in case of success and %-1 in case of failure.
- */
-int libmtd_erase(const struct mtd_dev_info *mtd, int fd, int eb);
-
-/**
- * mtd_torture - torture an eraseblock.
- * @desc: MTD library descriptor
- * @mtd: MTD device description object
- * @fd: MTD device node file descriptor
- * @eb: eraseblock to torture
- *
- * This function tortures eraseblock @eb. Returns %0 in case of success and %-1
- * in case of failure.
- */
-int mtd_torture(const struct mtd_dev_info *mtd, int fd, int eb);
-
-/**
- * mtd_is_bad - check if eraseblock is bad.
- * @mtd: MTD device description object
- * @fd: MTD device node file descriptor
- * @eb: eraseblock to check
- *
- * This function checks if eraseblock @eb is bad. Returns %0 if not, %1 if yes,
- * and %-1 in case of failure.
- */
-int mtd_is_bad(const struct mtd_dev_info *mtd, int fd, int eb);
-
-/**
- * mtd_mark_bad - mark an eraseblock as bad.
- * @mtd: MTD device description object
- * @fd: MTD device node file descriptor
- * @eb: eraseblock to mark as bad
- *
- * This function marks eraseblock @eb as bad. Returns %0 in case of success and
- * %-1 in case of failure.
- */
-int mtd_mark_bad(const struct mtd_dev_info *mtd, int fd, int eb);
-
-/**
- * mtd_read - read data from an MTD device.
- * @mtd: MTD device description object
- * @fd: MTD device node file descriptor
- * @eb: eraseblock to read from
- * @offs: offset withing the eraseblock to read from
- * @buf: buffer to read data to
- * @len: how many bytes to read
- *
- * This function reads @len bytes of data from eraseblock @eb and offset @offs
- * of the MTD device defined by @mtd and stores the read data at buffer @buf.
- * Returns %0 in case of success and %-1 in case of failure.
- */
-int libmtd_read(const struct mtd_dev_info *mtd, int fd, int eb, int offs,
-	     void *buf, int len);
-
-/**
- * mtd_write - write data to an MTD device.
- * @mtd: MTD device description object
- * @fd: MTD device node file descriptor
- * @eb: eraseblock to write to
- * @offs: offset withing the eraseblock to write to
- * @buf: buffer to write
- * @len: how many bytes to write
- *
- * This function writes @len bytes of data to eraseblock @eb and offset @offs
- * of the MTD device defined by @mtd. Returns %0 in case of success and %-1 in
- * case of failure.
- */
-int libmtd_write(const struct mtd_dev_info *mtd, int fd, int eb, int offs,
-	      void *buf, int len);
-
-#endif /* __LIBMTD_H__ */
diff --git a/lib/Kconfig b/lib/Kconfig
index f051751..d5f99ae 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -52,9 +52,6 @@ config LIBSCAN
 config LIBUBIGEN
 	bool
 
-config LIBMTD
-	bool
-
 config STMP_DEVICE
 	bool
 
diff --git a/lib/Makefile b/lib/Makefile
index 44ba25b..b6da848 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -44,7 +44,6 @@ obj-$(CONFIG_BITREV)	+= bitrev.o
 obj-$(CONFIG_QSORT)	+= qsort.o
 obj-$(CONFIG_LIBSCAN)	+= libscan.o
 obj-$(CONFIG_LIBUBIGEN)	+= libubigen.o
-obj-$(CONFIG_LIBMTD)	+= libmtd.o
 obj-y			+= gui/
 obj-$(CONFIG_XYMODEM)	+= xymodem.o
 obj-y			+= unlink-recursive.o
diff --git a/lib/libmtd.c b/lib/libmtd.c
deleted file mode 100644
index 56672bd..0000000
--- a/lib/libmtd.c
+++ /dev/null
@@ -1,368 +0,0 @@
-/*
- * Copyright (C) 2009 Nokia Corporation
- * Copyright (C) 2012 Wolfram Sang, Pengutronix e.K. <w.sang@pengutronix.de>
- *
- * This program is free software; you can redistribute it and/or modify
- * it under the terms of the GNU General Public License as published by
- * the Free Software Foundation; either version 2 of the License, or
- * (at your option) any later version.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
- * the GNU General Public License for more details.
- *
- * Author: Artem Bityutskiy
- * Author: Wolfram Sang
- *
- * This file is part of the MTD library. Based on pre-2.6.30 kernels support,
- * now adapted to barebox.
- *
- * NOTE: No support for 64 bit sizes yet!
- */
-
-#include <common.h>
-#include <stdlib.h>
-#include <string.h>
-#include <malloc.h>
-#include <errno.h>
-#include <crc.h>
-#include <fs.h>
-#include <fcntl.h>
-#include <ioctl.h>
-#include <linux/stat.h>
-#include <linux/mtd/mtd.h>
-#include <linux/mtd/mtd-abi.h>
-#include <mtd/libmtd.h>
-#include <mtd/utils.h>
-
-#define PROGRAM_NAME "libmtd"
-
-static inline int mtd_ioctl_error(const struct mtd_dev_info *mtd, int eb,
-				  const char *sreq)
-{
-	return sys_errmsg("%s ioctl failed for eraseblock %d (%s)",
-			  sreq, eb, mtd->node);
-}
-
-static int mtd_valid_erase_block(const struct mtd_dev_info *mtd, int eb)
-{
-	if (eb < 0 || eb >= mtd->eb_cnt) {
-		errmsg("bad eraseblock number %d, %s has %d eraseblocks",
-		       eb, mtd->node, mtd->eb_cnt);
-		errno = EINVAL;
-		return -1;
-	}
-	return 0;
-}
-
-int libmtd_erase(const struct mtd_dev_info *mtd, int fd, int eb)
-{
-	int ret;
-	struct erase_info_user ei;
-
-	ret = mtd_valid_erase_block(mtd, eb);
-	if (ret)
-		return ret;
-
-	ei.start = (__u64)eb * mtd->eb_size;
-	ei.length = mtd->eb_size;
-
-	ret = ioctl(fd, MEMERASE, &ei);
-	if (ret < 0)
-		return mtd_ioctl_error(mtd, eb, "MEMERASE");
-	return 0;
-}
-
-/* Patterns to write to a physical eraseblock when torturing it */
-static uint8_t patterns[] = {0xa5, 0x5a, 0x0};
-
-/**
- * check_pattern - check if buffer contains only a certain byte pattern.
- * @buf: buffer to check
- * @patt: the pattern to check
- * @size: buffer size in bytes
- *
- * This function returns %1 in there are only @patt bytes in @buf, and %0 if
- * something else was also found.
- */
-static int check_pattern(const void *buf, uint8_t patt, int size)
-{
-	int i;
-
-	for (i = 0; i < size; i++)
-		if (((const uint8_t *)buf)[i] != patt)
-			return 0;
-	return 1;
-}
-
-int mtd_torture(const struct mtd_dev_info *mtd, int fd, int eb)
-{
-	int err, i, patt_count;
-	void *buf;
-
-	normsg("run torture test for PEB %d", eb);
-	patt_count = ARRAY_SIZE(patterns);
-
-	buf = xmalloc(mtd->eb_size);
-
-	for (i = 0; i < patt_count; i++) {
-		err = libmtd_erase(mtd, fd, eb);
-		if (err)
-			goto out;
-
-		/* Make sure the PEB contains only 0xFF bytes */
-		err = libmtd_read(mtd, fd, eb, 0, buf, mtd->eb_size);
-		if (err)
-			goto out;
-
-		err = check_pattern(buf, 0xFF, mtd->eb_size);
-		if (err == 0) {
-			errmsg("erased PEB %d, but a non-0xFF byte found", eb);
-			errno = EIO;
-			goto out;
-		}
-
-		/* Write a pattern and check it */
-		memset(buf, patterns[i], mtd->eb_size);
-		err = libmtd_write(mtd, fd, eb, 0, buf, mtd->eb_size);
-		if (err)
-			goto out;
-
-		memset(buf, ~patterns[i], mtd->eb_size);
-		err = libmtd_read(mtd, fd, eb, 0, buf, mtd->eb_size);
-		if (err)
-			goto out;
-
-		err = check_pattern(buf, patterns[i], mtd->eb_size);
-		if (err == 0) {
-			errmsg("pattern %x checking failed for PEB %d",
-				patterns[i], eb);
-			errno = EIO;
-			goto out;
-		}
-	}
-
-	err = 0;
-	normsg("PEB %d passed torture test, do not mark it a bad", eb);
-
-out:
-	free(buf);
-	return -1;
-}
-
-int mtd_is_bad(const struct mtd_dev_info *mtd, int fd, int eb)
-{
-	int ret;
-	loff_t seek;
-
-	ret = mtd_valid_erase_block(mtd, eb);
-	if (ret)
-		return ret;
-
-	if (!mtd->bb_allowed)
-		return 0;
-
-	seek = (loff_t)eb * mtd->eb_size;
-	ret = ioctl(fd, MEMGETBADBLOCK, &seek);
-	if (ret == -1)
-		return mtd_ioctl_error(mtd, eb, "MEMGETBADBLOCK");
-	return ret;
-}
-
-int mtd_mark_bad(const struct mtd_dev_info *mtd, int fd, int eb)
-{
-	int ret;
-	loff_t seek;
-
-	if (!mtd->bb_allowed) {
-		errno = EINVAL;
-		return -1;
-	}
-
-	ret = mtd_valid_erase_block(mtd, eb);
-	if (ret)
-		return ret;
-
-	seek = (loff_t)eb * mtd->eb_size;
-	ret = ioctl(fd, MEMSETBADBLOCK, &seek);
-	if (ret == -1)
-		return mtd_ioctl_error(mtd, eb, "MEMSETBADBLOCK");
-	return 0;
-}
-
-int libmtd_read(const struct mtd_dev_info *mtd, int fd, int eb, int offs,
-	     void *buf, int len)
-{
-	int ret, rd = 0;
-	loff_t seek;
-
-	ret = mtd_valid_erase_block(mtd, eb);
-	if (ret)
-		return ret;
-
-	if (offs < 0 || offs + len > mtd->eb_size) {
-		errmsg("bad offset %d or length %d, %s eraseblock size is %d",
-		       offs, len, mtd->node, mtd->eb_size);
-		errno = EINVAL;
-		return -1;
-	}
-
-	/* Seek to the beginning of the eraseblock */
-	seek = (loff_t)eb * mtd->eb_size + offs;
-	if (lseek(fd, seek, SEEK_SET) != seek)
-		return sys_errmsg("cannot seek %s to offset %llu",
-				  mtd->node, (unsigned long long)seek);
-
-	while (rd < len) {
-		ret = read(fd, buf, len);
-		if (ret < 0)
-			return sys_errmsg("cannot read %d bytes from %s (eraseblock %d, offset %d)",
-					  len, mtd->node, eb, offs);
-		rd += ret;
-	}
-
-	return 0;
-}
-
-int libmtd_write(const struct mtd_dev_info *mtd, int fd, int eb, int offs,
-	      void *buf, int len)
-{
-	int ret;
-	loff_t seek;
-
-	ret = mtd_valid_erase_block(mtd, eb);
-	if (ret)
-		return ret;
-
-	if (offs < 0 || offs + len > mtd->eb_size) {
-		errmsg("bad offset %d or length %d, %s eraseblock size is %d",
-		       offs, len, mtd->node, mtd->eb_size);
-		errno = EINVAL;
-		return -1;
-	}
-	if (offs % mtd->subpage_size) {
-		errmsg("write offset %d is not aligned to %s min. I/O size %d",
-		       offs, mtd->node, mtd->subpage_size);
-		errno = EINVAL;
-		return -1;
-	}
-	if (len % mtd->subpage_size) {
-		errmsg("write length %d is not aligned to %s min. I/O size %d",
-		       len, mtd->node, mtd->subpage_size);
-		errno = EINVAL;
-		return -1;
-	}
-
-	/* Seek to the beginning of the eraseblock */
-	seek = (loff_t)eb * mtd->eb_size + offs;
-	if (lseek(fd, seek, SEEK_SET) != seek)
-		return sys_errmsg("cannot seek %s to offset %llu",
-				  mtd->node, (unsigned long long)seek);
-
-	ret = write(fd, buf, len);
-	if (ret != len)
-		return sys_errmsg("cannot write %d bytes to %s (eraseblock %d, offset %d)",
-				  len, mtd->node, eb, offs);
-
-	return 0;
-}
-
-/**
- * mtd_get_dev_info - fill the mtd_dev_info structure
- * @node: name of the MTD device node
- * @mtd: the MTD device information is returned here
- */
-int mtd_get_dev_info(const char *node, struct mtd_dev_info *mtd)
-{
-	struct mtd_info_user ui;
-	int fd, ret;
-	loff_t offs = 0;
-
-	memset(mtd, '\0', sizeof(struct mtd_dev_info));
-
-	mtd->node = node;
-
-	fd = open(node, O_RDWR);
-	if (fd < 0)
-		return sys_errmsg("cannot open \"%s\"", node);
-
-	if (ioctl(fd, MEMGETINFO, &ui)) {
-		sys_errmsg("MEMGETINFO ioctl request failed");
-		goto out_close;
-	}
-
-	ret = ioctl(fd, MEMGETBADBLOCK, &offs);
-	if (ret == -1) {
-		if (errno != EOPNOTSUPP) {
-			sys_errmsg("MEMGETBADBLOCK ioctl failed");
-			goto out_close;
-		}
-		errno = 0;
-		mtd->bb_allowed = 0;
-	} else
-		mtd->bb_allowed = 1;
-
-	mtd->type = ui.type;
-	mtd->size = ui.size;
-	mtd->eb_size = ui.erasesize;
-	mtd->min_io_size = ui.writesize;
-	mtd->oob_size = ui.oobsize;
-	mtd->subpage_size = ui.subpagesize;
-
-	if (mtd->min_io_size <= 0) {
-		errmsg("%s has insane min. I/O unit size %d",
-		       node, mtd->min_io_size);
-		goto out_close;
-	}
-	if (mtd->eb_size <= 0 || mtd->eb_size < mtd->min_io_size) {
-		errmsg("%s has insane eraseblock size %d",
-		       node, mtd->eb_size);
-		goto out_close;
-	}
-	if (mtd->size <= 0 || mtd->size < mtd->eb_size) {
-		errmsg("%s has insane size %lld",
-		       node, mtd->size);
-		goto out_close;
-	}
-
-	mtd->eb_cnt = mtd_user_div_by_eb(ui.size, &ui);
-
-	switch(mtd->type) {
-	case MTD_ABSENT:
-		errmsg("%s (%s) is removable and is not present",
-		       mtd->node, node);
-		goto out_close;
-	case MTD_RAM:
-		strcpy((char *)mtd->type_str, "ram");
-		break;
-	case MTD_ROM:
-		strcpy((char *)mtd->type_str, "rom");
-		break;
-	case MTD_NORFLASH:
-		strcpy((char *)mtd->type_str, "nor");
-		break;
-	case MTD_NANDFLASH:
-		strcpy((char *)mtd->type_str, "nand");
-		break;
-	case MTD_DATAFLASH:
-		strcpy((char *)mtd->type_str, "dataflash");
-		break;
-	case MTD_UBIVOLUME:
-		strcpy((char *)mtd->type_str, "ubi");
-		break;
-	default:
-		goto out_close;
-	}
-
-	if (ui.flags & MTD_WRITEABLE)
-		mtd->writable = 1;
-
-	close(fd);
-
-	return 0;
-
-out_close:
-	close(fd);
-	return -1;
-}
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
