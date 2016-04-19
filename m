Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1asQDj-00031U-5S
 for barebox@lists.infradead.org; Tue, 19 Apr 2016 07:37:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Apr 2016 09:36:41 +0200
Message-Id: <1461051412-25711-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/14] include: move shell prototypes to shell.h
To: Barebox List <barebox@lists.infradead.org>

We have a shell,h, so move shell specific prototypes there.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/menutree.c |  1 +
 common/startup.c  |  1 +
 include/common.h  | 11 -----------
 include/shell.h   | 11 +++++++++++
 4 files changed, 13 insertions(+), 11 deletions(-)

diff --git a/common/menutree.c b/common/menutree.c
index 160ba9a..1505ec8 100644
--- a/common/menutree.c
+++ b/common/menutree.c
@@ -16,6 +16,7 @@
 #include <glob.h>
 #include <menu.h>
 #include <fs.h>
+#include <shell.h>
 #include <libfile.h>
 
 #include <linux/stat.h>
diff --git a/common/startup.c b/common/startup.c
index 093a23b..432be67 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -30,6 +30,7 @@
  * @brief Main entry into the C part of barebox
  */
 #include <common.h>
+#include <shell.h>
 #include <init.h>
 #include <command.h>
 #include <malloc.h>
diff --git a/include/common.h b/include/common.h
index cab98d6..ea349be 100644
--- a/include/common.h
+++ b/include/common.h
@@ -102,17 +102,6 @@ extern int (*barebox_main)(void);
 void __noreturn start_barebox(void);
 void shutdown_barebox(void);
 
-int run_shell(void);
-
-#ifdef CONFIG_SHELL_HUSH
-char *shell_expand(char *str);
-#else
-static inline char *shell_expand(char *str)
-{
-	return strdup(str);
-}
-#endif
-
 #define ALIGN_DOWN(x, a)	((x) & ~((typeof(x))(a) - 1))
 
 #define ARRAY_AND_SIZE(x)	(x), ARRAY_SIZE(x)
diff --git a/include/shell.h b/include/shell.h
index b98cac3..65dad0e 100644
--- a/include/shell.h
+++ b/include/shell.h
@@ -9,4 +9,15 @@
 
 int shell_get_last_return_code(void);
 
+int run_shell(void);
+
+#ifdef CONFIG_SHELL_HUSH
+char *shell_expand(char *str);
+#else
+static inline char *shell_expand(char *str)
+{
+	return strdup(str);
+}
+#endif
+
 #endif /* __SHELL_H__ */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
