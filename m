Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x243.google.com ([2a00:1450:400c:c0c::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1epbKb-0004HS-M4
 for barebox@lists.infradead.org; Sat, 24 Feb 2018 15:01:51 +0000
Received: by mail-wr0-x243.google.com with SMTP id p104so16852959wrc.12
 for <barebox@lists.infradead.org>; Sat, 24 Feb 2018 07:01:35 -0800 (PST)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Sat, 24 Feb 2018 16:01:17 +0100
Message-Id: <20180224150121.28309-6-aleksander@aleksander.es>
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
Subject: [PATCH v3 5/9] ratp: implement getenv as a standard ratp command
To: barebox@lists.infradead.org, s.hauer@pengutronix.de
Cc: Aleksander Morgado <aleksander@aleksander.es>

Also, use xstrndup() instead of the custom xmemdup_add_zero() as we're
working with strings anyway.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 common/ratp/Makefile |  1 +
 common/ratp/getenv.c | 51 +++++++++++++++++++++++++++++++++++++++++++++++++++
 common/ratp/ratp.c   | 30 ------------------------------
 3 files changed, 52 insertions(+), 30 deletions(-)
 create mode 100644 common/ratp/getenv.c

diff --git a/common/ratp/Makefile b/common/ratp/Makefile
index acad61ee5..2fa9d63c0 100644
--- a/common/ratp/Makefile
+++ b/common/ratp/Makefile
@@ -1,2 +1,3 @@
 obj-y += ratp.o
 obj-y += ping.o
+obj-y += getenv.o
diff --git a/common/ratp/getenv.c b/common/ratp/getenv.c
new file mode 100644
index 000000000..b40963488
--- /dev/null
+++ b/common/ratp/getenv.c
@@ -0,0 +1,51 @@
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
+ * RATP getenv
+ */
+
+#include <common.h>
+#include <ratp_bb.h>
+#include <malloc.h>
+#include <environment.h>
+
+static int ratp_cmd_getenv(const struct ratp_bb *req, int req_len,
+			   struct ratp_bb **rsp, int *rsp_len)
+{
+	int dlen = req_len - sizeof (struct ratp_bb);
+	char *varname;
+	const char *value;
+
+	varname = xstrndup ((const char *)req->data, dlen);
+	value = getenv (varname);
+	free (varname);
+
+	dlen = strlen (value);
+
+	*rsp_len = sizeof(struct ratp_bb) + dlen;
+	*rsp = xzalloc(*rsp_len);
+	(*rsp)->type = cpu_to_be16(BB_RATP_TYPE_GETENV_RETURN);
+	memcpy ((*rsp)->data, value, dlen);
+	return 0;
+}
+
+BAREBOX_RATP_CMD_START(GETENV)
+	.request_id = BB_RATP_TYPE_GETENV,
+	.response_id = BB_RATP_TYPE_GETENV_RETURN,
+	.cmd = ratp_cmd_getenv
+BAREBOX_RATP_CMD_END
diff --git a/common/ratp/ratp.c b/common/ratp/ratp.c
index 965c67a0a..1e9c65179 100644
--- a/common/ratp/ratp.c
+++ b/common/ratp/ratp.c
@@ -189,29 +189,6 @@ static int ratp_bb_send_command_return(struct ratp_ctx *ctx, uint32_t errno)
 	return ret;
 }
 
-static int ratp_bb_send_getenv_return(struct ratp_ctx *ctx, const char *val)
-{
-	void *buf;
-	struct ratp_bb *rbb;
-	int len, ret;
-
-	if (!val)
-	    val = "";
-
-	len = sizeof(*rbb) + strlen(val);
-	buf = xzalloc(len);
-	rbb = buf;
-	strcpy(rbb->data, val);
-
-	rbb->type = cpu_to_be16(BB_RATP_TYPE_GETENV_RETURN);
-
-	ret = ratp_send(&ctx->ratp, buf, len);
-
-	free(buf);
-
-	return ret;
-}
-
 static char *ratp_command;
 static struct ratp_ctx *ratp_ctx;
 
@@ -220,7 +197,6 @@ static int ratp_bb_dispatch(struct ratp_ctx *ctx, const void *buf, int len)
 	const struct ratp_bb *rbb = buf;
 	struct ratp_bb_pkt *pkt;
 	int dlen = len - sizeof(struct ratp_bb);
-	char *varname;
 	int ret = 0;
 	uint16_t type = be16_to_cpu(rbb->type);
 	struct ratp_command *cmd;
@@ -260,12 +236,6 @@ static int ratp_bb_dispatch(struct ratp_ctx *ctx, const void *buf, int len)
 		kfifo_put(ctx->console_recv_fifo, rbb->data, dlen);
 		break;
 
-	case BB_RATP_TYPE_GETENV:
-		varname = xmemdup_add_zero(&rbb->data, dlen);
-
-		ret = ratp_bb_send_getenv_return(ctx, getenv(varname));
-		break;
-
 	case BB_RATP_TYPE_FS_RETURN:
 		pkt = xzalloc(sizeof(*pkt) + dlen);
 		pkt->len = dlen;
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
