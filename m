Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goNJe-00050H-Nk
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 06:56:16 +0000
Received: by mail-pf1-x443.google.com with SMTP id u6so9213713pfh.11
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2019 22:56:14 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 Jan 2019 22:55:31 -0800
Message-Id: <20190129065549.29161-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190129065549.29161-1-andrew.smirnov@gmail.com>
References: <20190129065549.29161-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 01/19] commands: Move mem_parse_options() to lib/misc.c
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

As a first step of de-cluttering /dev/mem related code, move
mem_parse_options() out of commands/mem.c into lib/misc.c where it
seem to fit better. With this change we no longer explicitly turn this
code off using CONFIG_COMPILE_MEMORY and instead rely on LTO to get
rid of it when it's not being used.

While at it, also fix return value by replacing COMMAND_ERROR_USAGE
with -EINVAL. All of the callers of mem_parse_options() expect
negative error code as a sign of failure and COMMAND_ERROR_USAGE is
not negative.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/mem.c | 40 ----------------------------------------
 lib/misc.c     | 42 ++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 42 insertions(+), 40 deletions(-)

diff --git a/commands/mem.c b/commands/mem.c
index a9e12f3e5..62488bf52 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -41,46 +41,6 @@
 
 char *mem_rw_buf;
 
-/*
- * Common function for parsing options for the 'md', 'mw', 'memcpy', 'memcmp'
- * commands.
- */
-int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
-		char **sourcefile, char **destfile, int *swab)
-{
-	int opt;
-
-	while((opt = getopt(argc, argv, optstr)) > 0) {
-		switch(opt) {
-		case 'b':
-			*mode = O_RWSIZE_1;
-			break;
-		case 'w':
-			*mode = O_RWSIZE_2;
-			break;
-		case 'l':
-			*mode = O_RWSIZE_4;
-			break;
-		case 'q':
-			*mode = O_RWSIZE_8;
-			break;
-		case 's':
-			*sourcefile = optarg;
-			break;
-		case 'd':
-			*destfile = optarg;
-			break;
-		case 'x':
-			*swab = 1;
-			break;
-		default:
-			return COMMAND_ERROR_USAGE;
-		}
-	}
-
-	return 0;
-}
-
 static struct cdev_operations memops = {
 	.read  = mem_read,
 	.write = mem_write,
diff --git a/lib/misc.c b/lib/misc.c
index 1d20e1b09..cd420a57d 100644
--- a/lib/misc.c
+++ b/lib/misc.c
@@ -23,6 +23,7 @@
 #include <fs.h>
 #include <string.h>
 #include <linux/ctype.h>
+#include <getopt.h>
 
 /*
  * Like simple_strtoull() but handles an optional G, M, K or k
@@ -129,3 +130,44 @@ success:
 	return 0;
 }
 EXPORT_SYMBOL(parse_area_spec);
+
+/*
+ * Common function for parsing options for the 'md', 'mw', 'memcpy', 'memcmp'
+ * commands.
+ */
+int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
+		      char **sourcefile, char **destfile, int *swab)
+{
+	int opt;
+
+	while((opt = getopt(argc, argv, optstr)) > 0) {
+		switch(opt) {
+		case 'b':
+			*mode = O_RWSIZE_1;
+			break;
+		case 'w':
+			*mode = O_RWSIZE_2;
+			break;
+		case 'l':
+			*mode = O_RWSIZE_4;
+			break;
+		case 'q':
+			*mode = O_RWSIZE_8;
+			break;
+		case 's':
+			*sourcefile = optarg;
+			break;
+		case 'd':
+			*destfile = optarg;
+			break;
+		case 'x':
+			*swab = 1;
+			break;
+		default:
+			return -EINVAL;
+		}
+	}
+
+	return 0;
+}
+
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
