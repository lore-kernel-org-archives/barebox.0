Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x241.google.com ([2a00:1450:400c:c0c::241])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ejmAe-0002MG-DI
 for barebox@lists.infradead.org; Thu, 08 Feb 2018 13:23:27 +0000
Received: by mail-wr0-x241.google.com with SMTP id w50so4688468wrc.2
 for <barebox@lists.infradead.org>; Thu, 08 Feb 2018 05:23:14 -0800 (PST)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Thu,  8 Feb 2018 14:22:56 +0100
Message-Id: <20180208132301.24921-4-aleksander@aleksander.es>
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
Subject: [RFC PATCH v2 3/8] ratp: allow building without full console support
To: barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

Make CONFIG_RATP a selectable config option, so that the user can
enable RATP support without explicitly needing to enable the full
console support over RATP (e.g. only for RATP FS or built-in command
support).

The full console can still be explicitly enabled with
CONFIG_CONSOLE_RATP.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 common/Makefile    | 1 -
 common/ratp/ratp.c | 7 +++++--
 fs/Kconfig         | 2 +-
 lib/Kconfig        | 2 +-
 lib/readline.c     | 2 +-
 5 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/common/Makefile b/common/Makefile
index 90d5f19ec..8a0ce84e1 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -47,7 +47,6 @@ obj-$(CONFIG_SHELL_HUSH)	+= hush.o
 obj-$(CONFIG_SHELL_SIMPLE)	+= parser.o
 obj-$(CONFIG_STATE)		+= state/
 obj-$(CONFIG_RATP)		+= ratp/
-obj-$(CONFIG_CONSOLE_RATP)	+= ratp/
 obj-$(CONFIG_BOOTCHOOSER)	+= bootchooser.o
 obj-$(CONFIG_UIMAGE)		+= image.o uimage.o
 obj-$(CONFIG_FITIMAGE)		+= image-fit.o
diff --git a/common/ratp/ratp.c b/common/ratp/ratp.c
index b051fdee4..7c8a2f6f5 100644
--- a/common/ratp/ratp.c
+++ b/common/ratp/ratp.c
@@ -260,7 +260,7 @@ static int ratp_bb_dispatch(struct ratp_ctx *ctx, const void *buf, int len)

 	switch (type) {
 	case BB_RATP_TYPE_COMMAND:
-		if (ratp_command)
+		if (!IS_ENABLED(CONFIG_CONSOLE_RATP) || ratp_command)
 			return 0;

 		ratp_command = xmemdup_add_zero(&rbb->data, dlen);
@@ -274,6 +274,8 @@ static int ratp_bb_dispatch(struct ratp_ctx *ctx, const void *buf, int len)
 		break;

 	case BB_RATP_TYPE_CONSOLEMSG:
+		if (!IS_ENABLED(CONFIG_CONSOLE_RATP))
+			return 0;

 		kfifo_put(ctx->console_recv_fifo, rbb->data, dlen);
 		break;
@@ -420,7 +422,8 @@ static void ratp_poller(struct poller_struct *poller)
 	size_t len;
 	void *buf;

-	ratp_queue_console_tx(ctx);
+	if (IS_ENABLED(CONFIG_CONSOLE_RATP))
+		ratp_queue_console_tx(ctx);

 	ret = ratp_poll(&ctx->ratp);
 	if (ret == -EINTR)
diff --git a/fs/Kconfig b/fs/Kconfig
index 57f2676f4..351200055 100644
--- a/fs/Kconfig
+++ b/fs/Kconfig
@@ -94,7 +94,7 @@ source fs/squashfs/Kconfig

 config FS_RATP
 	bool
-	depends on CONSOLE_RATP
+	depends on RATP
 	prompt "RATP filesystem support"
 	help
 	  This enables support for transferring files over RATP. A host can
diff --git a/lib/Kconfig b/lib/Kconfig
index 9562b1b8c..572985860 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -84,7 +84,7 @@ config STMP_DEVICE

 config RATP
 	select CRC16
-	bool
+	bool "RATP protocol support"
 	help
 	  Reliable Asynchronous Transfer Protocol (RATP) is a protocol for reliably
 	  transferring packets over serial links described in RFC916. This implementation
diff --git a/lib/readline.c b/lib/readline.c
index 1e380abec..904a77639 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -202,7 +202,7 @@ int readline(const char *prompt, char *buf, int len)
 	while (1) {
 		while (!tstc()) {
 			poller_call();
-			if (IS_ENABLED(CONFIG_RATP))
+			if (IS_ENABLED(CONFIG_CONSOLE_RATP))
 				barebox_ratp_command_run();
 		}

--
2.15.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
