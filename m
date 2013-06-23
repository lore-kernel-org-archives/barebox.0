Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UqqX5-0000mo-E7
 for barebox@lists.infradead.org; Sun, 23 Jun 2013 20:05:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 23 Jun 2013 22:04:44 +0200
Message-Id: <1372017884-28116-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] add function to get boardinfo string
To: barebox@lists.infradead.org

When using devicetrees the boardinfo (or model) can be obtained
from the devicetree. Add a function to get the boardinfo so that
we have a chance to add information from the devicetree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/misc.c                 | 12 ++++++++++++
 common/version.c              | 10 +---------
 include/common.h              |  2 ++
 lib/process_escape_sequence.c |  2 +-
 4 files changed, 16 insertions(+), 10 deletions(-)

diff --git a/common/misc.c b/common/misc.c
index e9fdacc..414c909 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -125,3 +125,15 @@ EXPORT_SYMBOL(perror);
 
 void (*do_execute)(void *func, int argc, char *argv[]);
 EXPORT_SYMBOL(do_execute);
+
+const char *barebox_boardinfo(void)
+{
+	const char *boardinfo;
+
+	boardinfo = of_get_model();
+	if (!boardinfo)
+		boardinfo = CONFIG_BOARDINFO;
+
+	return boardinfo;
+}
+EXPORT_SYMBOL(barebox_boardinfo);
diff --git a/common/version.c b/common/version.c
index d33f4d0..e21dbbe 100644
--- a/common/version.c
+++ b/common/version.c
@@ -1,7 +1,6 @@
 #include <common.h>
 #include <generated/compile.h>
 #include <generated/utsrelease.h>
-#include <of.h>
 
 const char version_string[] =
 	"barebox " UTS_RELEASE " " UTS_VERSION "\n";
@@ -9,13 +8,6 @@ EXPORT_SYMBOL(version_string);
 
 void barebox_banner (void)
 {
-	const char *board;
-
-	board = of_get_model();
-
-	if (!board)
-		board = CONFIG_BOARDINFO;
-
 	pr_info("\n\n%s\n\n", version_string);
-	pr_info("Board: %s\n", board);
+	pr_info("Board: %s\n", barebox_boardinfo());
 }
diff --git a/include/common.h b/include/common.h
index 59fcd35..88af931 100644
--- a/include/common.h
+++ b/include/common.h
@@ -233,6 +233,8 @@ void barebox_banner(void);
 static inline void barebox_banner(void) {}
 #endif
 
+const char *barebox_boardinfo(void);
+
 #define IOMEM(addr)	((void __force __iomem *)(addr))
 
 #define DIV_ROUND_UP(n,d)	(((n) + (d) - 1) / (d))
diff --git a/lib/process_escape_sequence.c b/lib/process_escape_sequence.c
index 7cc3898..612976b 100644
--- a/lib/process_escape_sequence.c
+++ b/lib/process_escape_sequence.c
@@ -54,7 +54,7 @@ int process_escape_sequence(const char *source, char *dest, int destlen)
 				dest[i++] = 0x1b;
 				break;
 			case 'h':
-				i += snprintf(dest + i, destlen - i, "%s", CONFIG_BOARDINFO);
+				i += snprintf(dest + i, destlen - i, "%s", barebox_boardinfo());
 				break;
 			case 'w':
 				i += snprintf(dest + i, destlen - i, "%s", getcwd());
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
