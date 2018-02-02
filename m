Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ehZJ9-0004sR-Hu
 for barebox@lists.infradead.org; Fri, 02 Feb 2018 11:15:07 +0000
Received: by mail-wm0-x242.google.com with SMTP id 141so11536803wme.3
 for <barebox@lists.infradead.org>; Fri, 02 Feb 2018 03:14:52 -0800 (PST)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Fri,  2 Feb 2018 12:14:35 +0100
Message-Id: <20180202111442.12444-4-aleksander@aleksander.es>
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
Subject: [PATCH 03/10] ratp: port ping operation to req/rsp format
To: barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

The ping operation executed via RATP is processed in the following way:

 * The client sends a 'ping' packet to barebox.
 * Barebox replies with a 'pong' packet.

We now consolidate this process using the request and response
packet flags, and making them part of the same 'ping' packet type.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 common/ratp.c                | 12 ++++++------
 scripts/remote/controller.py | 14 +++++++-------
 scripts/remote/messages.py   | 18 ++++++++++--------
 3 files changed, 23 insertions(+), 21 deletions(-)

diff --git a/common/ratp.c b/common/ratp.c
index 7d7fb5fcd..222bf624a 100644
--- a/common/ratp.c
+++ b/common/ratp.c
@@ -32,8 +32,7 @@
 #include <fs.h>
 
 #define BB_RATP_TYPE_CONSOLE		1
-#define BB_RATP_TYPE_PING		4
-#define BB_RATP_TYPE_PONG		5
+#define BB_RATP_TYPE_PING		2
 #define BB_RATP_TYPE_GETENV		6
 #define BB_RATP_TYPE_GETENV_RETURN	7
 #define BB_RATP_TYPE_FS			8
@@ -169,7 +168,8 @@ static int ratp_bb_send_pong(struct ratp_ctx *ctx)
 	buf = xzalloc(len);
 	rbb = buf;
 
-	rbb->type = cpu_to_be16(BB_RATP_TYPE_PONG);
+	rbb->type = cpu_to_be16(BB_RATP_TYPE_PING);
+	rbb->flags = cpu_to_be16(BB_RATP_FLAG_RESPONSE);
 
 	ret = ratp_send(&ctx->ratp, buf, len);
 
@@ -231,10 +231,10 @@ static int ratp_bb_dispatch(struct ratp_ctx *ctx, const void *buf, int len)
 		pr_debug("got command: %s\n", ratp_command);
 		break;
 
-	case BB_RATP_TYPE_PONG:
-		break;
-
 	case BB_RATP_TYPE_PING:
+		if (flags & BB_RATP_FLAG_RESPONSE)
+			break;
+
 		ret = ratp_bb_send_pong(ctx);
 		break;
 
diff --git a/scripts/remote/controller.py b/scripts/remote/controller.py
index c3f29334a..518973038 100644
--- a/scripts/remote/controller.py
+++ b/scripts/remote/controller.py
@@ -32,11 +32,11 @@ def unpack(data):
         logging.debug("received: console request")
         return BBPacketConsoleRequest(raw=data)
     elif p_type == BBType.ping:
+        if p_flag & BBFlag.response:
+            logging.debug("received: pong")
+            return BBPacketPingResponse(raw=data)
         logging.debug("received: ping")
-        return BBPacketPing(raw=data)
-    elif p_type == BBType.pong:
-        logging.debug("received: pong")
-        return BBPacketPong(raw=data)
+        return BBPacketPingRequest(raw=data)
     elif p_type == BBType.getenv_return:
         logging.debug("received: getenv_return")
         return BBPacketGetenvReturn(raw=data)
@@ -92,8 +92,8 @@ class Controller(Thread):
         self.fsserver = RatpFSServer(path)
 
     def ping(self):
-        self._send(BBPacketPing())
-        r = self._expect(BBPacketPong)
+        self._send(BBPacketPingRequest())
+        r = self._expect(BBPacketPingResponse)
         logging.info("Ping: %r", r)
         if not r:
             return 1
@@ -157,7 +157,7 @@ class Controller(Thread):
         self._txq.put(BBPacketConsoleIndication(text=text))
 
     def send_async_ping(self):
-        self._txq.put(BBPacketPing())
+        self._txq.put(BBPacketPingRequest())
 
 
 def main():
diff --git a/scripts/remote/messages.py b/scripts/remote/messages.py
index 2f63f1831..6c5601d78 100644
--- a/scripts/remote/messages.py
+++ b/scripts/remote/messages.py
@@ -13,8 +13,7 @@ class BBFlag(object):
 
 class BBType(object):
     console = 1
-    ping = 4
-    pong = 5
+    ping = 2
     getenv = 6
     getenv_return = 7
     fs = 8
@@ -98,20 +97,23 @@ class BBPacketConsoleIndication(BBPacket):
         return self.text
 
 
-class BBPacketPing(BBPacket):
+class BBPacketPingRequest(BBPacket):
     def __init__(self, raw=None):
-        super(BBPacketPing, self).__init__(BBType.ping, raw=raw)
+        super(BBPacketPingRequest, self).__init__(BBType.ping,
+                                                  raw=raw)
 
     def __repr__(self):
-        return "BBPacketPing()"
+        return "BBPacketPingRequest()"
 
 
-class BBPacketPong(BBPacket):
+class BBPacketPingResponse(BBPacket):
     def __init__(self, raw=None):
-        super(BBPacketPong, self).__init__(BBType.pong, raw=raw)
+        super(BBPacketPingResponse, self).__init__(BBType.ping,
+                                                   BBFlag.response,
+                                                   raw=raw)
 
     def __repr__(self):
-        return "BBPacketPong()"
+        return "BBPacketPingResponse()"
 
 
 class BBPacketGetenv(BBPacket):
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
