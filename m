Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ThyVJ-0004cP-6j
 for barebox@lists.infradead.org; Mon, 10 Dec 2012 08:14:30 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Mon, 10 Dec 2012 09:14:13 +0100
Message-Id: <1355127255-24797-9-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1355127255-24797-1-git-send-email-w.sang@pengutronix.de>
References: <1355127255-24797-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 08/10] lib: add libubigen
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

Imported from mtd-utils and stripped down to needed functionality.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 include/mtd/libubigen.h |  186 ++++++++++++++++++++++++++++
 lib/Kconfig             |    3 +
 lib/Makefile            |    1 +
 lib/libubigen.c         |  316 +++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 506 insertions(+)
 create mode 100644 include/mtd/libubigen.h
 create mode 100644 lib/libubigen.c

diff --git a/include/mtd/libubigen.h b/include/mtd/libubigen.h
new file mode 100644
index 0000000..5ebdb78
--- /dev/null
+++ b/include/mtd/libubigen.h
@@ -0,0 +1,186 @@
+/*
+ * Copyright (c) International Business Machines Corp., 2006
+ * Copyright (C) 2008 Nokia Corporation
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
+ * the GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
+ */
+
+/*
+ * Authors: Frank Haverkamp
+ *          Artem Bityutskiy
+ */
+
+#ifndef __LIBUBIGEN_H__
+#define __LIBUBIGEN_H__
+
+#include <mtd/ubi-media.h>
+
+/**
+ * struct ubigen_info - libubigen information.
+ * @leb_size: logical eraseblock size
+ * @peb_size: size of the physical eraseblock
+ * @min_io_size: minimum input/output unit size
+ * @vid_hdr_offs: offset of the VID header
+ * @data_offs: data offset
+ * @ubi_ver: UBI version
+ * @vtbl_size: volume table size
+ * @max_volumes: maximum amount of volumes
+ * @image_seq: UBI image sequence number
+ */
+struct ubigen_info
+{
+	int leb_size;
+	int peb_size;
+	int min_io_size;
+	int vid_hdr_offs;
+	int data_offs;
+	int ubi_ver;
+	int vtbl_size;
+	int max_volumes;
+	uint32_t image_seq;
+};
+
+/**
+ * struct ubigen_vol_info - information about a volume.
+ * @id: volume id
+ * @type: volume type (%UBI_VID_DYNAMIC or %UBI_VID_STATIC)
+ * @alignment: volume alignment
+ * @data_pad: how many bytes are unused at the end of the each physical
+ *            eraseblock to satisfy the requested alignment
+ * @usable_leb_size: LEB size accessible for volume users
+ * @name: volume name
+ * @name_len: volume name length
+ * @compat: compatibility of this volume (%0, %UBI_COMPAT_DELETE,
+ *          %UBI_COMPAT_IGNORE, %UBI_COMPAT_PRESERVE, or %UBI_COMPAT_REJECT)
+ * @used_ebs: total number of used logical eraseblocks in this volume (relevant
+ *            for static volumes only)
+ * @bytes: size of the volume contents in bytes (relevant for static volumes
+ *         only)
+ * @flags: volume flags (%UBI_VTBL_AUTORESIZE_FLG)
+ */
+struct ubigen_vol_info
+{
+	int id;
+	int type;
+	int alignment;
+	int data_pad;
+	int usable_leb_size;
+	const char *name;
+	int name_len;
+	int compat;
+	int used_ebs;
+	long long bytes;
+	uint8_t flags;
+};
+
+/**
+ * ubigen_info_init - initialize libubigen.
+ * @ui: libubigen information
+ * @peb_size: flash physical eraseblock size
+ * @min_io_size: flash minimum input/output unit size
+ * @subpage_size: flash sub-page, if present (has to be equivalent to
+ *                @min_io_size if does not exist)
+ * @vid_hdr_offs: offset of the VID header
+ * @ubi_ver: UBI version
+ * @image_seq: UBI image sequence number
+ */
+void ubigen_info_init(struct ubigen_info *ui, int peb_size, int min_io_size,
+		      int subpage_size, int vid_hdr_offs, int ubi_ver,
+		      uint32_t image_seq);
+
+/**
+ * ubigen_create_empty_vtbl - creates empty volume table.
+ * @ui: libubigen information
+ *
+ * This function creates an empty volume table and returns a pointer to it in
+ * case of success and %NULL in case of failure. The returned object has to be
+ * freed with 'free()' call.
+ */
+struct ubi_vtbl_record *ubigen_create_empty_vtbl(const struct ubigen_info *ui);
+
+/**
+ * ubigen_init_ec_hdr - initialize EC header.
+ * @ui: libubigen information
+ * @hdr: the EC header to initialize
+ * @ec: erase counter value
+ */
+void ubigen_init_ec_hdr(const struct ubigen_info *ui,
+		        struct ubi_ec_hdr *hdr, long long ec);
+
+/**
+ * ubigen_init_vid_hdr - initialize VID header.
+ * @ui: libubigen information
+ * @vi: volume information
+ * @hdr: the VID header to initialize
+ * @lnum: logical eraseblock number
+ * @data: the contents of the LEB (static volumes only)
+ * @data_size: amount of data in this LEB (static volumes only)
+ *
+ * Note, @used_ebs, @data and @data_size are ignored in case of dynamic
+ * volumes.
+ */
+void ubigen_init_vid_hdr(const struct ubigen_info *ui,
+			 const struct ubigen_vol_info *vi,
+			 struct ubi_vid_hdr *hdr, int lnum,
+			 const void *data, int data_size);
+
+/**
+ * ubigen_add_volume - add a volume to the volume table.
+ * @ui: libubigen information
+ * @vi: volume information
+ * @vtbl: volume table to add to
+ *
+ * This function adds volume described by input parameters to the volume table
+ * @vtbl.
+ */
+int ubigen_add_volume(const struct ubigen_info *ui,
+		      const struct ubigen_vol_info *vi,
+		      struct ubi_vtbl_record *vtbl);
+
+/**
+ * ubigen_write_volume - write UBI volume.
+ * @ui: libubigen information
+ * @vi: volume information
+ * @ec: erase counter value to put to EC headers
+ * @bytes: volume size in bytes
+ * @in: input file descriptor (has to be properly seeked)
+ * @out: output file descriptor
+ *
+ * This function reads the contents of the volume from the input file @in and
+ * writes the UBI volume to the output file @out. Returns zero on success and
+ * %-1 on failure.
+ */
+int ubigen_write_volume(const struct ubigen_info *ui,
+			const struct ubigen_vol_info *vi, long long ec,
+			long long bytes, int in, int out);
+
+/**
+ * ubigen_write_layout_vol - write UBI layout volume
+ * @ui: libubigen information
+ * @peb1: physical eraseblock number to write the first volume table copy
+ * @peb2: physical eraseblock number to write the second volume table copy
+ * @ec1: erase counter value for @peb1
+ * @ec2: erase counter value for @peb1
+ * @vtbl: volume table
+ * @fd: output file descriptor seeked to the proper position
+ *
+ * This function creates the UBI layout volume which contains 2 copies of the
+ * volume table. Returns zero in case of success and %-1 in case of failure.
+ */
+int ubigen_write_layout_vol(const struct ubigen_info *ui, int peb1, int peb2,
+			    long long ec1, long long ec2,
+			    struct ubi_vtbl_record *vtbl, int fd);
+
+#endif /* !__LIBUBIGEN_H__ */
diff --git a/lib/Kconfig b/lib/Kconfig
index 1a283d6..5e4cf82 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -47,6 +47,9 @@ config UBIUTILS
 config LIBSCAN
 	bool
 
