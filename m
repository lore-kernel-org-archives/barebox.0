Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UeQrK-0001R3-S9
 for barebox@lists.infradead.org; Mon, 20 May 2013 14:14:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 May 2013 16:14:15 +0200
Message-Id: <1369059260-28872-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369059260-28872-1-git-send-email-s.hauer@pengutronix.de>
References: <1369059260-28872-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/8] scripts: fixdep: update from v3.10-rc1
To: barebox@lists.infradead.org

This brings us the following which we need for dtb file generation.

  commit 2ab8a99661f4ce052bbad064237c441371df8751
  Author: Stephen Warren <swarren@nvidia.com>
  Date:   Wed Mar 6 10:27:45 2013 -0700

      kbuild: fixdep: support concatenated dep files

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/basic/fixdep.c | 206 ++++++++++++++++++++++++++++++++-----------------
 1 file changed, 135 insertions(+), 71 deletions(-)

diff --git a/scripts/basic/fixdep.c b/scripts/basic/fixdep.c
index ea26b23..078fe1d 100644
--- a/scripts/basic/fixdep.c
+++ b/scripts/basic/fixdep.c
@@ -138,38 +138,36 @@ static void print_cmdline(void)
 	printf("cmd_%s := %s\n\n", target, cmdline);
 }
 
-char * str_config  = NULL;
-int    size_config = 0;
-int    len_config  = 0;
+struct item {
+	struct item	*next;
+	unsigned int	len;
+	unsigned int	hash;
+	char		name[0];
+};
 
-/*
- * Grow the configuration string to a desired length.
- * Usually the first growth is plenty.
- */
-static void grow_config(int len)
-{
-	while (len_config + len > size_config) {
-		if (size_config == 0)
-			size_config = 2048;
-		str_config = realloc(str_config, size_config *= 2);
-		if (str_config == NULL)
-			{ perror("fixdep:malloc"); exit(1); }
-	}
-}
+#define HASHSZ 256
+static struct item *hashtab[HASHSZ];
 
+static unsigned int strhash(const char *str, unsigned int sz)
+{
+	/* fnv32 hash */
+	unsigned int i, hash = 2166136261U;
 
+	for (i = 0; i < sz; i++)
+		hash = (hash ^ str[i]) * 0x01000193;
+	return hash;
+}
 
 /*
  * Lookup a value in the configuration string.
  */
