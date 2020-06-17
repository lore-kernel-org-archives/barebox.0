Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlTAR-0000ai-3I
 for barebox@lists.infradead.org; Wed, 17 Jun 2020 08:11:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Jun 2020 10:11:10 +0200
Message-Id: <20200617081126.5683-4-s.hauer@pengutronix.de>
In-Reply-To: <20200617081126.5683-1-s.hauer@pengutronix.de>
References: <20200617081126.5683-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 03/19] ratp: Switch to workqueues
To: Barebox List <barebox@lists.infradead.org>
Cc: =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

This switches running barebox commands in ratp to a context where it's
safe to do so: In a work queue.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/ratp/ratp.c | 57 ++++++++++++++++++++++++++++++++++------------
 include/ratp_bb.h  |  1 -
 lib/readline.c     |  6 +----
 3 files changed, 44 insertions(+), 20 deletions(-)

diff --git a/common/ratp/ratp.c b/common/ratp/ratp.c
index b8043fe5c7..84910cacb7 100644
--- a/common/ratp/ratp.c
+++ b/common/ratp/ratp.c
@@ -24,6 +24,7 @@
 #include <environment.h>
 #include <kfifo.h>
 #include <poller.h>
+#include <work.h>
 #include <linux/sizes.h>
 #include <ratp_bb.h>
 #include <fs.h>
@@ -50,9 +51,11 @@ struct ratp_ctx {
 	struct ratp_bb_pkt *fs_rx;
 
 	struct poller_struct poller;
+	struct work_queue wq;
 
 	bool console_registered;
 	bool poller_registered;
+	bool wq_registered;
 };
 
 static int compare_ratp_command(struct list_head *a, struct list_head *b)
@@ -194,9 +197,14 @@ static int ratp_bb_send_command_return(struct ratp_ctx *ctx, uint32_t errno)
 	return ret;
 }
 
-static char *ratp_command;
 static struct ratp_ctx *ratp_ctx;
 
+struct ratp_work {
+	struct work_struct work;
+	struct ratp_ctx *ctx;
+	char *command;
+};
+
 static int ratp_bb_dispatch(struct ratp_ctx *ctx, const void *buf, int len)
 {
 	const struct ratp_bb *rbb = buf;
@@ -205,6 +213,7 @@ static int ratp_bb_dispatch(struct ratp_ctx *ctx, const void *buf, int len)
 	int ret = 0;
 	uint16_t type = be16_to_cpu(rbb->type);
 	struct ratp_command *cmd;
+	struct ratp_work *rw;
 
 	/* See if there's a command registered to this type */
 	cmd = find_ratp_request(type);
@@ -222,12 +231,16 @@ static int ratp_bb_dispatch(struct ratp_ctx *ctx, const void *buf, int len)
 
 	switch (type) {
 	case BB_RATP_TYPE_COMMAND:
-		if (!IS_ENABLED(CONFIG_CONSOLE_RATP) || ratp_command)
+		if (!IS_ENABLED(CONFIG_CONSOLE_RATP))
 			return 0;
 
-		ratp_command = xstrndup((const char *)rbb->data, dlen);
-		ratp_ctx = ctx;
-		pr_debug("got command: %s\n", ratp_command);
+		rw = xzalloc(sizeof(*rw));
+		rw->ctx = ctx;
+		rw->command = xstrndup((const char *)rbb->data, dlen);
+
+		wq_queue_work(&ctx->wq, &rw->work);
+
+		pr_debug("got command: %s\n", rw->command);
 
 		break;
 
@@ -298,21 +311,20 @@ static void ratp_console_putc(struct console_device *cdev, char c)
 	kfifo_putc(ctx->console_transmit_fifo, c);
 }
 
-void barebox_ratp_command_run(void)
+static void ratp_command_run(struct work_struct *w)
 {
+	struct ratp_work *rw = container_of(w, struct ratp_work, work);
+	struct ratp_ctx *ctx = rw->ctx;
 	int ret;
 
-	if (!ratp_command)
-		return;
-
-	pr_debug("running command: %s\n", ratp_command);
+	pr_debug("running command: %s\n", rw->command);
 
-	ret = run_command(ratp_command);
+	ret = run_command(rw->command);
 
-	free(ratp_command);
-	ratp_command = NULL;
+	free(rw->command);
+	free(rw);
 
-	ratp_bb_send_command_return(ratp_ctx, ret);
+	ratp_bb_send_command_return(ctx, ret);
 }
 
 static const char *ratpfs_mount_path;
@@ -337,6 +349,9 @@ static void ratp_unregister(struct ratp_ctx *ctx)
 	if (ctx->poller_registered)
 		poller_unregister(&ctx->poller);
 
+	if (ctx->wq_registered)
+		wq_unregister(&ctx->wq);
+
 	ratp_close(&ctx->ratp);
 	console_set_active(ctx->cdev, ctx->old_active);
 
@@ -369,6 +384,7 @@ static void ratp_poller(struct poller_struct *poller)
 	ret = ratp_poll(&ctx->ratp);
 	if (ret == -EINTR)
 		goto out;
+
 	if (ratp_closed(&ctx->ratp))
 		goto out;
 
@@ -424,6 +440,14 @@ int barebox_ratp_fs_call(struct ratp_bb_pkt *tx, struct ratp_bb_pkt **rx)
 	return 0;
 }
 
+static void ratp_work_cancel(struct work_struct *w)
+{
+	struct ratp_work *rw = container_of(w, struct ratp_work, work);
+
+	free(rw->command);
+	free(rw);
+}
+
 int barebox_ratp(struct console_device *cdev)
 {
 	int ret;
@@ -467,6 +491,11 @@ int barebox_ratp(struct console_device *cdev)
 	if (ret < 0)
 		goto out;
 
+	ctx->wq.fn = ratp_command_run;
+	ctx->wq.cancel = ratp_work_cancel;
+	wq_register(&ctx->wq);
+	ctx->wq_registered = true;
+
 	ret = poller_register(&ctx->poller, "ratp");
 	if (ret)
 		goto out;
diff --git a/include/ratp_bb.h b/include/ratp_bb.h
index a4f28c642c..b710f99bf9 100644
--- a/include/ratp_bb.h
+++ b/include/ratp_bb.h
@@ -41,7 +41,6 @@ struct ratp_bb_pkt {
 };
 
 int  barebox_ratp(struct console_device *cdev);
-void barebox_ratp_command_run(void);
 int  barebox_ratp_fs_call(struct ratp_bb_pkt *tx, struct ratp_bb_pkt **rx);
 int  barebox_ratp_fs_mount(const char *path);
 
diff --git a/lib/readline.c b/lib/readline.c
index 3d16c1838c..e5370f9c7b 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -3,7 +3,6 @@
 #include <init.h>
 #include <libbb.h>
 #include <poller.h>
-#include <ratp_bb.h>
 #include <xfuncs.h>
 #include <complete.h>
 #include <linux/ctype.h>
@@ -200,11 +199,8 @@ int readline(const char *prompt, char *buf, int len)
 	puts (prompt);
 
 	while (1) {
-		while (!tstc()) {
+		while (!tstc())
 			poller_call();
-			if (IS_ENABLED(CONFIG_CONSOLE_RATP))
-				barebox_ratp_command_run();
-		}
 
 		ichar = read_key();
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
