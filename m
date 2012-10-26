Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TRgy6-0001a4-P7
 for barebox@lists.infradead.org; Fri, 26 Oct 2012 10:16:54 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Fri, 26 Oct 2012 12:16:39 +0200
Message-Id: <1351246602-8859-8-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1351246602-8859-1-git-send-email-w.sang@pengutronix.de>
References: <1351246602-8859-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [RFC 07/10] lib: add libscan
To: barebox@lists.infradead.org
Cc: Wolfram Sang <w.sang@pengutronix.de>

Imported from mtd-utils and stripped down to needed functionality.
Add prefix to functions so we have a clean namespace.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 include/mtd/libscan.h |  105 +++++++++++++++++++++++
 lib/Kconfig           |    3 +
 lib/Makefile          |    1 +
 lib/libscan.c         |  223 +++++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 332 insertions(+)
 create mode 100644 include/mtd/libscan.h
 create mode 100644 lib/libscan.c

diff --git a/include/mtd/libscan.h b/include/mtd/libscan.h
new file mode 100644
index 0000000..193b07b
--- /dev/null
+++ b/include/mtd/libscan.h
@@ -0,0 +1,105 @@
+/*
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
+ *
+ * Author: Artem Bityutskiy
+ *
+ * UBI scanning library.
+ */
+
+#ifndef __LIBSCAN_H__
+#define __LIBSCAN_H__
+
+#include <mtd/ubi-media.h>
+
+/*
+ * If an eraseblock does not contain an erase counter, this value is used
+ * instead of the erase counter.
+ */
+#define NO_EC 0xFFFFFFFF
+
+/*
+ * If an eraseblock contains a corrupted erase counter, this value is used
+ * instead of the erase counter.
+ */
+#define CORRUPT_EC 0xFFFFFFFE
+
+/*
+ * If an eraseblock does not contain an erase counter, one of these values is
+ * used.
+ *
+ * @EB_EMPTY: the eraseblock appeared to be empty
+ * @EB_CORRUPTED: the eraseblock contains corrupted erase counter header
+ * @EB_ALIEN: the eraseblock contains some non-UBI data
+ * @EC_MAX: maximum allowed erase counter value
+ */
+enum
+{
+	EB_EMPTY     = 0xFFFFFFFF,
+	EB_CORRUPTED = 0xFFFFFFFE,
+	EB_ALIEN     = 0xFFFFFFFD,
+	EB_BAD       = 0xFFFFFFFC,
+	EC_MAX       = UBI_MAX_ERASECOUNTER,
+};
+
+/**
+ * struct ubi_scan_info - UBI scanning information.
+ * @ec: erase counters or eraseblock status for all eraseblocks
+ * @mean_ec: mean erase counter
+ * @ok_cnt: count of eraseblock with correct erase counter header
+ * @empty_cnt: count of supposedly eraseblocks
+ * @corrupted_cnt: count of eraseblocks with corrupted erase counter header
+ * @alien_cnt: count of eraseblock containing non-ubi data
+ * @bad_cnt: count of bad eraseblocks
+ * @bad_cnt: count of non-bad eraseblocks
+ * @vid_hdr_offs: volume ID header offset from the found EC headers (%-1 means
+ *                undefined)
+ * @data_offs: data offset from the found EC headers (%-1 means undefined)
+ */
+struct ubi_scan_info
+{
+	uint32_t *ec;
+	long long mean_ec;
+	int ok_cnt;
+	int empty_cnt;
+	int corrupted_cnt;
+	int alien_cnt;
+	int bad_cnt;
+	int good_cnt;
+	int vid_hdr_offs;
+	int data_offs;
+};
+
+struct mtd_dev_info;
+
+/**
+ * ubi_scan - scan an MTD device.
+ * @mtd: information about the MTD device to scan
+ * @fd: MTD device node file descriptor
+ * @info: the result of the scanning is returned here
+ * @verbose: verbose mode: %0 - be silent, %1 - output progress information,
+ *           2 - debugging output mode
+ */
+int libscan_ubi_scan(struct mtd_dev_info *mtd, int fd, struct ubi_scan_info **info,
+	     int verbose);
+
+/**
+ * ubi_scan_free - free scanning information.
+ * @si: scanning information to free
+ */
+void libscan_ubi_scan_free(struct ubi_scan_info *si);
+
+#endif /* __LIBSCAN_H__ */
diff --git a/lib/Kconfig b/lib/Kconfig
index fd7a1f9..1d4d8ad 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -41,6 +41,9 @@ config QSORT
 config UBIUTILS
 	bool
 
