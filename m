Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl7u1-0002Nz-Mo
 for barebox@lists.infradead.org; Tue, 16 Jun 2020 09:29:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 16 Jun 2020 11:29:06 +0200
Message-Id: <20200616092906.2626-2-s.hauer@pengutronix.de>
In-Reply-To: <20200616092906.2626-1-s.hauer@pengutronix.de>
References: <20200616092906.2626-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ratp: Straighten ratp deregistration
To: Barebox List <barebox@lists.infradead.org>

There are some bugs in the error path when ratp initialization fails
half way through. Reusing the global ratp context which might be half
initialized makes the code hard to follow and hard to fix, so the
strategy is changed to always allocating a fresh ratp context and
returning -EBUSY when one exists already. We store in the context what
has been done in the initialization path and add a ratp_unregister()
which uses this information to tear down everything that has been
initialized.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/ratp/ratp.c | 98 +++++++++++++++++++++++-----------------------
 1 file changed, 49 insertions(+), 49 deletions(-)

diff --git a/common/ratp/ratp.c b/common/ratp/ratp.c
index d2fdb631b3..b9856b2095 100644
--- a/common/ratp/ratp.c
+++ b/common/ratp/ratp.c
@@ -50,6 +50,9 @@ struct ratp_ctx {
 	struct ratp_bb_pkt *fs_rx;
 
 	struct poller_struct poller;
+
+	bool console_registered;
+	bool poller_registered;
 };
 
 static int compare_ratp_command(struct list_head *a, struct list_head *b)
@@ -295,26 +298,6 @@ static void ratp_console_putc(struct console_device *cdev, char c)
 	kfifo_putc(ctx->console_transmit_fifo, c);
 }
 
-static int ratp_console_register(struct ratp_ctx *ctx)
-{
-	int ret;
-
-	ctx->ratp_console.tstc = ratp_console_tstc;
-	ctx->ratp_console.puts = ratp_console_puts;
-	ctx->ratp_console.putc = ratp_console_putc;
-	ctx->ratp_console.getc = ratp_console_getc;
-	ctx->ratp_console.devname = "ratpconsole";
-	ctx->ratp_console.devid = DEVICE_ID_SINGLE;
-
-	ret = console_register(&ctx->ratp_console);
-	if (ret) {
-		pr_err("registering failed with %s\n", strerror(-ret));
-		return ret;
-	}
-
-	return 0;
-}
-
 void barebox_ratp_command_run(void)
 {
 	int ret;
@@ -344,15 +327,27 @@ int barebox_ratp_fs_mount(const char *path)
 	return 0;
 }
 
-static void ratp_console_unregister(struct ratp_ctx *ctx)
+static void ratp_unregister(struct ratp_ctx *ctx)
 {
 	int ret;
 
-	console_set_active(&ctx->ratp_console, 0);
-	poller_unregister(&ctx->poller);
+	if (ctx->console_registered)
+		console_unregister(&ctx->ratp_console);
+
+	if (ctx->console_registered)
+		poller_unregister(&ctx->poller);
+
 	ratp_close(&ctx->ratp);
 	console_set_active(ctx->cdev, ctx->old_active);
-	ctx->cdev = NULL;
+
+	if (ctx->console_recv_fifo)
+		kfifo_free(ctx->console_recv_fifo);
+
+	if (ctx->console_transmit_fifo)
+		kfifo_free(ctx->console_transmit_fifo);
+
+	free(ctx);
+	ratp_ctx = NULL;
 
 	if (ratpfs_mount_path) {
 		ret = umount(ratpfs_mount_path);
@@ -388,7 +383,7 @@ static void ratp_poller(struct poller_struct *poller)
 	return;
 
 out:
-	ratp_console_unregister(ctx);
+	ratp_unregister(ctx);
 }
 
 int barebox_ratp_fs_call(struct ratp_bb_pkt *tx, struct ratp_bb_pkt **rx)
@@ -433,28 +428,34 @@ int barebox_ratp(struct console_device *cdev)
 {
 	int ret;
 	struct ratp_ctx *ctx;
-	struct ratp *ratp;
 
 	if (!cdev->getc || !cdev->putc)
 		return -EINVAL;
 
-	if (ratp_ctx) {
-		ctx = ratp_ctx;
-	} else {
-		ctx = xzalloc(sizeof(*ctx));
-		ratp_ctx = ctx;
-		ctx->ratp.send = console_send;
-		ctx->ratp.recv = console_recv;
-		ctx->console_recv_fifo = kfifo_alloc(512);
-		ctx->console_transmit_fifo = kfifo_alloc(SZ_128K);
-		ctx->poller.func = ratp_poller;
-		ratp_console_register(ctx);
-	}
-
-	if (ctx->cdev)
+	if (ratp_ctx)
 		return -EBUSY;
 
-	ratp = &ctx->ratp;
+	ctx = xzalloc(sizeof(*ctx));
+	ratp_ctx = ctx;
+	ctx->ratp.send = console_send;
+	ctx->ratp.recv = console_recv;
+	ctx->console_recv_fifo = kfifo_alloc(512);
+	ctx->console_transmit_fifo = kfifo_alloc(SZ_128K);
+	ctx->poller.func = ratp_poller;
+	ctx->ratp_console.tstc = ratp_console_tstc;
+	ctx->ratp_console.puts = ratp_console_puts;
+	ctx->ratp_console.putc = ratp_console_putc;
+	ctx->ratp_console.getc = ratp_console_getc;
+	ctx->ratp_console.devname = "ratpconsole";
+	ctx->ratp_console.devid = DEVICE_ID_SINGLE;
+
+	ret = console_register(&ctx->ratp_console);
+	if (ret) {
+		pr_err("registering console failed with %s\n", strerror(-ret));
+		return ret;
+	}
+
+	ctx->console_registered = true;
 
 	ctx->old_active = console_get_active(cdev);
 	console_set_active(cdev, 0);
@@ -462,31 +463,30 @@ int barebox_ratp(struct console_device *cdev)
 	ctx->cdev = cdev;
 	ctx->have_synch = 1;
 
-	ret = ratp_establish(ratp, false, 100);
+	ret = ratp_establish(&ctx->ratp, false, 100);
 	if (ret < 0)
 		goto out;
 
 	ret = poller_register(&ctx->poller, "ratp");
 	if (ret)
-		goto out1;
+		goto out;
+
+	ctx->poller_registered = true;
 
 	console_set_active(&ctx->ratp_console, CONSOLE_STDOUT | CONSOLE_STDERR |
 			CONSOLE_STDIN);
 
 	return 0;
 
-out1:
-	ratp_close(ratp);
 out:
-	console_set_active(ctx->cdev, ctx->old_active);
-	ctx->cdev = NULL;
+	ratp_unregister(ctx);
 
 	return ret;
 }
 
 static void barebox_ratp_close(void)
 {
-	if (ratp_ctx && ratp_ctx->cdev)
-		ratp_console_unregister(ratp_ctx);
+	if (ratp_ctx)
+		ratp_unregister(ratp_ctx);
 }
 predevshutdown_exitcall(barebox_ratp_close);
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
