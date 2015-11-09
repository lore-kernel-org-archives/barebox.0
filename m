Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x244.google.com ([2a00:1450:4010:c04::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZvjN6-0006oL-QJ
 for barebox@lists.infradead.org; Mon, 09 Nov 2015 10:08:22 +0000
Received: by lbvs9 with SMTP id s9so2585579lbv.1
 for <barebox@lists.infradead.org>; Mon, 09 Nov 2015 02:07:58 -0800 (PST)
From: Sergey Koshechkin <serge.koshechkin@gmail.com>
Date: Mon,  9 Nov 2015 13:06:33 +0300
Message-Id: <1447063593-23825-1-git-send-email-serge.koshechkin@gmail.com>
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
Subject: [PATCH] docproc: sync with linux-4.3 kernel
To: barebox@lists.infradead.org
Cc: Sergey Koshechkin <serge.koshechkin@gmail.com>, antony@niisi.msk.ru

Signed-off-by: Sergey Koshechkin <serge.koshechkin@gmail.com>
---
 scripts/basic/docproc.c | 334 +++++++++++++++++++++++++++++++++++++-----------
 1 file changed, 256 insertions(+), 78 deletions(-)

diff --git a/scripts/basic/docproc.c b/scripts/basic/docproc.c
index 9f6535d..73c32d6 100644
--- a/scripts/basic/docproc.c
+++ b/scripts/basic/docproc.c
@@ -10,8 +10,10 @@
  *	documentation-frontend
  *		Scans the template file and call kernel-doc for
  *		all occurrences of ![EIF]file
- *		Beforehand each referenced file are scanned for
- *		any exported sympols "EXPORT_SYMBOL()" statements.
+ *		Beforehand each referenced file is scanned for
+ *		any symbols that are exported via these macros:
+ *			EXPORT_SYMBOL(), EXPORT_SYMBOL_GPL(), &
+ *			EXPORT_SYMBOL_GPL_FUTURE()
  *		This is used to create proper -function and
  *		-nofunction arguments in calls to kernel-doc.
  *		Usage: docproc doc file.tmpl
@@ -28,15 +30,18 @@
  *		!Ifilename
  *		!Dfilename
  *		!Ffilename
+ *		!Pfilename
  *
  */
 
+#define _GNU_SOURCE
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
 #include <ctype.h>
 #include <unistd.h>
 #include <limits.h>
+#include <errno.h>
 #include <sys/types.h>
 #include <sys/wait.h>
 
@@ -51,45 +56,71 @@ typedef void FILEONLY(char * file);
 FILEONLY *internalfunctions;
 FILEONLY *externalfunctions;
 FILEONLY *symbolsonly;
+FILEONLY *findall;
 
 typedef void FILELINE(char * file, char * line);
 FILELINE * singlefunctions;
 FILELINE * entity_system;
+FILELINE * docsection;
 
 #define MAXLINESZ     2048
 #define MAXFILES      250
 #define KERNELDOCPATH "scripts/"
 #define KERNELDOC     "kernel-doc"
 #define DOCBOOK       "-docbook"
+#define LIST          "-list"
 #define FUNCTION      "-function"
 #define NOFUNCTION    "-nofunction"
+#define NODOCSECTIONS "-no-doc-sections"
+#define SHOWNOTFOUND  "-show-not-found"
 
-void usage (void)
+static char *srctree, *kernsrctree;
+
+static char **all_list = NULL;
+static int all_list_len = 0;
+
+static void consume_symbol(const char *sym)
+{
+	int i;
+
+	for (i = 0; i < all_list_len; i++) {
+		if (!all_list[i])
+			continue;
+		if (strcmp(sym, all_list[i]))
+			continue;
+		all_list[i] = NULL;
+		break;
+	}
+}
+
+static void usage (void)
 {
 	fprintf(stderr, "Usage: docproc {doc|depend} file\n");
 	fprintf(stderr, "Input is read from file.tmpl. Output is sent to stdout\n");
 	fprintf(stderr, "doc: frontend when generating kernel documentation\n");
 	fprintf(stderr, "depend: generate list of files referenced within file\n");
+	fprintf(stderr, "Environment variable SRCTREE: absolute path to sources.\n");
+	fprintf(stderr, "                     KBUILD_SRC: absolute path to kernel source tree.\n");
 }
 
 /*
- * Execute kernel-doc with parameters givin in svec
+ * Execute kernel-doc with parameters given in svec
  */
-void exec_kernel_doc(char **svec)
+static void exec_kernel_doc(char **svec)
 {
 	pid_t pid;
 	int ret;
 	char real_filename[PATH_MAX + 1];
 	/* Make sure output generated so far are flushed */
 	fflush(stdout);
-	switch(pid=fork()) {
+	switch (pid=fork()) {
 		case -1:
 			perror("fork");
 			exit(1);
 		case  0:
 			memset(real_filename, 0, sizeof(real_filename));
-			strncat(real_filename, getenv("SRCTREE"), PATH_MAX);
-			strncat(real_filename, KERNELDOCPATH KERNELDOC,
+			strncat(real_filename, kernsrctree, PATH_MAX);
+			strncat(real_filename, "/" KERNELDOCPATH KERNELDOC,
 					PATH_MAX - strlen(real_filename));
 			execvp(real_filename, svec);
 			fprintf(stderr, "exec ");
@@ -120,24 +151,22 @@ struct symfile
 struct symfile symfilelist[MAXFILES];
 int symfilecnt = 0;
 
-void add_new_symbol(struct symfile *sym, char * symname)
+static void add_new_symbol(struct symfile *sym, char * symname)
 {
-	sym->symbollist = realloc(sym->symbollist, (sym->symbolcnt + 1) * sizeof(char *));
-	if (!sym->symbollist) {
-		fprintf(stderr, "docproc: out of memory\n");
-		exit(1);
-	}
+	sym->symbollist =
+	  realloc(sym->symbollist, (sym->symbolcnt + 1) * sizeof(char *));
 	sym->symbollist[sym->symbolcnt++].name = strdup(symname);
 }
 
 /* Add a filename to the list */
-struct symfile * add_new_file(char * filename)
+static struct symfile * add_new_file(char * filename)
 {
 	symfilelist[symfilecnt++].filename = strdup(filename);
 	return &symfilelist[symfilecnt - 1];
 }
+
 /* Check if file already are present in the list */
-struct symfile * filename_exist(char * filename)
+static struct symfile * filename_exist(char * filename)
 {
 	int i;
 	for (i=0; i < symfilecnt; i++)
@@ -150,20 +179,20 @@ struct symfile * filename_exist(char * filename)
  * List all files referenced within the template file.
  * Files are separated by tabs.
  */
-void adddep(char * file)		   { printf("\t%s", file); }
-void adddep2(char * file, char * line)     { line = line; adddep(file); }
-void noaction(char * line)		   { line = line; }
-void noaction2(char * file, char * line)   { file = file; line = line; }
+static void adddep(char * file)		   { printf("\t%s", file); }
+static void adddep2(char * file, char * line)     { line = line; adddep(file); }
+static void noaction(char * line)		   { line = line; }
+static void noaction2(char * file, char * line)   { file = file; line = line; }
 
 /* Echo the line without further action */
-void printline(char * line)               { printf("%s", line); }
+static void printline(char * line)               { printf("%s", line); }
 
 /*
- * Find all symbols exported with EXPORT_SYMBOL and EXPORT_SYMBOL_GPL
- * in filename.
+ * Find all symbols in filename that are exported with EXPORT_SYMBOL &
+ * EXPORT_SYMBOL_GPL (& EXPORT_SYMBOL_GPL_FUTURE implicitly).
  * All symbols located are stored in symfilelist.
  */
-void find_export_symbols(char * filename)
+static void find_export_symbols(char * filename)
 {
 	FILE * fp;
 	struct symfile *sym;
@@ -171,26 +200,26 @@ void find_export_symbols(char * filename)
 	if (filename_exist(filename) == NULL) {
 		char real_filename[PATH_MAX + 1];
 		memset(real_filename, 0, sizeof(real_filename));
-		strncat(real_filename, getenv("SRCTREE"), PATH_MAX);
+		strncat(real_filename, srctree, PATH_MAX);
+		strncat(real_filename, "/", PATH_MAX - strlen(real_filename));
 		strncat(real_filename, filename,
 				PATH_MAX - strlen(real_filename));
 		sym = add_new_file(filename);
 		fp = fopen(real_filename, "r");
-		if (fp == NULL)
-		{
+		if (fp == NULL)	{
 			fprintf(stderr, "docproc: ");
 			perror(real_filename);
 			exit(1);
 		}
-		while(fgets(line, MAXLINESZ, fp)) {
+		while (fgets(line, MAXLINESZ, fp)) {
 			char *p;
 			char *e;
-			if (((p = strstr(line, "EXPORT_SYMBOL_GPL")) != 0) ||
-                            ((p = strstr(line, "EXPORT_SYMBOL")) != 0)) {
+			if (((p = strstr(line, "EXPORT_SYMBOL_GPL")) != NULL) ||
+			    ((p = strstr(line, "EXPORT_SYMBOL")) != NULL)) {
 				/* Skip EXPORT_SYMBOL{_GPL} */
 				while (isalnum(*p) || *p == '_')
 					p++;
-				/* Remove paranteses and additional ws */
+				/* Remove parentheses & additional whitespace */
 				while (isspace(*p))
 					p++;
 				if (*p != '(')
@@ -214,12 +243,12 @@ void find_export_symbols(char * filename)
  * Document all external or internal functions in a file.
  * Call kernel-doc with following parameters:
  * kernel-doc -docbook -nofunction function_name1 filename
- * function names are obtained from all the the src files
+ * Function names are obtained from all the src files
  * by find_export_symbols.
  * intfunc uses -nofunction
  * extfunc uses -function
  */
-void docfunctions(char * filename, char * type)
+static void docfunctions(char * filename, char * type)
 {
 	int i,j;
 	int symcnt = 0;
@@ -228,17 +257,19 @@ void docfunctions(char * filename, char * type)
 
 	for (i=0; i <= symfilecnt; i++)
 		symcnt += symfilelist[i].symbolcnt;
-	vec = malloc((2 + 2 * symcnt + 2) * sizeof(char*));
+	vec = malloc((2 + 2 * symcnt + 3) * sizeof(char *));
 	if (vec == NULL) {
 		perror("docproc: ");
 		exit(1);
 	}
 	vec[idx++] = KERNELDOC;
 	vec[idx++] = DOCBOOK;
+	vec[idx++] = NODOCSECTIONS;
 	for (i=0; i < symfilecnt; i++) {
 		struct symfile * sym = &symfilelist[i];
 		for (j=0; j < sym->symbolcnt; j++) {
 			vec[idx++]     = type;
+			consume_symbol(sym->symbollist[j].name);
 			vec[idx++] = sym->symbollist[j].name;
 		}
 	}
@@ -249,53 +280,171 @@ void docfunctions(char * filename, char * type)
 	fflush(stdout);
 	free(vec);
 }
-void intfunc(char * filename) {	docfunctions(filename, NOFUNCTION); }
-void extfunc(char * filename) { docfunctions(filename, FUNCTION);   }
+static void intfunc(char * filename) {	docfunctions(filename, NOFUNCTION); }
+static void extfunc(char * filename) { docfunctions(filename, FUNCTION);   }
 
 /*
  * Document specific function(s) in a file.
  * Call kernel-doc with the following parameters:
  * kernel-doc -docbook -function function1 [-function function2]
  */
-void singfunc(char * filename, char * line)
+static void singfunc(char * filename, char * line)
 {
 	char *vec[200]; /* Enough for specific functions */
-        int i, idx = 0;
-        int startofsym = 1;
+	int i, idx = 0;
+	int startofsym = 1;
 	vec[idx++] = KERNELDOC;
 	vec[idx++] = DOCBOOK;
+	vec[idx++] = SHOWNOTFOUND;
 
-        /* Split line up in individual parameters preceeded by FUNCTION */
-        for (i=0; line[i]; i++) {
-                if (isspace(line[i])) {
-                        line[i] = '\0';
-                        startofsym = 1;
-                        continue;
-                }
-                if (startofsym) {
-                        startofsym = 0;
-                        vec[idx++] = FUNCTION;
-                        vec[idx++] = &line[i];
-                }
-        }
+	/* Split line up in individual parameters preceded by FUNCTION */
+	for (i=0; line[i]; i++) {
+		if (isspace(line[i])) {
+			line[i] = '\0';
+			startofsym = 1;
+			continue;
+		}
+		if (startofsym) {
+			startofsym = 0;
+			vec[idx++] = FUNCTION;
+			vec[idx++] = &line[i];
+		}
+	}
+	for (i = 0; i < idx; i++) {
+		if (strcmp(vec[i], FUNCTION))
+			continue;
+		consume_symbol(vec[i + 1]);
+	}
 	vec[idx++] = filename;
 	vec[idx] = NULL;
 	exec_kernel_doc(vec);
 }
 
 /*
+ * Insert specific documentation section from a file.
+ * Call kernel-doc with the following parameters:
+ * kernel-doc -docbook -function "doc section" filename
+ */
+static void docsect(char *filename, char *line)
+{
+	/* kerneldoc -docbook -show-not-found -function "section" file NULL */
+	char *vec[7];
+	char *s;
+
+	for (s = line; *s; s++)
+		if (*s == '\n')
+			*s = '\0';
+
+	if (asprintf(&s, "DOC: %s", line) < 0) {
+		perror("asprintf");
+		exit(1);
+	}
+	consume_symbol(s);
+	free(s);
+
+	vec[0] = KERNELDOC;
+	vec[1] = DOCBOOK;
+	vec[2] = SHOWNOTFOUND;
+	vec[3] = FUNCTION;
+	vec[4] = line;
+	vec[5] = filename;
+	vec[6] = NULL;
+	exec_kernel_doc(vec);
+}
+
+static void find_all_symbols(char *filename)
+{
+	char *vec[4]; /* kerneldoc -list file NULL */
+	pid_t pid;
+	int ret, i, count, start;
+	char real_filename[PATH_MAX + 1];
+	int pipefd[2];
+	char *data, *str;
+	size_t data_len = 0;
+
+	vec[0] = KERNELDOC;
+	vec[1] = LIST;
+	vec[2] = filename;
+	vec[3] = NULL;
+
+	if (pipe(pipefd)) {
+		perror("pipe");
+		exit(1);
+	}
+
+	switch (pid=fork()) {
+		case -1:
+			perror("fork");
+			exit(1);
+		case  0:
+			close(pipefd[0]);
+			dup2(pipefd[1], 1);
+			memset(real_filename, 0, sizeof(real_filename));
+			strncat(real_filename, kernsrctree, PATH_MAX);
+			strncat(real_filename, "/" KERNELDOCPATH KERNELDOC,
+					PATH_MAX - strlen(real_filename));
+			execvp(real_filename, vec);
+			fprintf(stderr, "exec ");
+			perror(real_filename);
+			exit(1);
+		default:
+			close(pipefd[1]);
+			data = malloc(4096);
+			do {
+				while ((ret = read(pipefd[0],
+						   data + data_len,
+						   4096)) > 0) {
+					data_len += ret;
+					data = realloc(data, data_len + 4096);
+				}
+			} while (ret == -EAGAIN);
+			if (ret != 0) {
+				perror("read");
+				exit(1);
+			}
+			waitpid(pid, &ret ,0);
+	}
+	if (WIFEXITED(ret))
+		exitstatus |= WEXITSTATUS(ret);
+	else
+		exitstatus = 0xff;
+
+	count = 0;
+	/* poor man's strtok, but with counting */
+	for (i = 0; i < data_len; i++) {
+		if (data[i] == '\n') {
+			count++;
+			data[i] = '\0';
+		}
+	}
+	start = all_list_len;
+	all_list_len += count;
+	all_list = realloc(all_list, sizeof(char *) * all_list_len);
+	str = data;
+	for (i = 0; i < data_len && start != all_list_len; i++) {
+		if (data[i] == '\0') {
+			all_list[start] = str;
+			str = data + i + 1;
+			start++;
+		}
+	}
+}
+
+/*
  * Parse file, calling action specific functions for:
  * 1) Lines containing !E
  * 2) Lines containing !I
  * 3) Lines containing !D
  * 4) Lines containing !F
- * 5) Default lines - lines not matching the above
+ * 5) Lines containing !P
+ * 6) Lines containing !C
+ * 7) Default lines - lines not matching the above
  */
-void parse_file(FILE *infile)
+static void parse_file(FILE *infile)
 {
 	char line[MAXLINESZ];
 	char * s;
-	while(fgets(line, MAXLINESZ, infile)) {
+	while (fgets(line, MAXLINESZ, infile)) {
 		if (line[0] == '!') {
 			s = line + 2;
 			switch (line[1]) {
@@ -311,23 +460,37 @@ void parse_file(FILE *infile)
 					break;
 				case 'D':
 					while (*s && !isspace(*s)) s++;
-                                        *s = '\0';
-                                        symbolsonly(line+2);
-                                        break;
+					*s = '\0';
+					symbolsonly(line+2);
+					break;
 				case 'F':
 					/* filename */
 					while (*s && !isspace(*s)) s++;
 					*s++ = '\0';
-                                        /* function names */
+					/* function names */
 					while (isspace(*s))
 						s++;
 					singlefunctions(line +2, s);
 					break;
+				case 'P':
+					/* filename */
+					while (*s && !isspace(*s)) s++;
+					*s++ = '\0';
+					/* DOC: section name */
+					while (isspace(*s))
+						s++;
+					docsection(line + 2, s);
+					break;
+				case 'C':
+					while (*s && !isspace(*s)) s++;
+					*s = '\0';
+					if (findall)
+						findall(line+2);
+					break;
 				default:
 					defaultline(line);
 			}
-		}
-		else {
+		} else {
 			defaultline(line);
 		}
 	}
@@ -338,25 +501,32 @@ void parse_file(FILE *infile)
 int main(int argc, char *argv[])
 {
 	FILE * infile;
+	int i;
+
+	srctree = getenv("SRCTREE");
+	if (!srctree)
+		srctree = getcwd(NULL, 0);
+	kernsrctree = getenv("KBUILD_SRC");
+	if (!kernsrctree || !*kernsrctree)
+		kernsrctree = srctree;
 	if (argc != 3) {
 		usage();
 		exit(1);
 	}
 	/* Open file, exit on error */
 	infile = fopen(argv[2], "r");
-        if (infile == NULL) {
-                fprintf(stderr, "docproc: ");
-                perror(argv[2]);
-                exit(2);
-        }
-
-	if (strcmp("doc", argv[1]) == 0)
-	{
+	if (infile == NULL) {
+		fprintf(stderr, "docproc: ");
+		perror(argv[2]);
+		exit(2);
+	}
+
+	if (strcmp("doc", argv[1]) == 0) {
 		/* Need to do this in two passes.
 		 * First pass is used to collect all symbols exported
-		 * in the various files.
+		 * in the various files;
 		 * Second pass generate the documentation.
-		 * This is required because function are declared
+		 * This is required because some functions are declared
 		 * and exported in different files :-((
 		 */
 		/* Collect symbols */
@@ -365,6 +535,8 @@ int main(int argc, char *argv[])
 		externalfunctions = find_export_symbols;
 		symbolsonly       = find_export_symbols;
 		singlefunctions   = noaction2;
+		docsection        = noaction2;
+		findall           = find_all_symbols;
 		parse_file(infile);
 
 		/* Rewind to start from beginning of file again */
@@ -374,11 +546,18 @@ int main(int argc, char *argv[])
 		externalfunctions = extfunc;
 		symbolsonly       = printline;
 		singlefunctions   = singfunc;
+		docsection        = docsect;
+		findall           = NULL;
 
 		parse_file(infile);
-	}
-	else if (strcmp("depend", argv[1]) == 0)
-	{
+
+		for (i = 0; i < all_list_len; i++) {
+			if (!all_list[i])
+				continue;
+			fprintf(stderr, "Warning: didn't use docs for %s\n",
+				all_list[i]);
+		}
+	} else if (strcmp("depend", argv[1]) == 0) {
 		/* Create first part of dependency chain
 		 * file.tmpl */
 		printf("%s\t", argv[2]);
@@ -387,11 +566,11 @@ int main(int argc, char *argv[])
 		externalfunctions = adddep;
 		symbolsonly       = adddep;
 		singlefunctions   = adddep2;
+		docsection        = adddep2;
+		findall           = adddep;
 		parse_file(infile);
 		printf("\n");
-	}
-	else
-	{
+	} else {
 		fprintf(stderr, "Unknown option: %s\n", argv[1]);
 		exit(1);
 	}
@@ -399,4 +578,3 @@ int main(int argc, char *argv[])
 	fflush(stdout);
 	return exitstatus;
 }
-
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
