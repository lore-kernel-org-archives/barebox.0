Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ejmAi-0002MU-7u
 for barebox@lists.infradead.org; Thu, 08 Feb 2018 13:23:31 +0000
Received: by mail-wm0-x243.google.com with SMTP id r78so9946707wme.0
 for <barebox@lists.infradead.org>; Thu, 08 Feb 2018 05:23:21 -0800 (PST)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Thu,  8 Feb 2018 14:23:01 +0100
Message-Id: <20180208132301.24921-9-aleksander@aleksander.es>
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
Subject: [RFC PATCH v2 8/8] ratp: new reset command
To: barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 common/ratp/Makefile |  1 +
 common/ratp/reset.c  | 55 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/ratp_bb.h    |  1 +
 3 files changed, 57 insertions(+)
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
--
2.15.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
