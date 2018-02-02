Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x244.google.com ([2a00:1450:400c:c0c::244])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ehZJA-0004sY-KD
 for barebox@lists.infradead.org; Fri, 02 Feb 2018 11:15:14 +0000
Received: by mail-wr0-x244.google.com with SMTP id a43so14634328wrc.4
 for <barebox@lists.infradead.org>; Fri, 02 Feb 2018 03:14:54 -0800 (PST)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Fri,  2 Feb 2018 12:14:36 +0100
Message-Id: <20180202111442.12444-5-aleksander@aleksander.es>
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
Subject: [PATCH 04/10] ratp: port getenv operation to req/rsp format
To: barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

The getenv operation executed via RATP is processed in the following
way:

 * The client sends a 'getenv' packet to barebox specifying the name
   of the variable to read.
 * Barebox replies with a 'getenv_result' packet including the value
   of the variable read.

We now consolidate this process using the request and response
packet flags, and making them part of the same 'getenv' packet type.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 common/ratp.c                | 10 ++++++----
 scripts/remote/controller.py | 13 ++++++++-----
 scripts/remote/messages.py   | 19 ++++++++++---------
 3 files changed, 24 insertions(+), 18 deletions(-)

diff --git a/common/ratp.c b/common/ratp.c
index 222bf624a..2423c0651 100644
--- a/common/ratp.c
+++ b/common/ratp.c
@@ -33,8 +33,7 @@
 
 #define BB_RATP_TYPE_CONSOLE		1
 #define BB_RATP_TYPE_PING		2
-#define BB_RATP_TYPE_GETENV		6
-#define BB_RATP_TYPE_GETENV_RETURN	7
+#define BB_RATP_TYPE_GETENV		3
 #define BB_RATP_TYPE_FS			8
 #define BB_RATP_TYPE_FS_RETURN		9
 
@@ -192,7 +191,8 @@ static int ratp_bb_send_getenv_return(struct ratp_ctx *ctx, const char *val)
 	rbb = buf;
 	strcpy(rbb->data, val);
 
-	rbb->type = cpu_to_be16(BB_RATP_TYPE_GETENV_RETURN);
+	rbb->type = cpu_to_be16(BB_RATP_TYPE_GETENV);
+	rbb->flags = cpu_to_be16(BB_RATP_FLAG_RESPONSE);
 
 	ret = ratp_send(&ctx->ratp, buf, len);
 
@@ -239,8 +239,10 @@ static int ratp_bb_dispatch(struct ratp_ctx *ctx, const void *buf, int len)
 		break;
 
 	case BB_RATP_TYPE_GETENV:
-		varname = xmemdup_add_zero(&rbb->data, dlen);
+		if (flags & BB_RATP_FLAG_RESPONSE)
+			break;
 
+		varname = xmemdup_add_zero(&rbb->data, dlen);
 		ret = ratp_bb_send_getenv_return(ctx, getenv(varname));
 		break;
 
diff --git a/scripts/remote/controller.py b/scripts/remote/controller.py
index 518973038..29aa42ad9 100644
--- a/scripts/remote/controller.py
+++ b/scripts/remote/controller.py
@@ -37,9 +37,12 @@ def unpack(data):
             return BBPacketPingResponse(raw=data)
         logging.debug("received: ping")
         return BBPacketPingRequest(raw=data)
-    elif p_type == BBType.getenv_return:
-        logging.debug("received: getenv_return")
-        return BBPacketGetenvReturn(raw=data)
+    elif p_type == BBType.getenv:
+        if p_flag & BBFlag.response:
+            logging.debug("received: getenv response")
+            return BBPacketGetenvResponse(raw=data)
+        logging.debug("received: getenv")
+        return BBPacketGetenvRequest(raw=data)
     elif p_type == BBType.fs:
         logging.debug("received: fs")
         return BBPacketFS(raw=data)
@@ -108,8 +111,8 @@ class Controller(Thread):
         return r.exit_code
 
     def getenv(self, varname):
-        self._send(BBPacketGetenv(varname=varname))
-        r = self._expect(BBPacketGetenvReturn)
+        self._send(BBPacketGetenvRequest(varname=varname))
+        r = self._expect(BBPacketGetenvResponse)
         return r.text
 
     def close(self):
diff --git a/scripts/remote/messages.py b/scripts/remote/messages.py
index 6c5601d78..88841f4f6 100644
--- a/scripts/remote/messages.py
+++ b/scripts/remote/messages.py
@@ -14,8 +14,7 @@ class BBFlag(object):
 class BBType(object):
     console = 1
     ping = 2
-    getenv = 6
-    getenv_return = 7
+    getenv = 3
     fs = 8
     fs_return = 9
 
@@ -116,13 +115,14 @@ class BBPacketPingResponse(BBPacket):
         return "BBPacketPingResponse()"
 
 
-class BBPacketGetenv(BBPacket):
+class BBPacketGetenvRequest(BBPacket):
     def __init__(self, raw=None, varname=None):
         self.varname = varname
-        super(BBPacketGetenv, self).__init__(BBType.getenv, raw=raw)
+        super(BBPacketGetenvRequest, self).__init__(BBType.getenv,
+                                                    raw=raw)
 
     def __repr__(self):
-        return "BBPacketGetenv(varname=%r)" % self.varname
+        return "BBPacketGetenvRequest(varname=%r)" % self.varname
 
     def _unpack_payload(self, payload):
         self.varname = payload
@@ -131,14 +131,15 @@ class BBPacketGetenv(BBPacket):
         return self.varname
 
 
-class BBPacketGetenvReturn(BBPacket):
+class BBPacketGetenvResponse(BBPacket):
     def __init__(self, raw=None, text=None):
         self.text = text
-        super(BBPacketGetenvReturn, self).__init__(BBType.getenv_return,
-                                                   raw=raw)
+        super(BBPacketGetenvResponse, self).__init__(BBType.getenv,
+                                                     BBFlag.response,
+                                                     raw=raw)
 
     def __repr__(self):
-        return "BBPacketGetenvReturn(varvalue=%s)" % self.text
+        return "BBPacketGetenvResponse(varvalue=%s)" % self.text
 
     def _unpack_payload(self, payload):
         self.text = payload
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
