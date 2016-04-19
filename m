Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1asQDj-00031S-5R
 for barebox@lists.infradead.org; Tue, 19 Apr 2016 07:37:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Apr 2016 09:36:39 +0200
Message-Id: <1461051412-25711-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1461051412-25711-1-git-send-email-s.hauer@pengutronix.de>
References: <1461051412-25711-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/14] include: move run_command prototype to command.h
To: Barebox List <barebox@lists.infradead.org>

run_command fits much better into command.h, move it there.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/menutree.c               | 1 +
 common/password.c               | 1 +
 drivers/usb/gadget/f_fastboot.c | 1 +
 fs/fs.c                         | 1 +
 include/command.h               | 1 +
 include/common.h                | 1 -
 6 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/common/menutree.c b/common/menutree.c
index 97e628d..160ba9a 100644
--- a/common/menutree.c
+++ b/common/menutree.c
@@ -12,6 +12,7 @@
 #include <environment.h>
 #include <libbb.h>
 #include <common.h>
+#include <command.h>
 #include <glob.h>
 #include <menu.h>
 #include <fs.h>
diff --git a/common/password.c b/common/password.c
index 5b754d9..05e6180 100644
--- a/common/password.c
+++ b/common/password.c
@@ -24,6 +24,7 @@
 #include <digest.h>
 #include <malloc.h>
 #include <xfuncs.h>
+#include <command.h>
 #include <magicvar.h>
 #include <clock.h>
 #include <init.h>
diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 0df08c9..9a8cd4c 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -17,6 +17,7 @@
 #define pr_fmt(fmt) "fastboot: " fmt
 
 #include <common.h>
+#include <command.h>
 #include <errno.h>
 #include <malloc.h>
 #include <fcntl.h>
diff --git a/fs/fs.c b/fs/fs.c
index 440adae..d69e1e9 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -18,6 +18,7 @@
  */
 
 #include <common.h>
+#include <command.h>
 #include <fs.h>
 #include <driver.h>
 #include <errno.h>
diff --git a/include/command.h b/include/command.h
index 3aca1a9..4ed5e37 100644
--- a/include/command.h
+++ b/include/command.h
@@ -71,6 +71,7 @@ extern struct command __barebox_cmd_end;
 struct command *find_cmd(const char *cmd);
 int execute_command(int argc, char **argv);
 void barebox_cmd_usage(struct command *cmdtp);
+int run_command(const char *cmd);
 
 #define COMMAND_SUCCESS		0
 #define COMMAND_ERROR		1
diff --git a/include/common.h b/include/common.h
index 38a6dbf..f653c04 100644
--- a/include/common.h
+++ b/include/common.h
@@ -61,7 +61,6 @@ void __noreturn hang (void);
 
 char *size_human_readable(unsigned long long size);
 
-int run_command(const char *cmd);
 int	readline	(const char *prompt, char *buf, int len);
 
 /* common/memsize.c */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
