Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x241.google.com ([2a00:1450:400c:c0c::241])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ehZJ8-0004sM-IK
 for barebox@lists.infradead.org; Fri, 02 Feb 2018 11:15:11 +0000
Received: by mail-wr0-x241.google.com with SMTP id 41so20803625wrc.9
 for <barebox@lists.infradead.org>; Fri, 02 Feb 2018 03:14:52 -0800 (PST)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Fri,  2 Feb 2018 12:14:34 +0100
Message-Id: <20180202111442.12444-3-aleksander@aleksander.es>
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
Subject: [PATCH 02/10] ratp: port command operation to req/rsp/ind format
To: barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

The commands executed by the client via RATP are processed in the
following way:

 * The client sends a 'command' packet to the barebox console.
 * The result (errno) of the command is returned to the client via a
   'command_return' message.
 * The standard output of the command executed is sent to the client
   via 'consolemsg' packets.

If the client doesn't need any explicit response to the command sent
(e.g. when simulating a console in the client side), it may also just
do the following:

 * The client sends 'consolemsg' packets to the barebox console.

We now consolidate this process using the request, response and
indication packet flags, and making them part of the same 'console'
packet type. In this specific message type, indications may be sent in
both directions.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 common/ratp.c                | 28 +++++++++++++++-------------
 scripts/remote/controller.py | 32 ++++++++++++++++----------------
 scripts/remote/messages.py   | 28 +++++++++++++++-------------
 3 files changed, 46 insertions(+), 42 deletions(-)

diff --git a/common/ratp.c b/common/ratp.c
index a1fa6fd5f..7d7fb5fcd 100644
--- a/common/ratp.c
+++ b/common/ratp.c
@@ -31,9 +31,7 @@
 #include <ratp_bb.h>
 #include <fs.h>
 
-#define BB_RATP_TYPE_COMMAND		1
-#define BB_RATP_TYPE_COMMAND_RETURN	2
-#define BB_RATP_TYPE_CONSOLEMSG		3
+#define BB_RATP_TYPE_CONSOLE		1
 #define BB_RATP_TYPE_PING		4
 #define BB_RATP_TYPE_PONG		5
 #define BB_RATP_TYPE_GETENV		6
@@ -120,7 +118,8 @@ static void ratp_queue_console_tx(struct ratp_ctx *ctx)
 	unsigned int now, maxlen = 255 - sizeof(*rbb);
 	int ret;
 
