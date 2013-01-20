Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Twwvu-00043a-SZ
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 15:35:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 20 Jan 2013 16:35:13 +0100
Message-Id: <1358696119-18387-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1358696119-18387-1-git-send-email-s.hauer@pengutronix.de>
References: <1358696119-18387-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 04/10] move prototypes for envfs_* to envfs.h
To: barebox@lists.infradead.org

environment.h is for environment variables, not for the environment
storage (envfs), so move the prototypes to envfs.h

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beaglebone/board.c |    2 +-
 arch/arm/boards/panda/board.c      |    2 +-
 commands/loadenv.c                 |    2 +-
 commands/saveenv.c                 |    2 +-
 common/startup.c                   |    2 +-
 include/envfs.h                    |    8 +++++++-
 include/environment.h              |    7 -------
 7 files changed, 12 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
index f9ac7a4..86de3b0 100644
--- a/arch/arm/boards/beaglebone/board.c
+++ b/arch/arm/boards/beaglebone/board.c
@@ -27,7 +27,7 @@
 #include <driver.h>
 #include <fs.h>
 #include <linux/stat.h>
-#include <environment.h>
+#include <envfs.h>
 #include <sizes.h>
 #include <io.h>
 #include <ns16550.h>
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index c5d8fe6..f1fbd5e 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -19,7 +19,7 @@
 #include <sizes.h>
 #include <asm/mmu.h>
 #include <mach/gpio.h>
-#include <environment.h>
+#include <envfs.h>
 #include <mach/xload.h>
 #include <i2c/i2c.h>
 #include <gpio.h>
diff --git a/commands/loadenv.c b/commands/loadenv.c
index 48284d7..14b9643 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -23,7 +23,7 @@
 #include <common.h>
 #include <getopt.h>
 #include <command.h>
-#include <environment.h>
+#include <envfs.h>
 #include <fs.h>
 
 static int do_loadenv(int argc, char *argv[])
diff --git a/commands/saveenv.c b/commands/saveenv.c
index dd0de7f..7f371a8 100644
--- a/commands/saveenv.c
+++ b/commands/saveenv.c
@@ -25,7 +25,7 @@
 #include <errno.h>
 #include <fs.h>
 #include <fcntl.h>
-#include <environment.h>
+#include <envfs.h>
 
 static int do_saveenv(int argc, char *argv[])
 {
diff --git a/common/startup.c b/common/startup.c
index 6309f53..c36bf7c 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -32,7 +32,7 @@
 #include <debug_ll.h>
 #include <fs.h>
 #include <linux/stat.h>
-#include <environment.h>
+#include <envfs.h>
 #include <asm/sections.h>
 
 extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
diff --git a/include/envfs.h b/include/envfs.h
index 3d14fcb..2db55ed 100644
--- a/include/envfs.h
+++ b/include/envfs.h
@@ -89,5 +89,11 @@ struct envfs_super {
 #error "__BYTE_ORDER must be __LITTLE_ENDIAN or __BIG_ENDIAN"
 #endif
 
-#endif /* _ENVFS_H */
+#define ENV_FLAG_NO_OVERWRITE	(1 << 0)
+int envfs_load(char *filename, char *dirname, unsigned flags);
+int envfs_save(char *filename, char *dirname);
+
+/* defaults to /dev/env0 */
+extern char *default_environment_path;
 
+#endif /* _ENVFS_H */
diff --git a/include/environment.h b/include/environment.h
index 65f254b..6500ebb 100644
--- a/include/environment.h
+++ b/include/environment.h
@@ -72,17 +72,10 @@ static inline int export(const char *var)
 int env_pop_context(void);
 int env_push_context(void);
 
-/* defaults to /dev/env0 */
-extern char *default_environment_path;
-
 int export(const char *);
 
 #endif /* __BAREBOX__ */
 
-#define ENV_FLAG_NO_OVERWRITE	(1 << 0)
-int envfs_load(char *filename, char *dirname, unsigned flags);
-int envfs_save(char *filename, char *dirname);
-
 #endif	/* _ENVIRONMENT_H_ */
 
 /**
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
