Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x242.google.com ([2a00:1450:400c:c0c::242])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ehZJH-0004tH-51
 for barebox@lists.infradead.org; Fri, 02 Feb 2018 11:15:20 +0000
Received: by mail-wr0-x242.google.com with SMTP id 41so20804086wrc.9
 for <barebox@lists.infradead.org>; Fri, 02 Feb 2018 03:15:01 -0800 (PST)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Fri,  2 Feb 2018 12:14:42 +0100
Message-Id: <20180202111442.12444-11-aleksander@aleksander.es>
In-Reply-To: <20180202111442.12444-1-aleksander@aleksander.es>
References: <20180202111442.12444-1-aleksander@aleksander.es>
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
Subject: [PATCH 10/10] ratp: new md and mw commands
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
 commands/md.c     | 209 ++++++++++++++++++++++++++++++++++++++++++++++--------
 commands/mw.c     | 150 ++++++++++++++++++++++++++++++++++++++-
 include/ratp_bb.h |   2 +
 3 files changed, 330 insertions(+), 31 deletions(-)

diff --git a/commands/md.c b/commands/md.c
index 3e83c723a..6cd3b9bcf 100644
--- a/commands/md.c
+++ b/commands/md.c
@@ -1,5 +1,6 @@
 /*
- * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ * Copyright (c) 2011-2018 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ * Copyright (c) 2018 Zodiac Inflight Innovations
  *
  * See file CREDITS for list of people who contributed to this
  * project.
@@ -23,6 +24,7 @@
 
 #include <common.h>
 #include <command.h>
+#include <ratp_bb.h>
 #include <init.h>
 #include <driver.h>
 #include <malloc.h>
@@ -36,66 +38,84 @@
 
 extern char *mem_rw_buf;
 
-static int do_mem_md(int argc, char *argv[])
+static int common_mem_md(const char *filename,
+			 loff_t start,
+			 loff_t size,
+			 int swab,
+			 int mode,
+			 uint8_t *output)
 {
-	loff_t	start = 0, size = 0x100;
-	int	r, now;
-	int	ret = 0;
+	int r, now, t;
+	int ret = 0;
 	int fd;
-	char *filename = "/dev/mem";
-	int mode = O_RWSIZE_4;
-	int swab = 0;
 	void *map;
 
-	if (argc < 2)
-		return COMMAND_ERROR_USAGE;
-
-	if (mem_parse_options(argc, argv, "bwlqs:x", &mode, &filename, NULL,
-			&swab) < 0)
-		return 1;
-
-	if (optind < argc) {
-		if (parse_area_spec(argv[optind], &start, &size)) {
-			printf("could not parse: %s\n", argv[optind]);
-			return 1;
-		}
-		if (size == ~0)
-			size = 0x100;
-	}
-
 	fd = open_and_lseek(filename, mode | O_RDONLY, start);
 	if (fd < 0)
 		return 1;
 
 	map = memmap(fd, PROT_READ);
 	if (map != (void *)-1) {
-		ret = memory_display(map + start, start, size,
-				mode >> O_RWSIZE_SHIFT, swab);
+		if (output)
+			memcpy(output, (uint8_t *)(map + start), size);
+		 else
+			ret = memory_display(map + start, start, size,
+					     mode >> O_RWSIZE_SHIFT, swab);
 		goto out;
 	}
 
+	t = 0;
 	do {
 		now = min(size, (loff_t)RW_BUF_SIZE);
 		r = read(fd, mem_rw_buf, now);
 		if (r < 0) {
+			ret = -errno;
 			perror("read");
 			goto out;
 		}
 		if (!r)
 			goto out;
 
-		if ((ret = memory_display(mem_rw_buf, start, r,
-				mode >> O_RWSIZE_SHIFT, swab)))
+		if (output)
+			memcpy(output + t, (uint8_t *)(mem_rw_buf), r);
+		else if ((ret = memory_display(mem_rw_buf, start + t, r,
+					       mode >> O_RWSIZE_SHIFT, swab)))
 			goto out;
 
-		start += r;
 		size  -= r;
+		t     += r;
 	} while (size);
 
 out:
 	close(fd);
 
-	return ret ? 1 : 0;
+	return ret;
+}
+
+static int do_mem_md(int argc, char *argv[])
+{
+	loff_t	start = 0, size = 0x100;
+	char *filename = "/dev/mem";
+	int mode = O_RWSIZE_4;
+	int swab = 0;
+
+	if (argc < 2)
+		return COMMAND_ERROR_USAGE;
+
+	if (mem_parse_options(argc, argv, "bwlqs:x", &mode, &filename, NULL,
+			&swab) < 0)
+		return 1;
+
+	if (optind < argc) {
+		if (parse_area_spec(argv[optind], &start, &size)) {
+			printf("could not parse: %s\n", argv[optind]);
+			return 1;
+		}
+		if (size == ~0)
+			size = 0x100;
+	}
+
+	return common_mem_md(filename, start, size, swab, mode, NULL);
 }
 
 
@@ -124,3 +144,132 @@ BAREBOX_CMD_START(md)
 	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_md_help)
 BAREBOX_CMD_END
+
+/* RATP command */
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
+	md_rsp->header.type = cpu_to_be16(BB_RATP_TYPE_MD);
+	md_rsp->header.flags = cpu_to_be16(BB_RATP_FLAG_RESPONSE);
+	md_rsp->buffer_offset = cpu_to_be16(sizeof(*md_rsp));
+	md_rsp->data_offset = 0;
+
+	/* Don't read anything on error or if 0 bytes were requested */
+	if (size > 0)
+		ret = common_mem_md(path, addr, size, 0, O_RWSIZE_1, md_rsp->buffer);
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
+	.cmd = ratp_cmd_md
+BAREBOX_RATP_CMD_END
diff --git a/commands/mw.c b/commands/mw.c
index bb6a16ef3..85560d532 100644
--- a/commands/mw.c
+++ b/commands/mw.c
@@ -1,5 +1,6 @@
 /*
- * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ * Copyright (c) 2011-2018 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ * Copyright (c) 2018 Zodiac Inflight Innovations
  *
  * See file CREDITS for list of people who contributed to this
  * project.
@@ -23,6 +24,7 @@
 
 #include <common.h>
 #include <command.h>
+#include <ratp_bb.h>
 #include <init.h>
 #include <driver.h>
 #include <malloc.h>
@@ -116,3 +118,149 @@ BAREBOX_CMD_START(mw)
 	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
 	BAREBOX_CMD_HELP(cmd_mw_help)
 BAREBOX_CMD_END
+
+/* RATP command */
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
+	mw_rsp->header.type = cpu_to_be16(BB_RATP_TYPE_MW);
+	mw_rsp->header.flags = cpu_to_be16(BB_RATP_FLAG_RESPONSE);
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
+	.cmd = ratp_cmd_mw
+BAREBOX_RATP_CMD_END
diff --git a/include/ratp_bb.h b/include/ratp_bb.h
index 1c2aa1fb7..5c546822b 100644
--- a/include/ratp_bb.h
+++ b/include/ratp_bb.h
@@ -8,6 +8,8 @@
 #define BB_RATP_TYPE_GETENV		3
 #define BB_RATP_TYPE_FS			4
 #define BB_RATP_TYPE_RESET		5
+#define BB_RATP_TYPE_MD			6
+#define BB_RATP_TYPE_MW			7
 
 #define BB_RATP_FLAG_NONE		0
 #define BB_RATP_FLAG_RESPONSE		(1 << 0) /* Packet is a response */
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