-	rbb->type = cpu_to_be16(BB_RATP_TYPE_CONSOLEMSG);
+	rbb->type = cpu_to_be16(BB_RATP_TYPE_CONSOLE);
+	rbb->flags = cpu_to_be16(BB_RATP_FLAG_INDICATION);
 
 	while (1) {
 		now = min(maxlen, kfifo_len(ctx->console_transmit_fifo));
@@ -149,7 +148,8 @@ static int ratp_bb_send_command_return(struct ratp_ctx *ctx, uint32_t errno)
 	rbb = buf;
 	rbb_ret = buf + sizeof(*rbb);
 
-	rbb->type = cpu_to_be16(BB_RATP_TYPE_COMMAND_RETURN);
+	rbb->type = cpu_to_be16(BB_RATP_TYPE_CONSOLE);
+	rbb->flags = cpu_to_be16(BB_RATP_FLAG_RESPONSE);
 	rbb_ret->errno = cpu_to_be32(errno);
 
 	ret = ratp_send(&ctx->ratp, buf, len);
@@ -211,27 +211,29 @@ static int ratp_bb_dispatch(struct ratp_ctx *ctx, const void *buf, int len)
 	int dlen = len - sizeof(struct ratp_bb);
 	char *varname;
 	int ret = 0;
+	uint16_t flags = be16_to_cpu(rbb->flags);
 
 	switch (be16_to_cpu(rbb->type)) {
-	case BB_RATP_TYPE_COMMAND:
+	case BB_RATP_TYPE_CONSOLE:
+		if (flags & BB_RATP_FLAG_RESPONSE)
+			break;
+
+		if (flags & BB_RATP_FLAG_INDICATION) {
+			kfifo_put(ctx->console_recv_fifo, rbb->data, dlen);
+			break;
+		}
+
 		if (ratp_command)
 			return 0;
 
 		ratp_command = xmemdup_add_zero(&rbb->data, dlen);
 		ratp_ctx = ctx;
 		pr_debug("got command: %s\n", ratp_command);
-
 		break;
 
-	case BB_RATP_TYPE_COMMAND_RETURN:
 	case BB_RATP_TYPE_PONG:
 		break;
 
-	case BB_RATP_TYPE_CONSOLEMSG:
-
-		kfifo_put(ctx->console_recv_fifo, rbb->data, dlen);
-		break;
-
 	case BB_RATP_TYPE_PING:
 		ret = ratp_bb_send_pong(ctx);
 		break;
diff --git a/scripts/remote/controller.py b/scripts/remote/controller.py
index a7257ecc9..c3f29334a 100644
--- a/scripts/remote/controller.py
+++ b/scripts/remote/controller.py
@@ -20,17 +20,17 @@ except:
 
 
 def unpack(data):
-    p_type, = struct.unpack("!H", data[:2])
-    logging.debug("unpack: %r data=%r", p_type, repr(data))
-    if p_type == BBType.command:
-        logging.debug("received: command")
-        return BBPacketCommand(raw=data)
-    elif p_type == BBType.command_return:
-        logging.debug("received: command_return")
-        return BBPacketCommandReturn(raw=data)
-    elif p_type == BBType.consolemsg:
-        logging.debug("received: consolemsg")
-        return BBPacketConsoleMsg(raw=data)
+    p_type, p_flag = struct.unpack("!HH", data[:4])
+    logging.debug("unpack: type %r flag %r data=%r", p_type, p_flag, repr(data))
+    if p_type == BBType.console:
+        if p_flag & BBFlag.response:
+            logging.debug("received: console response")
+            return BBPacketConsoleResponse(raw=data)
+        if p_flag & BBFlag.indication:
+            logging.debug("received: console indication")
+            return BBPacketConsoleIndication(raw=data)
+        logging.debug("received: console request")
+        return BBPacketConsoleRequest(raw=data)
     elif p_type == BBType.ping:
         logging.debug("received: ping")
         return BBPacketPing(raw=data)
@@ -67,7 +67,7 @@ class Controller(Thread):
         self.conn.send(bbpkt.pack())
 
     def _handle(self, bbpkt):
-        if isinstance(bbpkt, BBPacketConsoleMsg):
+        if isinstance(bbpkt, BBPacketConsoleIndication):
             os.write(sys.stdout.fileno(), bbpkt.text)
         elif isinstance(bbpkt, BBPacketPong):
             print("pong",)
@@ -102,8 +102,8 @@ class Controller(Thread):
             return 0
 
     def command(self, cmd):
-        self._send(BBPacketCommand(cmd=cmd))
-        r = self._expect(BBPacketCommandReturn, timeout=None)
+        self._send(BBPacketConsoleRequest(cmd=cmd))
+        r = self._expect(BBPacketConsoleResponse, timeout=None)
         logging.info("Command: %r", r)
         return r.exit_code
 
@@ -123,7 +123,7 @@ class Controller(Thread):
                 pkt = self.conn.recv()
                 if pkt:
                     bbpkt = unpack(pkt)
-                    if isinstance(bbpkt, BBPacketConsoleMsg):
+                    if isinstance(bbpkt, BBPacketConsoleIndication):
                         self.rxq.put((self, bbpkt.text))
                     else:
                         self._handle(bbpkt)
@@ -154,7 +154,7 @@ class Controller(Thread):
         self._txq.put(pkt)
 
     def send_async_console(self, text):
-        self._txq.put(BBPacketConsoleMsg(text=text))
+        self._txq.put(BBPacketConsoleIndication(text=text))
 
     def send_async_ping(self):
         self._txq.put(BBPacketPing())
diff --git a/scripts/remote/messages.py b/scripts/remote/messages.py
index 7a597bc9d..2f63f1831 100644
--- a/scripts/remote/messages.py
+++ b/scripts/remote/messages.py
@@ -12,9 +12,7 @@ class BBFlag(object):
 
 
 class BBType(object):
-    command = 1
-    command_return = 2
-    consolemsg = 3
+    console = 1
     ping = 4
     pong = 5
     getenv = 6
@@ -50,13 +48,14 @@ class BBPacket(object):
             self._pack_payload()
 
 
-class BBPacketCommand(BBPacket):
+class BBPacketConsoleRequest(BBPacket):
     def __init__(self, raw=None, cmd=None):
         self.cmd = cmd
-        super(BBPacketCommand, self).__init__(BBType.command, raw=raw)
+        super(BBPacketConsoleRequest, self).__init__(BBType.console,
+                                                     raw=raw)
 
     def __repr__(self):
-        return "BBPacketCommand(cmd=%r)" % self.cmd
+        return "BBPacketConsoleRequest(cmd=%r)" % self.cmd
 
     def _unpack_payload(self, payload):
         self.cmd = payload
@@ -65,14 +64,15 @@ class BBPacketCommand(BBPacket):
         return self.cmd
 
 
-class BBPacketCommandReturn(BBPacket):
+class BBPacketConsoleResponse(BBPacket):
     def __init__(self, raw=None, exit_code=None):
         self.exit_code = exit_code
-        super(BBPacketCommandReturn, self).__init__(BBType.command_return,
-                                                    raw=raw)
+        super(BBPacketConsoleResponse, self).__init__(BBType.console,
+                                                      BBFlag.response,
+                                                      raw=raw)
 
     def __repr__(self):
-        return "BBPacketCommandReturn(exit_code=%i)" % self.exit_code
+        return "BBPacketConsoleResponse(exit_code=%i)" % self.exit_code
 
     def _unpack_payload(self, data):
         self.exit_code, = struct.unpack("!L", data[:4])
@@ -81,13 +81,15 @@ class BBPacketCommandReturn(BBPacket):
         return struct.pack("!L", self.exit_code)
 
 
-class BBPacketConsoleMsg(BBPacket):
+class BBPacketConsoleIndication(BBPacket):
     def __init__(self, raw=None, text=None):
         self.text = text
-        super(BBPacketConsoleMsg, self).__init__(BBType.consolemsg, raw=raw)
+        super(BBPacketConsoleIndication, self).__init__(BBType.console,
+                                                        BBFlag.indication,
+                                                        raw=raw)
 
     def __repr__(self):
-        return "BBPacketConsoleMsg(text=%r)" % self.text
+        return "BBPacketConsoleIndication(text=%r)" % self.text
 
     def _unpack_payload(self, payload):
         self.text = payload
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
