Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-x22e.google.com ([2607:f8b0:400e:c01::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjqWG-0003ff-Ek
 for barebox@lists.infradead.org; Tue, 04 Jun 2013 12:39:21 +0000
Received: by mail-pb0-f46.google.com with SMTP id rq2so181074pbb.5
 for <barebox@lists.infradead.org>; Tue, 04 Jun 2013 05:38:55 -0700 (PDT)
From: Masaki Muranaka <monaka@monami-ya.jp>
Date: Tue,  4 Jun 2013 21:38:32 +0900
Message-Id: <1370349512-75630-3-git-send-email-monaka@monami-ya.jp>
In-Reply-To: <1370349512-75630-1-git-send-email-monaka@monami-ya.jp>
References: <1370349512-75630-1-git-send-email-monaka@monami-ya.jp>
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
Subject: [PATCH 3/3] Use stdlib.h instead of malloc.h
To: barebox@lists.infradead.org

From: Masaki Muranaka <monaka@monami-ya.com>

Signed-off-by: Masaki Muranaka <monaka@monami-ya.jp>
---
 commands/digest.c      | 2 +-
 commands/loadb.c       | 2 +-
 commands/mem.c         | 2 +-
 commands/of_property.c | 2 +-
 common/command.c       | 2 +-
 common/digest.c        | 2 +-
 common/env.c           | 2 +-
 common/environment.c   | 2 +-
 common/hush.c          | 2 +-
 common/password.c      | 3 +--
 common/startup.c       | 2 +-
 common/uimage.c        | 2 +-
 12 files changed, 12 insertions(+), 13 deletions(-)

diff --git a/commands/digest.c b/commands/digest.c
index c9bb132..6470a2e 100644
--- a/commands/digest.c
+++ b/commands/digest.c
@@ -23,7 +23,7 @@
 #include <fcntl.h>
 #include <errno.h>
 #include <xfuncs.h>
-#include <malloc.h>
+#include <stdlib.h>
 #include <digest.h>
 
 static int do_digest(char *algorithm, int argc, char *argv[])
diff --git a/commands/loadb.c b/commands/loadb.c
index a2f3315..d7895c9 100644
--- a/commands/loadb.c
+++ b/commands/loadb.c
@@ -38,7 +38,7 @@
 #include <getopt.h>
 #include <fs.h>
 #include <fcntl.h>
-#include <malloc.h>
+#include <stdlib.h>
 
 #define XON_CHAR	17
 #define XOFF_CHAR	19
diff --git a/commands/mem.c b/commands/mem.c
index 568050d..1caa92c 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -25,7 +25,7 @@
 #include <command.h>
 #include <init.h>
 #include <driver.h>
-#include <malloc.h>
+#include <stdlib.h>
 #include <errno.h>
 #include <fs.h>
 #include <fcntl.h>
diff --git a/commands/of_property.c b/commands/of_property.c
index 44bb388..1919b3d 100644
--- a/commands/of_property.c
+++ b/commands/of_property.c
@@ -23,7 +23,7 @@
 #include <of.h>
 #include <command.h>
 #include <fs.h>
-#include <malloc.h>
+#include <stdlib.h>
 #include <linux/ctype.h>
 #include <asm/byteorder.h>
 #include <errno.h>
diff --git a/common/command.c b/common/command.c
index 7f2b777..b3804b8 100644
--- a/common/command.c
+++ b/common/command.c
@@ -24,7 +24,7 @@
 #include <common.h>
 #include <command.h>
 #include <xfuncs.h>
-#include <malloc.h>
+#include <stdlib.h>
 #include <environment.h>
 #include <linux/list.h>
 #include <init.h>
diff --git a/common/digest.c b/common/digest.c
index ae414ba..80e8502 100644
--- a/common/digest.c
+++ b/common/digest.c
@@ -18,7 +18,7 @@
 
 #include <common.h>
 #include <digest.h>
-#include <malloc.h>
+#include <stdlib.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <linux/stat.h>
diff --git a/common/env.c b/common/env.c
index 33a871f..e8a57f4 100644
--- a/common/env.c
+++ b/common/env.c
@@ -24,7 +24,7 @@
 
 #include <common.h>
 #include <driver.h>
-#include <malloc.h>
+#include <stdlib.h>
 #include <xfuncs.h>
 #include <errno.h>
 #include <init.h>
diff --git a/common/environment.c b/common/environment.c
index 78cd45c..c0bd629 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -27,7 +27,7 @@
 #ifdef __BAREBOX__
 #include <common.h>
 #include <command.h>
-#include <malloc.h>
+#include <stdlib.h>
 #include <errno.h>
 #include <fs.h>
 #include <fcntl.h>
diff --git a/common/hush.c b/common/hush.c
index a3235ba..a7e4571 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -106,7 +106,7 @@
  * General Public License for more details.
  *
  */
-#include <malloc.h>         /* malloc, free, realloc*/
+#include <stdlib.h>         /* malloc, free, realloc*/
 #include <xfuncs.h>
 #include <linux/ctype.h>    /* isalpha, isdigit */
 #include <common.h>        /* readline */
diff --git a/common/password.c b/common/password.c
index d157a11..830f724 100644
--- a/common/password.c
+++ b/common/password.c
@@ -22,8 +22,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <digest.h>
-#include <malloc.h>
-#include <xfuncs.h>
+#include <stdlib.h>
 #include <clock.h>
 
 #if defined(CONFIG_PASSWD_SUM_MD5)
diff --git a/common/startup.c b/common/startup.c
index ff00ca7..d709089 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -28,7 +28,7 @@
 #include <common.h>
 #include <init.h>
 #include <command.h>
-#include <malloc.h>
+#include <stdlib.h>
 #include <debug_ll.h>
 #include <fs.h>
 #include <linux/stat.h>
diff --git a/common/uimage.c b/common/uimage.c
index 06f97f0..c9ae311 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -19,7 +19,7 @@
  */
 #include <common.h>
 #include <image.h>
-#include <malloc.h>
+#include <stdlib.h>
 #include <errno.h>
 #include <libbb.h>
 #include <uncompress.h>
-- 
1.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
