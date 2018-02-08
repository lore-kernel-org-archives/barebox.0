Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x243.google.com ([2a00:1450:400c:c0c::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ejmAj-0002MR-Je
 for barebox@lists.infradead.org; Thu, 08 Feb 2018 13:23:36 +0000
Received: by mail-wr0-x243.google.com with SMTP id a43so4676691wrc.4
 for <barebox@lists.infradead.org>; Thu, 08 Feb 2018 05:23:19 -0800 (PST)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Thu,  8 Feb 2018 14:23:00 +0100
Message-Id: <20180208132301.24921-8-aleksander@aleksander.es>
In-Reply-To: <20180208132301.24921-1-aleksander@aleksander.es>
References: <20180208132301.24921-1-aleksander@aleksander.es>
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
Subject: [RFC PATCH v2 7/8] ratp: new md and mw commands
To: barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

This commit introduces support for running the md and mw commands
using the binary interface provided by RAPT. This allows clients to
read and write memory files without needing to do custom string
parsing on the data returned by the console 'md' and 'mw' operations.

The request and response messages used for these new operations are
structured in the same way:

 * An initial fixed-sized section includes the fixed-sized
   variables (e.g. integers), as well as the size and offset of the
   variable-length variables.

 * After the initial fixed-sized section, the buffer is given, which
   contains the variable-length variables in the offsets previously
   defined and with the size previously defined.

The message also defines separately the offset of the buffer
w.r.t. the start of the message. The endpoint reading the message will
use this information to decide where the buffer starts. This allows to
extend the message format in the future without needing to break the
message API, as new fields can be appended to the fixed-sized section
as long as the buffer offset is also updated to report the new
position of the buffer.

E.g. testing with ratp-barebox-cli:

  $ ratp-barebox-cli -t /dev/ttyUSB2 --md "/dev/pic_eeprom_rdu,0x107,5" --timeout 1000
  Sending md request: read '/dev/pic_eeprom_rdu': 0x0107 (+5 bytes)
  00:00:00:00:00

  $ ratp-barebox-cli -t /dev/ttyUSB2 --mw "/dev/pic_eeprom_rdu,0x107,01:02:03:04:05" --timeout 1000
  Sending mw request: write '/dev/pic_eeprom_rdu': 0x0107 (+5 bytes)
  5/5 bytes written

  $ ratp-barebox-cli -t /dev/ttyUSB2 --md "/dev/pic_eeprom_rdu,0x107,5" --timeout 1000
  Sending md request: read '/dev/pic_eeprom_rdu': 0x0107 (+5 bytes)
  01:02:03:04:05

  $ ratp-barebox-cli -t /dev/ttyUSB2 --mw "/dev/pic_eeprom_rdu,0x107,00:00:00:00:00" --timeout 1000
  Sending mw request: write '/dev/pic_eeprom_rdu': 0x0107 (+5 bytes)
  5/5 bytes written

  $ ratp-barebox-cli -t /dev/ttyUSB2 --md "/dev/pic_eeprom_rdu,0x107,5" --timeout 1000
  Sending md request: read '/dev/pic_eeprom_rdu': 0x0107 (+5 bytes)
  00:00:00:00:00

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 common/ratp/Makefile |   2 +
 common/ratp/md.c     | 202 +++++++++++++++++++++++++++++++++++++++++++++++++++
 common/ratp/mw.c     | 173 +++++++++++++++++++++++++++++++++++++++++++
 include/ratp_bb.h    |   4 +
 4 files changed, 381 insertions(+)
 create mode 100644 common/ratp/md.c
 create mode 100644 common/ratp/mw.c

diff --git a/common/ratp/Makefile b/common/ratp/Makefile
index 2fa9d63c0..d4cfdf95f 100644
--- a/common/ratp/Makefile
+++ b/common/ratp/Makefile
@@ -1,3 +1,5 @@
 obj-y += ratp.o
 obj-y += ping.o
 obj-y += getenv.o
+obj-y += md.o
+obj-y += mw.o
diff --git a/common/ratp/md.c b/common/ratp/md.c
new file mode 100644
index 000000000..bbb7a50f0
--- /dev/null
+++ b/common/ratp/md.c
@@ -0,0 +1,202 @@
+/*
+ * Copyright (c) 2011-2018 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <ratp_bb.h>
+#include <init.h>
+#include <driver.h>
+#include <malloc.h>
+#include <errno.h>
+#include <fs.h>
+#include <libfile.h>
+#include <fcntl.h>
+#include <linux/stat.h>
+#include <xfuncs.h>
+
+/* NOTE:
+ *  - Fixed-size fields (e.g. integers) are given just after the header.
+ *  - Variable-length fields are stored inside the buffer[] and their position
+ *    within the buffer[] and their size are given as fixed-sized fields after
+ *    the header.
+ *  The message may be extended at any time keeping backwards compatibility,
+ *  as the position of the buffer[] is given by the buffer_offset field. i.e.
+ *  increasing the buffer_offset field we can extend the fixed-sized section
+ *  to add more fields.
+ */
+
+struct ratp_bb_md_request {
+	struct ratp_bb header;
+	uint16_t buffer_offset;
+	uint16_t addr;
+	uint16_t size;
+	uint16_t path_size;
+	uint16_t path_offset;
+	uint8_t  buffer[];
+} __attribute__((packed));
+
+struct ratp_bb_md_response {
+	struct ratp_bb header;
+	uint16_t buffer_offset;
+	uint32_t errno;
+	uint16_t data_size;
+	uint16_t data_offset;
+	uint8_t  buffer[];
+} __attribute__((packed));
+
+extern char *mem_rw_buf;
+
+static int do_ratp_mem_md(const char *filename,
+			  loff_t start,
+			  loff_t size,
+			  uint8_t *output)
+{
+	int r, now, t;
+	int ret = 0;
+	int fd;
+	void *map;
+
+	fd = open_and_lseek(filename, O_RWSIZE_1 | O_RDONLY, start);
+	if (fd < 0)
+		return 1;
+
+	map = memmap(fd, PROT_READ);
+	if (map != (void *)-1) {
+		memcpy(output, (uint8_t *)(map + start), size);
+		goto out;
+	}
+
+	t = 0;
+	do {
+		now = min(size, (loff_t)RW_BUF_SIZE);
+		r = read(fd, mem_rw_buf, now);
+		if (r < 0) {
+			ret = -errno;
+			perror("read");
+			goto out;
+		}
+		if (!r)
+			goto out;
+
+		memcpy(output + t, (uint8_t *)(mem_rw_buf), r);
+
+		size  -= r;
+		t     += r;
+	} while (size);
+
+out:
+	close(fd);
+
+	return ret;
+}
+
+static int ratp_cmd_md(const struct ratp_bb *req, int req_len,
+		       struct ratp_bb **rsp, int *rsp_len)
+{
+	struct ratp_bb_md_request *md_req = (struct ratp_bb_md_request *)req;
+	struct ratp_bb_md_response *md_rsp;
+	uint8_t *buffer;
+	uint16_t buffer_offset;
+	uint16_t buffer_size;
+	int md_rsp_len;
+	uint16_t addr;
+	uint16_t size;
+	uint16_t path_size;
+	uint16_t path_offset;
+	char *path = NULL;
+	int ret = 0;
+
+	/* At least message header should be valid */
+	if (req_len < sizeof(*md_req)) {
+		printf("ratp md ignored: size mismatch (%d < %zu)\n",
+		       req_len, sizeof (*md_req));
+		ret = -EINVAL;
+		goto out;
+	}
+
+	/* Validate buffer position and size */
+	buffer_offset = be16_to_cpu(md_req->buffer_offset);
+	if (req_len < buffer_offset) {
+		printf("ratp md ignored: invalid buffer offset (%d < %hu)\n",
+		       req_len, buffer_offset);
+		ret = -EINVAL;
+		goto out;
+	}
+	buffer_size = req_len - buffer_offset;
+	buffer = ((uint8_t *)md_req) + buffer_offset;
+
+	/* Validate path position and size */
+	path_offset = be16_to_cpu(md_req->path_offset);
+	if (path_offset != 0) {
+		printf("ratp md ignored: invalid path offset\n");
+		ret = -EINVAL;
+		goto out;
+	}
+	path_size = be16_to_cpu(md_req->path_size);
+	if (!path_size) {
+		printf("ratp md ignored: no filepath given\n");
+		ret = -EINVAL;
+		goto out;
+	}
+
+	/* Validate buffer size */
+	if (buffer_size < path_size) {
+		printf("ratp mw ignored: size mismatch (%d < %zu): path may not be fully given\n",
+		       req_len, path_size);
+		ret = -EINVAL;
+		goto out;
+	}
+
+	addr = be16_to_cpu (md_req->addr);
+	size = be16_to_cpu (md_req->size);
+	path = xstrndup((const char *)&buffer[path_offset], path_size);
+
+out:
+	/* Avoid reading anything on error */
+	if (ret != 0)
+		size = 0;
+
+	md_rsp_len = sizeof(*md_rsp) + size;
+	md_rsp = xzalloc(md_rsp_len);
+	md_rsp->header.type = cpu_to_be16(BB_RATP_TYPE_MD_RETURN);
+	md_rsp->buffer_offset = cpu_to_be16(sizeof(*md_rsp));
+	md_rsp->data_offset = 0;
+
+	/* Don't read anything on error or if 0 bytes were requested */
+	if (size > 0)
+		ret = do_ratp_mem_md(path, addr, size, md_rsp->buffer);
+
+	if (ret != 0) {
+		md_rsp->data_size = 0;
+		md_rsp->errno = cpu_to_be32(ret);
+		md_rsp_len = sizeof(*md_rsp);
+	} else {
+		md_rsp->data_size = cpu_to_be16(size);
+		md_rsp->errno = 0;
+	}
+
+	*rsp = (struct ratp_bb *)md_rsp;
+	*rsp_len = md_rsp_len;
+
+	free (path);
+	return ret;
+}
+
+BAREBOX_RATP_CMD_START(MD)
+	.request_id = BB_RATP_TYPE_MD,
+	.response_id = BB_RATP_TYPE_MD_RETURN,
+	.cmd = ratp_cmd_md
+BAREBOX_RATP_CMD_END
diff --git a/common/ratp/mw.c b/common/ratp/mw.c
new file mode 100644
index 000000000..7fbcde75a
--- /dev/null
+++ b/common/ratp/mw.c
@@ -0,0 +1,173 @@
+/*
+ * Copyright (c) 2011-2018 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ * Copyright (c) 2018 Zodiac Inflight Innovations
+ *
+ * See file CREDITS for list of people who contributed to this
+ * project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <common.h>
+#include <ratp_bb.h>
+#include <init.h>
+#include <driver.h>
+#include <malloc.h>
+#include <errno.h>
+#include <fs.h>
+#include <libfile.h>
+#include <fcntl.h>
+#include <xfuncs.h>
+
+/* NOTE:
+ *  - Fixed-size fields (e.g. integers) are given just after the header.
+ *  - Variable-length fields are stored inside the buffer[] and their position
+ *    within the buffer[] and their size are given as fixed-sized fields after
+ *    the header.
+ *  The message may be extended at any time keeping backwards compatibility,
+ *  as the position of the buffer[] is given by the buffer_offset field. i.e.
+ *  increasing the buffer_offset field we can extend the fixed-sized section
+ *  to add more fields.
+ */
+
+struct ratp_bb_mw_request {
+	struct ratp_bb header;
+	uint16_t buffer_offset;
+	uint16_t addr;
+	uint16_t path_size;
+	uint16_t path_offset;
+	uint16_t data_size;
+	uint16_t data_offset;
+	uint8_t  buffer[];
+} __attribute__((packed));
+
+struct ratp_bb_mw_response {
+	struct ratp_bb header;
+	uint16_t buffer_offset;
+	uint32_t errno;
+	uint32_t written;
+	uint8_t  buffer[];
+} __attribute__((packed));
+
+static int ratp_cmd_mw(const struct ratp_bb *req, int req_len,
+		       struct ratp_bb **rsp, int *rsp_len)
+{
+	struct ratp_bb_mw_request *mw_req = (struct ratp_bb_mw_request *)req;
+	struct ratp_bb_mw_response *mw_rsp;
+	uint8_t *buffer;
+	uint16_t buffer_offset;
+	uint16_t buffer_size;
+	uint16_t addr;
+	uint16_t path_size;
+	uint16_t path_offset;
+	uint16_t data_size;
+	uint16_t data_offset;
+	ssize_t written = 0;
+	char *path = NULL;
+	int fd;
+	int ret = 0;
+
+	/* At least message header should be valid */
+	if (req_len < sizeof(*mw_req)) {
+		printf("ratp mw ignored: size mismatch (%d < %zu)\n",
+		       req_len, sizeof (*mw_req));
+		ret = -EINVAL;
+		goto out;
+	}
+
+	/* Validate buffer position and size */
+	buffer_offset = be16_to_cpu(mw_req->buffer_offset);
+	if (req_len < buffer_offset) {
+		printf("ratp mw ignored: invalid buffer offset (%d < %hu)\n",
+		       req_len, buffer_offset);
+		ret = -EINVAL;
+		goto out;
+	}
+	buffer_size = req_len - buffer_offset;
+	buffer = ((uint8_t *)mw_req) + buffer_offset;
+
+	/* Validate path position and size */
+	path_offset = be16_to_cpu(mw_req->path_offset);
+	if (path_offset != 0) {
+		printf("ratp mw ignored: invalid path offset\n");
+		ret = -EINVAL;
+		goto out;
+	}
+	path_size = be16_to_cpu(mw_req->path_size);
+	if (!path_size) {
+		printf("ratp mw ignored: no filepath given\n");
+		ret = -EINVAL;
+		goto out;
+	}
+
+	/* Validate data position and size */
+	data_offset = be16_to_cpu(mw_req->data_offset);
+	if (data_offset != (path_offset + path_size)) {
+		printf("ratp mw ignored: invalid path offset\n");
+		ret = -EINVAL;
+		goto out;
+	}
+	data_size = be16_to_cpu(mw_req->data_size);
+	if (!data_size) {
+		/* Success */
+		goto out;
+	}
+
+	/* Validate buffer size */
+	if (buffer_size < (path_size + data_size)) {
+		printf("ratp mw ignored: size mismatch (%d < %zu): path or data not be fully given\n",
+		       req_len, path_size + data_size);
+		ret = -EINVAL;
+		goto out;
+	}
+
+	addr = be16_to_cpu (mw_req->addr);
+	path = xstrndup((const char *)&buffer[path_offset], path_size);
+
+	fd = open_and_lseek(path, O_RWSIZE_1 | O_WRONLY, addr);
+	if (fd < 0) {
+		ret = -errno;
+		goto out;
+	}
+
+	written = write(fd, &buffer[data_offset], data_size);
+	if (written < 0) {
+		ret = -errno;
+		perror("write");
+	}
+
+	close(fd);
+
+out:
+	mw_rsp = xzalloc(sizeof(*mw_rsp));
+	mw_rsp->header.type = cpu_to_be16(BB_RATP_TYPE_MW_RETURN);
+	mw_rsp->buffer_offset = cpu_to_be16(sizeof(*mw_rsp)); /* n/a */
+
+	if (ret != 0) {
+		mw_rsp->written = 0;
+		mw_rsp->errno = cpu_to_be32(ret);
+	} else {
+		mw_rsp->written = cpu_to_be16((uint16_t)written);
+		mw_rsp->errno = 0;
+	}
+
+	*rsp = (struct ratp_bb *)mw_rsp;
+	*rsp_len = sizeof(*mw_rsp);
+
+	free (path);
+	return ret;
+}
+
+BAREBOX_RATP_CMD_START(MW)
+	.request_id = BB_RATP_TYPE_MW,
+	.response_id = BB_RATP_TYPE_MW_RETURN,
+	.cmd = ratp_cmd_mw
+BAREBOX_RATP_CMD_END
diff --git a/include/ratp_bb.h b/include/ratp_bb.h
index 75aabed55..00b165f77 100644
--- a/include/ratp_bb.h
+++ b/include/ratp_bb.h
@@ -12,6 +12,10 @@
 #define BB_RATP_TYPE_GETENV_RETURN	7
 #define BB_RATP_TYPE_FS			8
 #define BB_RATP_TYPE_FS_RETURN		9
+#define BB_RATP_TYPE_MD			10
+#define BB_RATP_TYPE_MD_RETURN		11
+#define BB_RATP_TYPE_MW			12
+#define BB_RATP_TYPE_MW_RETURN		13

 struct ratp_bb {
 	uint16_t type;
--
2.15.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
