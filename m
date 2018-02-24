Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x241.google.com ([2a00:1450:400c:c0c::241])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1epbKX-0004He-PB
 for barebox@lists.infradead.org; Sat, 24 Feb 2018 15:01:45 +0000
Received: by mail-wr0-x241.google.com with SMTP id s5so16893485wra.0
 for <barebox@lists.infradead.org>; Sat, 24 Feb 2018 07:01:37 -0800 (PST)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Sat, 24 Feb 2018 16:01:20 +0100
Message-Id: <20180224150121.28309-9-aleksander@aleksander.es>
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
Subject: [PATCH v3 8/9] ratp: new reset command
To: barebox@lists.infradead.org, s.hauer@pengutronix.de
Cc: Aleksander Morgado <aleksander@aleksander.es>

E.g.:
    $ ./bbremote -v --port /dev/ttyUSB2 reset

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 common/ratp/Makefile         |  1 +
 common/ratp/reset.c          | 55 ++++++++++++++++++++++++++++++++++++++++++++
 include/ratp_bb.h            |  1 +
 scripts/remote/controller.py |  9 +++++---
 scripts/remote/main.py       | 13 +++++++++++
 scripts/remote/messages.py   | 16 +++++++++++++
 6 files changed, 92 insertions(+), 3 deletions(-)
 create mode 100644 common/ratp/reset.c

diff --git a/common/ratp/Makefile b/common/ratp/Makefile
index d4cfdf95f..2c6d674f6 100644
--- a/common/ratp/Makefile
+++ b/common/ratp/Makefile
@@ -3,3 +3,4 @@ obj-y += ping.o
 obj-y += getenv.o
 obj-y += md.o
 obj-y += mw.o
+obj-y += reset.o
diff --git a/common/ratp/reset.c b/common/ratp/reset.c
new file mode 100644
index 000000000..ca8be4e62
--- /dev/null
+++ b/common/ratp/reset.c
@@ -0,0 +1,55 @@
+/*
+ * reset.c - reset the cpu
+ *
+ * Copyright (c) 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
+#include <command.h>
+#include <ratp_bb.h>
+#include <complete.h>
+#include <getopt.h>
+#include <restart.h>
+
+struct ratp_bb_reset {
+	struct ratp_bb header;
+	uint8_t        force;
+} __attribute__((packed));
+
+static int ratp_cmd_reset(const struct ratp_bb *req, int req_len,
+			  struct ratp_bb **rsp, int *rsp_len)
+{
+	struct ratp_bb_reset *reset_req = (struct ratp_bb_reset *)req;
+
+	if (req_len < sizeof (*reset_req)) {
+		printf ("ratp reset ignored: size mismatch (%d < %zu)\n", req_len, sizeof (*reset_req));
+		return 2;
+	}
+
+	debug("running reset %s\n", reset_req->force ? "(forced)" : "");
+
+	if (!reset_req->force)
+		shutdown_barebox();
+
+	restart_machine();
+	/* Not reached */
+	return 1;
+}
+
+BAREBOX_RATP_CMD_START(RESET)
+	.request_id = BB_RATP_TYPE_RESET,
+	.cmd = ratp_cmd_reset
+BAREBOX_RATP_CMD_END
diff --git a/include/ratp_bb.h b/include/ratp_bb.h
index 00b165f77..3a80cf6ae 100644
--- a/include/ratp_bb.h
+++ b/include/ratp_bb.h
@@ -16,6 +16,7 @@
 #define BB_RATP_TYPE_MD_RETURN		11
 #define BB_RATP_TYPE_MW			12
 #define BB_RATP_TYPE_MW_RETURN		13
+#define BB_RATP_TYPE_RESET		14
 
 struct ratp_bb {
 	uint16_t type;
diff --git a/scripts/remote/controller.py b/scripts/remote/controller.py
index eaab9f8f6..2ed834613 100644
--- a/scripts/remote/controller.py
+++ b/scripts/remote/controller.py
@@ -46,9 +46,6 @@ def unpack(data):
     elif p_type == BBType.fs_return:
         logging.debug("received: fs_return")
         return BBPacketFSReturn(raw=data)
-    elif p_type == BBType.md:
-        logging.debug("received: md")
-        return BBPacketMd(raw=data)
     elif p_type == BBType.md_return:
         logging.debug("received: md_return")
         return BBPacketMdReturn(raw=data)
@@ -58,6 +55,9 @@ def unpack(data):
     elif p_type == BBType.mw_return:
         logging.debug("received: mw_return")
         return BBPacketMwReturn(raw=data)
+    elif p_type == BBType.reset:
+        logging.debug("received: reset")
+        return BBPacketReset(raw=data)
     else:
         logging.debug("received: UNKNOWN")
         return BBPacket(raw=data)
@@ -136,6 +136,9 @@ class Controller(Thread):
         logging.info("Mw return: %r", r)
         return (r.exit_code,r.written)
 
+    def reset(self, force):
+        self._send(BBPacketReset(force=force))
+
     def close(self):
         self.conn.close()
 
diff --git a/scripts/remote/main.py b/scripts/remote/main.py
index 29f601e9f..38d280bfe 100644
--- a/scripts/remote/main.py
+++ b/scripts/remote/main.py
@@ -98,6 +98,13 @@ def handle_mw(args):
     return res
 
 
+def handle_reset(args):
+    ctrl = get_controller(args)
+    ctrl.reset(args.force)
+    ctrl.close()
+    return 0
+
+
 def handle_listen(args):
     port = serial.serial_for_url(args.port, args.baudrate)
     conn = SerialRatpConnection(port)
@@ -181,6 +188,12 @@ parser_mw.add_argument('address', type=auto_int, help="address")
 parser_mw.add_argument('data', help="data")
 parser_mw.set_defaults(func=handle_mw)
 
+parser_reset = subparsers.add_parser('reset', help="run reset command")
+parser_reset_force = parser_reset.add_mutually_exclusive_group(required=False)
+parser_reset_force.add_argument('--force', dest='force', action='store_true')
+parser_reset_force.add_argument('--no-force', dest='force', action='store_false')
+parser_reset.set_defaults(func=handle_reset,force=False)
+
 parser_listen = subparsers.add_parser('listen', help="listen for an incoming connection")
 parser_listen.set_defaults(func=handle_listen)
 
diff --git a/scripts/remote/messages.py b/scripts/remote/messages.py
index 4f4d8e97f..729f2e617 100644
--- a/scripts/remote/messages.py
+++ b/scripts/remote/messages.py
@@ -21,6 +21,7 @@ class BBType(object):
     md_return = 11
     mw = 12
     mw_return = 13
+    reset = 14
 
 
 class BBPacket(object):
@@ -241,3 +242,18 @@ class BBPacketMwReturn(BBPacket):
     def _pack_payload(self):
         # header size is always 4 bytes (HH) and we have 8 bytes of fixed data (HLH), so buffer offset is 14
         return struct.pack("!HLH", 12, self.exit_code, self.written)
+
+
+class BBPacketReset(BBPacket):
+    def __init__(self, raw=None, force=None):
+        self.force = force
+        super(BBPacketReset, self).__init__(BBType.reset, raw=raw)
+
+    def __repr__(self):
+        return "BBPacketReset(force=%c)" % (self.force)
+
+    def _unpack_payload(self, payload):
+        self.force = struct.unpack("?", payload[:1])
+
+    def _pack_payload(self):
+        return struct.pack("?", self.force)
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
