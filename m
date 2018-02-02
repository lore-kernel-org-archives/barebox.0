Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x241.google.com ([2a00:1450:400c:c0c::241])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ehZJ8-0004t6-Hx
 for barebox@lists.infradead.org; Fri, 02 Feb 2018 11:15:07 +0000
Received: by mail-wr0-x241.google.com with SMTP id v31so22187304wrc.11
 for <barebox@lists.infradead.org>; Fri, 02 Feb 2018 03:14:59 -0800 (PST)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Fri,  2 Feb 2018 12:14:40 +0100
Message-Id: <20180202111442.12444-9-aleksander@aleksander.es>
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
Subject: [PATCH 08/10] ratp: implement getenv as a standard ratp command
To: barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

Also, use xstrndup() instead of the custom xmemdup_add_zero() as we're
working with strings anyway.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 commands/Makefile      |  1 +
 commands/ratp-getenv.c | 50 ++++++++++++++++++++++++++++++++++++++++++++++++++
 common/ratp.c          | 34 ----------------------------------
 3 files changed, 51 insertions(+), 34 deletions(-)
 create mode 100644 commands/ratp-getenv.c

diff --git a/commands/Makefile b/commands/Makefile
index 012a3ad68..5e5464ec3 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -127,3 +127,4 @@ obj-$(CONFIG_CMD_ZODIAC_PIC)	+= pic.o zii-pic-esb.o \
 				zii-pic-mezz.o zii-pic-niu.o \
 				zii-pic-rdu.o zii-pic-rdu2.o
 obj-$(CONFIG_RATP)		+= ratp-ping.o
+obj-$(CONFIG_RATP)		+= ratp-getenv.o
diff --git a/commands/ratp-getenv.c b/commands/ratp-getenv.c
new file mode 100644
index 000000000..2daaa63d8
--- /dev/null
+++ b/commands/ratp-getenv.c
@@ -0,0 +1,50 @@
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
+	(*rsp)->type = cpu_to_be16(BB_RATP_TYPE_GETENV);
+	(*rsp)->flags = cpu_to_be16(BB_RATP_FLAG_RESPONSE);
+	memcpy ((*rsp)->data, value, dlen);
+	return 0;
+}
+
+BAREBOX_RATP_CMD_START(GETENV)
+	.cmd = ratp_cmd_getenv
+BAREBOX_RATP_CMD_END
diff --git a/common/ratp.c b/common/ratp.c
index a880e8e03..e1ecb314c 100644
--- a/common/ratp.c
+++ b/common/ratp.c
@@ -24,7 +24,6 @@
 #include <ratp.h>
 #include <command.h>
 #include <byteorder.h>
-#include <environment.h>
 #include <kfifo.h>
 #include <poller.h>
 #include <linux/sizes.h>
@@ -146,30 +145,6 @@ static int ratp_bb_send_command_return(struct ratp_ctx *ctx, uint32_t errno)
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
-	rbb->type = cpu_to_be16(BB_RATP_TYPE_GETENV);
-	rbb->flags = cpu_to_be16(BB_RATP_FLAG_RESPONSE);
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
 
@@ -355,7 +330,6 @@ static int dispatch_ratp_message(struct ratp_ctx *ctx, const void *buf, int len)
 	const struct ratp_bb *rbb = buf;
 	struct ratp_bb_pkt *pkt;
 	int dlen = len - sizeof(struct ratp_bb);
-	char *varname;
 	int ret = 0;
 	uint16_t flags;
 	uint16_t type = be16_to_cpu(rbb->type);
@@ -394,14 +368,6 @@ static int dispatch_ratp_message(struct ratp_ctx *ctx, const void *buf, int len)
 		pr_debug("got command: %s\n", ratp_command);
 		break;
 
-	case BB_RATP_TYPE_GETENV:
-		if (flags & BB_RATP_FLAG_RESPONSE)
-			break;
-
-		varname = xmemdup_add_zero(&rbb->data, dlen);
-		ret = ratp_bb_send_getenv_return(ctx, getenv(varname));
-		break;
-
 	case BB_RATP_TYPE_FS:
 		/* Only responses expected */
 		if (!(flags & BB_RATP_FLAG_RESPONSE))
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
