Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x242.google.com ([2a00:1450:400c:c0c::242])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ehZJH-0004tA-4u
 for barebox@lists.infradead.org; Fri, 02 Feb 2018 11:15:15 +0000
Received: by mail-wr0-x242.google.com with SMTP id a43so14634605wrc.4
 for <barebox@lists.infradead.org>; Fri, 02 Feb 2018 03:15:00 -0800 (PST)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Fri,  2 Feb 2018 12:14:41 +0100
Message-Id: <20180202111442.12444-10-aleksander@aleksander.es>
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
Subject: [PATCH 09/10] ratp: new reset command
To: barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 commands/reset.c | 48 +++++++++++++++++++++++++++++++++++++++++-------
 1 file changed, 41 insertions(+), 7 deletions(-)

diff --git a/commands/reset.c b/commands/reset.c
index 6eac53262..7971b9f2f 100644
--- a/commands/reset.c
+++ b/commands/reset.c
@@ -19,10 +19,26 @@
 
 #include <common.h>
 #include <command.h>
+#include <ratp_bb.h>
 #include <complete.h>
 #include <getopt.h>
 #include <restart.h>
 
+static int common_reset (int shutdown_flag)
+{
+	debug("running reset %s\n", shutdown_flag ? "" : "(forced)");
+
+	if (shutdown_flag)
+		shutdown_barebox();
+
+	restart_machine();
+
+	/* Not reached */
+	return 1;
+}
+
+/* Console command */
+
 static int cmd_reset(int argc, char *argv[])
 {
 	int opt, shutdown_flag;
@@ -39,13 +55,7 @@ static int cmd_reset(int argc, char *argv[])
 		}
 	}
 
-	if (shutdown_flag)
-		shutdown_barebox();
-
-	restart_machine();
-
-	/* Not reached */
-	return 1;
+	return common_reset (shutdown_flag);
 }
 
 BAREBOX_CMD_HELP_START(reset)
@@ -61,3 +71,27 @@ BAREBOX_CMD_START(reset)
 	BAREBOX_CMD_HELP(cmd_reset_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
+
+/* RATP command */
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
+	return common_reset (reset_req->force);
+}
+
+BAREBOX_RATP_CMD_START(RESET)
+	.cmd = ratp_cmd_reset
+BAREBOX_RATP_CMD_END
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