+config LIBSCAN
+	bool
+
 source lib/gui/Kconfig
 
 endmenu
diff --git a/lib/Makefile b/lib/Makefile
index 68404d1..41583c8 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -35,4 +35,5 @@ obj-$(CONFIG_BCH)	+= bch.o
 obj-$(CONFIG_BITREV)	+= bitrev.o
 obj-$(CONFIG_QSORT)	+= qsort.o
 obj-$(CONFIG_UBIUTILS)	+= ubiutils-common.o
+obj-$(CONFIG_LIBSCAN)	+= libscan.o
 obj-y			+= gui/
diff --git a/lib/libscan.c b/lib/libscan.c
new file mode 100644
index 0000000..951e0e7
--- /dev/null
+++ b/lib/libscan.c
@@ -0,0 +1,223 @@
+/*
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
+ *
+ * Author: Artem Bityutskiy
+ *
+ * UBI scanning library.
+ */
+
+#define PROGRAM_NAME "libscan"
+
+#include <common.h>
+#include <fcntl.h>
+#include <crc.h>
+#include <stdlib.h>
+#include <malloc.h>
+#include <linux/mtd/mtd.h>
+#include <linux/stat.h>
+#include <linux/mtd/mtd-abi.h>
+#include <mtd/libmtd.h>
+#include <mtd/libscan.h>
+#include <mtd/ubi-user.h>
+#include <mtd/utils.h>
+#include <mtd/ubi-media.h>
+#include <asm-generic/div64.h>
+
+static int all_ff(const void *buf, int len)
+{
+	int i;
+	const uint8_t *p = buf;
+
+	for (i = 0; i < len; i++)
+		if (p[i] != 0xFF)
+			return 0;
+	return 1;
+}
+
+int libscan_ubi_scan(struct mtd_dev_info *mtd, int fd, struct ubi_scan_info **info,
+	     int verbose)
+{
+	int eb, v = (verbose == 2), pr = (verbose == 1);
+	struct ubi_scan_info *si;
+	unsigned long long sum = 0;
+
+	si = calloc(1, sizeof(struct ubi_scan_info));
+	if (!si)
+		return sys_errmsg("cannot allocate %zd bytes of memory",
+				  sizeof(struct ubi_scan_info));
+
+	si->ec = calloc(mtd->eb_cnt, sizeof(uint32_t));
+	if (!si->ec) {
+		sys_errmsg("cannot allocate %zd bytes of memory",
+			   sizeof(struct ubi_scan_info));
+		goto out_si;
+	}
+
+	si->vid_hdr_offs = si->data_offs = -1;
+
+	verbose(v, "start scanning eraseblocks 0-%d", mtd->eb_cnt);
+	for (eb = 0; eb < mtd->eb_cnt; eb++) {
+		int ret;
+		uint32_t crc;
+		struct ubi_ec_hdr ech;
+		unsigned long long ec;
+
+		if (v)
+			normsg_cont("scanning eraseblock %d", eb);
+		if (pr) {
+			printf("\r" PROGRAM_NAME ": scanning eraseblock %d -- %2u %% complete  ",
+			       eb, (eb + 1) * 100 / mtd->eb_cnt);
+		}
+
+		ret = mtd_is_bad(mtd, fd, eb);
+		if (ret == -1)
+			goto out_ec;
+		if (ret) {
+			si->bad_cnt += 1;
+			si->ec[eb] = EB_BAD;
+			if (v)
+				printf(": bad\n");
+			continue;
+		}
+
+		ret = mtd_read(mtd, fd, eb, 0, &ech, sizeof(struct ubi_ec_hdr));
+		if (ret < 0)
+			goto out_ec;
+
+		if (be32_to_cpu(ech.magic) != UBI_EC_HDR_MAGIC) {
+			if (all_ff(&ech, sizeof(struct ubi_ec_hdr))) {
+				si->empty_cnt += 1;
+				si->ec[eb] = EB_EMPTY;
+				if (v)
+					printf(": empty\n");
+			} else {
+				si->alien_cnt += 1;
+				si->ec[eb] = EB_ALIEN;
+				if (v)
+					printf(": alien\n");
+			}
+			continue;
+		}
+
+		crc = crc32_no_comp(UBI_CRC32_INIT, &ech, UBI_EC_HDR_SIZE_CRC);
+		if (be32_to_cpu(ech.hdr_crc) != crc) {
+			si->corrupted_cnt += 1;
+			si->ec[eb] = EB_CORRUPTED;
+			if (v)
+				printf(": bad CRC %#08x, should be %#08x\n",
+				       crc, be32_to_cpu(ech.hdr_crc));
+			continue;
+		}
+
+		ec = be64_to_cpu(ech.ec);
+		if (ec > EC_MAX) {
+			if (pr)
+				printf("\n");
+			errmsg("erase counter in EB %d is %llu, while this "
+			       "program expects them to be less than %u",
+			       eb, ec, EC_MAX);
+			goto out_ec;
+		}
+
+		if (si->vid_hdr_offs == -1) {
+			si->vid_hdr_offs = be32_to_cpu(ech.vid_hdr_offset);
+			si->data_offs = be32_to_cpu(ech.data_offset);
+			if (si->data_offs % mtd->min_io_size) {
+				if (pr)
+					printf("\n");
+				if (v)
+					printf(": corrupted because of the below\n");
+				warnmsg("bad data offset %d at eraseblock %d (n"
+					"of multiple of min. I/O unit size %d)",
+					si->data_offs, eb, mtd->min_io_size);
+				warnmsg("treat eraseblock %d as corrupted", eb);
+				si->corrupted_cnt += 1;
+				si->ec[eb] = EB_CORRUPTED;
+				continue;
+
+			}
+		} else {
+			if ((int)be32_to_cpu(ech.vid_hdr_offset) != si->vid_hdr_offs) {
+				if (pr)
+					printf("\n");
+				if (v)
+					printf(": corrupted because of the below\n");
+				warnmsg("inconsistent VID header offset: was "
+					"%d, but is %d in eraseblock %d",
+					si->vid_hdr_offs,
+					be32_to_cpu(ech.vid_hdr_offset), eb);
+				warnmsg("treat eraseblock %d as corrupted", eb);
+				si->corrupted_cnt += 1;
+				si->ec[eb] = EB_CORRUPTED;
+				continue;
+			}
+			if ((int)be32_to_cpu(ech.data_offset) != si->data_offs) {
+				if (pr)
+					printf("\n");
+				if (v)
+					printf(": corrupted because of the below\n");
+				warnmsg("inconsistent data offset: was %d, but"
+					" is %d in eraseblock %d",
+					si->data_offs,
+					be32_to_cpu(ech.data_offset), eb);
+				warnmsg("treat eraseblock %d as corrupted", eb);
+				si->corrupted_cnt += 1;
+				si->ec[eb] = EB_CORRUPTED;
+				continue;
+			}
+		}
+
+		si->ok_cnt += 1;
+		si->ec[eb] = ec;
+		if (v)
+			printf(": OK, erase counter %u\n", si->ec[eb]);
+	}
+
+	if (si->ok_cnt != 0) {
+		/* Calculate mean erase counter */
+		for (eb = 0; eb < mtd->eb_cnt; eb++) {
+			if (si->ec[eb] > EC_MAX)
+				continue;
+			sum += si->ec[eb];
+		}
+		do_div(sum, si->ok_cnt);
+		si->mean_ec = sum;
+	}
+
+	si->good_cnt = mtd->eb_cnt - si->bad_cnt;
+	verbose(v, "finished, mean EC %lld, %d OK, %d corrupted, %d empty, %d "
+		"alien, bad %d", si->mean_ec, si->ok_cnt, si->corrupted_cnt,
+		si->empty_cnt, si->alien_cnt, si->bad_cnt);
+
+	*info = si;
+	if (pr)
+		printf("\n");
+	return 0;
+
+out_ec:
+	free(si->ec);
+out_si:
+	free(si);
+	*info = NULL;
+	return -1;
+}
+
+void libscan_ubi_scan_free(struct ubi_scan_info *si)
+{
+	free(si->ec);
+	free(si);
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
