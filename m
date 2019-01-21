Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1glcOc-00019U-KI
 for barebox@lists.infradead.org; Mon, 21 Jan 2019 16:26:00 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 22 Jan 2019 01:25:11 +0900
Message-Id: <1548087912-22262-2-git-send-email-yamada.masahiro@socionext.com>
In-Reply-To: <1548087912-22262-1-git-send-email-yamada.masahiro@socionext.com>
References: <1548087912-22262-1-git-send-email-yamada.masahiro@socionext.com>
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
Subject: [PATCH 2/3] scripts: fixdep: update to v5.0-rc3
To: barebox@lists.infradead.org

The previous sync was commit c478aa16b191 ("scripts: fixdep: update
from v3.10-rc1").

This updates it to Linux 5.0-rc3. It works for barebox as is.
The code is much cleaner and optimized.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 scripts/basic/fixdep.c | 331 ++++++++++++++++++-------------------------------
 1 file changed, 124 insertions(+), 207 deletions(-)

diff --git a/scripts/basic/fixdep.c b/scripts/basic/fixdep.c
index 078fe1d..facbd60 100644
--- a/scripts/basic/fixdep.c
+++ b/scripts/basic/fixdep.c
@@ -25,7 +25,7 @@
  *
  * So we play the same trick that "mkdep" played before. We replace
  * the dependency on autoconf.h by a dependency on every config
- * option which is mentioned in any of the listed prequisites.
+ * option which is mentioned in any of the listed prerequisites.
  *
  * kconfig populates a tree in include/config/ with an empty file
  * for each config symbol and when the configuration is updated
@@ -34,7 +34,7 @@
  * the config symbols are rebuilt.
  *
  * So if the user changes his CONFIG_HIS_DRIVER option, only the objects
- * which depend on "include/linux/config/his/driver.h" will be rebuilt,
+ * which depend on "include/config/his/driver.h" will be rebuilt,
  * so most likely only his driver ;-)
  *
  * The idea above dates, by the way, back to Michael E Chastain, AFAIK.
@@ -75,15 +75,14 @@
  * and then basically copies the .<target>.d file to stdout, in the
  * process filtering out the dependency on autoconf.h and adding
  * dependencies on include/config/my/option.h for every
- * CONFIG_MY_OPTION encountered in any of the prequisites.
+ * CONFIG_MY_OPTION encountered in any of the prerequisites.
  *
  * It will also filter out all the dependencies on *.ver. We need
  * to make sure that the generated version checksum are globally up
  * to date before even starting the recursive build, so it's too late
  * at this point anyway.
  *
- * The algorithm to grep for "CONFIG_..." is bit unusual, but should
- * be fast ;-) We don't even try to really parse the header files, but
+ * We don't even try to really parse the header files, but
  * merely grep, i.e. if CONFIG_FOO is mentioned in a comment, it will
  * be picked up as well. It's not a problem with respect to
  * correctness, since that can only give too many dependencies, thus