-static int is_defined_config(const char * name, int len)
+static int is_defined_config(const char *name, int len, unsigned int hash)
 {
-	const char * pconfig;
-	const char * plast = str_config + len_config - len;
-	for ( pconfig = str_config + 1; pconfig < plast; pconfig++ ) {
-		if (pconfig[ -1] == '\n'
-		&&  pconfig[len] == '\n'
-		&&  !memcmp(pconfig, name, len))
+	struct item *aux;
+
+	for (aux = hashtab[hash % HASHSZ]; aux; aux = aux->next) {
+		if (aux->hash == hash && aux->len == len &&
+		    memcmp(aux->name, name, len) == 0)
 			return 1;
 	}
 	return 0;
@@ -178,13 +176,19 @@ static int is_defined_config(const char * name, int len)
 /*
  * Add a new value to the configuration string.
  */
-static void define_config(const char * name, int len)
+static void define_config(const char *name, int len, unsigned int hash)
 {
-	grow_config(len + 1);
+	struct item *aux = malloc(sizeof(*aux) + len);
 
-	memcpy(str_config+len_config, name, len);
-	len_config += len;
-	str_config[len_config++] = '\n';
+	if (!aux) {
+		perror("fixdep:malloc");
+		exit(1);
+	}
+	memcpy(aux->name, name, len);
+	aux->len = len;
+	aux->hash = hash;
+	aux->next = hashtab[hash % HASHSZ];
+	hashtab[hash % HASHSZ] = aux;
 }
 
 /*
@@ -192,40 +196,49 @@ static void define_config(const char * name, int len)
  */
 static void clear_config(void)
 {
-	len_config = 0;
-	define_config("", 0);
+	struct item *aux, *next;
+	unsigned int i;
+
+	for (i = 0; i < HASHSZ; i++) {
+		for (aux = hashtab[i]; aux; aux = next) {
+			next = aux->next;
+			free(aux);
+		}
+		hashtab[i] = NULL;
+	}
 }
 
 /*
  * Record the use of a CONFIG_* word.
  */
-static void use_config(char *m, int slen)
+static void use_config(const char *m, int slen)
 {
-	char s[PATH_MAX];
-	char *p;
+	unsigned int hash = strhash(m, slen);
+	int c, i;
 
-	if (is_defined_config(m, slen))
+	if (is_defined_config(m, slen, hash))
 	    return;
 
-	define_config(m, slen);
-
-	memcpy(s, m, slen); s[slen] = 0;
+	define_config(m, slen, hash);
 
-	for (p = s; p < s + slen; p++) {
-		if (*p == '_')
-			*p = '/';
+	printf("    $(wildcard include/config/");
+	for (i = 0; i < slen; i++) {
+		c = m[i];
+		if (c == '_')
+			c = '/';
 		else
-			*p = tolower((int)*p);
+			c = tolower(c);
+		putchar(c);
 	}
-	printf("    $(wildcard include/config/%s.h) \\\n", s);
+	printf(".h) \\\n");
 }
 
-static void parse_config_file(char *map, size_t len)
+static void parse_config_file(const char *map, size_t len)
 {
-	int *end = (int *) (map + len);
+	const int *end = (const int *) (map + len);
 	/* start at +1, so that p can never be < map */
-	int *m   = (int *) map + 1;
-	char *p, *q;
+	const int *m   = (const int *) map + 1;
+	const char *p, *q;
 
 	for (; m < end; m++) {
 		if (*m == INT_CONF) { p = (char *) m  ; goto conf; }
@@ -265,7 +278,7 @@ static int strrcmp(char *s, char *sub)
 	return memcmp(s + slen - sublen, sub, sublen);
 }
 
-static void do_config_file(char *filename)
+static void do_config_file(const char *filename)
 {
 	struct stat st;
 	int fd;
@@ -273,7 +286,7 @@ static void do_config_file(char *filename)
 
 	fd = open(filename, O_RDONLY);
 	if (fd < 0) {
-		fprintf(stderr, "fixdep: ");
+		fprintf(stderr, "fixdep: error opening config file: ");
 		perror(filename);
 		exit(2);
 	}
@@ -296,42 +309,89 @@ static void do_config_file(char *filename)
 	close(fd);
 }
 
+/*
+ * Important: The below generated source_foo.o and deps_foo.o variable
+ * assignments are parsed not only by make, but also by the rather simple
+ * parser in scripts/mod/sumversion.c.
+ */
 static void parse_dep_file(void *map, size_t len)
 {
 	char *m = map;
 	char *end = m + len;
 	char *p;
 	char s[PATH_MAX];
-
-	p = strchr(m, ':');
-	if (!p) {
-		fprintf(stderr, "fixdep: parse error\n");
-		exit(1);
-	}
-	memcpy(s, m, p-m); s[p-m] = 0;
-	printf("deps_%s := \\\n", target);
-	m = p+1;
+	int is_target;
+	int saw_any_target = 0;
+	int is_first_dep = 0;
 
 	clear_config();
 
 	while (m < end) {
+		/* Skip any "white space" */
 		while (m < end && (*m == ' ' || *m == '\\' || *m == '\n'))
 			m++;
+		/* Find next "white space" */
 		p = m;
-		while (p < end && *p != ' ') p++;
-		if (p == end) {
-			do p--; while (!isalnum(*p));
+		while (p < end && *p != ' ' && *p != '\\' && *p != '\n')
 			p++;
+		/* Is the token we found a target name? */
+		is_target = (*(p-1) == ':');
+		/* Don't write any target names into the dependency file */
+		if (is_target) {
+			/* The /next/ file is the first dependency */
+			is_first_dep = 1;
+		} else {
+			/* Save this token/filename */
+			memcpy(s, m, p-m);
+			s[p - m] = 0;
+
+			/* Ignore certain dependencies */
+			if (strrcmp(s, "include/generated/autoconf.h") &&
+			    strrcmp(s, "arch/um/include/uml-config.h") &&
+			    strrcmp(s, "include/linux/kconfig.h") &&
+			    strrcmp(s, ".ver")) {
+				/*
+				 * Do not list the source file as dependency,
+				 * so that kbuild is not confused if a .c file
+				 * is rewritten into .S or vice versa. Storing
+				 * it in source_* is needed for modpost to
+				 * compute srcversions.
+				 */
+				if (is_first_dep) {
+					/*
+					 * If processing the concatenation of
+					 * multiple dependency files, only
+					 * process the first target name, which
+					 * will be the original source name,
+					 * and ignore any other target names,
+					 * which will be intermediate temporary
+					 * files.
+					 */
+					if (!saw_any_target) {
+						saw_any_target = 1;
+						printf("source_%s := %s\n\n",
+							target, s);
+						printf("deps_%s := \\\n",
+							target);
+					}
+					is_first_dep = 0;
+				} else
+					printf("  %s \\\n", s);
+				do_config_file(s);
+			}
 		}
-		memcpy(s, m, p-m); s[p-m] = 0;
-		if (strrcmp(s, "include/generated/autoconf.h") &&
-		    strrcmp(s, "arch/um/include/uml-config.h") &&
-		    strrcmp(s, ".ver")) {
-			printf("  %s \\\n", s);
-			do_config_file(s);
-		}
+		/*
+		 * Start searching for next token immediately after the first
+		 * "whitespace" character that follows this token.
+		 */
 		m = p + 1;
 	}
+
+	if (!saw_any_target) {
+		fprintf(stderr, "fixdep: parse error; no targets found\n");
+		exit(1);
+	}
+
 	printf("\n%s: $(deps_%s)\n\n", target, target);
 	printf("$(deps_%s):\n", target);
 }
@@ -344,11 +404,15 @@ static void print_deps(void)
 
 	fd = open(depfile, O_RDONLY);
 	if (fd < 0) {
-		fprintf(stderr, "fixdep: ");
+		fprintf(stderr, "fixdep: error opening depfile: ");
 		perror(depfile);
 		exit(2);
 	}
-	fstat(fd, &st);
+	if (fstat(fd, &st) < 0) {
+                fprintf(stderr, "fixdep: error fstat'ing depfile: ");
+                perror(depfile);
+                exit(2);
+        }
 	if (st.st_size == 0) {
 		fprintf(stderr,"fixdep: %s is empty\n",depfile);
 		close(fd);
@@ -374,7 +438,7 @@ static void traps(void)
 	int *p = (int *)test;
 
 	if (*p != INT_CONF) {
-		fprintf(stderr, "fixdep: sizeof(int) != 4 or wrong endianess? %#x\n",
+		fprintf(stderr, "fixdep: sizeof(int) != 4 or wrong endianness? %#x\n",
 			*p);
 		exit(2);
 	}
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