+config LIBUBIGEN
+	bool
+
 source lib/gui/Kconfig
 
 endmenu
diff --git a/lib/Makefile b/lib/Makefile
index 72306f8..aeeaad3 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -36,5 +36,6 @@ obj-$(CONFIG_BITREV)	+= bitrev.o
 obj-$(CONFIG_QSORT)	+= qsort.o
 obj-$(CONFIG_UBIUTILS)	+= ubiutils-common.o
 obj-$(CONFIG_LIBSCAN)	+= libscan.o
+obj-$(CONFIG_LIBUBIGEN)	+= libubigen.o
 obj-y			+= gui/
 obj-$(CONFIG_XYMODEM)	+= xymodem.o
diff --git a/lib/libubigen.c b/lib/libubigen.c
new file mode 100644
index 0000000..9001c3b
--- /dev/null
+++ b/lib/libubigen.c
@@ -0,0 +1,316 @@
+/*
+ * Copyright (c) International Business Machines Corp., 2006
+ * Copyright (C) 2008 Nokia Corporation
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See
+ * the GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
+ */
+
+/*
+ * Generating UBI images.
+ *
+ * Authors: Oliver Lohmann
+ *          Artem Bityutskiy
+ */
+
+#define PROGRAM_NAME "libubigen"
+
+#include <common.h>
+#include <stdlib.h>
+#include <string.h>
+#include <malloc.h>
+#include <errno.h>
+#include <crc.h>
+#include <fs.h>
+
+#include <mtd/utils.h>
+#include <mtd/ubi-media.h>
+#include <mtd/libubigen.h>
+
+void ubigen_info_init(struct ubigen_info *ui, int peb_size, int min_io_size,
+		      int subpage_size, int vid_hdr_offs, int ubi_ver,
+		      uint32_t image_seq)
+{
+	if (!vid_hdr_offs) {
+		vid_hdr_offs = UBI_EC_HDR_SIZE + subpage_size - 1;
+		vid_hdr_offs /= subpage_size;
+		vid_hdr_offs *= subpage_size;
+	}
+
+	ui->peb_size = peb_size;
+	ui->min_io_size = min_io_size;
+	ui->vid_hdr_offs = vid_hdr_offs;
+	ui->data_offs = vid_hdr_offs + UBI_VID_HDR_SIZE + min_io_size - 1;
+	ui->data_offs /= min_io_size;
+	ui->data_offs *= min_io_size;
+	ui->leb_size = peb_size - ui->data_offs;
+	ui->ubi_ver = ubi_ver;
+	ui->image_seq = image_seq;
+
+	ui->max_volumes = ui->leb_size / UBI_VTBL_RECORD_SIZE;
+	if (ui->max_volumes > UBI_MAX_VOLUMES)
+		ui->max_volumes = UBI_MAX_VOLUMES;
+	ui->vtbl_size = ui->max_volumes * UBI_VTBL_RECORD_SIZE;
+}
+
+struct ubi_vtbl_record *ubigen_create_empty_vtbl(const struct ubigen_info *ui)
+{
+	struct ubi_vtbl_record *vtbl;
+	int i;
+
+	vtbl = calloc(1, ui->vtbl_size);
+	if (!vtbl) {
+		sys_errmsg("cannot allocate %d bytes of memory", ui->vtbl_size);
+		return NULL;
+	}
+
+	for (i = 0; i < ui->max_volumes; i++) {
+		uint32_t crc = crc32_no_comp(UBI_CRC32_INIT, &vtbl[i],
+				     UBI_VTBL_RECORD_SIZE_CRC);
+		vtbl[i].crc = cpu_to_be32(crc);
+	}
+
+	return vtbl;
+}
+
+int ubigen_add_volume(const struct ubigen_info *ui,
+		      const struct ubigen_vol_info *vi,
+		      struct ubi_vtbl_record *vtbl)
+{
+	struct ubi_vtbl_record *vtbl_rec = &vtbl[vi->id];
+	uint32_t tmp;
+
+	if (vi->id >= ui->max_volumes) {
+		errmsg("too high volume id %d, max. volumes is %d",
+		       vi->id, ui->max_volumes);
+		errno = EINVAL;
+		return -1;
+	}
+
+	if (vi->alignment >= ui->leb_size) {
+		errmsg("too large alignment %d, max is %d (LEB size)",
+		       vi->alignment, ui->leb_size);
+		errno = EINVAL;
+		return -1;
+	}
+
+	memset(vtbl_rec, 0, sizeof(struct ubi_vtbl_record));
+	tmp = (vi->bytes + ui->leb_size - 1) / ui->leb_size;
+	vtbl_rec->reserved_pebs = cpu_to_be32(tmp);
+	vtbl_rec->alignment = cpu_to_be32(vi->alignment);
+	vtbl_rec->vol_type = vi->type;
+	tmp = ui->leb_size % vi->alignment;
+	vtbl_rec->data_pad = cpu_to_be32(tmp);
+	vtbl_rec->flags = vi->flags;
+
+	memcpy(vtbl_rec->name, vi->name, vi->name_len);
+	vtbl_rec->name[vi->name_len] = '\0';
+	vtbl_rec->name_len = cpu_to_be16(vi->name_len);
+
+	tmp = crc32_no_comp(UBI_CRC32_INIT, vtbl_rec, UBI_VTBL_RECORD_SIZE_CRC);
+	vtbl_rec->crc =	 cpu_to_be32(tmp);
+	return 0;
+}
+
+void ubigen_init_ec_hdr(const struct ubigen_info *ui,
+		        struct ubi_ec_hdr *hdr, long long ec)
+{
+	uint32_t crc;
+
+	memset(hdr, 0, sizeof(struct ubi_ec_hdr));
+
+	hdr->magic = cpu_to_be32(UBI_EC_HDR_MAGIC);
+	hdr->version = ui->ubi_ver;
+	hdr->ec = cpu_to_be64(ec);
+	hdr->vid_hdr_offset = cpu_to_be32(ui->vid_hdr_offs);
+	hdr->data_offset = cpu_to_be32(ui->data_offs);
+	hdr->image_seq = cpu_to_be32(ui->image_seq);
+
+	crc = crc32_no_comp(UBI_CRC32_INIT, hdr, UBI_EC_HDR_SIZE_CRC);
+	hdr->hdr_crc = cpu_to_be32(crc);
+}
+
+void ubigen_init_vid_hdr(const struct ubigen_info *ui,
+			 const struct ubigen_vol_info *vi,
+			 struct ubi_vid_hdr *hdr, int lnum,
+			 const void *data, int data_size)
+{
+	uint32_t crc;
+
+	memset(hdr, 0, sizeof(struct ubi_vid_hdr));
+
+	hdr->magic = cpu_to_be32(UBI_VID_HDR_MAGIC);
+	hdr->version = ui->ubi_ver;
+	hdr->vol_type = vi->type;
+	hdr->vol_id = cpu_to_be32(vi->id);
+	hdr->lnum = cpu_to_be32(lnum);
+	hdr->data_pad = cpu_to_be32(vi->data_pad);
+	hdr->compat = vi->compat;
+
+	if (vi->type == UBI_VID_STATIC) {
+		hdr->data_size = cpu_to_be32(data_size);
+		hdr->used_ebs = cpu_to_be32(vi->used_ebs);
+		crc = crc32_no_comp(UBI_CRC32_INIT, data, data_size);
+		hdr->data_crc = cpu_to_be32(crc);
+	}
+
+	crc = crc32_no_comp(UBI_CRC32_INIT, hdr, UBI_VID_HDR_SIZE_CRC);
+	hdr->hdr_crc = cpu_to_be32(crc);
+}
+
+int ubigen_write_volume(const struct ubigen_info *ui,
+			const struct ubigen_vol_info *vi, long long ec,
+			long long bytes, int in, int out)
+{
+	int len = vi->usable_leb_size, rd, lnum = 0;
+	char *inbuf, *outbuf;
+
+	if (vi->id >= ui->max_volumes) {
+		errmsg("too high volume id %d, max. volumes is %d",
+		       vi->id, ui->max_volumes);
+		errno = EINVAL;
+		return -1;
+	}
+
+	if (vi->alignment >= ui->leb_size) {
+		errmsg("too large alignment %d, max is %d (LEB size)",
+		       vi->alignment, ui->leb_size);
+		errno = EINVAL;
+		return -1;
+	}
+
+	inbuf = malloc(ui->leb_size);
+	if (!inbuf)
+		return sys_errmsg("cannot allocate %d bytes of memory",
+				  ui->leb_size);
+	outbuf = malloc(ui->peb_size);
+	if (!outbuf) {
+		sys_errmsg("cannot allocate %d bytes of memory", ui->peb_size);
+		goto out_free;
+	}
+
+	memset(outbuf, 0xFF, ui->data_offs);
+	ubigen_init_ec_hdr(ui, (struct ubi_ec_hdr *)outbuf, ec);
+
+	while (bytes) {
+		int l;
+		struct ubi_vid_hdr *vid_hdr;
+
+		if (bytes < len)
+			len = bytes;
+		bytes -= len;
+
+		l = len;
+		do {
+			rd = read(in, inbuf + len - l, l);
+			if (rd != l) {
+				sys_errmsg("cannot read %d bytes from the input file", l);
+				goto out_free1;
+			}
+
+			l -= rd;
+		} while (l);
+
+		vid_hdr = (struct ubi_vid_hdr *)(&outbuf[ui->vid_hdr_offs]);
+		ubigen_init_vid_hdr(ui, vi, vid_hdr, lnum, inbuf, len);
+
+		memcpy(outbuf + ui->data_offs, inbuf, len);
+		memset(outbuf + ui->data_offs + len, 0xFF,
+		       ui->peb_size - ui->data_offs - len);
+
+		if (write(out, outbuf, ui->peb_size) != ui->peb_size) {
+			sys_errmsg("cannot write %d bytes to the output file", ui->peb_size);
+			goto out_free1;
+		}
+
+		lnum += 1;
+	}
+
+	free(outbuf);
+	free(inbuf);
+	return 0;
+
+out_free1:
+	free(outbuf);
+out_free:
+	free(inbuf);
+	return -1;
+}
+
+int ubigen_write_layout_vol(const struct ubigen_info *ui, int peb1, int peb2,
+			    long long ec1, long long ec2,
+			    struct ubi_vtbl_record *vtbl, int fd)
+{
+	int ret;
+	struct ubigen_vol_info vi;
+	char *outbuf;
+	struct ubi_vid_hdr *vid_hdr;
+	off_t seek;
+
+	vi.bytes = ui->leb_size * UBI_LAYOUT_VOLUME_EBS;
+	vi.id = UBI_LAYOUT_VOLUME_ID;
+	vi.alignment = UBI_LAYOUT_VOLUME_ALIGN;
+	vi.data_pad = ui->leb_size % UBI_LAYOUT_VOLUME_ALIGN;
+	vi.usable_leb_size = ui->leb_size - vi.data_pad;
+	vi.data_pad = ui->leb_size - vi.usable_leb_size;
+	vi.type = UBI_LAYOUT_VOLUME_TYPE;
+	vi.name = UBI_LAYOUT_VOLUME_NAME;
+	vi.name_len = strlen(UBI_LAYOUT_VOLUME_NAME);
+	vi.compat = UBI_LAYOUT_VOLUME_COMPAT;
+
+	outbuf = malloc(ui->peb_size);
+	if (!outbuf)
+		return sys_errmsg("failed to allocate %d bytes",
+				  ui->peb_size);
+
+	memset(outbuf, 0xFF, ui->data_offs);
+	vid_hdr = (struct ubi_vid_hdr *)(&outbuf[ui->vid_hdr_offs]);
+	memcpy(outbuf + ui->data_offs, vtbl, ui->vtbl_size);
+	memset(outbuf + ui->data_offs + ui->vtbl_size, 0xFF,
+	       ui->peb_size - ui->data_offs - ui->vtbl_size);
+
+	seek = (off_t) peb1 * ui->peb_size;
+	if (lseek(fd, seek, SEEK_SET) != seek) {
+		sys_errmsg("cannot seek output file");
+		goto out_free;
+	}
+
+	ubigen_init_ec_hdr(ui, (struct ubi_ec_hdr *)outbuf, ec1);
+	ubigen_init_vid_hdr(ui, &vi, vid_hdr, 0, NULL, 0);
+	ret = write(fd, outbuf, ui->peb_size);
+	if (ret != ui->peb_size) {
+		sys_errmsg("cannot write %d bytes", ui->peb_size);
+		goto out_free;
+	}
+
+	seek = (off_t) peb2 * ui->peb_size;
+	if (lseek(fd, seek, SEEK_SET) != seek) {
+		sys_errmsg("cannot seek output file");
+		goto out_free;
+	}
+	ubigen_init_ec_hdr(ui, (struct ubi_ec_hdr *)outbuf, ec2);
+	ubigen_init_vid_hdr(ui, &vi, vid_hdr, 1, NULL, 0);
+	ret = write(fd, outbuf, ui->peb_size);
+	if (ret != ui->peb_size) {
+		sys_errmsg("cannot write %d bytes", ui->peb_size);
+		goto out_free;
+	}
+
+	free(outbuf);
+	return 0;
+
+out_free:
+	free(outbuf);
+	return -1;
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
