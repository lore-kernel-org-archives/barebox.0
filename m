Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ehZJB-0004se-Hj
 for barebox@lists.infradead.org; Fri, 02 Feb 2018 11:15:12 +0000
Received: by mail-wm0-x243.google.com with SMTP id v71so11594535wmv.2
 for <barebox@lists.infradead.org>; Fri, 02 Feb 2018 03:14:55 -0800 (PST)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Fri,  2 Feb 2018 12:14:37 +0100
Message-Id: <20180202111442.12444-6-aleksander@aleksander.es>
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
Subject: [PATCH 05/10] ratp: port filesystem operation to req/rsp format
To: barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

The filesystem operation executed via RATP is processed in the
following way:

 * The barebox RATP endpoint sends 'fs' packets to the client, with
   the specific filesystem operations to execute.
 * The client replies with 'fs_result' packets to barebox, containing
   the result of the filesystem operation.

We now consolidate this process using the request and response
packet flags, and making them part of the same 'fs' packet type.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 common/ratp.c                |  9 ++++++---
 scripts/remote/controller.py | 12 ++++++------
 scripts/remote/messages.py   | 20 ++++++++++++--------
 scripts/remote/ratpfs.py     |  6 +++---
 4 files changed, 27 insertions(+), 20 deletions(-)

diff --git a/common/ratp.c b/common/ratp.c
index 2423c0651..79b0a9906 100644
--- a/common/ratp.c
+++ b/common/ratp.c
@@ -34,8 +34,7 @@
 #define BB_RATP_TYPE_CONSOLE		1
 #define BB_RATP_TYPE_PING		2
 #define BB_RATP_TYPE_GETENV		3
-#define BB_RATP_TYPE_FS			8
-#define BB_RATP_TYPE_FS_RETURN		9
+#define BB_RATP_TYPE_FS			4
 
 #define BB_RATP_FLAG_NONE		0
 #define BB_RATP_FLAG_RESPONSE		(1 << 0) /* Packet is a response */
@@ -246,7 +245,11 @@ static int ratp_bb_dispatch(struct ratp_ctx *ctx, const void *buf, int len)
 		ret = ratp_bb_send_getenv_return(ctx, getenv(varname));
 		break;
 
-	case BB_RATP_TYPE_FS_RETURN:
+	case BB_RATP_TYPE_FS:
+		/* Only responses expected */
+		if (!(flags & BB_RATP_FLAG_RESPONSE))
+			break;
+
 		pkt = xzalloc(sizeof(*pkt) + dlen);
 		pkt->len = dlen;
 		memcpy(pkt->data, &rbb->data, dlen);
diff --git a/scripts/remote/controller.py b/scripts/remote/controller.py
index 29aa42ad9..db4af3120 100644
--- a/scripts/remote/controller.py
+++ b/scripts/remote/controller.py
@@ -44,11 +44,11 @@ def unpack(data):
         logging.debug("received: getenv")
         return BBPacketGetenvRequest(raw=data)
     elif p_type == BBType.fs:
-        logging.debug("received: fs")
-        return BBPacketFS(raw=data)
-    elif p_type == BBType.fs_return:
-        logging.debug("received: fs_return")
-        return BBPacketFSReturn(raw=data)
+        if p_flag & BBFlag.response:
+            logging.debug("received: fs response")
+            return BBPacketFsResponse(raw=data)
+        logging.debug("received: fs request")
+        return BBPacketFsRequest(raw=data)
     else:
         logging.debug("received: UNKNOWN")
         return BBPacket(raw=data)
@@ -74,7 +74,7 @@ class Controller(Thread):
             os.write(sys.stdout.fileno(), bbpkt.text)
         elif isinstance(bbpkt, BBPacketPong):
             print("pong",)
-        elif isinstance(bbpkt, BBPacketFS):
+        elif isinstance(bbpkt, BBPacketFsRequest):
             if self.fsserver != None:
                 self._send(self.fsserver.handle(bbpkt))
 
diff --git a/scripts/remote/messages.py b/scripts/remote/messages.py
index 88841f4f6..98dda8b79 100644
--- a/scripts/remote/messages.py
+++ b/scripts/remote/messages.py
@@ -15,8 +15,7 @@ class BBType(object):
     console = 1
     ping = 2
     getenv = 3
-    fs = 8
-    fs_return = 9
+    fs = 4
 
 
 class BBPacket(object):
@@ -148,17 +147,22 @@ class BBPacketGetenvResponse(BBPacket):
         return self.text
 
 
-class BBPacketFS(BBPacket):
+class BBPacketFsRequest(BBPacket):
     def __init__(self, raw=None, payload=None):
-        super(BBPacketFS, self).__init__(BBType.fs, payload=payload, raw=raw)
+        super(BBPacketFsRequest, self).__init__(BBType.fs,
+                                                payload=payload,
+                                                raw=raw)
 
     def __repr__(self):
-        return "BBPacketFS(payload=%r)" % self.payload
+        return "BBPacketFsRequest(payload=%r)" % self.payload
 
 
-class BBPacketFSReturn(BBPacket):
+class BBPacketFsResponse(BBPacket):
     def __init__(self, raw=None, payload=None):
-        super(BBPacketFSReturn, self).__init__(BBType.fs_return, payload=payload, raw=raw)
+        super(BBPacketFsResponse, self).__init__(BBType.fs,
+                                                 BBFlag.response,
+                                                 payload=payload,
+                                                 raw=raw)
 
     def __repr__(self):
-        return "BBPacketFSReturn(payload=%r)" % self.payload
+        return "BBPacketFsResponse(payload=%r)" % self.payload
diff --git a/scripts/remote/ratpfs.py b/scripts/remote/ratpfs.py
index 91ca04454..9e88b03a6 100644
--- a/scripts/remote/ratpfs.py
+++ b/scripts/remote/ratpfs.py
@@ -9,7 +9,7 @@ import stat
 import struct
 from enum import IntEnum
 
-from .messages import BBPacketFS, BBPacketFSReturn
+from .messages import BBPacketFsRequest, BBPacketFsResponse
 
 class RatpFSType(IntEnum):
     invalid = 0
@@ -138,7 +138,7 @@ class RatpFSServer(object):
         return ""
 
     def handle(self, bbcall):
-        assert isinstance(bbcall, BBPacketFS)
+        assert isinstance(bbcall, BBPacketFsRequest)
         logging.debug("bb-call: %s", bbcall)
         fscall = RatpFSPacket(raw=bbcall.payload)
         logging.info("fs-call: %s", fscall)
@@ -184,6 +184,6 @@ class RatpFSServer(object):
             raise RatpFSError()
 
         logging.info("fs-return: %s", fsreturn)
-        bbreturn = BBPacketFSReturn(payload=fsreturn.pack())
+        bbreturn = BBPacketFsResponse(payload=fsreturn.pack())
         logging.debug("bb-return: %s", bbreturn)
         return bbreturn
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