@@ -94,35 +93,15 @@
  * (Note: it'd be easy to port over the complete mkdep state machine,
  *  but I don't think the added complexity is worth it)
  */
-/*
- * Note 2: if somebody writes HELLO_CONFIG_BOOM in a file, it will depend onto
- * CONFIG_BOOM. This could seem a bug (not too hard to fix), but please do not
- * fix it! Some UserModeLinux files (look at arch/um/) call CONFIG_BOOM as
- * UML_CONFIG_BOOM, to avoid conflicts with /usr/include/linux/autoconf.h,
- * through arch/um/include/uml-config.h; this fixdep "bug" makes sure that
- * those files will have correct dependencies.
- */
 
 #include <sys/types.h>
 #include <sys/stat.h>
-#include <sys/mman.h>
 #include <unistd.h>
 #include <fcntl.h>
 #include <string.h>
 #include <stdlib.h>
 #include <stdio.h>
-#include <limits.h>
 #include <ctype.h>
-#include <arpa/inet.h>
-
-#define INT_CONF ntohl(0x434f4e46)
-#define INT_ONFI ntohl(0x4f4e4649)
-#define INT_NFIG ntohl(0x4e464947)
-#define INT_FIG_ ntohl(0x4649475f)
-
-char *target;
-char *depfile;
-char *cmdline;
 
 static void usage(void)
 {
@@ -131,11 +110,24 @@ static void usage(void)
 }
 
 /*
- * Print out the commandline prefixed with cmd_<target filename> :=
+ * Print out a dependency path from a symbol name
  */
-static void print_cmdline(void)
+static void print_dep(const char *m, int slen, const char *dir)
 {
-	printf("cmd_%s := %s\n\n", target, cmdline);
+	int c, prev_c = '/', i;
+
+	printf("    $(wildcard %s/", dir);
+	for (i = 0; i < slen; i++) {
+		c = m[i];
+		if (c == '_')
+			c = '/';
+		else
+			c = tolower(c);
+		if (c != '/' || prev_c != '/')
+			putchar(c);
+		prev_c = c;
+	}
+	printf(".h) \\\n");
 }
 
 struct item {
@@ -192,121 +184,92 @@ static void define_config(const char *name, int len, unsigned int hash)
 }
 
 /*
- * Clear the set of configuration strings.
- */
-static void clear_config(void)
-{
-	struct item *aux, *next;
-	unsigned int i;
-
-	for (i = 0; i < HASHSZ; i++) {
-		for (aux = hashtab[i]; aux; aux = next) {
-			next = aux->next;
-			free(aux);
-		}
-		hashtab[i] = NULL;
-	}
-}
-
-/*
  * Record the use of a CONFIG_* word.
  */
 static void use_config(const char *m, int slen)
 {
 	unsigned int hash = strhash(m, slen);
-	int c, i;
 
 	if (is_defined_config(m, slen, hash))
 	    return;
 
 	define_config(m, slen, hash);
-
-	printf("    $(wildcard include/config/");
-	for (i = 0; i < slen; i++) {
-		c = m[i];
-		if (c == '_')
-			c = '/';
-		else
-			c = tolower(c);
-		putchar(c);
-	}
-	printf(".h) \\\n");
+	print_dep(m, slen, "include/config");
 }
 
-static void parse_config_file(const char *map, size_t len)
+/* test if s ends in sub */
+static int str_ends_with(const char *s, int slen, const char *sub)
 {
-	const int *end = (const int *) (map + len);
-	/* start at +1, so that p can never be < map */
-	const int *m   = (const int *) map + 1;
-	const char *p, *q;
-
-	for (; m < end; m++) {
-		if (*m == INT_CONF) { p = (char *) m  ; goto conf; }
-		if (*m == INT_ONFI) { p = (char *) m-1; goto conf; }
-		if (*m == INT_NFIG) { p = (char *) m-2; goto conf; }
-		if (*m == INT_FIG_) { p = (char *) m-3; goto conf; }
-		continue;
-	conf:
-		if (p > map + len - 7)
-			continue;
-		if (memcmp(p, "CONFIG_", 7))
-			continue;
-		for (q = p + 7; q < map + len; q++) {
-			if (!(isalnum(*q) || *q == '_'))
-				goto found;
-		}
-		continue;
+	int sublen = strlen(sub);
 
-	found:
-		if (!memcmp(q - 7, "_MODULE", 7))
-			q -= 7;
-		if( (q-p-7) < 0 )
-			continue;
-		use_config(p+7, q-p-7);
-	}
+	if (sublen > slen)
+		return 0;
+
+	return !memcmp(s + slen - sublen, sub, sublen);
 }
 
-/* test is s ends in sub */
-static int strrcmp(char *s, char *sub)
+static void parse_config_file(const char *p)
 {
-	int slen = strlen(s);
-	int sublen = strlen(sub);
-
-	if (sublen > slen)
-		return 1;
+	const char *q, *r;
+	const char *start = p;
 
-	return memcmp(s + slen - sublen, sub, sublen);
+	while ((p = strstr(p, "CONFIG_"))) {
+		if (p > start && (isalnum(p[-1]) || p[-1] == '_')) {
+			p += 7;
+			continue;
+		}
+		p += 7;
+		q = p;
+		while (*q && (isalnum(*q) || *q == '_'))
+			q++;
+		if (str_ends_with(p, q - p, "_MODULE"))
+			r = q - 7;
+		else
+			r = q;
+		if (r > p)
+			use_config(p, r - p);
+		p = q;
+	}
 }
 
-static void do_config_file(const char *filename)
+static void *read_file(const char *filename)
 {
 	struct stat st;
 	int fd;
-	void *map;
+	char *buf;
 
 	fd = open(filename, O_RDONLY);
 	if (fd < 0) {
-		fprintf(stderr, "fixdep: error opening config file: ");
+		fprintf(stderr, "fixdep: error opening file: ");
 		perror(filename);
 		exit(2);
 	}
-	fstat(fd, &st);
-	if (st.st_size == 0) {
-		close(fd);
-		return;
+	if (fstat(fd, &st) < 0) {
+		fprintf(stderr, "fixdep: error fstat'ing file: ");
+		perror(filename);
+		exit(2);
 	}
-	map = mmap(NULL, st.st_size, PROT_READ, MAP_PRIVATE, fd, 0);
-	if ((long) map == -1) {
-		perror("fixdep: mmap");
-		close(fd);
-		return;
+	buf = malloc(st.st_size + 1);
+	if (!buf) {
+		perror("fixdep: malloc");
+		exit(2);
 	}
+	if (read(fd, buf, st.st_size) != st.st_size) {
+		perror("fixdep: read");
+		exit(2);
+	}
+	buf[st.st_size] = '\0';
+	close(fd);
 
-	parse_config_file(map, st.st_size);
-
-	munmap(map, st.st_size);
+	return buf;
+}
 
-	close(fd);
+/* Ignore certain dependencies */
+static int is_ignored_file(const char *s, int len)
+{
+	return str_ends_with(s, len, "include/generated/autoconf.h") ||
+	       str_ends_with(s, len, "include/generated/autoksyms.h") ||
+	       str_ends_with(s, len, ".ver");
 }
 
 /*
@@ -314,72 +277,70 @@ static void do_config_file(const char *filename)
  * assignments are parsed not only by make, but also by the rather simple
  * parser in scripts/mod/sumversion.c.
  */
-static void parse_dep_file(void *map, size_t len)
+static void parse_dep_file(char *m, const char *target)
 {
-	char *m = map;
-	char *end = m + len;
 	char *p;
-	char s[PATH_MAX];
-	int is_target;
+	int is_last, is_target;
 	int saw_any_target = 0;
 	int is_first_dep = 0;
+	void *buf;
 
-	clear_config();
-
-	while (m < end) {
+	while (1) {
 		/* Skip any "white space" */
-		while (m < end && (*m == ' ' || *m == '\\' || *m == '\n'))
+		while (*m == ' ' || *m == '\\' || *m == '\n')
 			m++;
+
+		if (!*m)
+			break;
+
 		/* Find next "white space" */
 		p = m;
-		while (p < end && *p != ' ' && *p != '\\' && *p != '\n')
+		while (*p && *p != ' ' && *p != '\\' && *p != '\n')
 			p++;
+		is_last = (*p == '\0');
 		/* Is the token we found a target name? */
 		is_target = (*(p-1) == ':');
 		/* Don't write any target names into the dependency file */
 		if (is_target) {
 			/* The /next/ file is the first dependency */
 			is_first_dep = 1;
-		} else {
-			/* Save this token/filename */
-			memcpy(s, m, p-m);
-			s[p - m] = 0;
-
-			/* Ignore certain dependencies */
-			if (strrcmp(s, "include/generated/autoconf.h") &&
-			    strrcmp(s, "arch/um/include/uml-config.h") &&
-			    strrcmp(s, "include/linux/kconfig.h") &&
-			    strrcmp(s, ".ver")) {
+		} else if (!is_ignored_file(m, p - m)) {
+			*p = '\0';
+
+			/*
+			 * Do not list the source file as dependency, so that
+			 * kbuild is not confused if a .c file is rewritten
+			 * into .S or vice versa. Storing it in source_* is
+			 * needed for modpost to compute srcversions.
+			 */
+			if (is_first_dep) {
 				/*
-				 * Do not list the source file as dependency,
-				 * so that kbuild is not confused if a .c file
-				 * is rewritten into .S or vice versa. Storing
-				 * it in source_* is needed for modpost to
-				 * compute srcversions.
+				 * If processing the concatenation of multiple
+				 * dependency files, only process the first
+				 * target name, which will be the original
+				 * source name, and ignore any other target
+				 * names, which will be intermediate temporary
+				 * files.
 				 */
-				if (is_first_dep) {
-					/*
-					 * If processing the concatenation of
-					 * multiple dependency files, only
-					 * process the first target name, which
-					 * will be the original source name,
-					 * and ignore any other target names,
-					 * which will be intermediate temporary
-					 * files.
-					 */
-					if (!saw_any_target) {
-						saw_any_target = 1;
-						printf("source_%s := %s\n\n",
-							target, s);
-						printf("deps_%s := \\\n",
-							target);
-					}
-					is_first_dep = 0;
-				} else
-					printf("  %s \\\n", s);
-				do_config_file(s);
+				if (!saw_any_target) {
+					saw_any_target = 1;
+					printf("source_%s := %s\n\n",
+					       target, m);
+					printf("deps_%s := \\\n", target);
+				}
+				is_first_dep = 0;
+			} else {
+				printf("  %s \\\n", m);
 			}
+
+			buf = read_file(m);
+			parse_config_file(buf);
+			free(buf);
 		}
+
+		if (is_last)
+			break;
+
 		/*
 		 * Start searching for next token immediately after the first
 		 * "whitespace" character that follows this token.
@@ -396,57 +357,10 @@ static void parse_dep_file(void *map, size_t len)
 	printf("$(deps_%s):\n", target);
 }
 
-static void print_deps(void)
-{
-	struct stat st;
-	int fd;
-	void *map;
-
-	fd = open(depfile, O_RDONLY);
-	if (fd < 0) {
-		fprintf(stderr, "fixdep: error opening depfile: ");
-		perror(depfile);
-		exit(2);
-	}
-	if (fstat(fd, &st) < 0) {
-                fprintf(stderr, "fixdep: error fstat'ing depfile: ");
-                perror(depfile);
-                exit(2);
-        }
-	if (st.st_size == 0) {
-		fprintf(stderr,"fixdep: %s is empty\n",depfile);
-		close(fd);
-		return;
-	}
-	map = mmap(NULL, st.st_size, PROT_READ, MAP_PRIVATE, fd, 0);
-	if ((long) map == -1) {
-		perror("fixdep: mmap");
-		close(fd);
-		return;
-	}
-
-	parse_dep_file(map, st.st_size);
-
-	munmap(map, st.st_size);
-
-	close(fd);
-}
-
-static void traps(void)
-{
-	static char test[] __attribute__((aligned(sizeof(int)))) = "CONF";
-	int *p = (int *)test;
-
-	if (*p != INT_CONF) {
-		fprintf(stderr, "fixdep: sizeof(int) != 4 or wrong endianness? %#x\n",
-			*p);
-		exit(2);
-	}
-}
-
 int main(int argc, char *argv[])
 {
-	traps();
+	const char *depfile, *target, *cmdline;
+	void *buf;
 
 	if (argc != 4)
 		usage();
@@ -455,8 +369,11 @@ int main(int argc, char *argv[])
 	target = argv[2];
 	cmdline = argv[3];
 
-	print_cmdline();
-	print_deps();
+	printf("cmd_%s := %s\n\n", target, cmdline);
+
+	buf = read_file(depfile);
+	parse_dep_file(buf, target);
+	free(buf);
 
 	return 0;
 }
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
