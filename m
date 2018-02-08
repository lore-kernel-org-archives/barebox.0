Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x244.google.com ([2a00:1450:400c:c09::244])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ejmAg-0002ML-A2
 for barebox@lists.infradead.org; Thu, 08 Feb 2018 13:23:27 +0000
Received: by mail-wm0-x244.google.com with SMTP id f71so9442883wmf.0
 for <barebox@lists.infradead.org>; Thu, 08 Feb 2018 05:23:15 -0800 (PST)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Thu,  8 Feb 2018 14:22:57 +0100
Message-Id: <20180208132301.24921-5-aleksander@aleksander.es>
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
Subject: [RFC PATCH v2 4/8] ratp: implement ping as a standard ratp command
To: barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 common/ratp/Makefile |  1 +
 common/ratp/ping.c   | 40 ++++++++++++++++++++++++++++++++++++++++
 common/ratp/ratp.c   | 24 ------------------------
 3 files changed, 41 insertions(+), 24 deletions(-)
 create mode 100644 common/ratp/ping.c

diff --git a/common/ratp/Makefile b/common/ratp/Makefile
index cab14c6fb..acad61ee5 100644
--- a/common/ratp/Makefile
+++ b/common/ratp/Makefile
@@ -1 +1,2 @@
 obj-y += ratp.o
+obj-y += ping.o
diff --git a/common/ratp/ping.c b/common/ratp/ping.c
new file mode 100644
index 000000000..cc29ea36c
--- /dev/null
+++ b/common/ratp/ping.c
@@ -0,0 +1,40 @@
+/*
+ * Copyright (c) 2018 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
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
+/*
+ * RATP ping
+ */
+
+#include <common.h>
+#include <ratp_bb.h>
+#include <malloc.h>
+
+static int ratp_cmd_ping(const struct ratp_bb *req, int req_len,
+			 struct ratp_bb **rsp, int *rsp_len)
+{
+	/* Just build response */
+	*rsp_len = sizeof(struct ratp_bb);
+	*rsp = xzalloc(*rsp_len);
+	(*rsp)->type = cpu_to_be16(BB_RATP_TYPE_PONG);
+	return 0;
+}
+
+BAREBOX_RATP_CMD_START(PING)
+	.request_id = BB_RATP_TYPE_PING,
+	.response_id = BB_RATP_TYPE_PONG,
+	.cmd = ratp_cmd_ping
+BAREBOX_RATP_CMD_END
diff --git a/common/ratp/ratp.c b/common/ratp/ratp.c
index 7c8a2f6f5..965c67a0a 100644
--- a/common/ratp/ratp.c
+++ b/common/ratp/ratp.c
@@ -189,25 +189,6 @@ static int ratp_bb_send_command_return(struct ratp_ctx *ctx, uint32_t errno)
 	return ret;
 }

-static int ratp_bb_send_pong(struct ratp_ctx *ctx)
-{
-	void *buf;
-	struct ratp_bb *rbb;
-	int len = sizeof(*rbb);
-	int ret;
-
-	buf = xzalloc(len);
-	rbb = buf;
-
-	rbb->type = cpu_to_be16(BB_RATP_TYPE_PONG);
-
-	ret = ratp_send(&ctx->ratp, buf, len);
-
-	free(buf);
-
-	return ret;
-}
-
 static int ratp_bb_send_getenv_return(struct ratp_ctx *ctx, const char *val)
 {
 	void *buf;
@@ -270,7 +251,6 @@ static int ratp_bb_dispatch(struct ratp_ctx *ctx, const void *buf, int len)
 		break;

 	case BB_RATP_TYPE_COMMAND_RETURN:
-	case BB_RATP_TYPE_PONG:
 		break;

 	case BB_RATP_TYPE_CONSOLEMSG:
@@ -280,10 +260,6 @@ static int ratp_bb_dispatch(struct ratp_ctx *ctx, const void *buf, int len)
 		kfifo_put(ctx->console_recv_fifo, rbb->data, dlen);
 		break;

-	case BB_RATP_TYPE_PING:
-		ret = ratp_bb_send_pong(ctx);
-		break;
-
 	case BB_RATP_TYPE_GETENV:
 		varname = xmemdup_add_zero(&rbb->data, dlen);

--
2.15.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
