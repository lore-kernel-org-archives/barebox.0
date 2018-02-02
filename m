Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x243.google.com ([2a00:1450:400c:c0c::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ehZJ8-0004st-0a
 for barebox@lists.infradead.org; Fri, 02 Feb 2018 11:15:04 +0000
Received: by mail-wr0-x243.google.com with SMTP id g21so22180009wrb.13
 for <barebox@lists.infradead.org>; Fri, 02 Feb 2018 03:14:57 -0800 (PST)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Fri,  2 Feb 2018 12:14:39 +0100
Message-Id: <20180202111442.12444-8-aleksander@aleksander.es>
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
Subject: [PATCH 07/10] ratp: implement ping as a standard ratp command
To: barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 commands/Makefile    |  1 +
 commands/ratp-ping.c | 38 ++++++++++++++++++++++++++++++++++++++
 common/ratp.c        | 27 ---------------------------
 3 files changed, 39 insertions(+), 27 deletions(-)
 create mode 100644 commands/ratp-ping.c

diff --git a/commands/Makefile b/commands/Makefile
index 00a863919..012a3ad68 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -126,3 +126,4 @@ obj-$(CONFIG_CMD_SEED)		+= seed.o
 obj-$(CONFIG_CMD_ZODIAC_PIC)	+= pic.o zii-pic-esb.o \
 				zii-pic-mezz.o zii-pic-niu.o \
 				zii-pic-rdu.o zii-pic-rdu2.o
+obj-$(CONFIG_RATP)		+= ratp-ping.o
diff --git a/commands/ratp-ping.c b/commands/ratp-ping.c
new file mode 100644
index 000000000..837c56762
--- /dev/null
+++ b/commands/ratp-ping.c
@@ -0,0 +1,38 @@
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
+	*rsp_len = sizeof(struct ratp_bb);
+	*rsp = xzalloc(*rsp_len);
+	(*rsp)->type = cpu_to_be16(BB_RATP_TYPE_PING);
+	(*rsp)->flags = cpu_to_be16(BB_RATP_FLAG_RESPONSE);
+	return 0;
+}
+
+BAREBOX_RATP_CMD_START(PING)
+	.cmd = ratp_cmd_ping
+BAREBOX_RATP_CMD_END
diff --git a/common/ratp.c b/common/ratp.c
index 2cdb1cd89..a880e8e03 100644
--- a/common/ratp.c
+++ b/common/ratp.c
@@ -146,26 +146,6 @@ static int ratp_bb_send_command_return(struct ratp_ctx *ctx, uint32_t errno)
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
-	rbb->type = cpu_to_be16(BB_RATP_TYPE_PING);
-	rbb->flags = cpu_to_be16(BB_RATP_FLAG_RESPONSE);
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
@@ -414,13 +394,6 @@ static int dispatch_ratp_message(struct ratp_ctx *ctx, const void *buf, int len)
 		pr_debug("got command: %s\n", ratp_command);
 		break;
 
-	case BB_RATP_TYPE_PING:
-		if (flags & BB_RATP_FLAG_RESPONSE)
-			break;
-
-		ret = ratp_bb_send_pong(ctx);
-		break;
-
 	case BB_RATP_TYPE_GETENV:
 		if (flags & BB_RATP_FLAG_RESPONSE)
 			break;
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
