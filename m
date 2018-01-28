Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x242.google.com ([2a00:1450:400c:c0c::242])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1efuXB-0008Ux-L5
 for barebox@lists.infradead.org; Sun, 28 Jan 2018 21:30:43 +0000
Received: by mail-wr0-x242.google.com with SMTP id v31so5120197wrc.11
 for <barebox@lists.infradead.org>; Sun, 28 Jan 2018 13:30:30 -0800 (PST)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Sun, 28 Jan 2018 22:30:23 +0100
Message-Id: <20180128213023.14383-1-aleksander@aleksander.es>
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
Subject: [PATCH] ratp: move barebox-specific command to ratp_bb.h
To: barebox@lists.infradead.org
Cc: Aleksander Morgado <aleksander@aleksander.es>

The ratp_run_command() is really an implementation detail of the
barebox ratp 'command' operation support. Move it to the barebox
specific header and rename it with the correct prefix.

Signed-off-by: Aleksander Morgado <aleksander@aleksander.es>
---
 common/ratp.c     | 2 +-
 include/ratp.h    | 2 --
 include/ratp_bb.h | 7 ++++---
 lib/readline.c    | 4 ++--
 4 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/common/ratp.c b/common/ratp.c
index c5eae2e2c..6db4df870 100644
--- a/common/ratp.c
+++ b/common/ratp.c
@@ -323,7 +323,7 @@ static int ratp_console_register(struct ratp_ctx *ctx)
 	return 0;
 }
 
-void ratp_run_command(void)
+void barebox_ratp_command_run(void)
 {
 	int ret;
 
diff --git a/include/ratp.h b/include/ratp.h
index 94fd004f4..6f4cf8a6f 100644
--- a/include/ratp.h
+++ b/include/ratp.h
@@ -17,6 +17,4 @@ int ratp_poll(struct ratp *ratp);
 bool ratp_closed(struct ratp *ratp);
 bool ratp_busy(struct ratp *ratp);
 
-void ratp_run_command(void);
-
 #endif /* __RATP_H */
\ No newline at end of file
diff --git a/include/ratp_bb.h b/include/ratp_bb.h
index 52ecaff37..70fd58a67 100644
--- a/include/ratp_bb.h
+++ b/include/ratp_bb.h
@@ -8,8 +8,9 @@ struct ratp_bb_pkt {
 	uint8_t data[];
 };
 
-int barebox_ratp(struct console_device *cdev);
-int barebox_ratp_fs_call(struct ratp_bb_pkt *tx, struct ratp_bb_pkt **rx);
-int barebox_ratp_fs_mount(const char *path);
+int  barebox_ratp(struct console_device *cdev);
+void barebox_ratp_command_run(void);
+int  barebox_ratp_fs_call(struct ratp_bb_pkt *tx, struct ratp_bb_pkt **rx);
+int  barebox_ratp_fs_mount(const char *path);
 
 #endif /* __RATP_BB_H */
diff --git a/lib/readline.c b/lib/readline.c
index b5d99ca18..1e380abec 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -3,7 +3,7 @@
 #include <init.h>
 #include <libbb.h>
 #include <poller.h>
-#include <ratp.h>
+#include <ratp_bb.h>
 #include <xfuncs.h>
 #include <complete.h>
 #include <linux/ctype.h>
@@ -203,7 +203,7 @@ int readline(const char *prompt, char *buf, int len)
 		while (!tstc()) {
 			poller_call();
 			if (IS_ENABLED(CONFIG_RATP))
-				ratp_run_command();
+				barebox_ratp_command_run();
 		}
 
 		ichar = read_key();
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
