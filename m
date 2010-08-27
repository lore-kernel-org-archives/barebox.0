Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 27.mail-out.ovh.net ([91.121.30.210])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Ooroo-0007pF-7B
	for barebox@lists.infradead.org; Fri, 27 Aug 2010 05:49:39 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 27 Aug 2010 07:49:16 +0200
Message-Id: <1282888157-18427-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] udpate fixdep.c to linux kernel v2.6.36-rc1-168-ge36c886
To: barebox@lists.infradead.org

as autoconf.h is store in include/generated and not include/linux anymore

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 scripts/basic/fixdep.c |   55 ++++++++++++++++++++++++++---------------------
 1 files changed, 30 insertions(+), 25 deletions(-)

diff --git a/scripts/basic/fixdep.c b/scripts/basic/fixdep.c
index 668a11a..ea26b23 100644
--- a/scripts/basic/fixdep.c
+++ b/scripts/basic/fixdep.c
@@ -16,21 +16,22 @@
  * tells make when to remake a file.
  *
  * To use this list as-is however has the drawback that virtually
- * every file in the kernel includes <linux/config.h> which then again
- * includes <linux/autoconf.h>
+ * every file in the kernel includes autoconf.h.
  *
- * If the user re-runs make *config, linux/autoconf.h will be
+ * If the user re-runs make *config, autoconf.h will be
  * regenerated.  make notices that and will rebuild every file which
  * includes autoconf.h, i.e. basically all files. This is extremely
  * annoying if the user just changed CONFIG_HIS_DRIVER from n to m.
  *
  * So we play the same trick that "mkdep" played before. We replace
- * the dependency on linux/autoconf.h by a dependency on every config
+ * the dependency on autoconf.h by a dependency on every config
  * option which is mentioned in any of the listed prequisites.
  *
- * To be exact, split-include populates a tree in include/config/,
- * e.g. include/config/his/driver.h, which contains the #define/#undef
- * for the CONFIG_HIS_DRIVER option.
+ * kconfig populates a tree in include/config/ with an empty file
+ * for each config symbol and when the configuration is updated
+ * the files representing changed config options are touched
+ * which then let make pick up the changes and the files that use
+ * the config symbols are rebuilt.
  *
  * So if the user changes his CONFIG_HIS_DRIVER option, only the objects
  * which depend on "include/linux/config/his/driver.h" will be rebuilt,
@@ -72,7 +73,7 @@
  *   cmd_<target> = <cmdline>
  *
  * and then basically copies the .<target>.d file to stdout, in the
- * process filtering out the dependency on linux/autoconf.h and adding
+ * process filtering out the dependency on autoconf.h and adding
  * dependencies on include/config/my/option.h for every
  * CONFIG_MY_OPTION encountered in any of the prequisites.
  *
@@ -123,8 +124,7 @@ char *target;
 char *depfile;
 char *cmdline;
 
-void usage(void)
-
+static void usage(void)
 {
 	fprintf(stderr, "Usage: fixdep <depfile> <target> <cmdline>\n");
 	exit(1);
@@ -133,7 +133,7 @@ void usage(void)
 /*
  * Print out the commandline prefixed with cmd_<target filename> :=
  */
-void print_cmdline(void)
+static void print_cmdline(void)
 {
 	printf("cmd_%s := %s\n\n", target, cmdline);
 }
@@ -146,7 +146,7 @@ int    len_config  = 0;
  * Grow the configuration string to a desired length.
  * Usually the first growth is plenty.
  */
-void grow_config(int len)
+static void grow_config(int len)
 {
 	while (len_config + len > size_config) {
 		if (size_config == 0)
@@ -162,7 +162,7 @@ void grow_config(int len)
 /*
  * Lookup a value in the configuration string.
  */
-int is_defined_config(const char * name, int len)
+static int is_defined_config(const char * name, int len)
 {
 	const char * pconfig;
 	const char * plast = str_config + len_config - len;
@@ -178,7 +178,7 @@ int is_defined_config(const char * name, int len)
 /*
  * Add a new value to the configuration string.
  */
-void define_config(const char * name, int len)
+static void define_config(const char * name, int len)
 {
 	grow_config(len + 1);
 
@@ -190,7 +190,7 @@ void define_config(const char * name, int len)
 /*
  * Clear the set of configuration strings.
  */
-void clear_config(void)
+static void clear_config(void)
 {
 	len_config = 0;
 	define_config("", 0);
@@ -199,7 +199,7 @@ void clear_config(void)
 /*
  * Record the use of a CONFIG_* word.
  */
-void use_config(char *m, int slen)
+static void use_config(char *m, int slen)
 {
 	char s[PATH_MAX];
 	char *p;
@@ -220,7 +220,7 @@ void use_config(char *m, int slen)
 	printf("    $(wildcard include/config/%s.h) \\\n", s);
 }
 
-void parse_config_file(char *map, size_t len)
+static void parse_config_file(char *map, size_t len)
 {
 	int *end = (int *) (map + len);
 	/* start at +1, so that p can never be < map */
@@ -245,12 +245,16 @@ void parse_config_file(char *map, size_t len)
 		continue;
 
 	found:
+		if (!memcmp(q - 7, "_MODULE", 7))
+			q -= 7;
+		if( (q-p-7) < 0 )
+			continue;
 		use_config(p+7, q-p-7);
 	}
 }
 
 /* test is s ends in sub */
-int strrcmp(char *s, char *sub)
+static int strrcmp(char *s, char *sub)
 {
 	int slen = strlen(s);
 	int sublen = strlen(sub);
@@ -261,7 +265,7 @@ int strrcmp(char *s, char *sub)
 	return memcmp(s + slen - sublen, sub, sublen);
 }
 
-void do_config_file(char *filename)
+static void do_config_file(char *filename)
 {
 	struct stat st;
 	int fd;
@@ -292,7 +296,7 @@ void do_config_file(char *filename)
 	close(fd);
 }
 
-void parse_dep_file(void *map, size_t len)
+static void parse_dep_file(void *map, size_t len)
 {
 	char *m = map;
 	char *end = m + len;
@@ -320,7 +324,7 @@ void parse_dep_file(void *map, size_t len)
 			p++;
 		}
 		memcpy(s, m, p-m); s[p-m] = 0;
-		if (strrcmp(s, "include/linux/autoconf.h") &&
+		if (strrcmp(s, "include/generated/autoconf.h") &&
 		    strrcmp(s, "arch/um/include/uml-config.h") &&
 		    strrcmp(s, ".ver")) {
 			printf("  %s \\\n", s);
@@ -332,7 +336,7 @@ void parse_dep_file(void *map, size_t len)
 	printf("$(deps_%s):\n", target);
 }
 
-void print_deps(void)
+static void print_deps(void)
 {
 	struct stat st;
 	int fd;
@@ -364,13 +368,14 @@ void print_deps(void)
 	close(fd);
 }
 
-void traps(void)
+static void traps(void)
 {
 	static char test[] __attribute__((aligned(sizeof(int)))) = "CONF";
+	int *p = (int *)test;
 
-	if (*(int *)test != INT_CONF) {
+	if (*p != INT_CONF) {
 		fprintf(stderr, "fixdep: sizeof(int) != 4 or wrong endianess? %#x\n",
-			*(int *)test);
+			*p);
 		exit(2);
 	}
 }
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
