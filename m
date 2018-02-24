Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22b.google.com ([2a00:1450:400c:c09::22b])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1epbKe-0004Hf-Ql
 for barebox@lists.infradead.org; Sat, 24 Feb 2018 15:02:09 +0000
Received: by mail-wm0-x22b.google.com with SMTP id x7so7319742wmc.0
 for <barebox@lists.infradead.org>; Sat, 24 Feb 2018 07:01:38 -0800 (PST)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Sat, 24 Feb 2018 16:01:19 +0100
Message-Id: <20180224150121.28309-8-aleksander@aleksander.es>
In-Reply-To: <20180224150121.28309-1-aleksander@aleksander.es>
References: <20180224150121.28309-1-aleksander@aleksander.es>
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
Subject: [PATCH v3 7/9] ratp: new md and mw commands
To: barebox@lists.infradead.org, s.hauer@pengutronix.de
Cc: Aleksander Morgado <aleksander@aleksander.es>

This commit introduces support for running the md and mw commands
using the binary interface provided by RATP. This allows clients to
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

E.g.:
    $ ./bbremote --port /dev/ttyUSB2 md /dev/pic_eeprom_rdu 0x107 5
    0000000000

    $ ./bbremote --port /dev/ttyUSB2 mw /dev/pic_eeprom_rdu 0x107 0102030405
    5 bytes written

    $ ./bbremote --port /dev/ttyUSB2 md /dev/pic_eeprom_rdu 0x107 5
    0102030405

    $ ./bbremote --port /dev/ttyUSB2 mw /dev/pic_eeprom_rdu 0x107 0000000000
    5 bytes written

    $ ./bbremote --port /dev/ttyUSB2 md /dev/pic_eeprom_rdu 0x107 5
    0000000000

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 common/ratp/Makefile         |   2 +
 common/ratp/md.c             | 202 +++++++++++++++++++++++++++++++++++++++++++
 common/ratp/mw.c             | 173 ++++++++++++++++++++++++++++++++++++
 include/ratp_bb.h            |   4 +
 scripts/remote/controller.py |  24 +++++
 scripts/remote/main.py       |  38 ++++++++
 scripts/remote/messages.py   |  89 +++++++++++++++++++
 7 files changed, 532 insertions(+)
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
index 000000000..9b8fc2bc5
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
+		return -errno;
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
+		printf("ratp mw ignored: size mismatch (%d < %hu): path may not be fully given\n",
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
index 000000000..7d6df3d0a
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
+	uint16_t written;
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
+		printf("ratp mw ignored: size mismatch (%d < %hu): path or data not be fully given\n",
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
diff --git a/scripts/remote/controller.py b/scripts/remote/controller.py
index a7257ecc9..eaab9f8f6 100644
--- a/scripts/remote/controller.py
+++ b/scripts/remote/controller.py
@@ -46,6 +46,18 @@ def unpack(data):
     elif p_type == BBType.fs_return:
         logging.debug("received: fs_return")
         return BBPacketFSReturn(raw=data)
+    elif p_type == BBType.md:
+        logging.debug("received: md")
+        return BBPacketMd(raw=data)
+    elif p_type == BBType.md_return:
+        logging.debug("received: md_return")
+        return BBPacketMdReturn(raw=data)
+    elif p_type == BBType.mw:
+        logging.debug("received: mw")
+        return BBPacketMw(raw=data)
+    elif p_type == BBType.mw_return:
+        logging.debug("received: mw_return")
+        return BBPacketMwReturn(raw=data)
     else:
         logging.debug("received: UNKNOWN")
         return BBPacket(raw=data)
@@ -112,6 +124,18 @@ class Controller(Thread):
         r = self._expect(BBPacketGetenvReturn)
         return r.text
 
+    def md(self, path, addr, size):
+        self._send(BBPacketMd(path=path, addr=addr, size=size))
+        r = self._expect(BBPacketMdReturn)
+        logging.info("Md return: %r", r)
+        return (r.exit_code,r.data)
+
+    def mw(self, path, addr, data):
+        self._send(BBPacketMw(path=path, addr=addr, data=data))
+        r = self._expect(BBPacketMwReturn)
+        logging.info("Mw return: %r", r)
+        return (r.exit_code,r.written)
+
     def close(self):
         self.conn.close()
 
diff --git a/scripts/remote/main.py b/scripts/remote/main.py
index 79203df05..29f601e9f 100644
--- a/scripts/remote/main.py
+++ b/scripts/remote/main.py
@@ -5,6 +5,7 @@ from __future__ import absolute_import, division, print_function
 import sys
 import os
 import argparse
+import binascii
 import logging
 from Queue import Queue
 from .ratp import RatpError
@@ -76,6 +77,27 @@ def handle_getenv(args):
     return res
 
 
+def handle_md(args):
+    ctrl = get_controller(args)
+    (res,data) = ctrl.md(args.path, args.address, args.size)
+    if res == 0:
+        print(binascii.hexlify(data))
+    ctrl.close()
+    return res
+
+
+def handle_mw(args):
+    ctrl = get_controller(args)
+    data=args.data
+    if ((len(data) % 2) != 0):
+        data="0"+data
+    (res,written) = ctrl.mw(args.path, args.address, binascii.unhexlify(data))
+    if res == 0:
+        print("%i bytes written" % written)
+    ctrl.close()
+    return res
+
+
 def handle_listen(args):
     port = serial.serial_for_url(args.port, args.baudrate)
     conn = SerialRatpConnection(port)
@@ -118,6 +140,10 @@ def handle_console(args):
             ctrl.conn.total_retransmits,
             ctrl.conn.total_crc_errors))
 
