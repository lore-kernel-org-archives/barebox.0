Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOcvX-0002Yi-5m
 for barebox@lists.infradead.org; Wed, 15 Apr 2020 07:57:46 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 15 Apr 2020 16:57:05 +0900
Message-Id: <20200415075705.54683-3-masahiroy@kernel.org>
In-Reply-To: <20200415075705.54683-1-masahiroy@kernel.org>
References: <20200415075705.54683-1-masahiroy@kernel.org>
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
Subject: [PATCH 3/3] fixdep: update to Linux 5.7-rc1
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

scripts/basic/ works for barebox as drop-in.

Update scripts/basic/ to Linux 5.7-rc1.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/basic/.gitignore |  2 +-
 scripts/basic/Makefile   | 19 ++++---------
 scripts/basic/fixdep.c   | 61 ++++++++++++++++++++++++++++------------
 3 files changed, 49 insertions(+), 33 deletions(-)

diff --git a/scripts/basic/.gitignore b/scripts/basic/.gitignore
index dc24f5f4c..98ae1f509 100644
--- a/scripts/basic/.gitignore
+++ b/scripts/basic/.gitignore
@@ -1,2 +1,2 @@
-docproc
+# SPDX-License-Identifier: GPL-2.0-only
 fixdep
diff --git a/scripts/basic/Makefile b/scripts/basic/Makefile
index 9e92d899a..290dd27d2 100644
--- a/scripts/basic/Makefile
+++ b/scripts/basic/Makefile
@@ -1,15 +1,6 @@
-###
-# Makefile.basic list the most basic programs used during the build process.
-# The programs listed herein is what is needed to do the basic stuff,
-# such as fix dependency file.
-# This initial step is needed to avoid files to be recompiled
-# when barebox configuration changes (which is what happens when
-# .config is included by main Makefile.
-# ---------------------------------------------------------------------------
-# fixdep: 	 Used to generate dependency information during build process
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# fixdep: used to generate dependency information during build process
 
-hostprogs-y	:= fixdep
-always		:= $(hostprogs-y)
-
-# fixdep is needed to compile other host programs
-$(addprefix $(obj)/,$(filter-out fixdep,$(always))): $(obj)/fixdep
+hostprogs	:= fixdep
+always-y	:= $(hostprogs)
diff --git a/scripts/basic/fixdep.c b/scripts/basic/fixdep.c
index facbd603a..877ca2c88 100644
--- a/scripts/basic/fixdep.c
+++ b/scripts/basic/fixdep.c
@@ -77,11 +77,6 @@
  * dependencies on include/config/my/option.h for every
  * CONFIG_MY_OPTION encountered in any of the prerequisites.
  *
- * It will also filter out all the dependencies on *.ver. We need
- * to make sure that the generated version checksum are globally up
- * to date before even starting the recursive build, so it's too late
- * at this point anyway.
- *
  * We don't even try to really parse the header files, but
  * merely grep, i.e. if CONFIG_FOO is mentioned in a comment, it will
  * be picked up as well. It's not a problem with respect to
@@ -99,6 +94,7 @@
 #include <unistd.h>
 #include <fcntl.h>
 #include <string.h>
+#include <stdarg.h>
 #include <stdlib.h>
 #include <stdio.h>
 #include <ctype.h>
@@ -109,6 +105,36 @@ static void usage(void)
 	exit(1);
 }
 
+/*
+ * In the intended usage of this program, the stdout is redirected to .*.cmd
+ * files. The return value of printf() and putchar() must be checked to catch
+ * any error, e.g. "No space left on device".
+ */
+static void xprintf(const char *format, ...)
+{
+	va_list ap;
+	int ret;
+
+	va_start(ap, format);
+	ret = vprintf(format, ap);
+	if (ret < 0) {
+		perror("fixdep");
+		exit(1);
+	}
+	va_end(ap);
+}
+
+static void xputchar(int c)
+{
+	int ret;
+
+	ret = putchar(c);
+	if (ret == EOF) {
+		perror("fixdep");
+		exit(1);
+	}
+}
+
 /*
  * Print out a dependency path from a symbol name
  */
@@ -116,7 +142,7 @@ static void print_dep(const char *m, int slen, const char *dir)
 {
 	int c, prev_c = '/', i;
 
-	printf("    $(wildcard %s/", dir);
+	xprintf("    $(wildcard %s/", dir);
 	for (i = 0; i < slen; i++) {
 		c = m[i];
 		if (c == '_')
@@ -124,10 +150,10 @@ static void print_dep(const char *m, int slen, const char *dir)
 		else
 			c = tolower(c);
 		if (c != '/' || prev_c != '/')
-			putchar(c);
+			xputchar(c);
 		prev_c = c;
 	}
-	printf(".h) \\\n");
+	xprintf(".h) \\\n");
 }
 
 struct item {
@@ -220,7 +246,7 @@ static void parse_config_file(const char *p)
 		}
 		p += 7;
 		q = p;
-		while (*q && (isalnum(*q) || *q == '_'))
+		while (isalnum(*q) || *q == '_')
 			q++;
 		if (str_ends_with(p, q - p, "_MODULE"))
 			r = q - 7;
@@ -268,8 +294,7 @@ static void *read_file(const char *filename)
 static int is_ignored_file(const char *s, int len)
 {
 	return str_ends_with(s, len, "include/generated/autoconf.h") ||
-	       str_ends_with(s, len, "include/generated/autoksyms.h") ||
-	       str_ends_with(s, len, ".ver");
+	       str_ends_with(s, len, "include/generated/autoksyms.h");
 }
 
 /*
@@ -324,13 +349,13 @@ static void parse_dep_file(char *m, const char *target)
 				 */
 				if (!saw_any_target) {
 					saw_any_target = 1;
-					printf("source_%s := %s\n\n",
-					       target, m);
-					printf("deps_%s := \\\n", target);
+					xprintf("source_%s := %s\n\n",
+						target, m);
+					xprintf("deps_%s := \\\n", target);
 				}
 				is_first_dep = 0;
 			} else {
-				printf("  %s \\\n", m);
+				xprintf("  %s \\\n", m);
 			}
 
 			buf = read_file(m);
@@ -353,8 +378,8 @@ static void parse_dep_file(char *m, const char *target)
 		exit(1);
 	}
 
-	printf("\n%s: $(deps_%s)\n\n", target, target);
-	printf("$(deps_%s):\n", target);
+	xprintf("\n%s: $(deps_%s)\n\n", target, target);
+	xprintf("$(deps_%s):\n", target);
 }
 
 int main(int argc, char *argv[])
@@ -369,7 +394,7 @@ int main(int argc, char *argv[])
 	target = argv[2];
 	cmdline = argv[3];
 
-	printf("cmd_%s := %s\n\n", target, cmdline);
+	xprintf("cmd_%s := %s\n\n", target, cmdline);
 
 	buf = read_file(depfile);
 	parse_dep_file(buf, target);
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