+# Support base 10 or base 16 numbers automatically
+def auto_int(x):
+    return int(x, 0)
+
 VERBOSITY = {
     0: logging.WARN,
     1: logging.INFO,
@@ -143,6 +169,18 @@ parser_getenv = subparsers.add_parser('getenv', help="get a barebox environment
 parser_getenv.add_argument('arg', nargs='+', help="variable name")
 parser_getenv.set_defaults(func=handle_getenv)
 
+parser_md = subparsers.add_parser('md', help="run md command")
+parser_md.add_argument('path', help="path")
+parser_md.add_argument('address', type=auto_int, help="address")
+parser_md.add_argument('size', type=auto_int, help="size")
+parser_md.set_defaults(func=handle_md)
+
+parser_mw = subparsers.add_parser('mw', help="run mw command")
+parser_mw.add_argument('path', help="path")
+parser_mw.add_argument('address', type=auto_int, help="address")
+parser_mw.add_argument('data', help="data")
+parser_mw.set_defaults(func=handle_mw)
+
 parser_listen = subparsers.add_parser('listen', help="listen for an incoming connection")
 parser_listen.set_defaults(func=handle_listen)
 
diff --git a/scripts/remote/messages.py b/scripts/remote/messages.py
index 8e8495b12..4f4d8e97f 100644
--- a/scripts/remote/messages.py
+++ b/scripts/remote/messages.py
@@ -4,6 +4,7 @@
 from __future__ import absolute_import, division, print_function
 
 import struct
+import binascii
 
 
 class BBType(object):
@@ -16,6 +17,10 @@ class BBType(object):
     getenv_return = 7
     fs = 8
     fs_return = 9
+    md = 10
+    md_return = 11
+    mw = 12
+    mw_return = 13
 
 
 class BBPacket(object):
@@ -152,3 +157,87 @@ class BBPacketFSReturn(BBPacket):
 
     def __repr__(self):
         return "BBPacketFSReturn(payload=%r)" % self.payload
+
+
+class BBPacketMd(BBPacket):
+    def __init__(self, raw=None, path=None, addr=None, size=None):
+        self.path = path
+        self.addr = addr
+        self.size = size
+        super(BBPacketMd, self).__init__(BBType.md, raw=raw)
+
+    def __repr__(self):
+        return "BBPacketMd(path=%r,addr=0x%x,size=%u)" % (self.path, self.addr, self.size)
+
+    def _unpack_payload(self, payload):
+        buffer_offset, self.addr, self.size, path_size, path_offset = struct.unpack("!HHHHH", payload[:10])
+        # header size is always 4 bytes (HH), so adjust the absolute data offset without the header size
+        absolute_path_offset = buffer_offset + path_offset - 4
+        self.path = payload[absolute_path_offset:absolute_path_offset+path_size]
+
+    def _pack_payload(self):
+        # header size is always 4 bytes (HH) and we have 10 bytes of fixed data (HHHHH), so buffer offset is 14
+        return struct.pack("!HHHHH%ds" % len(self.path), 14, self.addr, self.size, len(self.path), 0, self.path)
+
+
+class BBPacketMdReturn(BBPacket):
+    def __init__(self, raw=None, exit_code=None, data=None):
+        self.exit_code = exit_code
+        self.data = data
+        super(BBPacketMdReturn, self).__init__(BBType.md_return, raw=raw)
+
+    def __repr__(self):
+        return "BBPacketMdReturn(exit_code=%i, data=%s)" % (self.exit_code, binascii.hexlify(self.data))
+
+    def _unpack_payload(self, payload):
+        buffer_offset, self.exit_code, data_size, data_offset = struct.unpack("!HLHH", payload[:10])
+        # header size is always 4 bytes (HH), so adjust the absolute data offset without the header size
+        absolute_data_offset = buffer_offset + data_offset - 4
+        self.data = payload[absolute_data_offset:absolute_data_offset + data_size]
+
+    def _pack_payload(self):
+        # header size is always 4 bytes (HH) and we have 10 bytes of fixed data (HLHH), so buffer offset is 14
+        return struct.pack("!HLHH%ds" % len(self.data), 14, self.exit_code, len(self.data), 0, self.data)
+        return self.text
+
+
+class BBPacketMw(BBPacket):
+    def __init__(self, raw=None, path=None, addr=None, data=None):
+        self.path = path
+        self.addr = addr
+        self.data = data
+        super(BBPacketMw, self).__init__(BBType.mw, raw=raw)
+
+    def __repr__(self):
+        return "BBPacketMw(path=%r,addr=0x%x,data=%r)" % (self.path, self.addr, self.data)
+
+    def _unpack_payload(self, payload):
+        buffer_offset, self.addr, path_size, path_offset, data_size, data_offset = struct.unpack("!HHHHHH", payload[:12])
+        # header size is always 4 bytes (HH), so adjust the absolute data offset without the header size
+        absolute_path_offset = buffer_offset + path_offset - 4
+        self.path = payload[absolute_path_offset:absolute_path_offset+path_size]
+        absolute_data_offset = buffer_offset + data_offset - 4
+        self.data = payload[absolute_data_offset:absolute_data_offset+data_size]
+
+    def _pack_payload(self):
+        # header size is always 4 bytes (HH) and we have 12 bytes of fixed data (HHHHHH), so buffer offset is 16
+        path_size = len(self.path)
+        data_size = len(self.data)
+        return struct.pack("!HHHHHH%ds%ds" % (path_size, path_size), 16, self.addr, path_size, 0, data_size, path_size, self.path, self.data)
+
+
+class BBPacketMwReturn(BBPacket):
+    def __init__(self, raw=None, exit_code=None, written=None):
+        self.exit_code = exit_code
+        self.written = written
+        super(BBPacketMwReturn, self).__init__(BBType.mw_return, raw=raw)
+
+    def __repr__(self):
+        return "BBPacketMwReturn(exit_code=%i, written=%i)" % (self.exit_code, self.written)
+
+    def _unpack_payload(self, payload):
+        buffer_offset, self.exit_code, self.written = struct.unpack("!HLH", payload[:8])
+
+    def _pack_payload(self):
+        # header size is always 4 bytes (HH) and we have 8 bytes of fixed data (HLH), so buffer offset is 14
+        return struct.pack("!HLH", 12, self.exit_code, self.written)
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
