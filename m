Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YT5cy-0008Ri-V3
 for barebox@lists.infradead.org; Wed, 04 Mar 2015 09:30:33 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Wed,  4 Mar 2015 10:29:31 +0100
Message-Id: <1425461372-31740-4-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1425461372-31740-1-git-send-email-jlu@pengutronix.de>
References: <1425461372-31740-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 3/4] scripts/dtc: Update to upstream version 1.4.1
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 scripts/dtc/Makefile.dtc             |   18 +
 scripts/dtc/checks.c                 |   30 +-
 scripts/dtc/data.c                   |   12 +-
 scripts/dtc/dtc-lexer.l              |   67 +-
 scripts/dtc/dtc-lexer.lex.c_shipped  |  630 +++++-----
 scripts/dtc/dtc-parser.tab.c_shipped | 2265 ++++++++++++++++------------------
 scripts/dtc/dtc-parser.tab.h_shipped |  108 +-
 scripts/dtc/dtc-parser.y             |  135 +-
 scripts/dtc/dtc.c                    |  129 +-
 scripts/dtc/dtc.h                    |   19 +-
 scripts/dtc/fdt.c                    |   30 +-
 scripts/dtc/fdt.h                    |   93 +-
 scripts/dtc/fdt_addresses.c          |   96 ++
 scripts/dtc/fdt_ro.c                 |    7 +-
 scripts/dtc/fdt_rw.c                 |   10 +-
 scripts/dtc/fdt_sw.c                 |   36 +-
 scripts/dtc/fdt_wip.c                |    2 +-
 scripts/dtc/fdtdump.c                |  135 +-
 scripts/dtc/fdtget.c                 |   60 +-
 scripts/dtc/fdtput.c                 |  142 ++-
 scripts/dtc/flattree.c               |    4 +-
 scripts/dtc/fstree.c                 |   16 +-
 scripts/dtc/libfdt.h                 |  133 +-
 scripts/dtc/libfdt_env.h             |  104 +-
 scripts/dtc/libfdt_internal.h        |    6 +-
 scripts/dtc/livetree.c               |    4 +-
 scripts/dtc/srcpos.c                 |   49 +-
 scripts/dtc/srcpos.h                 |   15 +-
 scripts/dtc/treesource.c             |   14 +-
 scripts/dtc/util.c                   |  153 ++-
 scripts/dtc/util.h                   |  110 +-
 scripts/dtc/version_gen.h            |    2 +-
 32 files changed, 2598 insertions(+), 2036 deletions(-)
 create mode 100644 scripts/dtc/Makefile.dtc
 create mode 100644 scripts/dtc/fdt_addresses.c

diff --git a/scripts/dtc/Makefile.dtc b/scripts/dtc/Makefile.dtc
new file mode 100644
index 000000000000..bece49b35535
--- /dev/null
+++ b/scripts/dtc/Makefile.dtc
@@ -0,0 +1,18 @@
+# Makefile.dtc
+#
+# This is not a complete Makefile of itself.  Instead, it is designed to
+# be easily embeddable into other systems of Makefiles.
+#
+DTC_SRCS = \
+	checks.c \
+	data.c \
+	dtc.c \
+	flattree.c \
+	fstree.c \
+	livetree.c \
+	srcpos.c \
+	treesource.c \
+	util.c
+
+DTC_GEN_SRCS = dtc-lexer.lex.c dtc-parser.tab.c
+DTC_OBJS = $(DTC_SRCS:%.c=%.o) $(DTC_GEN_SRCS:%.c=%.o)
diff --git a/scripts/dtc/checks.c b/scripts/dtc/checks.c
index ee96a2519eff..3bf0fa4a48d7 100644
--- a/scripts/dtc/checks.c
+++ b/scripts/dtc/checks.c
@@ -53,7 +53,7 @@ struct check {
 	void *data;
 	bool warn, error;
 	enum checkstatus status;
-	int inprogress;
+	bool inprogress;
 	int num_prereqs;
 	struct check **prereq;
 };
@@ -141,9 +141,9 @@ static void check_nodes_props(struct check *c, struct node *dt, struct node *nod
 		check_nodes_props(c, dt, child);
 }
 
-static int run_check(struct check *c, struct node *dt)
+static bool run_check(struct check *c, struct node *dt)
 {
-	int error = 0;
+	bool error = false;
 	int i;
 
 	assert(!c->inprogress);
@@ -151,11 +151,11 @@ static int run_check(struct check *c, struct node *dt)
 	if (c->status != UNCHECKED)
 		goto out;
 
-	c->inprogress = 1;
+	c->inprogress = true;
 
 	for (i = 0; i < c->num_prereqs; i++) {
 		struct check *prq = c->prereq[i];
-		error |= run_check(prq, dt);
+		error = error || run_check(prq, dt);
 		if (prq->status != PASSED) {
 			c->status = PREREQ;
 			check_msg(c, "Failed prerequisite '%s'",
@@ -177,9 +177,9 @@ static int run_check(struct check *c, struct node *dt)
 	TRACE(c, "\tCompleted, status %d", c->status);
 
 out:
-	c->inprogress = 0;
+	c->inprogress = false;
 	if ((c->status != PASSED) && (c->error))
-		error = 1;
+		error = true;
 	return error;
 }
 
@@ -624,11 +624,11 @@ static void check_avoid_default_addr_size(struct check *c, struct node *dt,
 	if (!reg && !ranges)
 		return;
 
-	if ((node->parent->addr_cells == -1))
+	if (node->parent->addr_cells == -1)
 		FAIL(c, "Relying on default #address-cells value for %s",
 		     node->fullpath);
 
-	if ((node->parent->size_cells == -1))
+	if (node->parent->size_cells == -1)
 		FAIL(c, "Relying on default #size-cells value for %s",
 		     node->fullpath);
 }
@@ -706,15 +706,15 @@ static void disable_warning_error(struct check *c, bool warn, bool error)
 	c->error = c->error && !error;
 }
 
-void parse_checks_option(bool warn, bool error, const char *optarg)
+void parse_checks_option(bool warn, bool error, const char *arg)
 {
 	int i;
-	const char *name = optarg;
+	const char *name = arg;
 	bool enable = true;
 
-	if ((strncmp(optarg, "no-", 3) == 0)
-	    || (strncmp(optarg, "no_", 3) == 0)) {
-		name = optarg + 3;
+	if ((strncmp(arg, "no-", 3) == 0)
+	    || (strncmp(arg, "no_", 3) == 0)) {
+		name = arg + 3;
 		enable = false;
 	}
 
@@ -733,7 +733,7 @@ void parse_checks_option(bool warn, bool error, const char *optarg)
 	die("Unrecognized check name \"%s\"\n", name);
 }
 
-void process_checks(int force, struct boot_info *bi)
+void process_checks(bool force, struct boot_info *bi)
 {
 	struct node *dt = bi->dt;
 	int i;
diff --git a/scripts/dtc/data.c b/scripts/dtc/data.c
index 4a40c5b92474..8cae23746882 100644
--- a/scripts/dtc/data.c
+++ b/scripts/dtc/data.c
@@ -74,7 +74,7 @@ struct data data_copy_escape_string(const char *s, int len)
 	struct data d;
 	char *q;
 
-	d = data_grow_for(empty_data, strlen(s)+1);
+	d = data_grow_for(empty_data, len + 1);
 
 	q = d.val;
 	while (i < len) {
@@ -250,20 +250,20 @@ struct data data_add_marker(struct data d, enum markertype type, char *ref)
 	return data_append_markers(d, m);
 }
 
-int data_is_one_string(struct data d)
+bool data_is_one_string(struct data d)
 {
 	int i;
 	int len = d.len;
 
 	if (len == 0)
-		return 0;
+		return false;
 
 	for (i = 0; i < len-1; i++)
 		if (d.val[i] == '\0')
-			return 0;
+			return false;
 
 	if (d.val[len-1] != '\0')
-		return 0;
+		return false;
 
-	return 1;
+	return true;
 }
diff --git a/scripts/dtc/dtc-lexer.l b/scripts/dtc/dtc-lexer.l
index 254d5af88956..0ee1caf03dd0 100644
--- a/scripts/dtc/dtc-lexer.l
+++ b/scripts/dtc/dtc-lexer.l
@@ -20,7 +20,6 @@
 
 %option noyywrap nounput noinput never-interactive
 
-%x INCLUDE
 %x BYTESTRING
 %x PROPNODENAME
 %s V1
@@ -40,6 +39,7 @@ LINECOMMENT	"//".*\n
 #include "dtc-parser.tab.h"
 
 YYLTYPE yylloc;
+extern bool treesource_error;
 
 /* CAUTION: this will stop working if we ever use yyless() or yyunput() */
 #define	YY_USER_ACTION \
@@ -61,7 +61,8 @@ static int dts_version = 1;
 				BEGIN(V1); \
 
 static void push_input_file(const char *filename);
-static int pop_input_file(void);
+static bool pop_input_file(void);
+static void lexical_error(const char *fmt, ...);
 %}
 
 %%
@@ -71,15 +72,15 @@ static int pop_input_file(void);
 			push_input_file(name);
 		}
 
-<*>^"#"(line)?{WS}+[0-9]+{WS}+{STRING}({WS}+[0-9]+)? {
+<*>^"#"(line)?[ \t]+[0-9]+[ \t]+{STRING}([ \t]+[0-9]+)? {
 			char *line, *tmp, *fn;
 			/* skip text before line # */
 			line = yytext;
-			while (!isdigit(*line))
+			while (!isdigit((unsigned char)*line))
 				line++;
 			/* skip digits in line # */
 			tmp = line;
-			while (!isspace(*tmp))
+			while (!isspace((unsigned char)*tmp))
 				tmp++;
 			/* "NULL"-terminate line # */
 			*tmp = '\0';
@@ -146,15 +147,42 @@ static int pop_input_file(void);
 		}
 
 <V1>([0-9]+|0[xX][0-9a-fA-F]+)(U|L|UL|LL|ULL)? {
-			yylval.literal = xstrdup(yytext);
-			DPRINT("Literal: '%s'\n", yylval.literal);
+			char *e;
+			DPRINT("Integer Literal: '%s'\n", yytext);
+
+			errno = 0;
+			yylval.integer = strtoull(yytext, &e, 0);
+
+			assert(!(*e) || !e[strspn(e, "UL")]);
+
+			if (errno == ERANGE)
+				lexical_error("Integer literal '%s' out of range",
+					      yytext);
+			else
+				/* ERANGE is the only strtoull error triggerable
+				 *  by strings matching the pattern */
+				assert(errno == 0);
 			return DT_LITERAL;
 		}
 
 <*>{CHAR_LITERAL}	{
-			yytext[yyleng-1] = '\0';
-			yylval.literal = xstrdup(yytext+1);
-			DPRINT("Character literal: %s\n", yylval.literal);
+			struct data d;
+			DPRINT("Character literal: %s\n", yytext);
+
+			d = data_copy_escape_string(yytext+1, yyleng-2);
+			if (d.len == 1) {
+				lexical_error("Empty character literal");
+				yylval.integer = 0;
+				return DT_CHAR_LITERAL;
+			}
+
+			yylval.integer = (unsigned char)d.val[0];
+
+			if (d.len > 2)
+				lexical_error("Character literal has %d"
+					      " characters instead of 1",
+					      d.len - 1);
+
 			return DT_CHAR_LITERAL;
 		}
 
@@ -164,7 +192,7 @@ static int pop_input_file(void);
 			return DT_REF;
 		}
 
-<*>"&{/"{PATHCHAR}+\}	{	/* new-style path reference */
+<*>"&{/"{PATHCHAR}*\}	{	/* new-style path reference */
 			yytext[yyleng-1] = '\0';
 			DPRINT("Ref: %s\n", yytext+2);
 			yylval.labelref = xstrdup(yytext+2);
@@ -238,13 +266,24 @@ static void push_input_file(const char *filename)
 }
 
 
-static int pop_input_file(void)
+static bool pop_input_file(void)
 {
 	if (srcfile_pop() == 0)
-		return 0;
+		return false;
 
 	yypop_buffer_state();
 	yyin = current_srcfile->f;
 
-	return 1;
+	return true;
+}
+
+static void lexical_error(const char *fmt, ...)
+{
+	va_list ap;
+
+	va_start(ap, fmt);
+	srcpos_verror(&yylloc, "Lexical error", fmt, ap);
+	va_end(ap);
+
+	treesource_error = true;
 }
diff --git a/scripts/dtc/dtc-lexer.lex.c_shipped b/scripts/dtc/dtc-lexer.lex.c_shipped
index 5a6b093e426a..11cd78e72305 100644
--- a/scripts/dtc/dtc-lexer.lex.c_shipped
+++ b/scripts/dtc/dtc-lexer.lex.c_shipped
@@ -9,7 +9,7 @@
 #define FLEX_SCANNER
 #define YY_FLEX_MAJOR_VERSION 2
 #define YY_FLEX_MINOR_VERSION 5
-#define YY_FLEX_SUBMINOR_VERSION 35
+#define YY_FLEX_SUBMINOR_VERSION 39
 #if YY_FLEX_SUBMINOR_VERSION > 0
 #define FLEX_BETA
 #endif
@@ -34,7 +34,7 @@
 #if defined (__STDC_VERSION__) && __STDC_VERSION__ >= 199901L
 
 /* C99 says to define __STDC_LIMIT_MACROS before including stdint.h,
- * if you want the limit (max/min) macros for int types.
+ * if you want the limit (max/min) macros for int types. 
  */
 #ifndef __STDC_LIMIT_MACROS
 #define __STDC_LIMIT_MACROS 1
@@ -51,7 +51,7 @@ typedef uint32_t flex_uint32_t;
 typedef signed char flex_int8_t;
 typedef short int flex_int16_t;
 typedef int flex_int32_t;
-typedef unsigned char flex_uint8_t;
+typedef unsigned char flex_uint8_t; 
 typedef unsigned short int flex_uint16_t;
 typedef unsigned int flex_uint32_t;
 
@@ -162,7 +162,12 @@ typedef unsigned int flex_uint32_t;
 typedef struct yy_buffer_state *YY_BUFFER_STATE;
 #endif
 
-extern int yyleng;
+#ifndef YY_TYPEDEF_YY_SIZE_T
+#define YY_TYPEDEF_YY_SIZE_T
+typedef size_t yy_size_t;
+#endif
+
+extern yy_size_t yyleng;
 
 extern FILE *yyin, *yyout;
 
@@ -171,7 +176,8 @@ extern FILE *yyin, *yyout;
 #define EOB_ACT_LAST_MATCH 2
 
     #define YY_LESS_LINENO(n)
-
+    #define YY_LINENO_REWIND_TO(ptr)
+    
 /* Return all but the first "n" matched characters back to the input stream. */
 #define yyless(n) \
 	do \
@@ -188,11 +194,6 @@ extern FILE *yyin, *yyout;
 
 #define unput(c) yyunput( c, (yytext_ptr)  )
 
-#ifndef YY_TYPEDEF_YY_SIZE_T
-#define YY_TYPEDEF_YY_SIZE_T
-typedef size_t yy_size_t;
-#endif
-
 #ifndef YY_STRUCT_YY_BUFFER_STATE
 #define YY_STRUCT_YY_BUFFER_STATE
 struct yy_buffer_state
@@ -210,7 +211,7 @@ struct yy_buffer_state
 	/* Number of characters read into yy_ch_buf, not including EOB
 	 * characters.
 	 */
-	int yy_n_chars;
+	yy_size_t yy_n_chars;
 
 	/* Whether we "own" the buffer - i.e., we know we created it,
 	 * and can realloc() it to grow it, and should free() it to
@@ -233,7 +234,7 @@ struct yy_buffer_state
 
     int yy_bs_lineno; /**< The line count. */
     int yy_bs_column; /**< The column count. */
-
+    
 	/* Whether to try to fill the input buffer when we reach the
 	 * end of it.
 	 */
@@ -280,8 +281,8 @@ static YY_BUFFER_STATE * yy_buffer_stack = 0; /**< Stack as an array. */
 
 /* yy_hold_char holds the character lost when yytext is formed. */
 static char yy_hold_char;
-static int yy_n_chars;		/* number of characters read into yy_ch_buf */
-int yyleng;
+static yy_size_t yy_n_chars;		/* number of characters read into yy_ch_buf */
+yy_size_t yyleng;
 
 /* Points to current character in buffer. */
 static char *yy_c_buf_p = (char *) 0;
@@ -309,7 +310,7 @@ static void yy_init_buffer (YY_BUFFER_STATE b,FILE *file  );
 
 YY_BUFFER_STATE yy_scan_buffer (char *base,yy_size_t size  );
 YY_BUFFER_STATE yy_scan_string (yyconst char *yy_str  );
-YY_BUFFER_STATE yy_scan_bytes (yyconst char *bytes,int len  );
+YY_BUFFER_STATE yy_scan_bytes (yyconst char *bytes,yy_size_t len  );
 
 void *yyalloc (yy_size_t  );
 void *yyrealloc (void *,yy_size_t  );
@@ -341,7 +342,7 @@ void yyfree (void *  );
 
 /* Begin user sect3 */
 
-#define yywrap(n) 1
+#define yywrap() 1
 #define YY_SKIP_YYWRAP
 
 typedef unsigned char YY_CHAR;
@@ -381,43 +382,43 @@ struct yy_trans_info
 	flex_int32_t yy_verify;
 	flex_int32_t yy_nxt;
 	};
-static yyconst flex_int16_t yy_accept[161] =
+static yyconst flex_int16_t yy_accept[159] =
     {   0,
-        0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
-       31,   29,   18,   18,   29,   29,   29,   29,   29,   29,
-       29,   29,   29,   29,   29,   29,   29,   29,   15,   16,
-       16,   29,   16,   10,   10,   18,   26,    0,    3,    0,
-       27,   12,    0,    0,   11,    0,    0,    0,    0,    0,
-        0,    0,   21,   23,   25,   24,   22,    0,    9,   28,
-        0,    0,    0,   14,   14,   16,   16,   16,   10,   10,
-       10,    0,   12,    0,   11,    0,    0,    0,   20,    0,
-        0,    0,    0,    0,    0,    0,    0,   16,   10,   10,
-       10,    0,   19,    0,    0,    0,    0,    0,    0,    0,
-
-        0,    0,   16,   13,    0,    0,    0,    0,    0,    0,
-        0,    0,    0,   16,    6,    0,    0,    0,    0,    0,
-        0,    2,    0,    0,    0,    0,    0,    0,    0,    0,
-        4,   17,    0,    0,    2,    0,    0,    0,    0,    0,
-        0,    0,    0,    0,    0,    0,    0,    1,    0,    0,
-        0,    0,    5,    8,    0,    0,    0,    0,    7,    0
+        0,    0,    0,    0,    0,    0,    0,    0,   31,   29,
+       18,   18,   29,   29,   29,   29,   29,   29,   29,   29,
+       29,   29,   29,   29,   29,   29,   15,   16,   16,   29,
+       16,   10,   10,   18,   26,    0,    3,    0,   27,   12,
+        0,    0,   11,    0,    0,    0,    0,    0,    0,    0,
+       21,   23,   25,   24,   22,    0,    9,   28,    0,    0,
+        0,   14,   14,   16,   16,   16,   10,   10,   10,    0,
+       12,    0,   11,    0,    0,    0,   20,    0,    0,    0,
+        0,    0,    0,    0,    0,   16,   10,   10,   10,    0,
+       13,   19,    0,    0,    0,    0,    0,    0,    0,    0,
+
+        0,   16,    0,    0,    0,    0,    0,    0,    0,    0,
+        0,   16,    6,    0,    0,    0,    0,    0,    0,    2,
+        0,    0,    0,    0,    0,    0,    0,    0,    4,   17,
+        0,    0,    2,    0,    0,    0,    0,    0,    0,    0,
+        0,    0,    0,    0,    0,    1,    0,    0,    0,    0,
+        5,    8,    0,    0,    0,    0,    7,    0
     } ;
 
 static yyconst flex_int32_t yy_ec[256] =
     {   0,
         1,    1,    1,    1,    1,    1,    1,    1,    2,    3,
-        2,    2,    2,    1,    1,    1,    1,    1,    1,    1,
+        4,    4,    4,    1,    1,    1,    1,    1,    1,    1,
         1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
-        1,    2,    4,    5,    6,    1,    1,    7,    8,    1,
-        1,    9,   10,   10,   11,   10,   12,   13,   14,   15,
-       15,   15,   15,   15,   15,   15,   15,   16,    1,   17,
-       18,   19,   10,   10,   20,   20,   20,   20,   20,   20,
-       21,   21,   21,   21,   21,   22,   21,   21,   21,   21,
-       21,   21,   21,   21,   23,   21,   21,   24,   21,   21,
-        1,   25,   26,    1,   21,    1,   20,   27,   28,   29,
-
-       30,   20,   21,   21,   31,   21,   21,   32,   33,   34,
-       35,   36,   21,   37,   38,   39,   40,   41,   21,   24,
-       42,   21,   43,   44,   45,    1,    1,    1,    1,    1,
+        1,    2,    5,    6,    7,    1,    1,    8,    9,    1,
+        1,   10,   11,   11,   12,   11,   13,   14,   15,   16,
+       16,   16,   16,   16,   16,   16,   16,   17,    1,   18,
+       19,   20,   11,   11,   21,   21,   21,   21,   21,   21,
+       22,   22,   22,   22,   22,   23,   22,   22,   22,   22,
+       22,   22,   22,   22,   24,   22,   22,   25,   22,   22,
+        1,   26,   27,    1,   22,    1,   21,   28,   29,   30,
+
+       31,   21,   22,   22,   32,   22,   22,   33,   34,   35,
+       36,   37,   22,   38,   39,   40,   41,   42,   22,   25,
+       43,   22,   44,   45,   46,    1,    1,    1,    1,    1,
         1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
         1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
         1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
@@ -434,163 +435,163 @@ static yyconst flex_int32_t yy_ec[256] =
         1,    1,    1,    1,    1
     } ;
 
-static yyconst flex_int32_t yy_meta[46] =
+static yyconst flex_int32_t yy_meta[47] =
     {   0,
-        1,    1,    1,    1,    1,    2,    3,    1,    2,    2,
-        2,    4,    5,    5,    5,    6,    1,    1,    1,    7,
-        8,    8,    8,    8,    1,    1,    7,    7,    7,    7,
-        8,    8,    8,    8,    8,    8,    8,    8,    8,    8,
-        8,    8,    3,    1,    1
+        1,    1,    1,    1,    1,    1,    2,    3,    1,    2,
+        2,    2,    4,    5,    5,    5,    6,    1,    1,    1,
+        7,    8,    8,    8,    8,    1,    1,    7,    7,    7,
+        7,    8,    8,    8,    8,    8,    8,    8,    8,    8,
+        8,    8,    8,    3,    1,    4
     } ;
 
-static yyconst flex_int16_t yy_base[175] =
+static yyconst flex_int16_t yy_base[173] =
     {   0,
-        0,  388,  381,   40,   41,  386,   71,  385,   34,   44,
-      390,  395,   60,   62,  371,  112,  111,  111,  111,  104,
-      370,  106,  371,  342,  124,  119,    0,  144,  395,    0,
-      123,    0,  159,  153,  165,  167,  395,  130,  395,  382,
-      395,    0,  372,  122,  395,  157,  374,  379,  350,   21,
-      346,  349,  395,  395,  395,  395,  395,  362,  395,  395,
-      181,  346,  342,  395,  359,    0,  191,  343,  190,  351,
-      350,    0,    0,    0,  173,  362,  177,  367,  357,  329,
-      335,  328,  337,  331,  206,  329,  334,  327,  395,  338,
-      170,  314,  346,  345,  318,  325,  343,  158,  316,  212,
-
-      322,  319,  320,  395,  340,  336,  308,  305,  314,  304,
-      295,  138,  208,  220,  395,  292,  305,  265,  264,  254,
-      201,  222,  285,  275,  273,  270,  236,  235,  225,  115,
-      395,  395,  252,  216,  216,  217,  214,  230,  209,  220,
-      213,  239,  211,  217,  216,  209,  229,  395,  240,  225,
-      206,  169,  395,  395,  116,  106,   99,   54,  395,  395,
-      254,  260,  268,  272,  276,  282,  289,  293,  301,  309,
-      313,  319,  327,  335
+        0,  383,   34,  382,   65,  381,   37,  105,  387,  391,
+       54,  111,  367,  110,  109,  109,  112,   41,  366,  104,
+      367,  338,  124,  117,    0,  144,  391,    0,  121,    0,
+      135,  155,  140,  179,  391,  160,  391,  379,  391,    0,
+      368,  141,  391,  167,  370,  376,  346,  103,  342,  345,
+      391,  391,  391,  391,  391,  358,  391,  391,  175,  342,
+      338,  391,  355,    0,  185,  339,  184,  347,  346,    0,
+        0,  322,  175,  357,  175,  363,  352,  324,  330,  323,
+      332,  326,  201,  324,  329,  322,  391,  333,  181,  309,
+      391,  341,  340,  313,  320,  338,  178,  311,  146,  317,
+
+      314,  315,  335,  331,  303,  300,  309,  299,  308,  188,
+      336,  335,  391,  305,  320,  281,  283,  271,  203,  288,
+      281,  271,  266,  264,  245,  242,  208,  104,  391,  391,
+      244,  218,  204,  219,  206,  224,  201,  212,  204,  229,
+      215,  208,  207,  200,  219,  391,  233,  221,  200,  181,
+      391,  391,  149,  122,   86,   41,  391,  391,  245,  251,
+      259,  263,  267,  273,  280,  284,  292,  300,  304,  310,
+      318,  326
     } ;
 
-static yyconst flex_int16_t yy_def[175] =
+static yyconst flex_int16_t yy_def[173] =
     {   0,
-      160,    1,    1,    1,    1,    5,  160,    7,    1,    1,
-      160,  160,  160,  160,  160,  161,  162,  163,  160,  160,
-      160,  160,  164,  160,  160,  160,  165,  164,  160,  166,
-      167,  166,  166,  160,  160,  160,  160,  161,  160,  161,
-      160,  168,  160,  163,  160,  163,  169,  170,  160,  160,
-      160,  160,  160,  160,  160,  160,  160,  164,  160,  160,
-      160,  160,  160,  160,  164,  166,  167,  166,  160,  160,
-      160,  171,  168,  172,  163,  169,  169,  170,  160,  160,
-      160,  160,  160,  160,  160,  160,  160,  166,  160,  160,
-      171,  172,  160,  160,  160,  160,  160,  160,  160,  160,
-
-      160,  160,  166,  160,  160,  160,  160,  160,  160,  160,
-      160,  173,  160,  166,  160,  160,  160,  160,  160,  160,
-      173,  160,  173,  160,  160,  160,  160,  160,  160,  160,
-      160,  160,  160,  160,  160,  160,  160,  160,  160,  160,
-      160,  160,  174,  160,  160,  160,  174,  160,  174,  160,
-      160,  160,  160,  160,  160,  160,  160,  160,  160,    0,
-      160,  160,  160,  160,  160,  160,  160,  160,  160,  160,
-      160,  160,  160,  160
+      158,    1,    1,    3,  158,    5,    1,    1,  158,  158,
+      158,  158,  158,  159,  160,  161,  158,  158,  158,  158,
+      162,  158,  158,  158,  163,  162,  158,  164,  165,  164,
+      164,  158,  158,  158,  158,  159,  158,  159,  158,  166,
+      158,  161,  158,  161,  167,  168,  158,  158,  158,  158,
+      158,  158,  158,  158,  158,  162,  158,  158,  158,  158,
+      158,  158,  162,  164,  165,  164,  158,  158,  158,  169,
+      166,  170,  161,  167,  167,  168,  158,  158,  158,  158,
+      158,  158,  158,  158,  158,  164,  158,  158,  169,  170,
+      158,  158,  158,  158,  158,  158,  158,  158,  158,  158,
+
+      158,  164,  158,  158,  158,  158,  158,  158,  158,  171,
+      158,  164,  158,  158,  158,  158,  158,  158,  171,  158,
+      171,  158,  158,  158,  158,  158,  158,  158,  158,  158,
+      158,  158,  158,  158,  158,  158,  158,  158,  158,  158,
+      172,  158,  158,  158,  172,  158,  172,  158,  158,  158,
+      158,  158,  158,  158,  158,  158,  158,    0,  158,  158,
+      158,  158,  158,  158,  158,  158,  158,  158,  158,  158,
+      158,  158
     } ;
 
-static yyconst flex_int16_t yy_nxt[441] =
+static yyconst flex_int16_t yy_nxt[438] =
     {   0,
-       12,   13,   14,   15,   16,   12,   17,   18,   12,   12,
-       12,   19,   12,   12,   12,   12,   20,   21,   22,   23,
-       23,   23,   23,   23,   12,   12,   23,   23,   23,   23,
-       23,   23,   23,   23,   23,   23,   23,   23,   23,   23,
-       23,   23,   12,   24,   12,   25,   34,   35,   35,   25,
-       81,   26,   26,   27,   27,   27,   34,   35,   35,   82,
-       28,   36,   36,   36,   36,  159,   29,   28,   28,   28,
-       28,   12,   13,   14,   15,   16,   30,   17,   18,   30,
-       30,   30,   26,   30,   30,   30,   12,   20,   21,   22,
-       31,   31,   31,   31,   31,   32,   12,   31,   31,   31,
-
-       31,   31,   31,   31,   31,   31,   31,   31,   31,   31,
-       31,   31,   31,   12,   24,   12,   39,   41,   45,   47,
-       53,   54,   48,   56,   57,   61,   61,   47,   66,   45,
-       48,   66,   66,   66,   39,   46,   40,   49,   59,   50,
-      158,   51,  122,   52,  157,   49,   46,   50,  136,   63,
-      137,   52,  156,   43,   40,   62,   65,   65,   65,   59,
-       61,   61,  123,   65,   75,   69,   69,   69,   36,   36,
-       65,   65,   65,   65,   70,   71,   72,   69,   69,   69,
-       45,   46,   61,   61,  109,   77,   70,   71,   93,  110,
-       68,   70,   71,   85,   85,   85,   66,   46,  155,   66,
-
-       66,   66,   69,   69,   69,  122,   59,  100,  100,   61,
-       61,   70,   71,  100,  100,  148,  112,  154,   85,   85,
-       85,   61,   61,  129,  129,  123,  129,  129,  135,  135,
-      135,  142,  142,  148,  143,  149,  153,  135,  135,  135,
-      142,  142,  160,  143,  152,  151,  150,  146,  145,  144,
-      141,  140,  139,  149,   38,   38,   38,   38,   38,   38,
-       38,   38,   42,  138,  134,  133,   42,   42,   44,   44,
-       44,   44,   44,   44,   44,   44,   58,   58,   58,   58,
-       64,  132,   64,   66,  131,  130,   66,  160,   66,   66,
-       67,  128,  127,   67,   67,   67,   67,   73,  126,   73,
-
-       73,   76,   76,   76,   76,   76,   76,   76,   76,   78,
-       78,   78,   78,   78,   78,   78,   78,   91,  125,   91,
-       92,  124,   92,   92,  120,   92,   92,  121,  121,  121,
-      121,  121,  121,  121,  121,  147,  147,  147,  147,  147,
-      147,  147,  147,  119,  118,  117,  116,  115,   47,  114,
-      110,  113,  111,  108,  107,  106,   48,  105,  104,   89,
-      103,  102,  101,   99,   98,   97,   96,   95,   94,   79,
-       77,   90,   89,   88,   59,   87,   86,   59,   84,   83,
-       80,   79,   77,   74,  160,   60,   59,   55,   37,  160,
-       33,   25,   26,   25,   11,  160,  160,  160,  160,  160,
-
-      160,  160,  160,  160,  160,  160,  160,  160,  160,  160,
-      160,  160,  160,  160,  160,  160,  160,  160,  160,  160,
-      160,  160,  160,  160,  160,  160,  160,  160,  160,  160,
-      160,  160,  160,  160,  160,  160,  160,  160,  160,  160
+       10,   11,   12,   11,   13,   14,   10,   15,   16,   10,
+       10,   10,   17,   10,   10,   10,   10,   18,   19,   20,
+       21,   21,   21,   21,   21,   10,   10,   21,   21,   21,
+       21,   21,   21,   21,   21,   21,   21,   21,   21,   21,
+       21,   21,   21,   10,   22,   10,   24,   25,   25,   25,
+       32,   33,   33,  157,   26,   34,   34,   34,   51,   52,
+       27,   26,   26,   26,   26,   10,   11,   12,   11,   13,
+       14,   28,   15,   16,   28,   28,   28,   24,   28,   28,
+       28,   10,   18,   19,   20,   29,   29,   29,   29,   29,
+       30,   10,   29,   29,   29,   29,   29,   29,   29,   29,
+
+       29,   29,   29,   29,   29,   29,   29,   29,   10,   22,
+       10,   23,   34,   34,   34,   37,   39,   43,   32,   33,
+       33,   45,   54,   55,   46,   59,   45,   64,  156,   46,
+       64,   64,   64,   79,   44,   38,   59,   57,  134,   47,
+      135,   48,   80,   49,   47,   50,   48,   99,   61,   43,
+       50,  110,   41,   67,   67,   67,   60,   63,   63,   63,
+       57,  155,   68,   69,   63,   37,   44,   66,   67,   67,
+       67,   63,   63,   63,   63,   73,   59,   68,   69,   70,
+       34,   34,   34,   43,   75,   38,  154,   92,   83,   83,
+       83,   64,   44,  120,   64,   64,   64,   67,   67,   67,
+
+       44,   57,   99,   68,   69,  107,   68,   69,  120,  127,
+      108,  153,  152,  121,   83,   83,   83,  133,  133,  133,
+      146,  133,  133,  133,  146,  140,  140,  140,  121,  141,
+      140,  140,  140,  151,  141,  158,  150,  149,  148,  144,
+      147,  143,  142,  139,  147,   36,   36,   36,   36,   36,
+       36,   36,   36,   40,  138,  137,  136,   40,   40,   42,
+       42,   42,   42,   42,   42,   42,   42,   56,   56,   56,
+       56,   62,  132,   62,   64,  131,  130,   64,  129,   64,
+       64,   65,  128,  158,   65,   65,   65,   65,   71,  127,
+       71,   71,   74,   74,   74,   74,   74,   74,   74,   74,
+
+       76,   76,   76,   76,   76,   76,   76,   76,   89,  126,
+       89,   90,  125,   90,   90,  124,   90,   90,  119,  119,
+      119,  119,  119,  119,  119,  119,  145,  145,  145,  145,
+      145,  145,  145,  145,  123,  122,   59,   59,  118,  117,
+      116,  115,  114,  113,   45,  112,  108,  111,  109,  106,
+      105,  104,   46,  103,   91,   87,  102,  101,  100,   98,
+       97,   96,   95,   94,   93,   77,   75,   91,   88,   87,
+       86,   57,   85,   84,   57,   82,   81,   78,   77,   75,
+       72,  158,   58,   57,   53,   35,  158,   31,   23,   23,
+        9,  158,  158,  158,  158,  158,  158,  158,  158,  158,
+
+      158,  158,  158,  158,  158,  158,  158,  158,  158,  158,
+      158,  158,  158,  158,  158,  158,  158,  158,  158,  158,
+      158,  158,  158,  158,  158,  158,  158,  158,  158,  158,
+      158,  158,  158,  158,  158,  158,  158
     } ;
 
-static yyconst flex_int16_t yy_chk[441] =
+static yyconst flex_int16_t yy_chk[438] =
     {   0,
         1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
         1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
         1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
         1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
-        1,    1,    1,    1,    1,    4,    9,    9,    9,   10,
-       50,    4,    5,    5,    5,    5,   10,   10,   10,   50,
-        5,   13,   13,   14,   14,  158,    5,    5,    5,    5,
-        5,    7,    7,    7,    7,    7,    7,    7,    7,    7,
-        7,    7,    7,    7,    7,    7,    7,    7,    7,    7,
-        7,    7,    7,    7,    7,    7,    7,    7,    7,    7,
-
-        7,    7,    7,    7,    7,    7,    7,    7,    7,    7,
-        7,    7,    7,    7,    7,    7,   16,   17,   18,   19,
-       20,   20,   19,   22,   22,   25,   25,   26,   31,   44,
-       26,   31,   31,   31,   38,   18,   16,   19,   31,   19,
-      157,   19,  112,   19,  156,   26,   44,   26,  130,   26,
-      130,   26,  155,   17,   38,   25,   28,   28,   28,   28,
-       33,   33,  112,   28,   46,   34,   34,   34,   36,   36,
-       28,   28,   28,   28,   34,   34,   34,   35,   35,   35,
-       75,   46,   61,   61,   98,   77,   35,   35,   77,   98,
-       33,   91,   91,   61,   61,   61,   67,   75,  152,   67,
-
-       67,   67,   69,   69,   69,  121,   67,   85,   85,  113,
-      113,   69,   69,  100,  100,  143,  100,  151,   85,   85,
-       85,  114,  114,  122,  122,  121,  129,  129,  135,  135,
-      135,  138,  138,  147,  138,  143,  150,  129,  129,  129,
-      142,  142,  149,  142,  146,  145,  144,  141,  140,  139,
-      137,  136,  134,  147,  161,  161,  161,  161,  161,  161,
-      161,  161,  162,  133,  128,  127,  162,  162,  163,  163,
-      163,  163,  163,  163,  163,  163,  164,  164,  164,  164,
-      165,  126,  165,  166,  125,  124,  166,  123,  166,  166,
-      167,  120,  119,  167,  167,  167,  167,  168,  118,  168,
-
-      168,  169,  169,  169,  169,  169,  169,  169,  169,  170,
-      170,  170,  170,  170,  170,  170,  170,  171,  117,  171,
-      172,  116,  172,  172,  111,  172,  172,  173,  173,  173,
-      173,  173,  173,  173,  173,  174,  174,  174,  174,  174,
-      174,  174,  174,  110,  109,  108,  107,  106,  105,  103,
-      102,  101,   99,   97,   96,   95,   94,   93,   92,   90,
-       88,   87,   86,   84,   83,   82,   81,   80,   79,   78,
-       76,   71,   70,   68,   65,   63,   62,   58,   52,   51,
-       49,   48,   47,   43,   40,   24,   23,   21,   15,   11,
-        8,    6,    3,    2,  160,  160,  160,  160,  160,  160,
-
-      160,  160,  160,  160,  160,  160,  160,  160,  160,  160,
-      160,  160,  160,  160,  160,  160,  160,  160,  160,  160,
-      160,  160,  160,  160,  160,  160,  160,  160,  160,  160,
-      160,  160,  160,  160,  160,  160,  160,  160,  160,  160
+        1,    1,    1,    1,    1,    1,    3,    3,    3,    3,
+        7,    7,    7,  156,    3,   11,   11,   11,   18,   18,
+        3,    3,    3,    3,    3,    5,    5,    5,    5,    5,
+        5,    5,    5,    5,    5,    5,    5,    5,    5,    5,
+        5,    5,    5,    5,    5,    5,    5,    5,    5,    5,
+        5,    5,    5,    5,    5,    5,    5,    5,    5,    5,
+
+        5,    5,    5,    5,    5,    5,    5,    5,    5,    5,
+        5,    8,   12,   12,   12,   14,   15,   16,    8,    8,
+        8,   17,   20,   20,   17,   23,   24,   29,  155,   24,
+       29,   29,   29,   48,   16,   14,   31,   29,  128,   17,
+      128,   17,   48,   17,   24,   17,   24,   99,   24,   42,
+       24,   99,   15,   33,   33,   33,   23,   26,   26,   26,
+       26,  154,   33,   33,   26,   36,   42,   31,   32,   32,
+       32,   26,   26,   26,   26,   44,   59,   32,   32,   32,
+       34,   34,   34,   73,   75,   36,  153,   75,   59,   59,
+       59,   65,   44,  110,   65,   65,   65,   67,   67,   67,
+
+       73,   65,   83,   89,   89,   97,   67,   67,  119,  127,
+       97,  150,  149,  110,   83,   83,   83,  133,  133,  133,
+      141,  127,  127,  127,  145,  136,  136,  136,  119,  136,
+      140,  140,  140,  148,  140,  147,  144,  143,  142,  139,
+      141,  138,  137,  135,  145,  159,  159,  159,  159,  159,
+      159,  159,  159,  160,  134,  132,  131,  160,  160,  161,
+      161,  161,  161,  161,  161,  161,  161,  162,  162,  162,
+      162,  163,  126,  163,  164,  125,  124,  164,  123,  164,
+      164,  165,  122,  121,  165,  165,  165,  165,  166,  120,
+      166,  166,  167,  167,  167,  167,  167,  167,  167,  167,
+
+      168,  168,  168,  168,  168,  168,  168,  168,  169,  118,
+      169,  170,  117,  170,  170,  116,  170,  170,  171,  171,
+      171,  171,  171,  171,  171,  171,  172,  172,  172,  172,
+      172,  172,  172,  172,  115,  114,  112,  111,  109,  108,
+      107,  106,  105,  104,  103,  102,  101,  100,   98,   96,
+       95,   94,   93,   92,   90,   88,   86,   85,   84,   82,
+       81,   80,   79,   78,   77,   76,   74,   72,   69,   68,
+       66,   63,   61,   60,   56,   50,   49,   47,   46,   45,
+       41,   38,   22,   21,   19,   13,    9,    6,    4,    2,
+      158,  158,  158,  158,  158,  158,  158,  158,  158,  158,
+
+      158,  158,  158,  158,  158,  158,  158,  158,  158,  158,
+      158,  158,  158,  158,  158,  158,  158,  158,  158,  158,
+      158,  158,  158,  158,  158,  158,  158,  158,  158,  158,
+      158,  158,  158,  158,  158,  158,  158
     } ;
 
 static yy_state_type yy_last_accepting_state;
@@ -631,13 +632,13 @@ char *yytext;
 
 
 
-
-#line 38 "dtc-lexer.l"
+#line 37 "dtc-lexer.l"
 #include "dtc.h"
 #include "srcpos.h"
 #include "dtc-parser.tab.h"
 
 YYLTYPE yylloc;
+extern bool treesource_error;
 
 /* CAUTION: this will stop working if we ever use yyless() or yyunput() */
 #define	YY_USER_ACTION \
@@ -659,14 +660,14 @@ static int dts_version = 1;
 				BEGIN(V1); \
 
 static void push_input_file(const char *filename);
-static int pop_input_file(void);
-#line 664 "dtc-lexer.lex.c"
+static bool pop_input_file(void);
+static void lexical_error(const char *fmt, ...);
+#line 666 "dtc-lexer.lex.c"
 
 #define INITIAL 0
-#define INCLUDE 1
-#define BYTESTRING 2
-#define PROPNODENAME 3
-#define V1 4
+#define BYTESTRING 1
+#define PROPNODENAME 2
+#define V1 3
 
 #ifndef YY_NO_UNISTD_H
 /* Special case for "unistd.h", since it is non-ANSI. We include it way
@@ -703,7 +704,7 @@ FILE *yyget_out (void );
 
 void yyset_out  (FILE * out_str  );
 
-int yyget_leng (void );
+yy_size_t yyget_leng (void );
 
 char *yyget_text (void );
 
@@ -851,11 +852,7 @@ YY_DECL
 	register yy_state_type yy_current_state;
 	register char *yy_cp, *yy_bp;
 	register int yy_act;
-
-#line 67 "dtc-lexer.l"
-
-#line 858 "dtc-lexer.lex.c"
-
+    
 	if ( !(yy_init) )
 		{
 		(yy_init) = 1;
@@ -882,6 +879,11 @@ YY_DECL
 		yy_load_buffer_state( );
 		}
 
+	{
+#line 68 "dtc-lexer.l"
+
+#line 886 "dtc-lexer.lex.c"
+
 	while ( 1 )		/* loops until end-of-file is reached */
 		{
 		yy_cp = (yy_c_buf_p);
@@ -899,7 +901,7 @@ YY_DECL
 yy_match:
 		do
 			{
-			register YY_CHAR yy_c = yy_ec[YY_SC_TO_UI(*yy_cp)];
+			register YY_CHAR yy_c = yy_ec[YY_SC_TO_UI(*yy_cp)] ;
 			if ( yy_accept[yy_current_state] )
 				{
 				(yy_last_accepting_state) = yy_current_state;
@@ -908,13 +910,13 @@ yy_match:
 			while ( yy_chk[yy_base[yy_current_state] + yy_c] != yy_current_state )
 				{
 				yy_current_state = (int) yy_def[yy_current_state];
-				if ( yy_current_state >= 161 )
+				if ( yy_current_state >= 159 )
 					yy_c = yy_meta[(unsigned int) yy_c];
 				}
 			yy_current_state = yy_nxt[yy_base[yy_current_state] + (unsigned int) yy_c];
 			++yy_cp;
 			}
-		while ( yy_current_state != 160 );
+		while ( yy_current_state != 158 );
 		yy_cp = (yy_last_accepting_cpos);
 		yy_current_state = (yy_last_accepting_state);
 
@@ -937,7 +939,7 @@ do_action:	/* This label is used only to access EOF actions. */
 case 1:
 /* rule 1 can match eol */
 YY_RULE_SETUP
-#line 68 "dtc-lexer.l"
+#line 69 "dtc-lexer.l"
 {
 			char *name = strchr(yytext, '\"') + 1;
 			yytext[yyleng-1] = '\0';
@@ -947,16 +949,16 @@ YY_RULE_SETUP
 case 2:
 /* rule 2 can match eol */
 YY_RULE_SETUP
-#line 74 "dtc-lexer.l"
+#line 75 "dtc-lexer.l"
 {
 			char *line, *tmp, *fn;
 			/* skip text before line # */
 			line = yytext;
-			while (!isdigit(*line))
+			while (!isdigit((unsigned char)*line))
 				line++;
 			/* skip digits in line # */
 			tmp = line;
-			while (!isspace(*tmp))
+			while (!isspace((unsigned char)*tmp))
 				tmp++;
 			/* "NULL"-terminate line # */
 			*tmp = '\0';
@@ -970,11 +972,10 @@ YY_RULE_SETUP
 		}
 	YY_BREAK
 case YY_STATE_EOF(INITIAL):
-case YY_STATE_EOF(INCLUDE):
 case YY_STATE_EOF(BYTESTRING):
 case YY_STATE_EOF(PROPNODENAME):
 case YY_STATE_EOF(V1):
-#line 95 "dtc-lexer.l"
+#line 96 "dtc-lexer.l"
 {
 			if (!pop_input_file()) {
 				yyterminate();
@@ -984,7 +985,7 @@ case YY_STATE_EOF(V1):
 case 3:
 /* rule 3 can match eol */
 YY_RULE_SETUP
-#line 101 "dtc-lexer.l"
+#line 102 "dtc-lexer.l"
 {
 			DPRINT("String: %s\n", yytext);
 			yylval.data = data_copy_escape_string(yytext+1,
@@ -994,7 +995,7 @@ YY_RULE_SETUP
 	YY_BREAK
 case 4:
 YY_RULE_SETUP
-#line 108 "dtc-lexer.l"
+#line 109 "dtc-lexer.l"
 {
 			DPRINT("Keyword: /dts-v1/\n");
 			dts_version = 1;
@@ -1004,7 +1005,7 @@ YY_RULE_SETUP
 	YY_BREAK
 case 5:
 YY_RULE_SETUP
-#line 115 "dtc-lexer.l"
+#line 116 "dtc-lexer.l"
 {
 			DPRINT("Keyword: /memreserve/\n");
 			BEGIN_DEFAULT();
@@ -1013,7 +1014,7 @@ YY_RULE_SETUP
 	YY_BREAK
 case 6:
 YY_RULE_SETUP
-#line 121 "dtc-lexer.l"
+#line 122 "dtc-lexer.l"
 {
 			DPRINT("Keyword: /bits/\n");
 			BEGIN_DEFAULT();
@@ -1022,7 +1023,7 @@ YY_RULE_SETUP
 	YY_BREAK
 case 7:
 YY_RULE_SETUP
-#line 127 "dtc-lexer.l"
+#line 128 "dtc-lexer.l"
 {
 			DPRINT("Keyword: /delete-property/\n");
 			DPRINT("<PROPNODENAME>\n");
@@ -1032,7 +1033,7 @@ YY_RULE_SETUP
 	YY_BREAK
 case 8:
 YY_RULE_SETUP
-#line 134 "dtc-lexer.l"
+#line 135 "dtc-lexer.l"
 {
 			DPRINT("Keyword: /delete-node/\n");
 			DPRINT("<PROPNODENAME>\n");
@@ -1042,7 +1043,7 @@ YY_RULE_SETUP
 	YY_BREAK
 case 9:
 YY_RULE_SETUP
-#line 141 "dtc-lexer.l"
+#line 142 "dtc-lexer.l"
 {
 			DPRINT("Label: %s\n", yytext);
 			yylval.labelref = xstrdup(yytext);
@@ -1052,27 +1053,54 @@ YY_RULE_SETUP
 	YY_BREAK
 case 10:
 YY_RULE_SETUP
-#line 148 "dtc-lexer.l"
+#line 149 "dtc-lexer.l"
 {
-			yylval.literal = xstrdup(yytext);
-			DPRINT("Literal: '%s'\n", yylval.literal);
+			char *e;
+			DPRINT("Integer Literal: '%s'\n", yytext);
+
+			errno = 0;
+			yylval.integer = strtoull(yytext, &e, 0);
+
+			assert(!(*e) || !e[strspn(e, "UL")]);
+
+			if (errno == ERANGE)
+				lexical_error("Integer literal '%s' out of range",
+					      yytext);
+			else
+				/* ERANGE is the only strtoull error triggerable
+				 *  by strings matching the pattern */
+				assert(errno == 0);
 			return DT_LITERAL;
 		}
 	YY_BREAK
 case 11:
 /* rule 11 can match eol */
 YY_RULE_SETUP
-#line 154 "dtc-lexer.l"
+#line 168 "dtc-lexer.l"
 {
-			yytext[yyleng-1] = '\0';
-			yylval.literal = xstrdup(yytext+1);
-			DPRINT("Character literal: %s\n", yylval.literal);
+			struct data d;
+			DPRINT("Character literal: %s\n", yytext);
+
+			d = data_copy_escape_string(yytext+1, yyleng-2);
+			if (d.len == 1) {
+				lexical_error("Empty character literal");
+				yylval.integer = 0;
+				return DT_CHAR_LITERAL;
+			}
+
+			yylval.integer = (unsigned char)d.val[0];
+
+			if (d.len > 2)
+				lexical_error("Character literal has %d"
+					      " characters instead of 1",
+					      d.len - 1);
+
 			return DT_CHAR_LITERAL;
 		}
 	YY_BREAK
 case 12:
 YY_RULE_SETUP
-#line 161 "dtc-lexer.l"
+#line 189 "dtc-lexer.l"
 {	/* label reference */
 			DPRINT("Ref: %s\n", yytext+1);
 			yylval.labelref = xstrdup(yytext+1);
@@ -1081,7 +1109,7 @@ YY_RULE_SETUP
 	YY_BREAK
 case 13:
 YY_RULE_SETUP
-#line 167 "dtc-lexer.l"
+#line 195 "dtc-lexer.l"
 {	/* new-style path reference */
 			yytext[yyleng-1] = '\0';
 			DPRINT("Ref: %s\n", yytext+2);
@@ -1091,7 +1119,7 @@ YY_RULE_SETUP
 	YY_BREAK
 case 14:
 YY_RULE_SETUP
-#line 174 "dtc-lexer.l"
+#line 202 "dtc-lexer.l"
 {
 			yylval.byte = strtol(yytext, NULL, 16);
 			DPRINT("Byte: %02x\n", (int)yylval.byte);
@@ -1100,7 +1128,7 @@ YY_RULE_SETUP
 	YY_BREAK
 case 15:
 YY_RULE_SETUP
-#line 180 "dtc-lexer.l"
+#line 208 "dtc-lexer.l"
 {
 			DPRINT("/BYTESTRING\n");
 			BEGIN_DEFAULT();
@@ -1109,7 +1137,7 @@ YY_RULE_SETUP
 	YY_BREAK
 case 16:
 YY_RULE_SETUP
-#line 186 "dtc-lexer.l"
+#line 214 "dtc-lexer.l"
 {
 			DPRINT("PropNodeName: %s\n", yytext);
 			yylval.propnodename = xstrdup((yytext[0] == '\\') ?
@@ -1120,7 +1148,7 @@ YY_RULE_SETUP
 	YY_BREAK
 case 17:
 YY_RULE_SETUP
-#line 194 "dtc-lexer.l"
+#line 222 "dtc-lexer.l"
 {
 			DPRINT("Binary Include\n");
 			return DT_INCBIN;
@@ -1129,64 +1157,64 @@ YY_RULE_SETUP
 case 18:
 /* rule 18 can match eol */
 YY_RULE_SETUP
-#line 199 "dtc-lexer.l"
+#line 227 "dtc-lexer.l"
 /* eat whitespace */
 	YY_BREAK
 case 19:
 /* rule 19 can match eol */
 YY_RULE_SETUP
-#line 200 "dtc-lexer.l"
+#line 228 "dtc-lexer.l"
 /* eat C-style comments */
 	YY_BREAK
 case 20:
 /* rule 20 can match eol */
 YY_RULE_SETUP
-#line 201 "dtc-lexer.l"
+#line 229 "dtc-lexer.l"
 /* eat C++-style comments */
 	YY_BREAK
 case 21:
 YY_RULE_SETUP
-#line 203 "dtc-lexer.l"
+#line 231 "dtc-lexer.l"
 { return DT_LSHIFT; };
 	YY_BREAK
 case 22:
 YY_RULE_SETUP
-#line 204 "dtc-lexer.l"
+#line 232 "dtc-lexer.l"
 { return DT_RSHIFT; };
 	YY_BREAK
 case 23:
 YY_RULE_SETUP
-#line 205 "dtc-lexer.l"
+#line 233 "dtc-lexer.l"
 { return DT_LE; };
 	YY_BREAK
 case 24:
 YY_RULE_SETUP
-#line 206 "dtc-lexer.l"
+#line 234 "dtc-lexer.l"
 { return DT_GE; };
 	YY_BREAK
 case 25:
 YY_RULE_SETUP
-#line 207 "dtc-lexer.l"
+#line 235 "dtc-lexer.l"
 { return DT_EQ; };
 	YY_BREAK
 case 26:
 YY_RULE_SETUP
-#line 208 "dtc-lexer.l"
+#line 236 "dtc-lexer.l"
 { return DT_NE; };
 	YY_BREAK
 case 27:
 YY_RULE_SETUP
-#line 209 "dtc-lexer.l"
+#line 237 "dtc-lexer.l"
 { return DT_AND; };
 	YY_BREAK
 case 28:
 YY_RULE_SETUP
-#line 210 "dtc-lexer.l"
+#line 238 "dtc-lexer.l"
 { return DT_OR; };
 	YY_BREAK
 case 29:
 YY_RULE_SETUP
-#line 212 "dtc-lexer.l"
+#line 240 "dtc-lexer.l"
 {
 			DPRINT("Char: %c (\\x%02x)\n", yytext[0],
 				(unsigned)yytext[0]);
@@ -1204,10 +1232,10 @@ YY_RULE_SETUP
 	YY_BREAK
 case 30:
 YY_RULE_SETUP
-#line 227 "dtc-lexer.l"
+#line 255 "dtc-lexer.l"
 ECHO;
 	YY_BREAK
-#line 1211 "dtc-lexer.lex.c"
+#line 1239 "dtc-lexer.lex.c"
 
 	case YY_END_OF_BUFFER:
 		{
@@ -1337,6 +1365,7 @@ ECHO;
 			"fatal flex scanner internal error--no action found" );
 	} /* end of action switch */
 		} /* end of scanning one token */
+	} /* end of user's declarations */
 } /* end of yylex */
 
 /* yy_get_next_buffer - try to read in a new buffer
@@ -1392,21 +1421,21 @@ static int yy_get_next_buffer (void)
 
 	else
 		{
-			int num_to_read =
+			yy_size_t num_to_read =
 			YY_CURRENT_BUFFER_LVALUE->yy_buf_size - number_to_move - 1;
 
 		while ( num_to_read <= 0 )
 			{ /* Not enough room in the buffer - grow it. */
 
 			/* just a shorter name for the current buffer */
-			YY_BUFFER_STATE b = YY_CURRENT_BUFFER;
+			YY_BUFFER_STATE b = YY_CURRENT_BUFFER_LVALUE;
 
 			int yy_c_buf_p_offset =
 				(int) ((yy_c_buf_p) - b->yy_ch_buf);
 
 			if ( b->yy_is_our_buffer )
 				{
-				int new_size = b->yy_buf_size * 2;
+				yy_size_t new_size = b->yy_buf_size * 2;
 
 				if ( new_size <= 0 )
 					b->yy_buf_size += b->yy_buf_size / 8;
@@ -1437,7 +1466,7 @@ static int yy_get_next_buffer (void)
 
 		/* Read in more data. */
 		YY_INPUT( (&YY_CURRENT_BUFFER_LVALUE->yy_ch_buf[number_to_move]),
-			(yy_n_chars), (size_t) num_to_read );
+			(yy_n_chars), num_to_read );
 
 		YY_CURRENT_BUFFER_LVALUE->yy_n_chars = (yy_n_chars);
 		}
@@ -1484,7 +1513,7 @@ static int yy_get_next_buffer (void)
 {
 	register yy_state_type yy_current_state;
 	register char *yy_cp;
-
+    
 	yy_current_state = (yy_start);
 	yy_current_state += YY_AT_BOL();
 
@@ -1499,7 +1528,7 @@ static int yy_get_next_buffer (void)
 		while ( yy_chk[yy_base[yy_current_state] + yy_c] != yy_current_state )
 			{
 			yy_current_state = (int) yy_def[yy_current_state];
-			if ( yy_current_state >= 161 )
+			if ( yy_current_state >= 159 )
 				yy_c = yy_meta[(unsigned int) yy_c];
 			}
 		yy_current_state = yy_nxt[yy_base[yy_current_state] + (unsigned int) yy_c];
@@ -1527,13 +1556,13 @@ static int yy_get_next_buffer (void)
 	while ( yy_chk[yy_base[yy_current_state] + yy_c] != yy_current_state )
 		{
 		yy_current_state = (int) yy_def[yy_current_state];
-		if ( yy_current_state >= 161 )
+		if ( yy_current_state >= 159 )
 			yy_c = yy_meta[(unsigned int) yy_c];
 		}
 	yy_current_state = yy_nxt[yy_base[yy_current_state] + (unsigned int) yy_c];
-	yy_is_jam = (yy_current_state == 160);
+	yy_is_jam = (yy_current_state == 158);
 
-	return yy_is_jam ? 0 : yy_current_state;
+		return yy_is_jam ? 0 : yy_current_state;
 }
 
 #ifndef YY_NO_INPUT
@@ -1545,7 +1574,7 @@ static int yy_get_next_buffer (void)
 
 {
 	int c;
-
+    
 	*(yy_c_buf_p) = (yy_hold_char);
 
 	if ( *(yy_c_buf_p) == YY_END_OF_BUFFER_CHAR )
@@ -1560,7 +1589,7 @@ static int yy_get_next_buffer (void)
 
 		else
 			{ /* need more input */
-			int offset = (yy_c_buf_p) - (yytext_ptr);
+			yy_size_t offset = (yy_c_buf_p) - (yytext_ptr);
 			++(yy_c_buf_p);
 
 			switch ( yy_get_next_buffer(  ) )
@@ -1614,12 +1643,12 @@ static int yy_get_next_buffer (void)
 
 /** Immediately switch to a different input stream.
  * @param input_file A readable stream.
- *
+ * 
  * @note This function does not reset the start condition to @c INITIAL .
  */
     void yyrestart  (FILE * input_file )
 {
-
+    
 	if ( ! YY_CURRENT_BUFFER ){
         yyensure_buffer_stack ();
 		YY_CURRENT_BUFFER_LVALUE =
@@ -1632,11 +1661,11 @@ static int yy_get_next_buffer (void)
 
 /** Switch to a different input buffer.
  * @param new_buffer The new input buffer.
- *
+ * 
  */
     void yy_switch_to_buffer  (YY_BUFFER_STATE  new_buffer )
 {
-
+    
 	/* TODO. We should be able to replace this entire function body
 	 * with
 	 *		yypop_buffer_state();
@@ -1676,13 +1705,13 @@ static void yy_load_buffer_state  (void)
 /** Allocate and initialize an input buffer state.
  * @param file A readable stream.
  * @param size The character buffer size in bytes. When in doubt, use @c YY_BUF_SIZE.
- *
+ * 
  * @return the allocated buffer state.
  */
     YY_BUFFER_STATE yy_create_buffer  (FILE * file, int  size )
 {
 	YY_BUFFER_STATE b;
-
+    
 	b = (YY_BUFFER_STATE) yyalloc(sizeof( struct yy_buffer_state )  );
 	if ( ! b )
 		YY_FATAL_ERROR( "out of dynamic memory in yy_create_buffer()" );
@@ -1705,11 +1734,11 @@ static void yy_load_buffer_state  (void)
 
 /** Destroy the buffer.
  * @param b a buffer created with yy_create_buffer()
- *
+ * 
  */
     void yy_delete_buffer (YY_BUFFER_STATE  b )
 {
-
+    
 	if ( ! b )
 		return;
 
@@ -1730,7 +1759,7 @@ static void yy_load_buffer_state  (void)
 
 {
 	int oerrno = errno;
-
+    
 	yy_flush_buffer(b );
 
 	b->yy_input_file = file;
@@ -1746,13 +1775,13 @@ static void yy_load_buffer_state  (void)
     }
 
         b->yy_is_interactive = 0;
-
+    
 	errno = oerrno;
 }
 
 /** Discard all buffered characters. On the next scan, YY_INPUT will be called.
  * @param b the buffer state to be flushed, usually @c YY_CURRENT_BUFFER.
- *
+ * 
  */
     void yy_flush_buffer (YY_BUFFER_STATE  b )
 {
@@ -1781,7 +1810,7 @@ static void yy_load_buffer_state  (void)
  *  the current state. This function will allocate the stack
  *  if necessary.
  *  @param new_buffer The new state.
- *
+ *  
  */
 void yypush_buffer_state (YY_BUFFER_STATE new_buffer )
 {
@@ -1811,7 +1840,7 @@ void yypush_buffer_state (YY_BUFFER_STATE new_buffer )
 
 /** Removes and deletes the top of the stack, if present.
  *  The next element becomes the new top.
- *
+ *  
  */
 void yypop_buffer_state (void)
 {
@@ -1834,8 +1863,8 @@ void yypop_buffer_state (void)
  */
 static void yyensure_buffer_stack (void)
 {
-	int num_to_alloc;
-
+	yy_size_t num_to_alloc;
+    
 	if (!(yy_buffer_stack)) {
 
 		/* First allocation is just for 2 elements, since we don't know if this
@@ -1848,9 +1877,9 @@ static void yyensure_buffer_stack (void)
 								);
 		if ( ! (yy_buffer_stack) )
 			YY_FATAL_ERROR( "out of dynamic memory in yyensure_buffer_stack()" );
-
+								  
 		memset((yy_buffer_stack), 0, num_to_alloc * sizeof(struct yy_buffer_state*));
-
+				
 		(yy_buffer_stack_max) = num_to_alloc;
 		(yy_buffer_stack_top) = 0;
 		return;
@@ -1878,13 +1907,13 @@ static void yyensure_buffer_stack (void)
 /** Setup the input buffer state to scan directly from a user-specified character buffer.
  * @param base the character buffer
  * @param size the size in bytes of the character buffer
- *
- * @return the newly allocated buffer state object.
+ * 
+ * @return the newly allocated buffer state object. 
  */
 YY_BUFFER_STATE yy_scan_buffer  (char * base, yy_size_t  size )
 {
 	YY_BUFFER_STATE b;
-
+    
 	if ( size < 2 ||
 	     base[size-2] != YY_END_OF_BUFFER_CHAR ||
 	     base[size-1] != YY_END_OF_BUFFER_CHAR )
@@ -1913,14 +1942,14 @@ YY_BUFFER_STATE yy_scan_buffer  (char * base, yy_size_t  size )
 /** Setup the input buffer state to scan a string. The next call to yylex() will
  * scan from a @e copy of @a str.
  * @param yystr a NUL-terminated string to scan
- *
+ * 
  * @return the newly allocated buffer state object.
  * @note If you want to scan bytes that may contain NUL values, then use
  *       yy_scan_bytes() instead.
  */
 YY_BUFFER_STATE yy_scan_string (yyconst char * yystr )
 {
-
+    
 	return yy_scan_bytes(yystr,strlen(yystr) );
 }
 
@@ -1928,16 +1957,16 @@ YY_BUFFER_STATE yy_scan_string (yyconst char * yystr )
  * scan from a @e copy of @a bytes.
  * @param yybytes the byte buffer to scan
  * @param _yybytes_len the number of bytes in the buffer pointed to by @a bytes.
- *
+ * 
  * @return the newly allocated buffer state object.
  */
-YY_BUFFER_STATE yy_scan_bytes  (yyconst char * yybytes, int  _yybytes_len )
+YY_BUFFER_STATE yy_scan_bytes  (yyconst char * yybytes, yy_size_t  _yybytes_len )
 {
 	YY_BUFFER_STATE b;
 	char *buf;
 	yy_size_t n;
-	int i;
-
+	yy_size_t i;
+    
 	/* Get memory for full buffer, including space for trailing EOB's. */
 	n = _yybytes_len + 2;
 	buf = (char *) yyalloc(n  );
@@ -1991,16 +2020,16 @@ static void yy_fatal_error (yyconst char* msg )
 /* Accessor  methods (get/set functions) to struct members. */
 
 /** Get the current line number.
- *
+ * 
  */
 int yyget_lineno  (void)
 {
-
+        
     return yylineno;
 }
 
 /** Get the input stream.
- *
+ * 
  */
 FILE *yyget_in  (void)
 {
@@ -2008,7 +2037,7 @@ FILE *yyget_in  (void)
 }
 
 /** Get the output stream.
- *
+ * 
  */
 FILE *yyget_out  (void)
 {
@@ -2016,15 +2045,15 @@ FILE *yyget_out  (void)
 }
 
 /** Get the length of the current token.
- *
+ * 
  */
-int yyget_leng  (void)
+yy_size_t yyget_leng  (void)
 {
         return yyleng;
 }
 
 /** Get the current token.
- *
+ * 
  */
 
 char *yyget_text  (void)
@@ -2034,18 +2063,18 @@ char *yyget_text  (void)
 
 /** Set the current line number.
  * @param line_number
- *
+ * 
  */
 void yyset_lineno (int  line_number )
 {
-
+    
     yylineno = line_number;
 }
 
 /** Set the input stream. This does not discard the current
  * input buffer.
  * @param in_str A readable stream.
- *
+ * 
  * @see yy_switch_to_buffer
  */
 void yyset_in (FILE *  in_str )
@@ -2099,7 +2128,7 @@ static int yy_init_globals (void)
 /* yylex_destroy is for both reentrant and non-reentrant scanners. */
 int yylex_destroy  (void)
 {
-
+    
     /* Pop the buffer stack, destroying each element. */
 	while(YY_CURRENT_BUFFER){
 		yy_delete_buffer(YY_CURRENT_BUFFER  );
@@ -2166,7 +2195,7 @@ void yyfree (void * ptr )
 
 #define YYTABLES_NAME "yytables"
 
-#line 227 "dtc-lexer.l"
+#line 254 "dtc-lexer.l"
 
 
 
@@ -2182,14 +2211,25 @@ static void push_input_file(const char *filename)
 }
 
 
-static int pop_input_file(void)
+static bool pop_input_file(void)
 {
 	if (srcfile_pop() == 0)
-		return 0;
+		return false;
 
 	yypop_buffer_state();
 	yyin = current_srcfile->f;
 
-	return 1;
+	return true;
+}
+
+static void lexical_error(const char *fmt, ...)
+{
+	va_list ap;
+
+	va_start(ap, fmt);
+	srcpos_verror(&yylloc, "Lexical error", fmt, ap);
+	va_end(ap);
+
+	treesource_error = true;
 }
 
diff --git a/scripts/dtc/dtc-parser.tab.c_shipped b/scripts/dtc/dtc-parser.tab.c_shipped
index 4af55900a15b..27fac4b9cd70 100644
--- a/scripts/dtc/dtc-parser.tab.c_shipped
+++ b/scripts/dtc/dtc-parser.tab.c_shipped
@@ -1,21 +1,19 @@
+/* A Bison parser, made by GNU Bison 3.0.2.  */
 
-/* A Bison parser, made by GNU Bison 2.4.1.  */
+/* Bison implementation for Yacc-like parsers in C
+
+   Copyright (C) 1984, 1989-1990, 2000-2013 Free Software Foundation, Inc.
 
-/* Skeleton implementation for Bison's Yacc-like parsers in C
-   
-      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
-   Free Software Foundation, Inc.
-   
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
-   
+
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
-   
+
    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.  */
 
@@ -28,7 +26,7 @@
    special exception, which will cause the skeleton and the resulting
    Bison output files to be licensed under the GNU General Public
    License without this special exception.
-   
+
    This special exception was added by the Free Software Foundation in
    version 2.2 of Bison.  */
 
@@ -46,7 +44,7 @@
 #define YYBISON 1
 
 /* Bison version.  */
-#define YYBISON_VERSION "2.4.1"
+#define YYBISON_VERSION "3.0.2"
 
 /* Skeleton name.  */
 #define YYSKELETON_NAME "yacc.c"
@@ -60,41 +58,37 @@
 /* Pull parsers.  */
 #define YYPULL 1
 
-/* Using locations.  */
-#define YYLSP_NEEDED 0
 
 
 
 /* Copy the first part of user declarations.  */
-
-/* Line 189 of yacc.c  */
-#line 21 "dtc-parser.y"
+#line 20 "dtc-parser.y" /* yacc.c:339  */
 
 #include <stdio.h>
 
 #include "dtc.h"
 #include "srcpos.h"
 
-YYLTYPE yylloc;
-
 extern int yylex(void);
-extern void print_error(char const *fmt, ...);
 extern void yyerror(char const *s);
+#define ERROR(loc, ...) \
+	do { \
+		srcpos_error((loc), "Error", __VA_ARGS__); \
+		treesource_error = true; \
+	} while (0)
 
 extern struct boot_info *the_boot_info;
-extern int treesource_error;
+extern bool treesource_error;
 
-static unsigned long long eval_literal(const char *s, int base, int bits);
-static unsigned char eval_char_literal(const char *s);
+#line 84 "dtc-parser.tab.c" /* yacc.c:339  */
 
-
-/* Line 189 of yacc.c  */
-#line 93 "dtc-parser.tab.c"
-
-/* Enabling traces.  */
-#ifndef YYDEBUG
-# define YYDEBUG 0
-#endif
+# ifndef YY_NULLPTR
+#  if defined __cplusplus && 201103L <= __cplusplus
+#   define YY_NULLPTR nullptr
+#  else
+#   define YY_NULLPTR 0
+#  endif
+# endif
 
 /* Enabling verbose error messages.  */
 #ifdef YYERROR_VERBOSE
@@ -104,56 +98,56 @@ static unsigned char eval_char_literal(const char *s);
 # define YYERROR_VERBOSE 0
 #endif
 
-/* Enabling the token table.  */
-#ifndef YYTOKEN_TABLE
-# define YYTOKEN_TABLE 0
+/* In a future release of Bison, this section will be replaced
+   by #include "dtc-parser.tab.h".  */
+#ifndef YY_YY_DTC_PARSER_TAB_H_INCLUDED
+# define YY_YY_DTC_PARSER_TAB_H_INCLUDED
+/* Debug traces.  */
+#ifndef YYDEBUG
+# define YYDEBUG 0
+#endif
+#if YYDEBUG
+extern int yydebug;
 #endif
 
-
-/* Tokens.  */
+/* Token type.  */
 #ifndef YYTOKENTYPE
 # define YYTOKENTYPE
-   /* Put the tokens into the symbol table, so that GDB and other debuggers
-      know about them.  */
-   enum yytokentype {
-     DT_V1 = 258,
-     DT_MEMRESERVE = 259,
-     DT_LSHIFT = 260,
-     DT_RSHIFT = 261,
-     DT_LE = 262,
-     DT_GE = 263,
-     DT_EQ = 264,
-     DT_NE = 265,
-     DT_AND = 266,
-     DT_OR = 267,
-     DT_BITS = 268,
-     DT_DEL_PROP = 269,
-     DT_DEL_NODE = 270,
-     DT_PROPNODENAME = 271,
-     DT_LITERAL = 272,
-     DT_CHAR_LITERAL = 273,
-     DT_BASE = 274,
-     DT_BYTE = 275,
-     DT_STRING = 276,
-     DT_LABEL = 277,
-     DT_REF = 278,
-     DT_INCBIN = 279
-   };
+  enum yytokentype
+  {
+    DT_V1 = 258,
+    DT_MEMRESERVE = 259,
+    DT_LSHIFT = 260,
+    DT_RSHIFT = 261,
+    DT_LE = 262,
+    DT_GE = 263,
+    DT_EQ = 264,
+    DT_NE = 265,
+    DT_AND = 266,
+    DT_OR = 267,
+    DT_BITS = 268,
+    DT_DEL_PROP = 269,
+    DT_DEL_NODE = 270,
+    DT_PROPNODENAME = 271,
+    DT_LITERAL = 272,
+    DT_CHAR_LITERAL = 273,
+    DT_BYTE = 274,
+    DT_STRING = 275,
+    DT_LABEL = 276,
+    DT_REF = 277,
+    DT_INCBIN = 278
+  };
 #endif
 
-
-
+/* Value type.  */
 #if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
-typedef union YYSTYPE
+typedef union YYSTYPE YYSTYPE;
+union YYSTYPE
 {
-
-/* Line 214 of yacc.c  */
-#line 40 "dtc-parser.y"
+#line 38 "dtc-parser.y" /* yacc.c:355  */
 
 	char *propnodename;
-	char *literal;
 	char *labelref;
-	unsigned int cbase;
 	uint8_t byte;
 	struct data data;
 
@@ -169,22 +163,36 @@ typedef union YYSTYPE
 	struct reserve_info *re;
 	uint64_t integer;
 
-
-
-/* Line 214 of yacc.c  */
-#line 176 "dtc-parser.tab.c"
-} YYSTYPE;
+#line 167 "dtc-parser.tab.c" /* yacc.c:355  */
+};
 # define YYSTYPE_IS_TRIVIAL 1
-# define yystype YYSTYPE /* obsolescent; will be withdrawn */
 # define YYSTYPE_IS_DECLARED 1
 #endif
 
+/* Location type.  */
+#if ! defined YYLTYPE && ! defined YYLTYPE_IS_DECLARED
+typedef struct YYLTYPE YYLTYPE;
+struct YYLTYPE
+{
+  int first_line;
+  int first_column;
+  int last_line;
+  int last_column;
+};
+# define YYLTYPE_IS_DECLARED 1
+# define YYLTYPE_IS_TRIVIAL 1
+#endif
+
 
-/* Copy the second part of user declarations.  */
+extern YYSTYPE yylval;
+extern YYLTYPE yylloc;
+int yyparse (void);
+
+#endif /* !YY_YY_DTC_PARSER_TAB_H_INCLUDED  */
 
+/* Copy the second part of user declarations.  */
 
-/* Line 264 of yacc.c  */
-#line 188 "dtc-parser.tab.c"
+#line 196 "dtc-parser.tab.c" /* yacc.c:358  */
 
 #ifdef short
 # undef short
@@ -198,11 +206,8 @@ typedef unsigned char yytype_uint8;
 
 #ifdef YYTYPE_INT8
 typedef YYTYPE_INT8 yytype_int8;
-#elif (defined __STDC__ || defined __C99__FUNC__ \
-     || defined __cplusplus || defined _MSC_VER)
-typedef signed char yytype_int8;
 #else
-typedef short int yytype_int8;
+typedef signed char yytype_int8;
 #endif
 
 #ifdef YYTYPE_UINT16
@@ -222,8 +227,7 @@ typedef short int yytype_int16;
 #  define YYSIZE_T __SIZE_TYPE__
 # elif defined size_t
 #  define YYSIZE_T size_t
-# elif ! defined YYSIZE_T && (defined __STDC__ || defined __C99__FUNC__ \
-     || defined __cplusplus || defined _MSC_VER)
+# elif ! defined YYSIZE_T
 #  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
 #  define YYSIZE_T size_t
 # else
@@ -234,42 +238,71 @@ typedef short int yytype_int16;
 #define YYSIZE_MAXIMUM ((YYSIZE_T) -1)
 
 #ifndef YY_
-# if YYENABLE_NLS
+# if defined YYENABLE_NLS && YYENABLE_NLS
 #  if ENABLE_NLS
 #   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
-#   define YY_(msgid) dgettext ("bison-runtime", msgid)
+#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
 #  endif
 # endif
 # ifndef YY_
-#  define YY_(msgid) msgid
+#  define YY_(Msgid) Msgid
+# endif
+#endif
+
+#ifndef YY_ATTRIBUTE
+# if (defined __GNUC__                                               \
+      && (2 < __GNUC__ || (__GNUC__ == 2 && 96 <= __GNUC_MINOR__)))  \
+     || defined __SUNPRO_C && 0x5110 <= __SUNPRO_C
+#  define YY_ATTRIBUTE(Spec) __attribute__(Spec)
+# else
+#  define YY_ATTRIBUTE(Spec) /* empty */
+# endif
+#endif
+
+#ifndef YY_ATTRIBUTE_PURE
+# define YY_ATTRIBUTE_PURE   YY_ATTRIBUTE ((__pure__))
+#endif
+
+#ifndef YY_ATTRIBUTE_UNUSED
+# define YY_ATTRIBUTE_UNUSED YY_ATTRIBUTE ((__unused__))
+#endif
+
+#if !defined _Noreturn \
+     && (!defined __STDC_VERSION__ || __STDC_VERSION__ < 201112)
+# if defined _MSC_VER && 1200 <= _MSC_VER
+#  define _Noreturn __declspec (noreturn)
+# else
+#  define _Noreturn YY_ATTRIBUTE ((__noreturn__))
 # endif
 #endif
 
 /* Suppress unused-variable warnings by "using" E.  */
 #if ! defined lint || defined __GNUC__
-# define YYUSE(e) ((void) (e))
+# define YYUSE(E) ((void) (E))
 #else
-# define YYUSE(e) /* empty */
+# define YYUSE(E) /* empty */
 #endif
 
-/* Identity function, used to suppress warnings about constant conditions.  */
-#ifndef lint
-# define YYID(n) (n)
+#if defined __GNUC__ && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
+/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
+# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN \
+    _Pragma ("GCC diagnostic push") \
+    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")\
+    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
+# define YY_IGNORE_MAYBE_UNINITIALIZED_END \
+    _Pragma ("GCC diagnostic pop")
 #else
-#if (defined __STDC__ || defined __C99__FUNC__ \
-     || defined __cplusplus || defined _MSC_VER)
-static int
-YYID (int yyi)
-#else
-static int
-YYID (yyi)
-    int yyi;
+# define YY_INITIAL_VALUE(Value) Value
 #endif
-{
-  return yyi;
-}
+#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
+# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
+# define YY_IGNORE_MAYBE_UNINITIALIZED_END
+#endif
+#ifndef YY_INITIAL_VALUE
+# define YY_INITIAL_VALUE(Value) /* Nothing. */
 #endif
 
+
 #if ! defined yyoverflow || YYERROR_VERBOSE
 
 /* The parser invokes alloca or malloc; define the necessary symbols.  */
@@ -287,11 +320,11 @@ YYID (yyi)
 #    define alloca _alloca
 #   else
 #    define YYSTACK_ALLOC alloca
-#    if ! defined _ALLOCA_H && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
-     || defined __cplusplus || defined _MSC_VER)
+#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
 #     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
-#     ifndef _STDLIB_H
-#      define _STDLIB_H 1
+      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
+#     ifndef EXIT_SUCCESS
+#      define EXIT_SUCCESS 0
 #     endif
 #    endif
 #   endif
@@ -299,8 +332,8 @@ YYID (yyi)
 # endif
 
 # ifdef YYSTACK_ALLOC
-   /* Pacify GCC's `empty if-body' warning.  */
-#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (YYID (0))
+   /* Pacify GCC's 'empty if-body' warning.  */
+#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
 #  ifndef YYSTACK_ALLOC_MAXIMUM
     /* The OS might guarantee only one guard page at the bottom of the stack,
        and a page size can be as small as 4096 bytes.  So we cannot safely
@@ -314,25 +347,23 @@ YYID (yyi)
 #  ifndef YYSTACK_ALLOC_MAXIMUM
 #   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
 #  endif
-#  if (defined __cplusplus && ! defined _STDLIB_H \
+#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
        && ! ((defined YYMALLOC || defined malloc) \
-	     && (defined YYFREE || defined free)))
+             && (defined YYFREE || defined free)))
 #   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
-#   ifndef _STDLIB_H
-#    define _STDLIB_H 1
+#   ifndef EXIT_SUCCESS
+#    define EXIT_SUCCESS 0
 #   endif
 #  endif
 #  ifndef YYMALLOC
 #   define YYMALLOC malloc
-#   if ! defined malloc && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
-     || defined __cplusplus || defined _MSC_VER)
+#   if ! defined malloc && ! defined EXIT_SUCCESS
 void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
 #   endif
 #  endif
 #  ifndef YYFREE
 #   define YYFREE free
-#   if ! defined free && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
-     || defined __cplusplus || defined _MSC_VER)
+#   if ! defined free && ! defined EXIT_SUCCESS
 void free (void *); /* INFRINGES ON USER NAME SPACE */
 #   endif
 #  endif
@@ -342,13 +373,15 @@ void free (void *); /* INFRINGES ON USER NAME SPACE */
 
 #if (! defined yyoverflow \
      && (! defined __cplusplus \
-	 || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))
+         || (defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL \
+             && defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))
 
 /* A type that is properly aligned for any stack member.  */
 union yyalloc
 {
   yytype_int16 yyss_alloc;
   YYSTYPE yyvs_alloc;
+  YYLTYPE yyls_alloc;
 };
 
 /* The size of the maximum gap between one aligned stack and the next.  */
@@ -357,82 +390,88 @@ union yyalloc
 /* The size of an array large to enough to hold all stacks, each with
    N elements.  */
 # define YYSTACK_BYTES(N) \
-     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
-      + YYSTACK_GAP_MAXIMUM)
+     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE) + sizeof (YYLTYPE)) \
+      + 2 * YYSTACK_GAP_MAXIMUM)
 
-/* Copy COUNT objects from FROM to TO.  The source and destination do
-   not overlap.  */
-# ifndef YYCOPY
-#  if defined __GNUC__ && 1 < __GNUC__
-#   define YYCOPY(To, From, Count) \
-      __builtin_memcpy (To, From, (Count) * sizeof (*(From)))
-#  else
-#   define YYCOPY(To, From, Count)		\
-      do					\
-	{					\
-	  YYSIZE_T yyi;				\
-	  for (yyi = 0; yyi < (Count); yyi++)	\
-	    (To)[yyi] = (From)[yyi];		\
-	}					\
-      while (YYID (0))
-#  endif
-# endif
+# define YYCOPY_NEEDED 1
 
 /* Relocate STACK from its old location to the new one.  The
    local variables YYSIZE and YYSTACKSIZE give the old and new number of
    elements in the stack, and YYPTR gives the new location of the
    stack.  Advance YYPTR to a properly aligned location for the next
    stack.  */
-# define YYSTACK_RELOCATE(Stack_alloc, Stack)				\
-    do									\
-      {									\
-	YYSIZE_T yynewbytes;						\
-	YYCOPY (&yyptr->Stack_alloc, Stack, yysize);			\
-	Stack = &yyptr->Stack_alloc;					\
-	yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
-	yyptr += yynewbytes / sizeof (*yyptr);				\
-      }									\
-    while (YYID (0))
+# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
+    do                                                                  \
+      {                                                                 \
+        YYSIZE_T yynewbytes;                                            \
+        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
+        Stack = &yyptr->Stack_alloc;                                    \
+        yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
+        yyptr += yynewbytes / sizeof (*yyptr);                          \
+      }                                                                 \
+    while (0)
 
 #endif
 
+#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
+/* Copy COUNT objects from SRC to DST.  The source and destination do
+   not overlap.  */
+# ifndef YYCOPY
+#  if defined __GNUC__ && 1 < __GNUC__
+#   define YYCOPY(Dst, Src, Count) \
+      __builtin_memcpy (Dst, Src, (Count) * sizeof (*(Src)))
+#  else
+#   define YYCOPY(Dst, Src, Count)              \
+      do                                        \
+        {                                       \
+          YYSIZE_T yyi;                         \
+          for (yyi = 0; yyi < (Count); yyi++)   \
+            (Dst)[yyi] = (Src)[yyi];            \
+        }                                       \
+      while (0)
+#  endif
+# endif
+#endif /* !YYCOPY_NEEDED */
+
 /* YYFINAL -- State number of the termination state.  */
 #define YYFINAL  4
 /* YYLAST -- Last index in YYTABLE.  */
 #define YYLAST   133
 
 /* YYNTOKENS -- Number of terminals.  */
-#define YYNTOKENS  48
+#define YYNTOKENS  47
 /* YYNNTS -- Number of nonterminals.  */
 #define YYNNTS  28
 /* YYNRULES -- Number of rules.  */
 #define YYNRULES  79
-/* YYNRULES -- Number of states.  */
+/* YYNSTATES -- Number of states.  */
 #define YYNSTATES  141
 
-/* YYTRANSLATE(YYLEX) -- Bison symbol number corresponding to YYLEX.  */
+/* YYTRANSLATE[YYX] -- Symbol number corresponding to YYX as returned
+   by yylex, with out-of-bounds checking.  */
 #define YYUNDEFTOK  2
-#define YYMAXUTOK   279
+#define YYMAXUTOK   278
 
-#define YYTRANSLATE(YYX)						\
+#define YYTRANSLATE(YYX)                                                \
   ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)
 
-/* YYTRANSLATE[YYLEX] -- Bison symbol number corresponding to YYLEX.  */
+/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
+   as returned by yylex, without out-of-bounds checking.  */
 static const yytype_uint8 yytranslate[] =
 {
        0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
        2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
        2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
-       2,     2,     2,    47,     2,     2,     2,    45,    41,     2,
-      33,    35,    44,    42,    34,    43,     2,    26,     2,     2,
-       2,     2,     2,     2,     2,     2,     2,     2,    38,    25,
-      36,    29,    30,    37,     2,     2,     2,     2,     2,     2,
+       2,     2,     2,    46,     2,     2,     2,    44,    40,     2,
+      32,    34,    43,    41,    33,    42,     2,    25,     2,     2,
+       2,     2,     2,     2,     2,     2,     2,     2,    37,    24,
+      35,    28,    29,    36,     2,     2,     2,     2,     2,     2,
        2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
        2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
-       2,    31,     2,    32,    40,     2,     2,     2,     2,     2,
+       2,    30,     2,    31,    39,     2,     2,     2,     2,     2,
        2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
        2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
-       2,     2,     2,    27,    39,    28,    46,     2,     2,     2,
+       2,     2,     2,    26,    38,    27,    45,     2,     2,     2,
        2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
        2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
        2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
@@ -447,71 +486,25 @@ static const yytype_uint8 yytranslate[] =
        2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
        2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
        5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
-      15,    16,    17,    18,    19,    20,    21,    22,    23,    24
+      15,    16,    17,    18,    19,    20,    21,    22,    23
 };
 
 #if YYDEBUG
-/* YYPRHS[YYN] -- Index of the first RHS symbol of rule number YYN in
-   YYRHS.  */
-static const yytype_uint16 yyprhs[] =
-{
-       0,     0,     3,     8,     9,    12,    17,    20,    23,    27,
-      31,    36,    42,    43,    46,    51,    54,    58,    61,    64,
-      68,    73,    76,    86,    92,    95,    96,    99,   102,   106,
-     108,   111,   114,   117,   119,   121,   125,   127,   129,   135,
-     137,   141,   143,   147,   149,   153,   155,   159,   161,   165,
-     167,   171,   175,   177,   181,   185,   189,   193,   197,   201,
-     203,   207,   211,   213,   217,   221,   225,   227,   229,   232,
-     235,   238,   239,   242,   245,   246,   249,   252,   255,   259
-};
-
-/* YYRHS -- A `-1'-separated list of the rules' RHS.  */
-static const yytype_int8 yyrhs[] =
-{
-      49,     0,    -1,     3,    25,    50,    52,    -1,    -1,    51,
-      50,    -1,     4,    59,    59,    25,    -1,    22,    51,    -1,
-      26,    53,    -1,    52,    26,    53,    -1,    52,    23,    53,
-      -1,    52,    15,    23,    25,    -1,    27,    54,    74,    28,
-      25,    -1,    -1,    54,    55,    -1,    16,    29,    56,    25,
-      -1,    16,    25,    -1,    14,    16,    25,    -1,    22,    55,
-      -1,    57,    21,    -1,    57,    58,    30,    -1,    57,    31,
-      73,    32,    -1,    57,    23,    -1,    57,    24,    33,    21,
-      34,    59,    34,    59,    35,    -1,    57,    24,    33,    21,
-      35,    -1,    56,    22,    -1,    -1,    56,    34,    -1,    57,
-      22,    -1,    13,    17,    36,    -1,    36,    -1,    58,    59,
-      -1,    58,    23,    -1,    58,    22,    -1,    17,    -1,    18,
-      -1,    33,    60,    35,    -1,    61,    -1,    62,    -1,    62,
-      37,    60,    38,    61,    -1,    63,    -1,    62,    12,    63,
-      -1,    64,    -1,    63,    11,    64,    -1,    65,    -1,    64,
-      39,    65,    -1,    66,    -1,    65,    40,    66,    -1,    67,
-      -1,    66,    41,    67,    -1,    68,    -1,    67,     9,    68,
-      -1,    67,    10,    68,    -1,    69,    -1,    68,    36,    69,
-      -1,    68,    30,    69,    -1,    68,     7,    69,    -1,    68,
-       8,    69,    -1,    69,     5,    70,    -1,    69,     6,    70,
-      -1,    70,    -1,    70,    42,    71,    -1,    70,    43,    71,
-      -1,    71,    -1,    71,    44,    72,    -1,    71,    26,    72,
-      -1,    71,    45,    72,    -1,    72,    -1,    59,    -1,    43,
-      72,    -1,    46,    72,    -1,    47,    72,    -1,    -1,    73,
-      20,    -1,    73,    22,    -1,    -1,    75,    74,    -1,    75,
-      55,    -1,    16,    53,    -1,    15,    16,    25,    -1,    22,
-      75,    -1
-};
-
-/* YYRLINE[YYN] -- source line where rule number YYN was defined.  */
+  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
 static const yytype_uint16 yyrline[] =
 {
-       0,   109,   109,   118,   121,   128,   132,   140,   144,   148,
-     158,   172,   180,   183,   190,   194,   198,   202,   210,   214,
-     218,   222,   226,   243,   253,   261,   264,   268,   275,   290,
-     295,   315,   329,   336,   340,   344,   351,   355,   356,   360,
-     361,   365,   366,   370,   371,   375,   376,   380,   381,   385,
-     386,   387,   391,   392,   393,   394,   395,   399,   400,   401,
-     405,   406,   407,   411,   412,   413,   414,   418,   419,   420,
-     421,   426,   429,   433,   441,   444,   448,   456,   460,   464
+       0,   104,   104,   113,   116,   123,   127,   135,   139,   143,
+     153,   168,   176,   179,   186,   190,   194,   198,   206,   210,
+     214,   218,   222,   238,   248,   256,   259,   263,   270,   286,
+     291,   310,   324,   331,   332,   333,   340,   344,   345,   349,
+     350,   354,   355,   359,   360,   364,   365,   369,   370,   374,
+     375,   376,   380,   381,   382,   383,   384,   388,   389,   390,
+     394,   395,   396,   400,   401,   402,   403,   407,   408,   409,
+     410,   415,   418,   422,   430,   433,   437,   445,   449,   453
 };
 #endif
 
-#if YYDEBUG || YYERROR_VERBOSE || YYTOKEN_TABLE
+#if YYDEBUG || YYERROR_VERBOSE || 0
 /* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
    First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
 static const char *const yytname[] =
@@ -519,61 +512,66 @@ static const char *const yytname[] =
   "$end", "error", "$undefined", "DT_V1", "DT_MEMRESERVE", "DT_LSHIFT",
   "DT_RSHIFT", "DT_LE", "DT_GE", "DT_EQ", "DT_NE", "DT_AND", "DT_OR",
   "DT_BITS", "DT_DEL_PROP", "DT_DEL_NODE", "DT_PROPNODENAME", "DT_LITERAL",
-  "DT_CHAR_LITERAL", "DT_BASE", "DT_BYTE", "DT_STRING", "DT_LABEL",
-  "DT_REF", "DT_INCBIN", "';'", "'/'", "'{'", "'}'", "'='", "'>'", "'['",
-  "']'", "'('", "','", "')'", "'<'", "'?'", "':'", "'|'", "'^'", "'&'",
-  "'+'", "'-'", "'*'", "'%'", "'~'", "'!'", "$accept", "sourcefile",
+  "DT_CHAR_LITERAL", "DT_BYTE", "DT_STRING", "DT_LABEL", "DT_REF",
+  "DT_INCBIN", "';'", "'/'", "'{'", "'}'", "'='", "'>'", "'['", "']'",
+  "'('", "','", "')'", "'<'", "'?'", "':'", "'|'", "'^'", "'&'", "'+'",
+  "'-'", "'*'", "'%'", "'~'", "'!'", "$accept", "sourcefile",
   "memreserves", "memreserve", "devicetree", "nodedef", "proplist",
   "propdef", "propdata", "propdataprefix", "arrayprefix", "integer_prim",
   "integer_expr", "integer_trinary", "integer_or", "integer_and",
   "integer_bitor", "integer_bitxor", "integer_bitand", "integer_eq",
   "integer_rela", "integer_shift", "integer_add", "integer_mul",
-  "integer_unary", "bytestring", "subnodes", "subnode", 0
+  "integer_unary", "bytestring", "subnodes", "subnode", YY_NULLPTR
 };
 #endif
 
 # ifdef YYPRINT
-/* YYTOKNUM[YYLEX-NUM] -- Internal token number corresponding to
-   token YYLEX-NUM.  */
+/* YYTOKNUM[NUM] -- (External) token number corresponding to the
+   (internal) symbol number NUM (which must be that of a token).  */
 static const yytype_uint16 yytoknum[] =
 {
        0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
      265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
-     275,   276,   277,   278,   279,    59,    47,   123,   125,    61,
-      62,    91,    93,    40,    44,    41,    60,    63,    58,   124,
-      94,    38,    43,    45,    42,    37,   126,    33
+     275,   276,   277,   278,    59,    47,   123,   125,    61,    62,
+      91,    93,    40,    44,    41,    60,    63,    58,   124,    94,
+      38,    43,    45,    42,    37,   126,    33
 };
 # endif
 
-/* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
-static const yytype_uint8 yyr1[] =
-{
-       0,    48,    49,    50,    50,    51,    51,    52,    52,    52,
-      52,    53,    54,    54,    55,    55,    55,    55,    56,    56,
-      56,    56,    56,    56,    56,    57,    57,    57,    58,    58,
-      58,    58,    58,    59,    59,    59,    60,    61,    61,    62,
-      62,    63,    63,    64,    64,    65,    65,    66,    66,    67,
-      67,    67,    68,    68,    68,    68,    68,    69,    69,    69,
-      70,    70,    70,    71,    71,    71,    71,    72,    72,    72,
-      72,    73,    73,    73,    74,    74,    74,    75,    75,    75
-};
+#define YYPACT_NINF -38
 
-/* YYR2[YYN] -- Number of symbols composing right hand side of rule YYN.  */
-static const yytype_uint8 yyr2[] =
+#define yypact_value_is_default(Yystate) \
+  (!!((Yystate) == (-38)))
+
+#define YYTABLE_NINF -1
+
+#define yytable_value_is_error(Yytable_value) \
+  0
+
+  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
+     STATE-NUM.  */
+static const yytype_int8 yypact[] =
 {
-       0,     2,     4,     0,     2,     4,     2,     2,     3,     3,
-       4,     5,     0,     2,     4,     2,     3,     2,     2,     3,
-       4,     2,     9,     5,     2,     0,     2,     2,     3,     1,
-       2,     2,     2,     1,     1,     3,     1,     1,     5,     1,
-       3,     1,     3,     1,     3,     1,     3,     1,     3,     1,
-       3,     3,     1,     3,     3,     3,     3,     3,     3,     1,
-       3,     3,     1,     3,     3,     3,     1,     1,     2,     2,
-       2,     0,     2,     2,     0,     2,     2,     2,     3,     2
+      21,    11,    45,    10,   -38,     9,    10,    15,    10,   -38,
+     -38,    -9,     9,   -38,    56,    40,   -38,    -9,    -9,    -9,
+     -38,    51,   -38,    -6,    75,    49,    52,    48,    50,     3,
+      66,    33,     0,   -38,    65,   -38,   -38,    68,    56,    56,
+     -38,   -38,   -38,   -38,    -9,    -9,    -9,    -9,    -9,    -9,
+      -9,    -9,    -9,    -9,    -9,    -9,    -9,    -9,    -9,    -9,
+      -9,    -9,    -9,   -38,    42,    69,   -38,   -38,    75,    55,
+      49,    52,    48,    50,     3,     3,    66,    66,    66,    66,
+      33,    33,     0,     0,   -38,   -38,   -38,    78,    79,   -11,
+      42,   -38,    70,    42,   -38,    -9,    72,    74,   -38,   -38,
+     -38,   -38,   -38,    76,   -38,   -38,   -38,   -38,   -38,    18,
+      -1,   -38,   -38,   -38,   -38,    82,   -38,   -38,   -38,    71,
+     -38,   -38,    32,    67,    81,    -3,   -38,   -38,   -38,   -38,
+     -38,    43,   -38,   -38,   -38,     9,   -38,    73,     9,    77,
+     -38
 };
 
-/* YYDEFACT[STATE-NAME] -- Default rule to reduce with in state
-   STATE-NUM when YYTABLE doesn't specify something else to do.  Zero
-   means the default is an error.  */
+  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
+     Performed when YYTABLE does not specify something else to do.  Zero
+     means the default is an error.  */
 static const yytype_uint8 yydefact[] =
 {
        0,     0,     0,     3,     1,     0,     0,     0,     3,    33,
@@ -593,7 +591,15 @@ static const yytype_uint8 yydefact[] =
       22
 };
 
-/* YYDEFGOTO[NTERM-NUM].  */
+  /* YYPGOTO[NTERM-NUM].  */
+static const yytype_int8 yypgoto[] =
+{
+     -38,   -38,    96,    99,   -38,   -37,   -38,   -20,   -38,   -38,
+     -38,    -5,    62,    13,   -38,    80,    63,    84,    64,    61,
+      28,    14,    24,    25,   -14,   -38,    20,    26
+};
+
+  /* YYDEFGOTO[NTERM-NUM].  */
 static const yytype_int8 yydefgoto[] =
 {
       -1,     2,     7,     8,    15,    36,    64,    91,   109,   110,
@@ -601,244 +607,242 @@ static const yytype_int8 yydefgoto[] =
       29,    30,    31,    32,    33,   125,    92,    93
 };
 
-/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
-   STATE-NUM.  */
-#define YYPACT_NINF -78
-static const yytype_int8 yypact[] =
-{
-      22,    11,    51,    10,   -78,    23,    10,     2,    10,   -78,
-     -78,    -9,    23,   -78,    30,    38,   -78,    -9,    -9,    -9,
-     -78,    35,   -78,    -6,    52,    29,    48,    49,    33,     3,
-      71,    36,     0,   -78,    64,   -78,   -78,    68,    30,    30,
-     -78,   -78,   -78,   -78,    -9,    -9,    -9,    -9,    -9,    -9,
-      -9,    -9,    -9,    -9,    -9,    -9,    -9,    -9,    -9,    -9,
-      -9,    -9,    -9,   -78,    44,    67,   -78,   -78,    52,    55,
-      29,    48,    49,    33,     3,     3,    71,    71,    71,    71,
-      36,    36,     0,     0,   -78,   -78,   -78,    78,    79,    42,
-      44,   -78,    69,    44,   -78,    -9,    73,    74,   -78,   -78,
-     -78,   -78,   -78,    75,   -78,   -78,   -78,   -78,   -78,    -7,
-      -1,   -78,   -78,   -78,   -78,    84,   -78,   -78,   -78,    63,
-     -78,   -78,    32,    66,    82,    -3,   -78,   -78,   -78,   -78,
-     -78,    46,   -78,   -78,   -78,    23,   -78,    70,    23,    72,
-     -78
-};
-
-/* YYPGOTO[NTERM-NUM].  */
-static const yytype_int8 yypgoto[] =
-{
-     -78,   -78,    97,   100,   -78,   -37,   -78,   -77,   -78,   -78,
-     -78,    -5,    65,    13,   -78,    76,    77,    62,    80,    83,
-      34,    20,    26,    28,   -14,   -78,    18,    24
-};
-
-/* YYTABLE[YYPACT[STATE-NUM]].  What to do in state STATE-NUM.  If
-   positive, shift that token.  If negative, reduce the rule which
-   number is the opposite.  If zero, do what YYDEFACT says.
-   If YYTABLE_NINF, syntax error.  */
-#define YYTABLE_NINF -1
+  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
+     positive, shift that token.  If negative, reduce the rule whose
+     number is the opposite.  If YYTABLE_NINF, syntax error.  */
 static const yytype_uint8 yytable[] =
 {
       12,    66,    67,    40,    41,    42,    44,    34,     9,    10,
-      52,    53,   115,   101,     5,   112,   104,   132,   113,   133,
-     116,   117,   118,   119,    11,     1,    60,   114,    14,   134,
-     120,    45,     6,    54,    17,   121,     3,    18,    19,    55,
-       9,    10,    50,    51,    61,    62,    84,    85,    86,     9,
-      10,     4,   100,    37,   126,   127,    11,    35,    87,    88,
-      89,    38,   128,    46,    39,    11,    90,    98,    47,    35,
-      43,    99,    76,    77,    78,    79,    56,    57,    58,    59,
-     135,   136,    80,    81,    74,    75,    82,    83,    48,    63,
-      49,    65,    94,    95,    96,    97,   124,   103,   107,   108,
-     111,   123,   130,   131,   138,    16,    13,   140,   106,    71,
-      69,   105,     0,     0,   102,     0,     0,   129,     0,     0,
-      68,     0,     0,    70,     0,     0,     0,     0,    72,     0,
-     137,     0,    73,   139
+      52,    53,   115,    98,     5,    35,   132,    99,   133,   116,
+     117,   118,   119,    11,     1,    60,     9,    10,   134,   120,
+      45,     6,    54,    17,   121,     3,    18,    19,    55,   112,
+      14,    11,   113,    61,    62,     4,    84,    85,    86,     9,
+      10,   114,   100,   126,   127,    37,    87,    88,    89,    50,
+      51,   128,    38,    90,    11,    39,    76,    77,    78,    79,
+     101,    56,    57,   104,    58,    59,   135,   136,    74,    75,
+      80,    81,    35,    82,    83,    43,    46,    47,    49,    63,
+      65,    48,    95,    94,    96,    97,   107,   103,   108,   123,
+     111,   131,   130,   124,    16,    13,   138,    69,   106,    70,
+      73,   140,    72,   105,     0,     0,   102,   129,     0,     0,
+       0,     0,     0,     0,    68,     0,     0,     0,     0,     0,
+     137,    71,     0,   139
 };
 
 static const yytype_int16 yycheck[] =
 {
        5,    38,    39,    17,    18,    19,    12,    12,    17,    18,
-       7,     8,    13,    90,     4,    22,    93,    20,    25,    22,
-      21,    22,    23,    24,    33,     3,    26,    34,    26,    32,
-      31,    37,    22,    30,    43,    36,    25,    46,    47,    36,
-      17,    18,     9,    10,    44,    45,    60,    61,    62,    17,
-      18,     0,    89,    15,    22,    23,    33,    27,    14,    15,
-      16,    23,    30,    11,    26,    33,    22,    25,    39,    27,
-      35,    29,    52,    53,    54,    55,     5,     6,    42,    43,
-      34,    35,    56,    57,    50,    51,    58,    59,    40,    25,
-      41,    23,    25,    38,    16,    16,    33,    28,    25,    25,
-      25,    17,    36,    21,    34,     8,     6,    35,    95,    47,
-      45,    93,    -1,    -1,    90,    -1,    -1,   122,    -1,    -1,
-      44,    -1,    -1,    46,    -1,    -1,    -1,    -1,    48,    -1,
-     135,    -1,    49,   138
+       7,     8,    13,    24,     4,    26,    19,    28,    21,    20,
+      21,    22,    23,    32,     3,    25,    17,    18,    31,    30,
+      36,    21,    29,    42,    35,    24,    45,    46,    35,    21,
+      25,    32,    24,    43,    44,     0,    60,    61,    62,    17,
+      18,    33,    89,    21,    22,    15,    14,    15,    16,     9,
+      10,    29,    22,    21,    32,    25,    52,    53,    54,    55,
+      90,     5,     6,    93,    41,    42,    33,    34,    50,    51,
+      56,    57,    26,    58,    59,    34,    11,    38,    40,    24,
+      22,    39,    37,    24,    16,    16,    24,    27,    24,    17,
+      24,    20,    35,    32,     8,     6,    33,    45,    95,    46,
+      49,    34,    48,    93,    -1,    -1,    90,   122,    -1,    -1,
+      -1,    -1,    -1,    -1,    44,    -1,    -1,    -1,    -1,    -1,
+     135,    47,    -1,   138
 };
 
-/* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
-   symbol of state STATE-NUM.  */
+  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
+     symbol of state STATE-NUM.  */
 static const yytype_uint8 yystos[] =
 {
-       0,     3,    49,    25,     0,     4,    22,    50,    51,    17,
-      18,    33,    59,    51,    26,    52,    50,    43,    46,    47,
-      59,    60,    61,    62,    63,    64,    65,    66,    67,    68,
-      69,    70,    71,    72,    59,    27,    53,    15,    23,    26,
-      72,    72,    72,    35,    12,    37,    11,    39,    40,    41,
-       9,    10,     7,     8,    30,    36,     5,     6,    42,    43,
-      26,    44,    45,    25,    54,    23,    53,    53,    63,    60,
-      64,    65,    66,    67,    68,    68,    69,    69,    69,    69,
-      70,    70,    71,    71,    72,    72,    72,    14,    15,    16,
-      22,    55,    74,    75,    25,    38,    16,    16,    25,    29,
-      53,    55,    75,    28,    55,    74,    61,    25,    25,    56,
-      57,    25,    22,    25,    34,    13,    21,    22,    23,    24,
-      31,    36,    58,    17,    33,    73,    22,    23,    30,    59,
-      36,    21,    20,    22,    32,    34,    35,    59,    34,    59,
-      35
+       0,     3,    48,    24,     0,     4,    21,    49,    50,    17,
+      18,    32,    58,    50,    25,    51,    49,    42,    45,    46,
+      58,    59,    60,    61,    62,    63,    64,    65,    66,    67,
+      68,    69,    70,    71,    58,    26,    52,    15,    22,    25,
+      71,    71,    71,    34,    12,    36,    11,    38,    39,    40,
+       9,    10,     7,     8,    29,    35,     5,     6,    41,    42,
+      25,    43,    44,    24,    53,    22,    52,    52,    62,    59,
+      63,    64,    65,    66,    67,    67,    68,    68,    68,    68,
+      69,    69,    70,    70,    71,    71,    71,    14,    15,    16,
+      21,    54,    73,    74,    24,    37,    16,    16,    24,    28,
+      52,    54,    74,    27,    54,    73,    60,    24,    24,    55,
+      56,    24,    21,    24,    33,    13,    20,    21,    22,    23,
+      30,    35,    57,    17,    32,    72,    21,    22,    29,    58,
+      35,    20,    19,    21,    31,    33,    34,    58,    33,    58,
+      34
 };
 
-#define yyerrok		(yyerrstatus = 0)
-#define yyclearin	(yychar = YYEMPTY)
-#define YYEMPTY		(-2)
-#define YYEOF		0
+  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
+static const yytype_uint8 yyr1[] =
+{
+       0,    47,    48,    49,    49,    50,    50,    51,    51,    51,
+      51,    52,    53,    53,    54,    54,    54,    54,    55,    55,
+      55,    55,    55,    55,    55,    56,    56,    56,    57,    57,
+      57,    57,    57,    58,    58,    58,    59,    60,    60,    61,
+      61,    62,    62,    63,    63,    64,    64,    65,    65,    66,
+      66,    66,    67,    67,    67,    67,    67,    68,    68,    68,
+      69,    69,    69,    70,    70,    70,    70,    71,    71,    71,
+      71,    72,    72,    72,    73,    73,    73,    74,    74,    74
+};
+
+  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
+static const yytype_uint8 yyr2[] =
+{
+       0,     2,     4,     0,     2,     4,     2,     2,     3,     3,
+       4,     5,     0,     2,     4,     2,     3,     2,     2,     3,
+       4,     2,     9,     5,     2,     0,     2,     2,     3,     1,
+       2,     2,     2,     1,     1,     3,     1,     1,     5,     1,
+       3,     1,     3,     1,     3,     1,     3,     1,     3,     1,
+       3,     3,     1,     3,     3,     3,     3,     3,     3,     1,
+       3,     3,     1,     3,     3,     3,     1,     1,     2,     2,
+       2,     0,     2,     2,     0,     2,     2,     2,     3,     2
+};
 
-#define YYACCEPT	goto yyacceptlab
-#define YYABORT		goto yyabortlab
-#define YYERROR		goto yyerrorlab
 
+#define yyerrok         (yyerrstatus = 0)
+#define yyclearin       (yychar = YYEMPTY)
+#define YYEMPTY         (-2)
+#define YYEOF           0
 
-/* Like YYERROR except do call yyerror.  This remains here temporarily
-   to ease the transition to the new meaning of YYERROR, for GCC.
-   Once GCC version 2 has supplanted version 1, this can go.  */
+#define YYACCEPT        goto yyacceptlab
+#define YYABORT         goto yyabortlab
+#define YYERROR         goto yyerrorlab
 
-#define YYFAIL		goto yyerrlab
 
 #define YYRECOVERING()  (!!yyerrstatus)
 
-#define YYBACKUP(Token, Value)					\
-do								\
-  if (yychar == YYEMPTY && yylen == 1)				\
-    {								\
-      yychar = (Token);						\
-      yylval = (Value);						\
-      yytoken = YYTRANSLATE (yychar);				\
-      YYPOPSTACK (1);						\
-      goto yybackup;						\
-    }								\
-  else								\
-    {								\
+#define YYBACKUP(Token, Value)                                  \
+do                                                              \
+  if (yychar == YYEMPTY)                                        \
+    {                                                           \
+      yychar = (Token);                                         \
+      yylval = (Value);                                         \
+      YYPOPSTACK (yylen);                                       \
+      yystate = *yyssp;                                         \
+      goto yybackup;                                            \
+    }                                                           \
+  else                                                          \
+    {                                                           \
       yyerror (YY_("syntax error: cannot back up")); \
-      YYERROR;							\
-    }								\
-while (YYID (0))
-
+      YYERROR;                                                  \
+    }                                                           \
+while (0)
 
-#define YYTERROR	1
-#define YYERRCODE	256
+/* Error token number */
+#define YYTERROR        1
+#define YYERRCODE       256
 
 
 /* YYLLOC_DEFAULT -- Set CURRENT to span from RHS[1] to RHS[N].
    If N is 0, then set CURRENT to the empty location which ends
    the previous symbol: RHS[0] (always defined).  */
 
-#define YYRHSLOC(Rhs, K) ((Rhs)[K])
 #ifndef YYLLOC_DEFAULT
-# define YYLLOC_DEFAULT(Current, Rhs, N)				\
-    do									\
-      if (YYID (N))                                                    \
-	{								\
-	  (Current).first_line   = YYRHSLOC (Rhs, 1).first_line;	\
-	  (Current).first_column = YYRHSLOC (Rhs, 1).first_column;	\
-	  (Current).last_line    = YYRHSLOC (Rhs, N).last_line;		\
-	  (Current).last_column  = YYRHSLOC (Rhs, N).last_column;	\
-	}								\
-      else								\
-	{								\
-	  (Current).first_line   = (Current).last_line   =		\
-	    YYRHSLOC (Rhs, 0).last_line;				\
-	  (Current).first_column = (Current).last_column =		\
-	    YYRHSLOC (Rhs, 0).last_column;				\
-	}								\
-    while (YYID (0))
+# define YYLLOC_DEFAULT(Current, Rhs, N)                                \
+    do                                                                  \
+      if (N)                                                            \
+        {                                                               \
+          (Current).first_line   = YYRHSLOC (Rhs, 1).first_line;        \
+          (Current).first_column = YYRHSLOC (Rhs, 1).first_column;      \
+          (Current).last_line    = YYRHSLOC (Rhs, N).last_line;         \
+          (Current).last_column  = YYRHSLOC (Rhs, N).last_column;       \
+        }                                                               \
+      else                                                              \
+        {                                                               \
+          (Current).first_line   = (Current).last_line   =              \
+            YYRHSLOC (Rhs, 0).last_line;                                \
+          (Current).first_column = (Current).last_column =              \
+            YYRHSLOC (Rhs, 0).last_column;                              \
+        }                                                               \
+    while (0)
 #endif
 
+#define YYRHSLOC(Rhs, K) ((Rhs)[K])
+
+
+/* Enable debugging if requested.  */
+#if YYDEBUG
+
+# ifndef YYFPRINTF
+#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
+#  define YYFPRINTF fprintf
+# endif
+
+# define YYDPRINTF(Args)                        \
+do {                                            \
+  if (yydebug)                                  \
+    YYFPRINTF Args;                             \
+} while (0)
+
 
 /* YY_LOCATION_PRINT -- Print the location on the stream.
    This macro was not mandated originally: define only if we know
    we won't break user code: when these are the locations we know.  */
 
 #ifndef YY_LOCATION_PRINT
-# if YYLTYPE_IS_TRIVIAL
-#  define YY_LOCATION_PRINT(File, Loc)			\
-     fprintf (File, "%d.%d-%d.%d",			\
-	      (Loc).first_line, (Loc).first_column,	\
-	      (Loc).last_line,  (Loc).last_column)
-# else
-#  define YY_LOCATION_PRINT(File, Loc) ((void) 0)
-# endif
-#endif
-
+# if defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL
 
-/* YYLEX -- calling `yylex' with the right arguments.  */
+/* Print *YYLOCP on YYO.  Private, do not rely on its existence. */
 
-#ifdef YYLEX_PARAM
-# define YYLEX yylex (YYLEX_PARAM)
-#else
-# define YYLEX yylex ()
-#endif
+YY_ATTRIBUTE_UNUSED
+static unsigned
+yy_location_print_ (FILE *yyo, YYLTYPE const * const yylocp)
+{
+  unsigned res = 0;
+  int end_col = 0 != yylocp->last_column ? yylocp->last_column - 1 : 0;
+  if (0 <= yylocp->first_line)
+    {
+      res += YYFPRINTF (yyo, "%d", yylocp->first_line);
+      if (0 <= yylocp->first_column)
+        res += YYFPRINTF (yyo, ".%d", yylocp->first_column);
+    }
+  if (0 <= yylocp->last_line)
+    {
+      if (yylocp->first_line < yylocp->last_line)
+        {
+          res += YYFPRINTF (yyo, "-%d", yylocp->last_line);
+          if (0 <= end_col)
+            res += YYFPRINTF (yyo, ".%d", end_col);
+        }
+      else if (0 <= end_col && yylocp->first_column < end_col)
+        res += YYFPRINTF (yyo, "-%d", end_col);
+    }
+  return res;
+ }
 
-/* Enable debugging if requested.  */
-#if YYDEBUG
+#  define YY_LOCATION_PRINT(File, Loc)          \
+  yy_location_print_ (File, &(Loc))
 
-# ifndef YYFPRINTF
-#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
-#  define YYFPRINTF fprintf
+# else
+#  define YY_LOCATION_PRINT(File, Loc) ((void) 0)
 # endif
+#endif
 
-# define YYDPRINTF(Args)			\
-do {						\
-  if (yydebug)					\
-    YYFPRINTF Args;				\
-} while (YYID (0))
 
-# define YY_SYMBOL_PRINT(Title, Type, Value, Location)			  \
-do {									  \
-  if (yydebug)								  \
-    {									  \
-      YYFPRINTF (stderr, "%s ", Title);					  \
-      yy_symbol_print (stderr,						  \
-		  Type, Value); \
-      YYFPRINTF (stderr, "\n");						  \
-    }									  \
-} while (YYID (0))
+# define YY_SYMBOL_PRINT(Title, Type, Value, Location)                    \
+do {                                                                      \
+  if (yydebug)                                                            \
+    {                                                                     \
+      YYFPRINTF (stderr, "%s ", Title);                                   \
+      yy_symbol_print (stderr,                                            \
+                  Type, Value, Location); \
+      YYFPRINTF (stderr, "\n");                                           \
+    }                                                                     \
+} while (0)
 
 
-/*--------------------------------.
-| Print this symbol on YYOUTPUT.  |
-`--------------------------------*/
+/*----------------------------------------.
+| Print this symbol's value on YYOUTPUT.  |
+`----------------------------------------*/
 
-/*ARGSUSED*/
-#if (defined __STDC__ || defined __C99__FUNC__ \
-     || defined __cplusplus || defined _MSC_VER)
-static void
-yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
-#else
 static void
-yy_symbol_value_print (yyoutput, yytype, yyvaluep)
-    FILE *yyoutput;
-    int yytype;
-    YYSTYPE const * const yyvaluep;
-#endif
+yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep, YYLTYPE const * const yylocationp)
 {
+  FILE *yyo = yyoutput;
+  YYUSE (yyo);
+  YYUSE (yylocationp);
   if (!yyvaluep)
     return;
 # ifdef YYPRINT
   if (yytype < YYNTOKENS)
     YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
-# else
-  YYUSE (yyoutput);
 # endif
-  switch (yytype)
-    {
-      default:
-	break;
-    }
+  YYUSE (yytype);
 }
 
 
@@ -846,24 +850,15 @@ yy_symbol_value_print (yyoutput, yytype, yyvaluep)
 | Print this symbol on YYOUTPUT.  |
 `--------------------------------*/
 
-#if (defined __STDC__ || defined __C99__FUNC__ \
-     || defined __cplusplus || defined _MSC_VER)
-static void
-yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
-#else
 static void
-yy_symbol_print (yyoutput, yytype, yyvaluep)
-    FILE *yyoutput;
-    int yytype;
-    YYSTYPE const * const yyvaluep;
-#endif
+yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep, YYLTYPE const * const yylocationp)
 {
-  if (yytype < YYNTOKENS)
-    YYFPRINTF (yyoutput, "token %s (", yytname[yytype]);
-  else
-    YYFPRINTF (yyoutput, "nterm %s (", yytname[yytype]);
+  YYFPRINTF (yyoutput, "%s %s (",
+             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);
 
-  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
+  YY_LOCATION_PRINT (yyoutput, *yylocationp);
+  YYFPRINTF (yyoutput, ": ");
+  yy_symbol_value_print (yyoutput, yytype, yyvaluep, yylocationp);
   YYFPRINTF (yyoutput, ")");
 }
 
@@ -872,16 +867,8 @@ yy_symbol_print (yyoutput, yytype, yyvaluep)
 | TOP (included).                                                   |
 `------------------------------------------------------------------*/
 
-#if (defined __STDC__ || defined __C99__FUNC__ \
-     || defined __cplusplus || defined _MSC_VER)
 static void
 yy_stack_print (yytype_int16 *yybottom, yytype_int16 *yytop)
-#else
-static void
-yy_stack_print (yybottom, yytop)
-    yytype_int16 *yybottom;
-    yytype_int16 *yytop;
-#endif
 {
   YYFPRINTF (stderr, "Stack now");
   for (; yybottom <= yytop; yybottom++)
@@ -892,49 +879,42 @@ yy_stack_print (yybottom, yytop)
   YYFPRINTF (stderr, "\n");
 }
 
-# define YY_STACK_PRINT(Bottom, Top)				\
-do {								\
-  if (yydebug)							\
-    yy_stack_print ((Bottom), (Top));				\
-} while (YYID (0))
+# define YY_STACK_PRINT(Bottom, Top)                            \
+do {                                                            \
+  if (yydebug)                                                  \
+    yy_stack_print ((Bottom), (Top));                           \
+} while (0)
 
 
 /*------------------------------------------------.
 | Report that the YYRULE is going to be reduced.  |
 `------------------------------------------------*/
 
-#if (defined __STDC__ || defined __C99__FUNC__ \
-     || defined __cplusplus || defined _MSC_VER)
-static void
-yy_reduce_print (YYSTYPE *yyvsp, int yyrule)
-#else
 static void
-yy_reduce_print (yyvsp, yyrule)
-    YYSTYPE *yyvsp;
-    int yyrule;
-#endif
+yy_reduce_print (yytype_int16 *yyssp, YYSTYPE *yyvsp, YYLTYPE *yylsp, int yyrule)
 {
+  unsigned long int yylno = yyrline[yyrule];
   int yynrhs = yyr2[yyrule];
   int yyi;
-  unsigned long int yylno = yyrline[yyrule];
   YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
-	     yyrule - 1, yylno);
+             yyrule - 1, yylno);
   /* The symbols being reduced.  */
   for (yyi = 0; yyi < yynrhs; yyi++)
     {
       YYFPRINTF (stderr, "   $%d = ", yyi + 1);
-      yy_symbol_print (stderr, yyrhs[yyprhs[yyrule] + yyi],
-		       &(yyvsp[(yyi + 1) - (yynrhs)])
-		       		       );
+      yy_symbol_print (stderr,
+                       yystos[yyssp[yyi + 1 - yynrhs]],
+                       &(yyvsp[(yyi + 1) - (yynrhs)])
+                       , &(yylsp[(yyi + 1) - (yynrhs)])                       );
       YYFPRINTF (stderr, "\n");
     }
 }
 
-# define YY_REDUCE_PRINT(Rule)		\
-do {					\
-  if (yydebug)				\
-    yy_reduce_print (yyvsp, Rule); \
-} while (YYID (0))
+# define YY_REDUCE_PRINT(Rule)          \
+do {                                    \
+  if (yydebug)                          \
+    yy_reduce_print (yyssp, yyvsp, yylsp, Rule); \
+} while (0)
 
 /* Nonzero means print parse trace.  It is left uninitialized so that
    multiple parsers can coexist.  */
@@ -948,7 +928,7 @@ int yydebug;
 
 
 /* YYINITDEPTH -- initial size of the parser's stacks.  */
-#ifndef	YYINITDEPTH
+#ifndef YYINITDEPTH
 # define YYINITDEPTH 200
 #endif
 
@@ -963,7 +943,6 @@ int yydebug;
 # define YYMAXDEPTH 10000
 #endif
 
-
 
 #if YYERROR_VERBOSE
 
@@ -972,15 +951,8 @@ int yydebug;
 #   define yystrlen strlen
 #  else
 /* Return the length of YYSTR.  */
-#if (defined __STDC__ || defined __C99__FUNC__ \
-     || defined __cplusplus || defined _MSC_VER)
 static YYSIZE_T
 yystrlen (const char *yystr)
-#else
-static YYSIZE_T
-yystrlen (yystr)
-    const char *yystr;
-#endif
 {
   YYSIZE_T yylen;
   for (yylen = 0; yystr[yylen]; yylen++)
@@ -996,16 +968,8 @@ yystrlen (yystr)
 #  else
 /* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
    YYDEST.  */
-#if (defined __STDC__ || defined __C99__FUNC__ \
-     || defined __cplusplus || defined _MSC_VER)
 static char *
 yystpcpy (char *yydest, const char *yysrc)
-#else
-static char *
-yystpcpy (yydest, yysrc)
-    char *yydest;
-    const char *yysrc;
-#endif
 {
   char *yyd = yydest;
   const char *yys = yysrc;
@@ -1035,27 +999,27 @@ yytnamerr (char *yyres, const char *yystr)
       char const *yyp = yystr;
 
       for (;;)
-	switch (*++yyp)
-	  {
-	  case '\'':
-	  case ',':
-	    goto do_not_strip_quotes;
-
-	  case '\\':
-	    if (*++yyp != '\\')
-	      goto do_not_strip_quotes;
-	    /* Fall through.  */
-	  default:
-	    if (yyres)
-	      yyres[yyn] = *yyp;
-	    yyn++;
-	    break;
-
-	  case '"':
-	    if (yyres)
-	      yyres[yyn] = '\0';
-	    return yyn;
-	  }
+        switch (*++yyp)
+          {
+          case '\'':
+          case ',':
+            goto do_not_strip_quotes;
+
+          case '\\':
+            if (*++yyp != '\\')
+              goto do_not_strip_quotes;
+            /* Fall through.  */
+          default:
+            if (yyres)
+              yyres[yyn] = *yyp;
+            yyn++;
+            break;
+
+          case '"':
+            if (yyres)
+              yyres[yyn] = '\0';
+            return yyn;
+          }
     do_not_strip_quotes: ;
     }
 
@@ -1066,161 +1030,161 @@ yytnamerr (char *yyres, const char *yystr)
 }
 # endif
 
-/* Copy into YYRESULT an error message about the unexpected token
-   YYCHAR while in state YYSTATE.  Return the number of bytes copied,
-   including the terminating null byte.  If YYRESULT is null, do not
-   copy anything; just return the number of bytes that would be
-   copied.  As a special case, return 0 if an ordinary "syntax error"
-   message will do.  Return YYSIZE_MAXIMUM if overflow occurs during
-   size calculation.  */
-static YYSIZE_T
-yysyntax_error (char *yyresult, int yystate, int yychar)
+/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
+   about the unexpected token YYTOKEN for the state stack whose top is
+   YYSSP.
+
+   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
+   not large enough to hold the message.  In that case, also set
+   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
+   required number of bytes is too large to store.  */
+static int
+yysyntax_error (YYSIZE_T *yymsg_alloc, char **yymsg,
+                yytype_int16 *yyssp, int yytoken)
 {
-  int yyn = yypact[yystate];
+  YYSIZE_T yysize0 = yytnamerr (YY_NULLPTR, yytname[yytoken]);
+  YYSIZE_T yysize = yysize0;
+  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
+  /* Internationalized format string. */
+  const char *yyformat = YY_NULLPTR;
+  /* Arguments of yyformat. */
+  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
+  /* Number of reported tokens (one for the "unexpected", one per
+     "expected"). */
+  int yycount = 0;
+
+  /* There are many possibilities here to consider:
+     - If this state is a consistent state with a default action, then
+       the only way this function was invoked is if the default action
+       is an error action.  In that case, don't check for expected
+       tokens because there are none.
+     - The only way there can be no lookahead present (in yychar) is if
+       this state is a consistent state with a default action.  Thus,
+       detecting the absence of a lookahead is sufficient to determine
+       that there is no unexpected or expected token to report.  In that
+       case, just report a simple "syntax error".
+     - Don't assume there isn't a lookahead just because this state is a
+       consistent state with a default action.  There might have been a
+       previous inconsistent state, consistent state with a non-default
+       action, or user semantic action that manipulated yychar.
+     - Of course, the expected token list depends on states to have
+       correct lookahead information, and it depends on the parser not
+       to perform extra reductions after fetching a lookahead from the
+       scanner and before detecting a syntax error.  Thus, state merging
+       (from LALR or IELR) and default reductions corrupt the expected
+       token list.  However, the list is correct for canonical LR with
+       one exception: it will still contain any token that will not be
+       accepted due to an error action in a later state.
+  */
+  if (yytoken != YYEMPTY)
+    {
+      int yyn = yypact[*yyssp];
+      yyarg[yycount++] = yytname[yytoken];
+      if (!yypact_value_is_default (yyn))
+        {
+          /* Start YYX at -YYN if negative to avoid negative indexes in
+             YYCHECK.  In other words, skip the first -YYN actions for
+             this state because they are default actions.  */
+          int yyxbegin = yyn < 0 ? -yyn : 0;
+          /* Stay within bounds of both yycheck and yytname.  */
+          int yychecklim = YYLAST - yyn + 1;
+          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
+          int yyx;
+
+          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
+            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
+                && !yytable_value_is_error (yytable[yyx + yyn]))
+              {
+                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
+                  {
+                    yycount = 1;
+                    yysize = yysize0;
+                    break;
+                  }
+                yyarg[yycount++] = yytname[yyx];
+                {
+                  YYSIZE_T yysize1 = yysize + yytnamerr (YY_NULLPTR, yytname[yyx]);
+                  if (! (yysize <= yysize1
+                         && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
+                    return 2;
+                  yysize = yysize1;
+                }
+              }
+        }
+    }
 
-  if (! (YYPACT_NINF < yyn && yyn <= YYLAST))
-    return 0;
-  else
+  switch (yycount)
     {
-      int yytype = YYTRANSLATE (yychar);
-      YYSIZE_T yysize0 = yytnamerr (0, yytname[yytype]);
-      YYSIZE_T yysize = yysize0;
-      YYSIZE_T yysize1;
-      int yysize_overflow = 0;
-      enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
-      char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
-      int yyx;
-
-# if 0
-      /* This is so xgettext sees the translatable formats that are
-	 constructed on the fly.  */
-      YY_("syntax error, unexpected %s");
-      YY_("syntax error, unexpected %s, expecting %s");
-      YY_("syntax error, unexpected %s, expecting %s or %s");
-      YY_("syntax error, unexpected %s, expecting %s or %s or %s");
-      YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s");
-# endif
-      char *yyfmt;
-      char const *yyf;
-      static char const yyunexpected[] = "syntax error, unexpected %s";
-      static char const yyexpecting[] = ", expecting %s";
-      static char const yyor[] = " or %s";
-      char yyformat[sizeof yyunexpected
-		    + sizeof yyexpecting - 1
-		    + ((YYERROR_VERBOSE_ARGS_MAXIMUM - 2)
-		       * (sizeof yyor - 1))];
-      char const *yyprefix = yyexpecting;
-
-      /* Start YYX at -YYN if negative to avoid negative indexes in
-	 YYCHECK.  */
-      int yyxbegin = yyn < 0 ? -yyn : 0;
-
-      /* Stay within bounds of both yycheck and yytname.  */
-      int yychecklim = YYLAST - yyn + 1;
-      int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
-      int yycount = 1;
-
-      yyarg[0] = yytname[yytype];
-      yyfmt = yystpcpy (yyformat, yyunexpected);
-
-      for (yyx = yyxbegin; yyx < yyxend; ++yyx)
-	if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR)
-	  {
-	    if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
-	      {
-		yycount = 1;
-		yysize = yysize0;
-		yyformat[sizeof yyunexpected - 1] = '\0';
-		break;
-	      }
-	    yyarg[yycount++] = yytname[yyx];
-	    yysize1 = yysize + yytnamerr (0, yytname[yyx]);
-	    yysize_overflow |= (yysize1 < yysize);
-	    yysize = yysize1;
-	    yyfmt = yystpcpy (yyfmt, yyprefix);
-	    yyprefix = yyor;
-	  }
-
-      yyf = YY_(yyformat);
-      yysize1 = yysize + yystrlen (yyf);
-      yysize_overflow |= (yysize1 < yysize);
-      yysize = yysize1;
-
-      if (yysize_overflow)
-	return YYSIZE_MAXIMUM;
-
-      if (yyresult)
-	{
-	  /* Avoid sprintf, as that infringes on the user's name space.
-	     Don't have undefined behavior even if the translation
-	     produced a string with the wrong number of "%s"s.  */
-	  char *yyp = yyresult;
-	  int yyi = 0;
-	  while ((*yyp = *yyf) != '\0')
-	    {
-	      if (*yyp == '%' && yyf[1] == 's' && yyi < yycount)
-		{
-		  yyp += yytnamerr (yyp, yyarg[yyi++]);
-		  yyf += 2;
-		}
-	      else
-		{
-		  yyp++;
-		  yyf++;
-		}
-	    }
-	}
-      return yysize;
+# define YYCASE_(N, S)                      \
+      case N:                               \
+        yyformat = S;                       \
+      break
+      YYCASE_(0, YY_("syntax error"));
+      YYCASE_(1, YY_("syntax error, unexpected %s"));
+      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
+      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
+      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
+      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
+# undef YYCASE_
+    }
+
+  {
+    YYSIZE_T yysize1 = yysize + yystrlen (yyformat);
+    if (! (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM))
+      return 2;
+    yysize = yysize1;
+  }
+
+  if (*yymsg_alloc < yysize)
+    {
+      *yymsg_alloc = 2 * yysize;
+      if (! (yysize <= *yymsg_alloc
+             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
+        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
+      return 1;
     }
+
+  /* Avoid sprintf, as that infringes on the user's name space.
+     Don't have undefined behavior even if the translation
+     produced a string with the wrong number of "%s"s.  */
+  {
+    char *yyp = *yymsg;
+    int yyi = 0;
+    while ((*yyp = *yyformat) != '\0')
+      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
+        {
+          yyp += yytnamerr (yyp, yyarg[yyi++]);
+          yyformat += 2;
+        }
+      else
+        {
+          yyp++;
+          yyformat++;
+        }
+  }
+  return 0;
 }
 #endif /* YYERROR_VERBOSE */
-
 
 /*-----------------------------------------------.
 | Release the memory associated to this symbol.  |
 `-----------------------------------------------*/
 
-/*ARGSUSED*/
-#if (defined __STDC__ || defined __C99__FUNC__ \
-     || defined __cplusplus || defined _MSC_VER)
-static void
-yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
-#else
 static void
-yydestruct (yymsg, yytype, yyvaluep)
-    const char *yymsg;
-    int yytype;
-    YYSTYPE *yyvaluep;
-#endif
+yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep, YYLTYPE *yylocationp)
 {
   YYUSE (yyvaluep);
-
+  YYUSE (yylocationp);
   if (!yymsg)
     yymsg = "Deleting";
   YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);
 
-  switch (yytype)
-    {
-
-      default:
-	break;
-    }
+  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
+  YYUSE (yytype);
+  YY_IGNORE_MAYBE_UNINITIALIZED_END
 }
 
-/* Prevent warnings from -Wmissing-prototypes.  */
-#ifdef YYPARSE_PARAM
-#if defined __STDC__ || defined __cplusplus
-int yyparse (void *YYPARSE_PARAM);
-#else
-int yyparse ();
-#endif
-#else /* ! YYPARSE_PARAM */
-#if defined __STDC__ || defined __cplusplus
-int yyparse (void);
-#else
-int yyparse ();
-#endif
-#endif /* ! YYPARSE_PARAM */
+
 
 
 /* The lookahead symbol.  */
@@ -1228,49 +1192,33 @@ int yychar;
 
 /* The semantic value of the lookahead symbol.  */
 YYSTYPE yylval;
-
+/* Location data for the lookahead symbol.  */
+YYLTYPE yylloc
+# if defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL
+  = { 1, 1, 1, 1 }
+# endif
+;
 /* Number of syntax errors so far.  */
 int yynerrs;
 
 
+/*----------.
+| yyparse.  |
+`----------*/
 
-/*-------------------------.
-| yyparse or yypush_parse.  |
-`-------------------------*/
-
-#ifdef YYPARSE_PARAM
-#if (defined __STDC__ || defined __C99__FUNC__ \
-     || defined __cplusplus || defined _MSC_VER)
-int
-yyparse (void *YYPARSE_PARAM)
-#else
-int
-yyparse (YYPARSE_PARAM)
-    void *YYPARSE_PARAM;
-#endif
-#else /* ! YYPARSE_PARAM */
-#if (defined __STDC__ || defined __C99__FUNC__ \
-     || defined __cplusplus || defined _MSC_VER)
 int
 yyparse (void)
-#else
-int
-yyparse ()
-
-#endif
-#endif
 {
-
-
     int yystate;
     /* Number of tokens to shift before error messages enabled.  */
     int yyerrstatus;
 
     /* The stacks and their tools:
-       `yyss': related to states.
-       `yyvs': related to semantic values.
+       'yyss': related to states.
+       'yyvs': related to semantic values.
+       'yyls': related to locations.
 
-       Refer to the stacks thru separate pointers, to allow yyoverflow
+       Refer to the stacks through separate pointers, to allow yyoverflow
        to reallocate them elsewhere.  */
 
     /* The state stack.  */
@@ -1283,15 +1231,24 @@ yyparse ()
     YYSTYPE *yyvs;
     YYSTYPE *yyvsp;
 
+    /* The location stack.  */
+    YYLTYPE yylsa[YYINITDEPTH];
+    YYLTYPE *yyls;
+    YYLTYPE *yylsp;
+
+    /* The locations where the error started and ended.  */
+    YYLTYPE yyerror_range[3];
+
     YYSIZE_T yystacksize;
 
   int yyn;
   int yyresult;
   /* Lookahead token as an internal (translated) token number.  */
-  int yytoken;
+  int yytoken = 0;
   /* The variables used to return semantic value and location from the
      action routines.  */
   YYSTYPE yyval;
+  YYLTYPE yyloc;
 
 #if YYERROR_VERBOSE
   /* Buffer for error messages, and its allocated size.  */
@@ -1300,15 +1257,15 @@ yyparse ()
   YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
 #endif
 
-#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))
+#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N), yylsp -= (N))
 
   /* The number of symbols on the RHS of the reduced rule.
      Keep to zero when no symbol should be popped.  */
   int yylen = 0;
 
-  yytoken = 0;
-  yyss = yyssa;
-  yyvs = yyvsa;
+  yyssp = yyss = yyssa;
+  yyvsp = yyvs = yyvsa;
+  yylsp = yyls = yylsa;
   yystacksize = YYINITDEPTH;
 
   YYDPRINTF ((stderr, "Starting parse\n"));
@@ -1317,14 +1274,7 @@ yyparse ()
   yyerrstatus = 0;
   yynerrs = 0;
   yychar = YYEMPTY; /* Cause a token to be read.  */
-
-  /* Initialize stack pointers.
-     Waste one element of value and location stack
-     so that they stay on the same level as the state stack.
-     The wasted elements are never initialized.  */
-  yyssp = yyss;
-  yyvsp = yyvs;
-
+  yylsp[0] = yylloc;
   goto yysetstate;
 
 /*------------------------------------------------------------.
@@ -1345,23 +1295,26 @@ yyparse ()
 
 #ifdef yyoverflow
       {
-	/* Give user a chance to reallocate the stack.  Use copies of
-	   these so that the &'s don't force the real ones into
-	   memory.  */
-	YYSTYPE *yyvs1 = yyvs;
-	yytype_int16 *yyss1 = yyss;
-
-	/* Each stack pointer address is followed by the size of the
-	   data in use in that stack, in bytes.  This used to be a
-	   conditional around just the two extra args, but that might
-	   be undefined if yyoverflow is a macro.  */
-	yyoverflow (YY_("memory exhausted"),
-		    &yyss1, yysize * sizeof (*yyssp),
-		    &yyvs1, yysize * sizeof (*yyvsp),
-		    &yystacksize);
-
-	yyss = yyss1;
-	yyvs = yyvs1;
+        /* Give user a chance to reallocate the stack.  Use copies of
+           these so that the &'s don't force the real ones into
+           memory.  */
+        YYSTYPE *yyvs1 = yyvs;
+        yytype_int16 *yyss1 = yyss;
+        YYLTYPE *yyls1 = yyls;
+
+        /* Each stack pointer address is followed by the size of the
+           data in use in that stack, in bytes.  This used to be a
+           conditional around just the two extra args, but that might
+           be undefined if yyoverflow is a macro.  */
+        yyoverflow (YY_("memory exhausted"),
+                    &yyss1, yysize * sizeof (*yyssp),
+                    &yyvs1, yysize * sizeof (*yyvsp),
+                    &yyls1, yysize * sizeof (*yylsp),
+                    &yystacksize);
+
+        yyls = yyls1;
+        yyss = yyss1;
+        yyvs = yyvs1;
       }
 #else /* no yyoverflow */
 # ifndef YYSTACK_RELOCATE
@@ -1369,34 +1322,36 @@ yyparse ()
 # else
       /* Extend the stack our own way.  */
       if (YYMAXDEPTH <= yystacksize)
-	goto yyexhaustedlab;
+        goto yyexhaustedlab;
       yystacksize *= 2;
       if (YYMAXDEPTH < yystacksize)
-	yystacksize = YYMAXDEPTH;
+        yystacksize = YYMAXDEPTH;
 
       {
-	yytype_int16 *yyss1 = yyss;
-	union yyalloc *yyptr =
-	  (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
-	if (! yyptr)
-	  goto yyexhaustedlab;
-	YYSTACK_RELOCATE (yyss_alloc, yyss);
-	YYSTACK_RELOCATE (yyvs_alloc, yyvs);
+        yytype_int16 *yyss1 = yyss;
+        union yyalloc *yyptr =
+          (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
+        if (! yyptr)
+          goto yyexhaustedlab;
+        YYSTACK_RELOCATE (yyss_alloc, yyss);
+        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
+        YYSTACK_RELOCATE (yyls_alloc, yyls);
 #  undef YYSTACK_RELOCATE
-	if (yyss1 != yyssa)
-	  YYSTACK_FREE (yyss1);
+        if (yyss1 != yyssa)
+          YYSTACK_FREE (yyss1);
       }
 # endif
 #endif /* no yyoverflow */
 
       yyssp = yyss + yysize - 1;
       yyvsp = yyvs + yysize - 1;
+      yylsp = yyls + yysize - 1;
 
       YYDPRINTF ((stderr, "Stack size increased to %lu\n",
-		  (unsigned long int) yystacksize));
+                  (unsigned long int) yystacksize));
 
       if (yyss + yystacksize - 1 <= yyssp)
-	YYABORT;
+        YYABORT;
     }
 
   YYDPRINTF ((stderr, "Entering state %d\n", yystate));
@@ -1416,7 +1371,7 @@ yybackup:
 
   /* First try to decide what to do without reference to lookahead token.  */
   yyn = yypact[yystate];
-  if (yyn == YYPACT_NINF)
+  if (yypact_value_is_default (yyn))
     goto yydefault;
 
   /* Not known => get a lookahead token if don't already have one.  */
@@ -1425,7 +1380,7 @@ yybackup:
   if (yychar == YYEMPTY)
     {
       YYDPRINTF ((stderr, "Reading a token: "));
-      yychar = YYLEX;
+      yychar = yylex ();
     }
 
   if (yychar <= YYEOF)
@@ -1447,8 +1402,8 @@ yybackup:
   yyn = yytable[yyn];
   if (yyn <= 0)
     {
-      if (yyn == 0 || yyn == YYTABLE_NINF)
-	goto yyerrlab;
+      if (yytable_value_is_error (yyn))
+        goto yyerrlab;
       yyn = -yyn;
       goto yyreduce;
     }
@@ -1465,8 +1420,10 @@ yybackup:
   yychar = YYEMPTY;
 
   yystate = yyn;
+  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
   *++yyvsp = yylval;
-
+  YY_IGNORE_MAYBE_UNINITIALIZED_END
+  *++yylsp = yylloc;
   goto yynewstate;
 
 
@@ -1488,7 +1445,7 @@ yyreduce:
   yylen = yyr2[yyn];
 
   /* If YYLEN is nonzero, implement the default value of the action:
-     `$$ = $1'.
+     '$$ = $1'.
 
      Otherwise, the following line sets YYVAL to garbage.
      This behavior is undocumented and Bison
@@ -1497,316 +1454,288 @@ yyreduce:
      GCC warning that YYVAL may be used uninitialized.  */
   yyval = yyvsp[1-yylen];
 
-
+  /* Default location.  */
+  YYLLOC_DEFAULT (yyloc, (yylsp - yylen), yylen);
   YY_REDUCE_PRINT (yyn);
   switch (yyn)
     {
         case 2:
-
-/* Line 1455 of yacc.c  */
-#line 110 "dtc-parser.y"
+#line 105 "dtc-parser.y" /* yacc.c:1646  */
     {
-			the_boot_info = build_boot_info((yyvsp[(3) - (4)].re), (yyvsp[(4) - (4)].node),
-							guess_boot_cpuid((yyvsp[(4) - (4)].node)));
-		;}
+			the_boot_info = build_boot_info((yyvsp[-1].re), (yyvsp[0].node),
+							guess_boot_cpuid((yyvsp[0].node)));
+		}
+#line 1469 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 3:
-
-/* Line 1455 of yacc.c  */
-#line 118 "dtc-parser.y"
+#line 113 "dtc-parser.y" /* yacc.c:1646  */
     {
 			(yyval.re) = NULL;
-		;}
+		}
+#line 1477 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 4:
-
-/* Line 1455 of yacc.c  */
-#line 122 "dtc-parser.y"
+#line 117 "dtc-parser.y" /* yacc.c:1646  */
     {
-			(yyval.re) = chain_reserve_entry((yyvsp[(1) - (2)].re), (yyvsp[(2) - (2)].re));
-		;}
+			(yyval.re) = chain_reserve_entry((yyvsp[-1].re), (yyvsp[0].re));
+		}
+#line 1485 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 5:
-
-/* Line 1455 of yacc.c  */
-#line 129 "dtc-parser.y"
+#line 124 "dtc-parser.y" /* yacc.c:1646  */
     {
-			(yyval.re) = build_reserve_entry((yyvsp[(2) - (4)].integer), (yyvsp[(3) - (4)].integer));
-		;}
+			(yyval.re) = build_reserve_entry((yyvsp[-2].integer), (yyvsp[-1].integer));
+		}
+#line 1493 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 6:
-
-/* Line 1455 of yacc.c  */
-#line 133 "dtc-parser.y"
+#line 128 "dtc-parser.y" /* yacc.c:1646  */
     {
-			add_label(&(yyvsp[(2) - (2)].re)->labels, (yyvsp[(1) - (2)].labelref));
-			(yyval.re) = (yyvsp[(2) - (2)].re);
-		;}
+			add_label(&(yyvsp[0].re)->labels, (yyvsp[-1].labelref));
+			(yyval.re) = (yyvsp[0].re);
+		}
+#line 1502 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 7:
-
-/* Line 1455 of yacc.c  */
-#line 141 "dtc-parser.y"
+#line 136 "dtc-parser.y" /* yacc.c:1646  */
     {
-			(yyval.node) = name_node((yyvsp[(2) - (2)].node), "");
-		;}
+			(yyval.node) = name_node((yyvsp[0].node), "");
+		}
+#line 1510 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 8:
-
-/* Line 1455 of yacc.c  */
-#line 145 "dtc-parser.y"
+#line 140 "dtc-parser.y" /* yacc.c:1646  */
     {
-			(yyval.node) = merge_nodes((yyvsp[(1) - (3)].node), (yyvsp[(3) - (3)].node));
-		;}
+			(yyval.node) = merge_nodes((yyvsp[-2].node), (yyvsp[0].node));
+		}
+#line 1518 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 9:
-
-/* Line 1455 of yacc.c  */
-#line 149 "dtc-parser.y"
+#line 144 "dtc-parser.y" /* yacc.c:1646  */
     {
-			struct node *target = get_node_by_ref((yyvsp[(1) - (3)].node), (yyvsp[(2) - (3)].labelref));
+			struct node *target = get_node_by_ref((yyvsp[-2].node), (yyvsp[-1].labelref));
 
 			if (target)
-				merge_nodes(target, (yyvsp[(3) - (3)].node));
+				merge_nodes(target, (yyvsp[0].node));
 			else
-				print_error("label or path, '%s', not found", (yyvsp[(2) - (3)].labelref));
-			(yyval.node) = (yyvsp[(1) - (3)].node);
-		;}
+				ERROR(&(yylsp[-1]), "Label or path %s not found", (yyvsp[-1].labelref));
+			(yyval.node) = (yyvsp[-2].node);
+		}
+#line 1532 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 10:
-
-/* Line 1455 of yacc.c  */
-#line 159 "dtc-parser.y"
+#line 154 "dtc-parser.y" /* yacc.c:1646  */
     {
-			struct node *target = get_node_by_ref((yyvsp[(1) - (4)].node), (yyvsp[(3) - (4)].labelref));
+			struct node *target = get_node_by_ref((yyvsp[-3].node), (yyvsp[-1].labelref));
 
-			if (!target)
-				print_error("label or path, '%s', not found", (yyvsp[(3) - (4)].labelref));
-			else
+			if (target)
 				delete_node(target);
+			else
+				ERROR(&(yylsp[-1]), "Label or path %s not found", (yyvsp[-1].labelref));
+
 
-			(yyval.node) = (yyvsp[(1) - (4)].node);
-		;}
+			(yyval.node) = (yyvsp[-3].node);
+		}
+#line 1548 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 11:
-
-/* Line 1455 of yacc.c  */
-#line 173 "dtc-parser.y"
+#line 169 "dtc-parser.y" /* yacc.c:1646  */
     {
-			(yyval.node) = build_node((yyvsp[(2) - (5)].proplist), (yyvsp[(3) - (5)].nodelist));
-		;}
+			(yyval.node) = build_node((yyvsp[-3].proplist), (yyvsp[-2].nodelist));
+		}
+#line 1556 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 12:
-
-/* Line 1455 of yacc.c  */
-#line 180 "dtc-parser.y"
+#line 176 "dtc-parser.y" /* yacc.c:1646  */
     {
 			(yyval.proplist) = NULL;
-		;}
+		}
+#line 1564 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 13:
-
-/* Line 1455 of yacc.c  */
-#line 184 "dtc-parser.y"
+#line 180 "dtc-parser.y" /* yacc.c:1646  */
     {
-			(yyval.proplist) = chain_property((yyvsp[(2) - (2)].prop), (yyvsp[(1) - (2)].proplist));
-		;}
+			(yyval.proplist) = chain_property((yyvsp[0].prop), (yyvsp[-1].proplist));
+		}
+#line 1572 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 14:
-
-/* Line 1455 of yacc.c  */
-#line 191 "dtc-parser.y"
+#line 187 "dtc-parser.y" /* yacc.c:1646  */
     {
-			(yyval.prop) = build_property((yyvsp[(1) - (4)].propnodename), (yyvsp[(3) - (4)].data));
-		;}
+			(yyval.prop) = build_property((yyvsp[-3].propnodename), (yyvsp[-1].data));
+		}
+#line 1580 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 15:
-
-/* Line 1455 of yacc.c  */
-#line 195 "dtc-parser.y"
+#line 191 "dtc-parser.y" /* yacc.c:1646  */
     {
-			(yyval.prop) = build_property((yyvsp[(1) - (2)].propnodename), empty_data);
-		;}
+			(yyval.prop) = build_property((yyvsp[-1].propnodename), empty_data);
+		}
+#line 1588 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 16:
-
-/* Line 1455 of yacc.c  */
-#line 199 "dtc-parser.y"
+#line 195 "dtc-parser.y" /* yacc.c:1646  */
     {
-			(yyval.prop) = build_property_delete((yyvsp[(2) - (3)].propnodename));
-		;}
+			(yyval.prop) = build_property_delete((yyvsp[-1].propnodename));
+		}
+#line 1596 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 17:
-
-/* Line 1455 of yacc.c  */
-#line 203 "dtc-parser.y"
+#line 199 "dtc-parser.y" /* yacc.c:1646  */
     {
-			add_label(&(yyvsp[(2) - (2)].prop)->labels, (yyvsp[(1) - (2)].labelref));
-			(yyval.prop) = (yyvsp[(2) - (2)].prop);
-		;}
+			add_label(&(yyvsp[0].prop)->labels, (yyvsp[-1].labelref));
+			(yyval.prop) = (yyvsp[0].prop);
+		}
+#line 1605 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 18:
-
-/* Line 1455 of yacc.c  */
-#line 211 "dtc-parser.y"
+#line 207 "dtc-parser.y" /* yacc.c:1646  */
     {
-			(yyval.data) = data_merge((yyvsp[(1) - (2)].data), (yyvsp[(2) - (2)].data));
-		;}
+			(yyval.data) = data_merge((yyvsp[-1].data), (yyvsp[0].data));
+		}
+#line 1613 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 19:
-
-/* Line 1455 of yacc.c  */
-#line 215 "dtc-parser.y"
+#line 211 "dtc-parser.y" /* yacc.c:1646  */
     {
-			(yyval.data) = data_merge((yyvsp[(1) - (3)].data), (yyvsp[(2) - (3)].array).data);
-		;}
+			(yyval.data) = data_merge((yyvsp[-2].data), (yyvsp[-1].array).data);
+		}
+#line 1621 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 20:
-
-/* Line 1455 of yacc.c  */
-#line 219 "dtc-parser.y"
+#line 215 "dtc-parser.y" /* yacc.c:1646  */
     {
-			(yyval.data) = data_merge((yyvsp[(1) - (4)].data), (yyvsp[(3) - (4)].data));
-		;}
+			(yyval.data) = data_merge((yyvsp[-3].data), (yyvsp[-1].data));
+		}
+#line 1629 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 21:
-
-/* Line 1455 of yacc.c  */
-#line 223 "dtc-parser.y"
+#line 219 "dtc-parser.y" /* yacc.c:1646  */
     {
-			(yyval.data) = data_add_marker((yyvsp[(1) - (2)].data), REF_PATH, (yyvsp[(2) - (2)].labelref));
-		;}
+			(yyval.data) = data_add_marker((yyvsp[-1].data), REF_PATH, (yyvsp[0].labelref));
+		}
+#line 1637 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 22:
-
-/* Line 1455 of yacc.c  */
-#line 227 "dtc-parser.y"
+#line 223 "dtc-parser.y" /* yacc.c:1646  */
     {
-			FILE *f = srcfile_relative_open((yyvsp[(4) - (9)].data).val, NULL);
+			FILE *f = srcfile_relative_open((yyvsp[-5].data).val, NULL);
 			struct data d;
 
-			if ((yyvsp[(6) - (9)].integer) != 0)
-				if (fseek(f, (yyvsp[(6) - (9)].integer), SEEK_SET) != 0)
-					print_error("Couldn't seek to offset %llu in \"%s\": %s",
-						     (unsigned long long)(yyvsp[(6) - (9)].integer),
-						     (yyvsp[(4) - (9)].data).val,
-						     strerror(errno));
+			if ((yyvsp[-3].integer) != 0)
+				if (fseek(f, (yyvsp[-3].integer), SEEK_SET) != 0)
+					die("Couldn't seek to offset %llu in \"%s\": %s",
+					    (unsigned long long)(yyvsp[-3].integer), (yyvsp[-5].data).val,
+					    strerror(errno));
 
-			d = data_copy_file(f, (yyvsp[(8) - (9)].integer));
+			d = data_copy_file(f, (yyvsp[-1].integer));
 
-			(yyval.data) = data_merge((yyvsp[(1) - (9)].data), d);
+			(yyval.data) = data_merge((yyvsp[-8].data), d);
 			fclose(f);
-		;}
+		}
+#line 1657 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 23:
-
-/* Line 1455 of yacc.c  */
-#line 244 "dtc-parser.y"
+#line 239 "dtc-parser.y" /* yacc.c:1646  */
     {
-			FILE *f = srcfile_relative_open((yyvsp[(4) - (5)].data).val, NULL);
+			FILE *f = srcfile_relative_open((yyvsp[-1].data).val, NULL);
 			struct data d = empty_data;
 
 			d = data_copy_file(f, -1);
 
-			(yyval.data) = data_merge((yyvsp[(1) - (5)].data), d);
+			(yyval.data) = data_merge((yyvsp[-4].data), d);
 			fclose(f);
-		;}
+		}
+#line 1671 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 24:
-
-/* Line 1455 of yacc.c  */
-#line 254 "dtc-parser.y"
+#line 249 "dtc-parser.y" /* yacc.c:1646  */
     {
-			(yyval.data) = data_add_marker((yyvsp[(1) - (2)].data), LABEL, (yyvsp[(2) - (2)].labelref));
-		;}
+			(yyval.data) = data_add_marker((yyvsp[-1].data), LABEL, (yyvsp[0].labelref));
+		}
+#line 1679 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 25:
-
-/* Line 1455 of yacc.c  */
-#line 261 "dtc-parser.y"
+#line 256 "dtc-parser.y" /* yacc.c:1646  */
     {
 			(yyval.data) = empty_data;
-		;}
+		}
+#line 1687 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 26:
-
-/* Line 1455 of yacc.c  */
-#line 265 "dtc-parser.y"
+#line 260 "dtc-parser.y" /* yacc.c:1646  */
     {
-			(yyval.data) = (yyvsp[(1) - (2)].data);
-		;}
+			(yyval.data) = (yyvsp[-1].data);
+		}
+#line 1695 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 27:
-
-/* Line 1455 of yacc.c  */
-#line 269 "dtc-parser.y"
+#line 264 "dtc-parser.y" /* yacc.c:1646  */
     {
-			(yyval.data) = data_add_marker((yyvsp[(1) - (2)].data), LABEL, (yyvsp[(2) - (2)].labelref));
-		;}
+			(yyval.data) = data_add_marker((yyvsp[-1].data), LABEL, (yyvsp[0].labelref));
+		}
+#line 1703 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 28:
-
-/* Line 1455 of yacc.c  */
-#line 276 "dtc-parser.y"
+#line 271 "dtc-parser.y" /* yacc.c:1646  */
     {
-			(yyval.array).data = empty_data;
-			(yyval.array).bits = eval_literal((yyvsp[(2) - (3)].literal), 0, 7);
-
-			if (((yyval.array).bits !=  8) &&
-			    ((yyval.array).bits != 16) &&
-			    ((yyval.array).bits != 32) &&
-			    ((yyval.array).bits != 64))
-			{
-				print_error("Only 8, 16, 32 and 64-bit elements"
-					    " are currently supported");
-				(yyval.array).bits = 32;
+			unsigned long long bits;
+
+			bits = (yyvsp[-1].integer);
+
+			if ((bits !=  8) && (bits != 16) &&
+			    (bits != 32) && (bits != 64)) {
+				ERROR(&(yylsp[-1]), "Array elements must be"
+				      " 8, 16, 32 or 64-bits");
+				bits = 32;
 			}
-		;}
+
+			(yyval.array).data = empty_data;
+			(yyval.array).bits = bits;
+		}
+#line 1723 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 29:
-
-/* Line 1455 of yacc.c  */
-#line 291 "dtc-parser.y"
+#line 287 "dtc-parser.y" /* yacc.c:1646  */
     {
 			(yyval.array).data = empty_data;
 			(yyval.array).bits = 32;
-		;}
+		}
+#line 1732 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 30:
-
-/* Line 1455 of yacc.c  */
-#line 296 "dtc-parser.y"
+#line 292 "dtc-parser.y" /* yacc.c:1646  */
     {
-			if ((yyvsp[(1) - (2)].array).bits < 64) {
-				uint64_t mask = (1ULL << (yyvsp[(1) - (2)].array).bits) - 1;
+			if ((yyvsp[-1].array).bits < 64) {
+				uint64_t mask = (1ULL << (yyvsp[-1].array).bits) - 1;
 				/*
 				 * Bits above mask must either be all zero
 				 * (positive within range of mask) or all one
@@ -1815,314 +1744,271 @@ yyreduce:
 				 * within the mask to one (i.e. | in the
 				 * mask), all bits are one.
 				 */
-				if (((yyvsp[(2) - (2)].integer) > mask) && (((yyvsp[(2) - (2)].integer) | mask) != -1ULL))
-					print_error(
-						"integer value out of range "
-						"%016lx (%d bits)", (yyvsp[(1) - (2)].array).bits);
+				if (((yyvsp[0].integer) > mask) && (((yyvsp[0].integer) | mask) != -1ULL))
+					ERROR(&(yylsp[0]), "Value out of range for"
+					      " %d-bit array element", (yyvsp[-1].array).bits);
 			}
 
-			(yyval.array).data = data_append_integer((yyvsp[(1) - (2)].array).data, (yyvsp[(2) - (2)].integer), (yyvsp[(1) - (2)].array).bits);
-		;}
+			(yyval.array).data = data_append_integer((yyvsp[-1].array).data, (yyvsp[0].integer), (yyvsp[-1].array).bits);
+		}
+#line 1755 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 31:
-
-/* Line 1455 of yacc.c  */
-#line 316 "dtc-parser.y"
+#line 311 "dtc-parser.y" /* yacc.c:1646  */
     {
-			uint64_t val = ~0ULL >> (64 - (yyvsp[(1) - (2)].array).bits);
+			uint64_t val = ~0ULL >> (64 - (yyvsp[-1].array).bits);
 
-			if ((yyvsp[(1) - (2)].array).bits == 32)
-				(yyvsp[(1) - (2)].array).data = data_add_marker((yyvsp[(1) - (2)].array).data,
+			if ((yyvsp[-1].array).bits == 32)
+				(yyvsp[-1].array).data = data_add_marker((yyvsp[-1].array).data,
 							  REF_PHANDLE,
-							  (yyvsp[(2) - (2)].labelref));
+							  (yyvsp[0].labelref));
 			else
-				print_error("References are only allowed in "
+				ERROR(&(yylsp[0]), "References are only allowed in "
 					    "arrays with 32-bit elements.");
 
-			(yyval.array).data = data_append_integer((yyvsp[(1) - (2)].array).data, val, (yyvsp[(1) - (2)].array).bits);
-		;}
+			(yyval.array).data = data_append_integer((yyvsp[-1].array).data, val, (yyvsp[-1].array).bits);
+		}
+#line 1773 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 32:
-
-/* Line 1455 of yacc.c  */
-#line 330 "dtc-parser.y"
+#line 325 "dtc-parser.y" /* yacc.c:1646  */
     {
-			(yyval.array).data = data_add_marker((yyvsp[(1) - (2)].array).data, LABEL, (yyvsp[(2) - (2)].labelref));
-		;}
-    break;
-
-  case 33:
-
-/* Line 1455 of yacc.c  */
-#line 337 "dtc-parser.y"
-    {
-			(yyval.integer) = eval_literal((yyvsp[(1) - (1)].literal), 0, 64);
-		;}
-    break;
-
-  case 34:
-
-/* Line 1455 of yacc.c  */
-#line 341 "dtc-parser.y"
-    {
-			(yyval.integer) = eval_char_literal((yyvsp[(1) - (1)].literal));
-		;}
+			(yyval.array).data = data_add_marker((yyvsp[-1].array).data, LABEL, (yyvsp[0].labelref));
+		}
+#line 1781 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 35:
-
-/* Line 1455 of yacc.c  */
-#line 345 "dtc-parser.y"
+#line 334 "dtc-parser.y" /* yacc.c:1646  */
     {
-			(yyval.integer) = (yyvsp[(2) - (3)].integer);
-		;}
+			(yyval.integer) = (yyvsp[-1].integer);
+		}
+#line 1789 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 38:
-
-/* Line 1455 of yacc.c  */
-#line 356 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (5)].integer) ? (yyvsp[(3) - (5)].integer) : (yyvsp[(5) - (5)].integer); ;}
+#line 345 "dtc-parser.y" /* yacc.c:1646  */
+    { (yyval.integer) = (yyvsp[-4].integer) ? (yyvsp[-2].integer) : (yyvsp[0].integer); }
+#line 1795 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 40:
-
-/* Line 1455 of yacc.c  */
-#line 361 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) || (yyvsp[(3) - (3)].integer); ;}
+#line 350 "dtc-parser.y" /* yacc.c:1646  */
+    { (yyval.integer) = (yyvsp[-2].integer) || (yyvsp[0].integer); }
+#line 1801 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 42:
-
-/* Line 1455 of yacc.c  */
-#line 366 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) && (yyvsp[(3) - (3)].integer); ;}
+#line 355 "dtc-parser.y" /* yacc.c:1646  */
+    { (yyval.integer) = (yyvsp[-2].integer) && (yyvsp[0].integer); }
+#line 1807 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 44:
-
-/* Line 1455 of yacc.c  */
-#line 371 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) | (yyvsp[(3) - (3)].integer); ;}
+#line 360 "dtc-parser.y" /* yacc.c:1646  */
+    { (yyval.integer) = (yyvsp[-2].integer) | (yyvsp[0].integer); }
+#line 1813 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 46:
-
-/* Line 1455 of yacc.c  */
-#line 376 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) ^ (yyvsp[(3) - (3)].integer); ;}
+#line 365 "dtc-parser.y" /* yacc.c:1646  */
+    { (yyval.integer) = (yyvsp[-2].integer) ^ (yyvsp[0].integer); }
+#line 1819 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 48:
-
-/* Line 1455 of yacc.c  */
-#line 381 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) & (yyvsp[(3) - (3)].integer); ;}
+#line 370 "dtc-parser.y" /* yacc.c:1646  */
+    { (yyval.integer) = (yyvsp[-2].integer) & (yyvsp[0].integer); }
+#line 1825 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 50:
-
-/* Line 1455 of yacc.c  */
-#line 386 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) == (yyvsp[(3) - (3)].integer); ;}
+#line 375 "dtc-parser.y" /* yacc.c:1646  */
+    { (yyval.integer) = (yyvsp[-2].integer) == (yyvsp[0].integer); }
+#line 1831 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 51:
-
-/* Line 1455 of yacc.c  */
-#line 387 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) != (yyvsp[(3) - (3)].integer); ;}
+#line 376 "dtc-parser.y" /* yacc.c:1646  */
+    { (yyval.integer) = (yyvsp[-2].integer) != (yyvsp[0].integer); }
+#line 1837 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 53:
-
-/* Line 1455 of yacc.c  */
-#line 392 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) < (yyvsp[(3) - (3)].integer); ;}
+#line 381 "dtc-parser.y" /* yacc.c:1646  */
+    { (yyval.integer) = (yyvsp[-2].integer) < (yyvsp[0].integer); }
+#line 1843 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 54:
-
-/* Line 1455 of yacc.c  */
-#line 393 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) > (yyvsp[(3) - (3)].integer); ;}
+#line 382 "dtc-parser.y" /* yacc.c:1646  */
+    { (yyval.integer) = (yyvsp[-2].integer) > (yyvsp[0].integer); }
+#line 1849 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 55:
-
-/* Line 1455 of yacc.c  */
-#line 394 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) <= (yyvsp[(3) - (3)].integer); ;}
+#line 383 "dtc-parser.y" /* yacc.c:1646  */
+    { (yyval.integer) = (yyvsp[-2].integer) <= (yyvsp[0].integer); }
+#line 1855 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 56:
-
-/* Line 1455 of yacc.c  */
-#line 395 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) >= (yyvsp[(3) - (3)].integer); ;}
+#line 384 "dtc-parser.y" /* yacc.c:1646  */
+    { (yyval.integer) = (yyvsp[-2].integer) >= (yyvsp[0].integer); }
+#line 1861 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 57:
-
-/* Line 1455 of yacc.c  */
-#line 399 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) << (yyvsp[(3) - (3)].integer); ;}
+#line 388 "dtc-parser.y" /* yacc.c:1646  */
+    { (yyval.integer) = (yyvsp[-2].integer) << (yyvsp[0].integer); }
+#line 1867 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 58:
-
-/* Line 1455 of yacc.c  */
-#line 400 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) >> (yyvsp[(3) - (3)].integer); ;}
+#line 389 "dtc-parser.y" /* yacc.c:1646  */
+    { (yyval.integer) = (yyvsp[-2].integer) >> (yyvsp[0].integer); }
+#line 1873 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 60:
-
-/* Line 1455 of yacc.c  */
-#line 405 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) + (yyvsp[(3) - (3)].integer); ;}
+#line 394 "dtc-parser.y" /* yacc.c:1646  */
+    { (yyval.integer) = (yyvsp[-2].integer) + (yyvsp[0].integer); }
+#line 1879 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 61:
-
-/* Line 1455 of yacc.c  */
-#line 406 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) - (yyvsp[(3) - (3)].integer); ;}
+#line 395 "dtc-parser.y" /* yacc.c:1646  */
+    { (yyval.integer) = (yyvsp[-2].integer) - (yyvsp[0].integer); }
+#line 1885 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 63:
-
-/* Line 1455 of yacc.c  */
-#line 411 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) * (yyvsp[(3) - (3)].integer); ;}
+#line 400 "dtc-parser.y" /* yacc.c:1646  */
+    { (yyval.integer) = (yyvsp[-2].integer) * (yyvsp[0].integer); }
+#line 1891 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 64:
-
-/* Line 1455 of yacc.c  */
-#line 412 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) / (yyvsp[(3) - (3)].integer); ;}
+#line 401 "dtc-parser.y" /* yacc.c:1646  */
+    { (yyval.integer) = (yyvsp[-2].integer) / (yyvsp[0].integer); }
+#line 1897 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 65:
-
-/* Line 1455 of yacc.c  */
-#line 413 "dtc-parser.y"
-    { (yyval.integer) = (yyvsp[(1) - (3)].integer) % (yyvsp[(3) - (3)].integer); ;}
+#line 402 "dtc-parser.y" /* yacc.c:1646  */
+    { (yyval.integer) = (yyvsp[-2].integer) % (yyvsp[0].integer); }
+#line 1903 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 68:
-
-/* Line 1455 of yacc.c  */
-#line 419 "dtc-parser.y"
-    { (yyval.integer) = -(yyvsp[(2) - (2)].integer); ;}
+#line 408 "dtc-parser.y" /* yacc.c:1646  */
+    { (yyval.integer) = -(yyvsp[0].integer); }
+#line 1909 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 69:
-
-/* Line 1455 of yacc.c  */
-#line 420 "dtc-parser.y"
-    { (yyval.integer) = ~(yyvsp[(2) - (2)].integer); ;}
+#line 409 "dtc-parser.y" /* yacc.c:1646  */
+    { (yyval.integer) = ~(yyvsp[0].integer); }
+#line 1915 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 70:
-
-/* Line 1455 of yacc.c  */
-#line 421 "dtc-parser.y"
-    { (yyval.integer) = !(yyvsp[(2) - (2)].integer); ;}
+#line 410 "dtc-parser.y" /* yacc.c:1646  */
+    { (yyval.integer) = !(yyvsp[0].integer); }
+#line 1921 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 71:
-
-/* Line 1455 of yacc.c  */
-#line 426 "dtc-parser.y"
+#line 415 "dtc-parser.y" /* yacc.c:1646  */
     {
 			(yyval.data) = empty_data;
-		;}
+		}
+#line 1929 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 72:
-
-/* Line 1455 of yacc.c  */
-#line 430 "dtc-parser.y"
+#line 419 "dtc-parser.y" /* yacc.c:1646  */
     {
-			(yyval.data) = data_append_byte((yyvsp[(1) - (2)].data), (yyvsp[(2) - (2)].byte));
-		;}
+			(yyval.data) = data_append_byte((yyvsp[-1].data), (yyvsp[0].byte));
+		}
+#line 1937 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 73:
-
-/* Line 1455 of yacc.c  */
-#line 434 "dtc-parser.y"
+#line 423 "dtc-parser.y" /* yacc.c:1646  */
     {
-			(yyval.data) = data_add_marker((yyvsp[(1) - (2)].data), LABEL, (yyvsp[(2) - (2)].labelref));
-		;}
+			(yyval.data) = data_add_marker((yyvsp[-1].data), LABEL, (yyvsp[0].labelref));
+		}
+#line 1945 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 74:
-
-/* Line 1455 of yacc.c  */
-#line 441 "dtc-parser.y"
+#line 430 "dtc-parser.y" /* yacc.c:1646  */
     {
 			(yyval.nodelist) = NULL;
-		;}
+		}
+#line 1953 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 75:
-
-/* Line 1455 of yacc.c  */
-#line 445 "dtc-parser.y"
+#line 434 "dtc-parser.y" /* yacc.c:1646  */
     {
-			(yyval.nodelist) = chain_node((yyvsp[(1) - (2)].node), (yyvsp[(2) - (2)].nodelist));
-		;}
+			(yyval.nodelist) = chain_node((yyvsp[-1].node), (yyvsp[0].nodelist));
+		}
+#line 1961 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 76:
-
-/* Line 1455 of yacc.c  */
-#line 449 "dtc-parser.y"
+#line 438 "dtc-parser.y" /* yacc.c:1646  */
     {
-			print_error("syntax error: properties must precede subnodes");
+			ERROR(&(yylsp[0]), "Properties must precede subnodes");
 			YYERROR;
-		;}
+		}
+#line 1970 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 77:
-
-/* Line 1455 of yacc.c  */
-#line 457 "dtc-parser.y"
+#line 446 "dtc-parser.y" /* yacc.c:1646  */
     {
-			(yyval.node) = name_node((yyvsp[(2) - (2)].node), (yyvsp[(1) - (2)].propnodename));
-		;}
+			(yyval.node) = name_node((yyvsp[0].node), (yyvsp[-1].propnodename));
+		}
+#line 1978 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 78:
-
-/* Line 1455 of yacc.c  */
-#line 461 "dtc-parser.y"
+#line 450 "dtc-parser.y" /* yacc.c:1646  */
     {
-			(yyval.node) = name_node(build_node_delete(), (yyvsp[(2) - (3)].propnodename));
-		;}
+			(yyval.node) = name_node(build_node_delete(), (yyvsp[-1].propnodename));
+		}
+#line 1986 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
   case 79:
-
-/* Line 1455 of yacc.c  */
-#line 465 "dtc-parser.y"
+#line 454 "dtc-parser.y" /* yacc.c:1646  */
     {
-			add_label(&(yyvsp[(2) - (2)].node)->labels, (yyvsp[(1) - (2)].labelref));
-			(yyval.node) = (yyvsp[(2) - (2)].node);
-		;}
+			add_label(&(yyvsp[0].node)->labels, (yyvsp[-1].labelref));
+			(yyval.node) = (yyvsp[0].node);
+		}
+#line 1995 "dtc-parser.tab.c" /* yacc.c:1646  */
     break;
 
 
-
-/* Line 1455 of yacc.c  */
-#line 2124 "dtc-parser.tab.c"
+#line 1999 "dtc-parser.tab.c" /* yacc.c:1646  */
       default: break;
     }
+  /* User semantic actions sometimes alter yychar, and that requires
+     that yytoken be updated with the new translation.  We take the
+     approach of translating immediately before every use of yytoken.
+     One alternative is translating here after every semantic action,
+     but that translation would be missed if the semantic action invokes
+     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
+     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
+     incorrect destructor might then be invoked immediately.  In the
+     case of YYERROR or YYBACKUP, subsequent parser actions might lead
+     to an incorrect destructor call or verbose syntax error message
+     before the lookahead is translated.  */
   YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);
 
   YYPOPSTACK (yylen);
@@ -2130,8 +2016,9 @@ yyreduce:
   YY_STACK_PRINT (yyss, yyssp);
 
   *++yyvsp = yyval;
+  *++yylsp = yyloc;
 
-  /* Now `shift' the result of the reduction.  Determine what state
+  /* Now 'shift' the result of the reduction.  Determine what state
      that goes to, based on the state we popped back to and the rule
      number reduced by.  */
 
@@ -2146,10 +2033,14 @@ yyreduce:
   goto yynewstate;
 
 
-/*------------------------------------.
-| yyerrlab -- here on detecting error |
-`------------------------------------*/
+/*--------------------------------------.
+| yyerrlab -- here on detecting error.  |
+`--------------------------------------*/
 yyerrlab:
+  /* Make sure we have latest lookahead translation.  See comments at
+     user semantic actions for why this is necessary.  */
+  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);
+
   /* If not already recovering from an error, report this error.  */
   if (!yyerrstatus)
     {
@@ -2157,59 +2048,58 @@ yyerrlab:
 #if ! YYERROR_VERBOSE
       yyerror (YY_("syntax error"));
 #else
+# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
+                                        yyssp, yytoken)
       {
-	YYSIZE_T yysize = yysyntax_error (0, yystate, yychar);
-	if (yymsg_alloc < yysize && yymsg_alloc < YYSTACK_ALLOC_MAXIMUM)
-	  {
-	    YYSIZE_T yyalloc = 2 * yysize;
-	    if (! (yysize <= yyalloc && yyalloc <= YYSTACK_ALLOC_MAXIMUM))
-	      yyalloc = YYSTACK_ALLOC_MAXIMUM;
-	    if (yymsg != yymsgbuf)
-	      YYSTACK_FREE (yymsg);
-	    yymsg = (char *) YYSTACK_ALLOC (yyalloc);
-	    if (yymsg)
-	      yymsg_alloc = yyalloc;
-	    else
-	      {
-		yymsg = yymsgbuf;
-		yymsg_alloc = sizeof yymsgbuf;
-	      }
-	  }
-
-	if (0 < yysize && yysize <= yymsg_alloc)
-	  {
-	    (void) yysyntax_error (yymsg, yystate, yychar);
-	    yyerror (yymsg);
-	  }
-	else
-	  {
-	    yyerror (YY_("syntax error"));
-	    if (yysize != 0)
-	      goto yyexhaustedlab;
-	  }
+        char const *yymsgp = YY_("syntax error");
+        int yysyntax_error_status;
+        yysyntax_error_status = YYSYNTAX_ERROR;
+        if (yysyntax_error_status == 0)
+          yymsgp = yymsg;
+        else if (yysyntax_error_status == 1)
+          {
+            if (yymsg != yymsgbuf)
+              YYSTACK_FREE (yymsg);
+            yymsg = (char *) YYSTACK_ALLOC (yymsg_alloc);
+            if (!yymsg)
+              {
+                yymsg = yymsgbuf;
+                yymsg_alloc = sizeof yymsgbuf;
+                yysyntax_error_status = 2;
+              }
+            else
+              {
+                yysyntax_error_status = YYSYNTAX_ERROR;
+                yymsgp = yymsg;
+              }
+          }
+        yyerror (yymsgp);
+        if (yysyntax_error_status == 2)
+          goto yyexhaustedlab;
       }
+# undef YYSYNTAX_ERROR
 #endif
     }
 
-
+  yyerror_range[1] = yylloc;
 
   if (yyerrstatus == 3)
     {
       /* If just tried and failed to reuse lookahead token after an
-	 error, discard it.  */
+         error, discard it.  */
 
       if (yychar <= YYEOF)
-	{
-	  /* Return failure if at end of input.  */
-	  if (yychar == YYEOF)
-	    YYABORT;
-	}
+        {
+          /* Return failure if at end of input.  */
+          if (yychar == YYEOF)
+            YYABORT;
+        }
       else
-	{
-	  yydestruct ("Error: discarding",
-		      yytoken, &yylval);
-	  yychar = YYEMPTY;
-	}
+        {
+          yydestruct ("Error: discarding",
+                      yytoken, &yylval, &yylloc);
+          yychar = YYEMPTY;
+        }
     }
 
   /* Else will try to reuse lookahead token after shifting the error
@@ -2228,7 +2118,8 @@ yyerrorlab:
   if (/*CONSTCOND*/ 0)
      goto yyerrorlab;
 
-  /* Do not reclaim the symbols of the rule which action triggered
+  yyerror_range[1] = yylsp[1-yylen];
+  /* Do not reclaim the symbols of the rule whose action triggered
      this YYERROR.  */
   YYPOPSTACK (yylen);
   yylen = 0;
@@ -2241,36 +2132,43 @@ yyerrorlab:
 | yyerrlab1 -- common code for both syntax error and YYERROR.  |
 `-------------------------------------------------------------*/
 yyerrlab1:
-  yyerrstatus = 3;	/* Each real token shifted decrements this.  */
+  yyerrstatus = 3;      /* Each real token shifted decrements this.  */
 
   for (;;)
     {
       yyn = yypact[yystate];
-      if (yyn != YYPACT_NINF)
-	{
-	  yyn += YYTERROR;
-	  if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
-	    {
-	      yyn = yytable[yyn];
-	      if (0 < yyn)
-		break;
-	    }
-	}
+      if (!yypact_value_is_default (yyn))
+        {
+          yyn += YYTERROR;
+          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
+            {
+              yyn = yytable[yyn];
+              if (0 < yyn)
+                break;
+            }
+        }
 
       /* Pop the current state because it cannot handle the error token.  */
       if (yyssp == yyss)
-	YYABORT;
-
+        YYABORT;
 
+      yyerror_range[1] = *yylsp;
       yydestruct ("Error: popping",
-		  yystos[yystate], yyvsp);
+                  yystos[yystate], yyvsp, yylsp);
       YYPOPSTACK (1);
       yystate = *yyssp;
       YY_STACK_PRINT (yyss, yyssp);
     }
 
+  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
   *++yyvsp = yylval;
+  YY_IGNORE_MAYBE_UNINITIALIZED_END
 
+  yyerror_range[2] = yylloc;
+  /* Using YYLLOC is tempting, but would change the location of
+     the lookahead.  YYLOC is available though.  */
+  YYLLOC_DEFAULT (yyloc, yyerror_range, 2);
+  *++yylsp = yyloc;
 
   /* Shift the error token.  */
   YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);
@@ -2293,7 +2191,7 @@ yyabortlab:
   yyresult = 1;
   goto yyreturn;
 
-#if !defined(yyoverflow) || YYERROR_VERBOSE
+#if !defined yyoverflow || YYERROR_VERBOSE
 /*-------------------------------------------------.
 | yyexhaustedlab -- memory exhaustion comes here.  |
 `-------------------------------------------------*/
@@ -2305,16 +2203,21 @@ yyexhaustedlab:
 
 yyreturn:
   if (yychar != YYEMPTY)
-     yydestruct ("Cleanup: discarding lookahead",
-		 yytoken, &yylval);
-  /* Do not reclaim the symbols of the rule which action triggered
+    {
+      /* Make sure we have latest lookahead translation.  See comments at
+         user semantic actions for why this is necessary.  */
+      yytoken = YYTRANSLATE (yychar);
+      yydestruct ("Cleanup: discarding lookahead",
+                  yytoken, &yylval, &yylloc);
+    }
+  /* Do not reclaim the symbols of the rule whose action triggered
      this YYABORT or YYACCEPT.  */
   YYPOPSTACK (yylen);
   YY_STACK_PRINT (yyss, yyssp);
   while (yyssp != yyss)
     {
       yydestruct ("Cleanup: popping",
-		  yystos[*yyssp], yyvsp);
+                  yystos[*yyssp], yyvsp, yylsp);
       YYPOPSTACK (1);
     }
 #ifndef yyoverflow
@@ -2325,74 +2228,12 @@ yyreturn:
   if (yymsg != yymsgbuf)
     YYSTACK_FREE (yymsg);
 #endif
-  /* Make sure YYID is used.  */
-  return YYID (yyresult);
+  return yyresult;
 }
+#line 460 "dtc-parser.y" /* yacc.c:1906  */
 
 
-
-/* Line 1675 of yacc.c  */
-#line 471 "dtc-parser.y"
-
-
-void print_error(char const *fmt, ...)
+void yyerror(char const *s)
 {
-	va_list va;
-
-	va_start(va, fmt);
-	srcpos_verror(&yylloc, fmt, va);
-	va_end(va);
-
-	treesource_error = 1;
-}
-
-void yyerror(char const *s) {
-	print_error("%s", s);
+	ERROR(&yylloc, "%s", s);
 }
-
-static unsigned long long eval_literal(const char *s, int base, int bits)
-{
-	unsigned long long val;
-	char *e;
-
-	errno = 0;
-	val = strtoull(s, &e, base);
-	if (*e) {
-		size_t uls = strspn(e, "UL");
-		if (e[uls])
-			print_error("bad characters in literal");
-	}
-	if ((errno == ERANGE)
-		 || ((bits < 64) && (val >= (1ULL << bits))))
-		print_error("literal out of range");
-	else if (errno != 0)
-		print_error("bad literal");
-	return val;
-}
-
-static unsigned char eval_char_literal(const char *s)
-{
-	int i = 1;
-	char c = s[0];
-
-	if (c == '\0')
-	{
-		print_error("empty character literal");
-		return 0;
-	}
-
-	/*
-	 * If the first character in the character literal is a \ then process
-	 * the remaining characters as an escape encoding. If the first
-	 * character is neither an escape or a terminator it should be the only
-	 * character in the literal and will be returned.
-	 */
-	if (c == '\\')
-		c = get_escape_char(s, &i);
-
-	if (s[i] != '\0')
-		print_error("malformed character literal");
-
-	return c;
-}
-
diff --git a/scripts/dtc/dtc-parser.tab.h_shipped b/scripts/dtc/dtc-parser.tab.h_shipped
index 8ec89b1a4c2d..30867c688300 100644
--- a/scripts/dtc/dtc-parser.tab.h_shipped
+++ b/scripts/dtc/dtc-parser.tab.h_shipped
@@ -1,10 +1,8 @@
+/* A Bison parser, made by GNU Bison 3.0.2.  */
 
-/* A Bison parser, made by GNU Bison 2.4.1.  */
+/* Bison interface for Yacc-like parsers in C
 
-/* Skeleton interface for Bison's Yacc-like parsers in C
-
-      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
-   Free Software Foundation, Inc.
+   Copyright (C) 1984, 1989-1990, 2000-2013 Free Software Foundation, Inc.
 
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
@@ -32,51 +30,54 @@
    This special exception was added by the Free Software Foundation in
    version 2.2 of Bison.  */
 
+#ifndef YY_YY_DTC_PARSER_TAB_H_INCLUDED
+# define YY_YY_DTC_PARSER_TAB_H_INCLUDED
+/* Debug traces.  */
+#ifndef YYDEBUG
+# define YYDEBUG 0
+#endif
+#if YYDEBUG
+extern int yydebug;
+#endif
 
-/* Tokens.  */
+/* Token type.  */
 #ifndef YYTOKENTYPE
 # define YYTOKENTYPE
-   /* Put the tokens into the symbol table, so that GDB and other debuggers
-      know about them.  */
-   enum yytokentype {
-     DT_V1 = 258,
-     DT_MEMRESERVE = 259,
-     DT_LSHIFT = 260,
-     DT_RSHIFT = 261,
-     DT_LE = 262,
-     DT_GE = 263,
-     DT_EQ = 264,
-     DT_NE = 265,
-     DT_AND = 266,
-     DT_OR = 267,
-     DT_BITS = 268,
-     DT_DEL_PROP = 269,
-     DT_DEL_NODE = 270,
-     DT_PROPNODENAME = 271,
-     DT_LITERAL = 272,
-     DT_CHAR_LITERAL = 273,
-     DT_BASE = 274,
-     DT_BYTE = 275,
-     DT_STRING = 276,
-     DT_LABEL = 277,
-     DT_REF = 278,
-     DT_INCBIN = 279
-   };
+  enum yytokentype
+  {
+    DT_V1 = 258,
+    DT_MEMRESERVE = 259,
+    DT_LSHIFT = 260,
+    DT_RSHIFT = 261,
+    DT_LE = 262,
+    DT_GE = 263,
+    DT_EQ = 264,
+    DT_NE = 265,
+    DT_AND = 266,
+    DT_OR = 267,
+    DT_BITS = 268,
+    DT_DEL_PROP = 269,
+    DT_DEL_NODE = 270,
+    DT_PROPNODENAME = 271,
+    DT_LITERAL = 272,
+    DT_CHAR_LITERAL = 273,
+    DT_BYTE = 274,
+    DT_STRING = 275,
+    DT_LABEL = 276,
+    DT_REF = 277,
+    DT_INCBIN = 278
+  };
 #endif
 
-
-
+/* Value type.  */
 #if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
-typedef union YYSTYPE
+typedef union YYSTYPE YYSTYPE;
+union YYSTYPE
 {
-
-/* Line 1676 of yacc.c  */
-#line 40 "dtc-parser.y"
+#line 38 "dtc-parser.y" /* yacc.c:1909  */
 
 	char *propnodename;
-	char *literal;
 	char *labelref;
-	unsigned int cbase;
 	uint8_t byte;
 	struct data data;
 
@@ -92,16 +93,29 @@ typedef union YYSTYPE
 	struct reserve_info *re;
 	uint64_t integer;
 
-
-
-/* Line 1676 of yacc.c  */
-#line 99 "dtc-parser.tab.h"
-} YYSTYPE;
+#line 97 "dtc-parser.tab.h" /* yacc.c:1909  */
+};
 # define YYSTYPE_IS_TRIVIAL 1
-# define yystype YYSTYPE /* obsolescent; will be withdrawn */
 # define YYSTYPE_IS_DECLARED 1
 #endif
 
-extern YYSTYPE yylval;
+/* Location type.  */
+#if ! defined YYLTYPE && ! defined YYLTYPE_IS_DECLARED
+typedef struct YYLTYPE YYLTYPE;
+struct YYLTYPE
+{
+  int first_line;
+  int first_column;
+  int last_line;
+  int last_column;
+};
+# define YYLTYPE_IS_DECLARED 1
+# define YYLTYPE_IS_TRIVIAL 1
+#endif
+
 
+extern YYSTYPE yylval;
+extern YYLTYPE yylloc;
+int yyparse (void);
 
+#endif /* !YY_YY_DTC_PARSER_TAB_H_INCLUDED  */
diff --git a/scripts/dtc/dtc-parser.y b/scripts/dtc/dtc-parser.y
index f412460f94d7..ea57e0a056fd 100644
--- a/scripts/dtc/dtc-parser.y
+++ b/scripts/dtc/dtc-parser.y
@@ -17,31 +17,27 @@
  *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307
  *                                                                   USA
  */
-
 %{
 #include <stdio.h>
 
 #include "dtc.h"
 #include "srcpos.h"
 
-YYLTYPE yylloc;
-
 extern int yylex(void);
-extern void print_error(char const *fmt, ...);
 extern void yyerror(char const *s);
+#define ERROR(loc, ...) \
+	do { \
+		srcpos_error((loc), "Error", __VA_ARGS__); \
+		treesource_error = true; \
+	} while (0)
 
 extern struct boot_info *the_boot_info;
-extern int treesource_error;
-
-static unsigned long long eval_literal(const char *s, int base, int bits);
-static unsigned char eval_char_literal(const char *s);
+extern bool treesource_error;
 %}
 
 %union {
 	char *propnodename;
-	char *literal;
 	char *labelref;
-	unsigned int cbase;
 	uint8_t byte;
 	struct data data;
 
@@ -65,9 +61,8 @@ static unsigned char eval_char_literal(const char *s);
 %token DT_DEL_PROP
 %token DT_DEL_NODE
 %token <propnodename> DT_PROPNODENAME
-%token <literal> DT_LITERAL
-%token <literal> DT_CHAR_LITERAL
-%token <cbase> DT_BASE
+%token <integer> DT_LITERAL
+%token <integer> DT_CHAR_LITERAL
 %token <byte> DT_BYTE
 %token <data> DT_STRING
 %token <labelref> DT_LABEL
@@ -152,17 +147,18 @@ devicetree:
 			if (target)
 				merge_nodes(target, $3);
 			else
-				print_error("label or path, '%s', not found", $2);
+				ERROR(&@2, "Label or path %s not found", $2);
 			$$ = $1;
 		}
 	| devicetree DT_DEL_NODE DT_REF ';'
 		{
 			struct node *target = get_node_by_ref($1, $3);
 
-			if (!target)
-				print_error("label or path, '%s', not found", $3);
-			else
+			if (target)
 				delete_node(target);
+			else
+				ERROR(&@3, "Label or path %s not found", $3);
+
 
 			$$ = $1;
 		}
@@ -230,10 +226,9 @@ propdata:
 
 			if ($6 != 0)
 				if (fseek(f, $6, SEEK_SET) != 0)
-					print_error("Couldn't seek to offset %llu in \"%s\": %s",
-						     (unsigned long long)$6,
-						     $4.val,
-						     strerror(errno));
+					die("Couldn't seek to offset %llu in \"%s\": %s",
+					    (unsigned long long)$6, $4.val,
+					    strerror(errno));
 
 			d = data_copy_file(f, $8);
 
@@ -274,18 +269,19 @@ propdataprefix:
 arrayprefix:
 	DT_BITS DT_LITERAL '<'
 		{
-			$$.data = empty_data;
-			$$.bits = eval_literal($2, 0, 7);
-
-			if (($$.bits !=  8) &&
-			    ($$.bits != 16) &&
-			    ($$.bits != 32) &&
-			    ($$.bits != 64))
-			{
-				print_error("Only 8, 16, 32 and 64-bit elements"
-					    " are currently supported");
-				$$.bits = 32;
+			unsigned long long bits;
+
+			bits = $2;
+
+			if ((bits !=  8) && (bits != 16) &&
+			    (bits != 32) && (bits != 64)) {
+				ERROR(&@2, "Array elements must be"
+				      " 8, 16, 32 or 64-bits");
+				bits = 32;
 			}
+
+			$$.data = empty_data;
+			$$.bits = bits;
 		}
 	| '<'
 		{
@@ -305,9 +301,8 @@ arrayprefix:
 				 * mask), all bits are one.
 				 */
 				if (($2 > mask) && (($2 | mask) != -1ULL))
-					print_error(
-						"integer value out of range "
-						"%016lx (%d bits)", $1.bits);
+					ERROR(&@2, "Value out of range for"
+					      " %d-bit array element", $1.bits);
 			}
 
 			$$.data = data_append_integer($1.data, $2, $1.bits);
@@ -321,7 +316,7 @@ arrayprefix:
 							  REF_PHANDLE,
 							  $2);
 			else
-				print_error("References are only allowed in "
+				ERROR(&@2, "References are only allowed in "
 					    "arrays with 32-bit elements.");
 
 			$$.data = data_append_integer($1.data, val, $1.bits);
@@ -334,13 +329,7 @@ arrayprefix:
 
 integer_prim:
 	  DT_LITERAL
-		{
-			$$ = eval_literal($1, 0, 64);
-		}
 	| DT_CHAR_LITERAL
-		{
-			$$ = eval_char_literal($1);
-		}
 	| '(' integer_expr ')'
 		{
 			$$ = $2;
@@ -447,7 +436,7 @@ subnodes:
 		}
 	| subnode propdef
 		{
-			print_error("syntax error: properties must precede subnodes");
+			ERROR(&@2, "Properties must precede subnodes");
 			YYERROR;
 		}
 	;
@@ -470,63 +459,7 @@ subnode:
 
 %%
 
-void print_error(char const *fmt, ...)
-{
-	va_list va;
-
-	va_start(va, fmt);
-	srcpos_verror(&yylloc, fmt, va);
-	va_end(va);
-
-	treesource_error = 1;
-}
-
-void yyerror(char const *s) {
-	print_error("%s", s);
-}
-
-static unsigned long long eval_literal(const char *s, int base, int bits)
-{
-	unsigned long long val;
-	char *e;
-
-	errno = 0;
-	val = strtoull(s, &e, base);
-	if (*e) {
-		size_t uls = strspn(e, "UL");
-		if (e[uls])
-			print_error("bad characters in literal");
-	}
-	if ((errno == ERANGE)
-		 || ((bits < 64) && (val >= (1ULL << bits))))
-		print_error("literal out of range");
-	else if (errno != 0)
-		print_error("bad literal");
-	return val;
-}
-
-static unsigned char eval_char_literal(const char *s)
+void yyerror(char const *s)
 {
-	int i = 1;
-	char c = s[0];
-
-	if (c == '\0')
-	{
-		print_error("empty character literal");
-		return 0;
-	}
-
-	/*
-	 * If the first character in the character literal is a \ then process
-	 * the remaining characters as an escape encoding. If the first
-	 * character is neither an escape or a terminator it should be the only
-	 * character in the literal and will be returned.
-	 */
-	if (c == '\\')
-		c = get_escape_char(s, &i);
-
-	if (s[i] != '\0')
-		print_error("malformed character literal");
-
-	return c;
+	ERROR(&yylloc, "%s", s);
 }
diff --git a/scripts/dtc/dtc.c b/scripts/dtc/dtc.c
index a375683c1534..8c4add69a765 100644
--- a/scripts/dtc/dtc.c
+++ b/scripts/dtc/dtc.c
@@ -21,8 +21,6 @@
 #include "dtc.h"
 #include "srcpos.h"
 
-#include "version_gen.h"
-
 /*
  * Command line options
  */
@@ -49,55 +47,62 @@ static void fill_fullpaths(struct node *tree, const char *prefix)
 		fill_fullpaths(child, tree->fullpath);
 }
 
-static void  __attribute__ ((noreturn)) usage(void)
-{
-	fprintf(stderr, "Usage:\n");
-	fprintf(stderr, "\tdtc [options] <input file>\n");
-	fprintf(stderr, "\nOptions:\n");
-	fprintf(stderr, "\t-h\n");
-	fprintf(stderr, "\t\tThis help text\n");
-	fprintf(stderr, "\t-q\n");
-	fprintf(stderr, "\t\tQuiet: -q suppress warnings, -qq errors, -qqq all\n");
-	fprintf(stderr, "\t-I <input format>\n");
-	fprintf(stderr, "\t\tInput formats are:\n");
-	fprintf(stderr, "\t\t\tdts - device tree source text\n");
-	fprintf(stderr, "\t\t\tdtb - device tree blob\n");
-	fprintf(stderr, "\t\t\tfs - /proc/device-tree style directory\n");
-	fprintf(stderr, "\t-o <output file>\n");
-	fprintf(stderr, "\t-O <output format>\n");
-	fprintf(stderr, "\t\tOutput formats are:\n");
-	fprintf(stderr, "\t\t\tdts - device tree source text\n");
-	fprintf(stderr, "\t\t\tdtb - device tree blob\n");
-	fprintf(stderr, "\t\t\tasm - assembler source\n");
-	fprintf(stderr, "\t-V <output version>\n");
-	fprintf(stderr, "\t\tBlob version to produce, defaults to %d (relevant for dtb\n\t\tand asm output only)\n", DEFAULT_FDT_VERSION);
-	fprintf(stderr, "\t-d <output dependency file>\n");
-	fprintf(stderr, "\t-R <number>\n");
-	fprintf(stderr, "\t\tMake space for <number> reserve map entries (relevant for \n\t\tdtb and asm output only)\n");
-	fprintf(stderr, "\t-S <bytes>\n");
-	fprintf(stderr, "\t\tMake the blob at least <bytes> long (extra space)\n");
-	fprintf(stderr, "\t-p <bytes>\n");
-	fprintf(stderr, "\t\tAdd padding to the blob of <bytes> long (extra space)\n");
-	fprintf(stderr, "\t-b <number>\n");
-	fprintf(stderr, "\t\tSet the physical boot cpu\n");
-	fprintf(stderr, "\t-f\n");
-	fprintf(stderr, "\t\tForce - try to produce output even if the input tree has errors\n");
-	fprintf(stderr, "\t-i\n");
-	fprintf(stderr, "\t\tAdd a path to search for include files\n");
-	fprintf(stderr, "\t-s\n");
-	fprintf(stderr, "\t\tSort nodes and properties before outputting (only useful for\n\t\tcomparing trees)\n");
-	fprintf(stderr, "\t-v\n");
-	fprintf(stderr, "\t\tPrint DTC version and exit\n");
-	fprintf(stderr, "\t-H <phandle format>\n");
-	fprintf(stderr, "\t\tphandle formats are:\n");
-	fprintf(stderr, "\t\t\tlegacy - \"linux,phandle\" properties only\n");
-	fprintf(stderr, "\t\t\tepapr - \"phandle\" properties only\n");
-	fprintf(stderr, "\t\t\tboth - Both \"linux,phandle\" and \"phandle\" properties\n");
-	fprintf(stderr, "\t-W [no-]<checkname>\n");
-	fprintf(stderr, "\t-E [no-]<checkname>\n");
-	fprintf(stderr, "\t\t\tenable or disable warnings and errors\n");
-	exit(3);
-}
+/* Usage related data. */
+#define FDT_VERSION(version)	_FDT_VERSION(version)
+#define _FDT_VERSION(version)	#version
+static const char usage_synopsis[] = "dtc [options] <input file>";
+static const char usage_short_opts[] = "qI:O:o:V:d:R:S:p:fb:i:H:sW:E:hv";
+static struct option const usage_long_opts[] = {
+	{"quiet",            no_argument, NULL, 'q'},
+	{"in-format",         a_argument, NULL, 'I'},
+	{"out",               a_argument, NULL, 'o'},
+	{"out-format",        a_argument, NULL, 'O'},
+	{"out-version",       a_argument, NULL, 'V'},
+	{"out-dependency",    a_argument, NULL, 'd'},
+	{"reserve",           a_argument, NULL, 'R'},
+	{"space",             a_argument, NULL, 'S'},
+	{"pad",               a_argument, NULL, 'p'},
+	{"boot-cpu",          a_argument, NULL, 'b'},
+	{"force",            no_argument, NULL, 'f'},
+	{"include",           a_argument, NULL, 'i'},
+	{"sort",             no_argument, NULL, 's'},
+	{"phandle",           a_argument, NULL, 'H'},
+	{"warning",           a_argument, NULL, 'W'},
+	{"error",             a_argument, NULL, 'E'},
+	{"help",             no_argument, NULL, 'h'},
+	{"version",          no_argument, NULL, 'v'},
+	{NULL,               no_argument, NULL, 0x0},
+};
+static const char * const usage_opts_help[] = {
+	"\n\tQuiet: -q suppress warnings, -qq errors, -qqq all",
+	"\n\tInput formats are:\n"
+	 "\t\tdts - device tree source text\n"
+	 "\t\tdtb - device tree blob\n"
+	 "\t\tfs  - /proc/device-tree style directory",
+	"\n\tOutput file",
+	"\n\tOutput formats are:\n"
+	 "\t\tdts - device tree source text\n"
+	 "\t\tdtb - device tree blob\n"
+	 "\t\tasm - assembler source",
+	"\n\tBlob version to produce, defaults to "FDT_VERSION(DEFAULT_FDT_VERSION)" (for dtb and asm output)",
+	"\n\tOutput dependency file",
+	"\n\tMake space for <number> reserve map entries (for dtb and asm output)",
+	"\n\tMake the blob at least <bytes> long (extra space)",
+	"\n\tAdd padding to the blob of <bytes> long (extra space)",
+	"\n\tSet the physical boot cpu",
+	"\n\tTry to produce output even if the input tree has errors",
+	"\n\tAdd a path to search for include files",
+	"\n\tSort nodes and properties before outputting (useful for comparing trees)",
+	"\n\tValid phandle formats are:\n"
+	 "\t\tlegacy - \"linux,phandle\" properties only\n"
+	 "\t\tepapr  - \"phandle\" properties only\n"
+	 "\t\tboth   - Both \"linux,phandle\" and \"phandle\" properties",
+	"\n\tEnable/disable warnings (prefix with \"no-\")",
+	"\n\tEnable/disable errors (prefix with \"no-\")",
+	"\n\tPrint this help and exit",
+	"\n\tPrint version and exit",
+	NULL,
+};
 
 int main(int argc, char *argv[])
 {
@@ -106,7 +111,7 @@ int main(int argc, char *argv[])
 	const char *outform = "dts";
 	const char *outname = "-";
 	const char *depname = NULL;
-	int force = 0, sort = 0;
+	bool force = false, sort = false;
 	const char *arg;
 	int opt;
 	FILE *outf = NULL;
@@ -118,8 +123,7 @@ int main(int argc, char *argv[])
 	minsize    = 0;
 	padsize    = 0;
 
-	while ((opt = getopt(argc, argv, "hI:O:o:V:d:R:S:p:fqb:i:vH:sW:E:"))
-			!= EOF) {
+	while ((opt = util_getopt_long()) != EOF) {
 		switch (opt) {
 		case 'I':
 			inform = optarg;
@@ -146,7 +150,7 @@ int main(int argc, char *argv[])
 			padsize = strtol(optarg, NULL, 0);
 			break;
 		case 'f':
-			force = 1;
+			force = true;
 			break;
 		case 'q':
 			quiet++;
@@ -158,8 +162,7 @@ int main(int argc, char *argv[])
 			srcfile_add_search_path(optarg);
 			break;
 		case 'v':
-			printf("Version: %s\n", DTC_VERSION);
-			exit(0);
+			util_version();
 		case 'H':
 			if (streq(optarg, "legacy"))
 				phandle_format = PHANDLE_LEGACY;
@@ -173,7 +176,7 @@ int main(int argc, char *argv[])
 			break;
 
 		case 's':
-			sort = 1;
+			sort = true;
 			break;
 
 		case 'W':
@@ -185,13 +188,14 @@ int main(int argc, char *argv[])
 			break;
 
 		case 'h':
+			usage(NULL);
 		default:
-			usage();
+			usage("unknown option");
 		}
 	}
 
 	if (argc > (optind+1))
-		usage();
+		usage("missing files");
 	else if (argc < (optind+1))
 		arg = "-";
 	else
@@ -201,9 +205,6 @@ int main(int argc, char *argv[])
 	if (minsize && padsize)
 		die("Can't set both -p and -S\n");
 
-	if (minsize)
-		fprintf(stderr, "DTC: Use of \"-S\" is deprecated; it will be removed soon, use \"-p\" instead\n");
-
 	if (depname) {
 		depfile = fopen(depname, "w");
 		if (!depfile)
@@ -238,7 +239,7 @@ int main(int argc, char *argv[])
 	if (streq(outname, "-")) {
 		outf = stdout;
 	} else {
-		outf = fopen(outname, "w");
+		outf = fopen(outname, "wb");
 		if (! outf)
 			die("Couldn't open output file %s: %s\n",
 			    outname, strerror(errno));
diff --git a/scripts/dtc/dtc.h b/scripts/dtc/dtc.h
index 3e42a071070e..56212c8df660 100644
--- a/scripts/dtc/dtc.h
+++ b/scripts/dtc/dtc.h
@@ -38,9 +38,9 @@
 #include "util.h"
 
 #ifdef DEBUG
-#define debug(fmt,args...)	printf(fmt, ##args)
+#define debug(...)	printf(__VA_ARGS__)
 #else
-#define debug(fmt,args...)
+#define debug(...)
 #endif
 
 
@@ -66,7 +66,6 @@ typedef uint32_t cell_t;
 #define strneq(a, b, n)	(strncmp((a), (b), (n)) == 0)
 
 #define ALIGN(x, a)	(((x) + (a) - 1) & ~((a) - 1))
-#define ARRAY_SIZE(x) (sizeof(x) / sizeof((x)[0]))
 
 /* Data blobs */
 enum markertype {
@@ -89,7 +88,7 @@ struct data {
 };
 
 
-#define empty_data ((struct data){ /* all .members = 0 or NULL */ })
+#define empty_data ((struct data){ 0 /* all .members = 0 or NULL */ })
 
 #define for_each_marker(m) \
 	for (; (m); (m) = (m)->next)
@@ -119,7 +118,7 @@ struct data data_append_align(struct data d, int align);
 
 struct data data_add_marker(struct data d, enum markertype type, char *ref);
 
-int data_is_one_string(struct data d);
+bool data_is_one_string(struct data d);
 
 /* DT constraints */
 
@@ -128,13 +127,13 @@ int data_is_one_string(struct data d);
 
 /* Live trees */
 struct label {
-	int deleted;
+	bool deleted;
 	char *label;
 	struct label *next;
 };
 
 struct property {
-	int deleted;
+	bool deleted;
 	char *name;
 	struct data val;
 
@@ -144,7 +143,7 @@ struct property {
 };
 
 struct node {
-	int deleted;
+	bool deleted;
 	char *name;
 	struct property *proplist;
 	struct node *children;
@@ -248,8 +247,8 @@ void sort_tree(struct boot_info *bi);
 
 /* Checks */
 
-void parse_checks_option(bool warn, bool error, const char *optarg);
-void process_checks(int force, struct boot_info *bi);
+void parse_checks_option(bool warn, bool error, const char *arg);
+void process_checks(bool force, struct boot_info *bi);
 
 /* Flattened trees */
 
diff --git a/scripts/dtc/fdt.c b/scripts/dtc/fdt.c
index e56833ae9b6f..2ce6a44179de 100644
--- a/scripts/dtc/fdt.c
+++ b/scripts/dtc/fdt.c
@@ -92,7 +92,7 @@ const void *fdt_offset_ptr(const void *fdt, int offset, unsigned int len)
 
 uint32_t fdt_next_tag(const void *fdt, int startoffset, int *nextoffset)
 {
-	const uint32_t *tagp, *lenp;
+	const fdt32_t *tagp, *lenp;
 	uint32_t tag;
 	int offset = startoffset;
 	const char *p;
@@ -198,6 +198,34 @@ int fdt_next_node(const void *fdt, int offset, int *depth)
 	return offset;
 }
 
+int fdt_first_subnode(const void *fdt, int offset)
+{
+	int depth = 0;
+
+	offset = fdt_next_node(fdt, offset, &depth);
+	if (offset < 0 || depth != 1)
+		return -FDT_ERR_NOTFOUND;
+
+	return offset;
+}
+
+int fdt_next_subnode(const void *fdt, int offset)
+{
+	int depth = 1;
+
+	/*
+	 * With respect to the parent, the depth of the next subnode will be
+	 * the same as the last.
+	 */
+	do {
+		offset = fdt_next_node(fdt, offset, &depth);
+		if (offset < 0 || depth < 1)
+			return -FDT_ERR_NOTFOUND;
+	} while (depth > 1);
+
+	return offset;
+}
+
 const char *_fdt_find_string(const char *strtab, int tabsize, const char *s)
 {
 	int len = strlen(s) + 1;
diff --git a/scripts/dtc/fdt.h b/scripts/dtc/fdt.h
index 48ccfd910000..526aedb51556 100644
--- a/scripts/dtc/fdt.h
+++ b/scripts/dtc/fdt.h
@@ -1,48 +1,99 @@
 #ifndef _FDT_H
 #define _FDT_H
+/*
+ * libfdt - Flat Device Tree manipulation
+ * Copyright (C) 2006 David Gibson, IBM Corporation.
+ * Copyright 2012 Kim Phillips, Freescale Semiconductor.
+ *
+ * libfdt is dual licensed: you can use it either under the terms of
+ * the GPL, or the BSD license, at your option.
+ *
+ *  a) This library is free software; you can redistribute it and/or
+ *     modify it under the terms of the GNU General Public License as
+ *     published by the Free Software Foundation; either version 2 of the
+ *     License, or (at your option) any later version.
+ *
+ *     This library is distributed in the hope that it will be useful,
+ *     but WITHOUT ANY WARRANTY; without even the implied warranty of
+ *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ *     GNU General Public License for more details.
+ *
+ *     You should have received a copy of the GNU General Public
+ *     License along with this library; if not, write to the Free
+ *     Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston,
+ *     MA 02110-1301 USA
+ *
+ * Alternatively,
+ *
+ *  b) Redistribution and use in source and binary forms, with or
+ *     without modification, are permitted provided that the following
+ *     conditions are met:
+ *
+ *     1. Redistributions of source code must retain the above
+ *        copyright notice, this list of conditions and the following
+ *        disclaimer.
+ *     2. Redistributions in binary form must reproduce the above
+ *        copyright notice, this list of conditions and the following
+ *        disclaimer in the documentation and/or other materials
+ *        provided with the distribution.
+ *
+ *     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
+ *     CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
+ *     INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
+ *     MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
+ *     DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
+ *     CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
+ *     SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
+ *     NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
+ *     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
+ *     HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
+ *     CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
+ *     OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
+ *     EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ */
 
 #ifndef __ASSEMBLY__
 
 struct fdt_header {
-	uint32_t magic;			 /* magic word FDT_MAGIC */
-	uint32_t totalsize;		 /* total size of DT block */
-	uint32_t off_dt_struct;		 /* offset to structure */
-	uint32_t off_dt_strings;	 /* offset to strings */
-	uint32_t off_mem_rsvmap;	 /* offset to memory reserve map */
-	uint32_t version;		 /* format version */
-	uint32_t last_comp_version;	 /* last compatible version */
+	fdt32_t magic;			 /* magic word FDT_MAGIC */
+	fdt32_t totalsize;		 /* total size of DT block */
+	fdt32_t off_dt_struct;		 /* offset to structure */
+	fdt32_t off_dt_strings;		 /* offset to strings */
+	fdt32_t off_mem_rsvmap;		 /* offset to memory reserve map */
+	fdt32_t version;		 /* format version */
+	fdt32_t last_comp_version;	 /* last compatible version */
 
 	/* version 2 fields below */
-	uint32_t boot_cpuid_phys;	 /* Which physical CPU id we're
+	fdt32_t boot_cpuid_phys;	 /* Which physical CPU id we're
 					    booting on */
 	/* version 3 fields below */
-	uint32_t size_dt_strings;	 /* size of the strings block */
+	fdt32_t size_dt_strings;	 /* size of the strings block */
 
 	/* version 17 fields below */
-	uint32_t size_dt_struct;	 /* size of the structure block */
+	fdt32_t size_dt_struct;		 /* size of the structure block */
 };
 
 struct fdt_reserve_entry {
-	uint64_t address;
-	uint64_t size;
+	fdt64_t address;
+	fdt64_t size;
 };
 
 struct fdt_node_header {
-	uint32_t tag;
+	fdt32_t tag;
 	char name[0];
 };
 
 struct fdt_property {
-	uint32_t tag;
-	uint32_t len;
-	uint32_t nameoff;
+	fdt32_t tag;
+	fdt32_t len;
+	fdt32_t nameoff;
 	char data[0];
 };
 
 #endif /* !__ASSEMBLY */
 
 #define FDT_MAGIC	0xd00dfeed	/* 4: version, 4: total size */
-#define FDT_TAGSIZE	sizeof(uint32_t)
+#define FDT_TAGSIZE	sizeof(fdt32_t)
 
 #define FDT_BEGIN_NODE	0x1		/* Start node: full name */
 #define FDT_END_NODE	0x2		/* End node */
@@ -51,10 +102,10 @@ struct fdt_property {
 #define FDT_NOP		0x4		/* nop */
 #define FDT_END		0x9
 
-#define FDT_V1_SIZE	(7*sizeof(uint32_t))
-#define FDT_V2_SIZE	(FDT_V1_SIZE + sizeof(uint32_t))
-#define FDT_V3_SIZE	(FDT_V2_SIZE + sizeof(uint32_t))
+#define FDT_V1_SIZE	(7*sizeof(fdt32_t))
+#define FDT_V2_SIZE	(FDT_V1_SIZE + sizeof(fdt32_t))
+#define FDT_V3_SIZE	(FDT_V2_SIZE + sizeof(fdt32_t))
 #define FDT_V16_SIZE	FDT_V3_SIZE
-#define FDT_V17_SIZE	(FDT_V16_SIZE + sizeof(uint32_t))
+#define FDT_V17_SIZE	(FDT_V16_SIZE + sizeof(fdt32_t))
 
 #endif /* _FDT_H */
diff --git a/scripts/dtc/fdt_addresses.c b/scripts/dtc/fdt_addresses.c
new file mode 100644
index 000000000000..eff4dbcc729d
--- /dev/null
+++ b/scripts/dtc/fdt_addresses.c
@@ -0,0 +1,96 @@
+/*
+ * libfdt - Flat Device Tree manipulation
+ * Copyright (C) 2014 David Gibson <david@gibson.dropbear.id.au>
+ *
+ * libfdt is dual licensed: you can use it either under the terms of
+ * the GPL, or the BSD license, at your option.
+ *
+ *  a) This library is free software; you can redistribute it and/or
+ *     modify it under the terms of the GNU General Public License as
+ *     published by the Free Software Foundation; either version 2 of the
+ *     License, or (at your option) any later version.
+ *
+ *     This library is distributed in the hope that it will be useful,
+ *     but WITHOUT ANY WARRANTY; without even the implied warranty of
+ *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ *     GNU General Public License for more details.
+ *
+ *     You should have received a copy of the GNU General Public
+ *     License along with this library; if not, write to the Free
+ *     Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston,
+ *     MA 02110-1301 USA
+ *
+ * Alternatively,
+ *
+ *  b) Redistribution and use in source and binary forms, with or
+ *     without modification, are permitted provided that the following
+ *     conditions are met:
+ *
+ *     1. Redistributions of source code must retain the above
+ *        copyright notice, this list of conditions and the following
+ *        disclaimer.
+ *     2. Redistributions in binary form must reproduce the above
+ *        copyright notice, this list of conditions and the following
+ *        disclaimer in the documentation and/or other materials
+ *        provided with the distribution.
+ *
+ *     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
+ *     CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
+ *     INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
+ *     MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
+ *     DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
+ *     CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
+ *     SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
+ *     NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
+ *     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
+ *     HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
+ *     CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
+ *     OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
+ *     EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ */
+#include "libfdt_env.h"
+
+#include <fdt.h>
+#include <libfdt.h>
+
+#include "libfdt_internal.h"
+
+int fdt_address_cells(const void *fdt, int nodeoffset)
+{
+	const fdt32_t *ac;
+	int val;
+	int len;
+
+	ac = fdt_getprop(fdt, nodeoffset, "#address-cells", &len);
+	if (!ac)
+		return 2;
+
+	if (len != sizeof(*ac))
+		return -FDT_ERR_BADNCELLS;
+
+	val = fdt32_to_cpu(*ac);
+	if ((val <= 0) || (val > FDT_MAX_NCELLS))
+		return -FDT_ERR_BADNCELLS;
+
+	return val;
+}
+
+int fdt_size_cells(const void *fdt, int nodeoffset)
+{
+	const fdt32_t *sc;
+	int val;
+	int len;
+
+	sc = fdt_getprop(fdt, nodeoffset, "#size-cells", &len);
+	if (!sc)
+		return 2;
+
+	if (len != sizeof(*sc))
+		return -FDT_ERR_BADNCELLS;
+
+	val = fdt32_to_cpu(*sc);
+	if ((val < 0) || (val > FDT_MAX_NCELLS))
+		return -FDT_ERR_BADNCELLS;
+
+	return val;
+}
diff --git a/scripts/dtc/fdt_ro.c b/scripts/dtc/fdt_ro.c
index 02b6d687537f..50007f61ce66 100644
--- a/scripts/dtc/fdt_ro.c
+++ b/scripts/dtc/fdt_ro.c
@@ -322,7 +322,7 @@ const void *fdt_getprop(const void *fdt, int nodeoffset,
 
 uint32_t fdt_get_phandle(const void *fdt, int nodeoffset)
 {
-	const uint32_t *php;
+	const fdt32_t *php;
 	int len;
 
 	/* FIXME: This is a bit sub-optimal, since we potentially scan
@@ -515,8 +515,7 @@ int fdt_node_offset_by_phandle(const void *fdt, uint32_t phandle)
 	return offset; /* error from fdt_next_node() */
 }
 
-static int _fdt_stringlist_contains(const char *strlist, int listlen,
-				    const char *str)
+int fdt_stringlist_contains(const char *strlist, int listlen, const char *str)
 {
 	int len = strlen(str);
 	const char *p;
@@ -542,7 +541,7 @@ int fdt_node_check_compatible(const void *fdt, int nodeoffset,
 	prop = fdt_getprop(fdt, nodeoffset, "compatible", &len);
 	if (!prop)
 		return len;
-	if (_fdt_stringlist_contains(prop, len, compatible))
+	if (fdt_stringlist_contains(prop, len, compatible))
 		return 0;
 	else
 		return 1;
diff --git a/scripts/dtc/fdt_rw.c b/scripts/dtc/fdt_rw.c
index 24437dfc32b8..70adec6c371b 100644
--- a/scripts/dtc/fdt_rw.c
+++ b/scripts/dtc/fdt_rw.c
@@ -84,9 +84,9 @@ static int _fdt_rw_check_header(void *fdt)
 
 #define FDT_RW_CHECK_HEADER(fdt) \
 	{ \
-		int err; \
-		if ((err = _fdt_rw_check_header(fdt)) != 0) \
-			return err; \
+		int __err; \
+		if ((__err = _fdt_rw_check_header(fdt)) != 0) \
+			return __err; \
 	}
 
 static inline int _fdt_data_size(void *fdt)
@@ -339,7 +339,7 @@ int fdt_add_subnode_namelen(void *fdt, int parentoffset,
 	int nodelen;
 	int err;
 	uint32_t tag;
-	uint32_t *endtag;
+	fdt32_t *endtag;
 
 	FDT_RW_CHECK_HEADER(fdt);
 
@@ -366,7 +366,7 @@ int fdt_add_subnode_namelen(void *fdt, int parentoffset,
 	nh->tag = cpu_to_fdt32(FDT_BEGIN_NODE);
 	memset(nh->name, 0, FDT_TAGALIGN(namelen+1));
 	memcpy(nh->name, name, namelen);
-	endtag = (uint32_t *)((char *)nh + nodelen - FDT_TAGSIZE);
+	endtag = (fdt32_t *)((char *)nh + nodelen - FDT_TAGSIZE);
 	*endtag = cpu_to_fdt32(FDT_END_NODE);
 
 	return offset;
diff --git a/scripts/dtc/fdt_sw.c b/scripts/dtc/fdt_sw.c
index 55ebebf1eb20..6a804859fd0c 100644
--- a/scripts/dtc/fdt_sw.c
+++ b/scripts/dtc/fdt_sw.c
@@ -107,6 +107,38 @@ int fdt_create(void *buf, int bufsize)
 	return 0;
 }
 
+int fdt_resize(void *fdt, void *buf, int bufsize)
+{
+	size_t headsize, tailsize;
+	char *oldtail, *newtail;
+
+	FDT_SW_CHECK_HEADER(fdt);
+
+	headsize = fdt_off_dt_struct(fdt);
+	tailsize = fdt_size_dt_strings(fdt);
+
+	if ((headsize + tailsize) > bufsize)
+		return -FDT_ERR_NOSPACE;
+
+	oldtail = (char *)fdt + fdt_totalsize(fdt) - tailsize;
+	newtail = (char *)buf + bufsize - tailsize;
+
+	/* Two cases to avoid clobbering data if the old and new
+	 * buffers partially overlap */
+	if (buf <= fdt) {
+		memmove(buf, fdt, headsize);
+		memmove(newtail, oldtail, tailsize);
+	} else {
+		memmove(newtail, oldtail, tailsize);
+		memmove(buf, fdt, headsize);
+	}
+
+	fdt_set_off_dt_strings(buf, bufsize);
+	fdt_set_totalsize(buf, bufsize);
+
+	return 0;
+}
+
 int fdt_add_reservemap_entry(void *fdt, uint64_t addr, uint64_t size)
 {
 	struct fdt_reserve_entry *re;
@@ -153,7 +185,7 @@ int fdt_begin_node(void *fdt, const char *name)
 
 int fdt_end_node(void *fdt)
 {
-	uint32_t *en;
+	fdt32_t *en;
 
 	FDT_SW_CHECK_HEADER(fdt);
 
@@ -213,7 +245,7 @@ int fdt_property(void *fdt, const char *name, const void *val, int len)
 int fdt_finish(void *fdt)
 {
 	char *p = (char *)fdt;
-	uint32_t *end;
+	fdt32_t *end;
 	int oldstroffset, newstroffset;
 	uint32_t tag;
 	int offset, nextoffset;
diff --git a/scripts/dtc/fdt_wip.c b/scripts/dtc/fdt_wip.c
index 6025fa1fe8fe..c5bbb68d3273 100644
--- a/scripts/dtc/fdt_wip.c
+++ b/scripts/dtc/fdt_wip.c
@@ -74,7 +74,7 @@ int fdt_setprop_inplace(void *fdt, int nodeoffset, const char *name,
 
 static void _fdt_nop_region(void *start, int len)
 {
-	uint32_t *p;
+	fdt32_t *p;
 
 	for (p = start; (char *)p < ((char *)start + len); p++)
 		*p = cpu_to_fdt32(FDT_NOP);
diff --git a/scripts/dtc/fdtdump.c b/scripts/dtc/fdtdump.c
index 207a46d64864..95a6a201608c 100644
--- a/scripts/dtc/fdtdump.c
+++ b/scripts/dtc/fdtdump.c
@@ -2,14 +2,16 @@
  * fdtdump.c - Contributed by Pantelis Antoniou <pantelis.antoniou AT gmail.com>
  */
 
+#include <stdbool.h>
 #include <stdint.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <string.h>
 #include <ctype.h>
 
-#include <fdt.h>
+#include <libfdt.h>
 #include <libfdt_env.h>
+#include <fdt.h>
 
 #include "util.h"
 
@@ -17,33 +19,29 @@
 #define PALIGN(p, a)	((void *)(ALIGN((unsigned long)(p), (a))))
 #define GET_CELL(p)	(p += 4, *((const uint32_t *)(p-4)))
 
-static void print_data(const char *data, int len)
+static const char *tagname(uint32_t tag)
 {
-	int i;
-	const char *p = data;
-
-	/* no data, don't print */
-	if (len == 0)
-		return;
-
-	if (util_is_printable_string(data, len)) {
-		printf(" = \"%s\"", (const char *)data);
-	} else if ((len % 4) == 0) {
-		printf(" = <");
-		for (i = 0; i < len; i += 4)
-			printf("0x%08x%s", fdt32_to_cpu(GET_CELL(p)),
-			       i < (len - 4) ? " " : "");
-		printf(">");
-	} else {
-		printf(" = [");
-		for (i = 0; i < len; i++)
-			printf("%02x%s", *p++, i < len - 1 ? " " : "");
-		printf("]");
-	}
+	static const char * const names[] = {
+#define TN(t) [t] = #t
+		TN(FDT_BEGIN_NODE),
+		TN(FDT_END_NODE),
+		TN(FDT_PROP),
+		TN(FDT_NOP),
+		TN(FDT_END),
+#undef TN
+	};
+	if (tag < ARRAY_SIZE(names))
+		if (names[tag])
+			return names[tag];
+	return "FDT_???";
 }
 
-static void dump_blob(void *blob)
+#define dumpf(fmt, args...) \
+	do { if (debug) printf("// " fmt, ## args); } while (0)
+
+static void dump_blob(void *blob, bool debug)
 {
+	uintptr_t blob_off = (uintptr_t)blob;
 	struct fdt_header *bph = blob;
 	uint32_t off_mem_rsvmap = fdt32_to_cpu(bph->off_mem_rsvmap);
 	uint32_t off_dt = fdt32_to_cpu(bph->off_dt_struct);
@@ -90,14 +88,15 @@ static void dump_blob(void *blob)
 		if (addr == 0 && size == 0)
 			break;
 
-		printf("/memreserve/ %llx %llx;\n",
+		printf("/memreserve/ %#llx %#llx;\n",
 		       (unsigned long long)addr, (unsigned long long)size);
 	}
 
 	p = p_struct;
 	while ((tag = fdt32_to_cpu(GET_CELL(p))) != FDT_END) {
 
-		/* printf("tag: 0x%08x (%d)\n", tag, p - p_struct); */
+		dumpf("%04zx: tag: 0x%08x (%s)\n",
+		        (uintptr_t)p - blob_off - 4, tag, tagname(tag));
 
 		if (tag == FDT_BEGIN_NODE) {
 			s = p;
@@ -136,27 +135,93 @@ static void dump_blob(void *blob)
 
 		p = PALIGN(p + sz, 4);
 
+		dumpf("%04zx: string: %s\n", (uintptr_t)s - blob_off, s);
+		dumpf("%04zx: value\n", (uintptr_t)t - blob_off);
 		printf("%*s%s", depth * shift, "", s);
-		print_data(t, sz);
+		utilfdt_print_data(t, sz);
 		printf(";\n");
 	}
 }
 
+/* Usage related data. */
+static const char usage_synopsis[] = "fdtdump [options] <file>";
+static const char usage_short_opts[] = "ds" USAGE_COMMON_SHORT_OPTS;
+static struct option const usage_long_opts[] = {
+	{"debug",            no_argument, NULL, 'd'},
+	{"scan",             no_argument, NULL, 's'},
+	USAGE_COMMON_LONG_OPTS
+};
+static const char * const usage_opts_help[] = {
+	"Dump debug information while decoding the file",
+	"Scan for an embedded fdt in file",
+	USAGE_COMMON_OPTS_HELP
+};
 
 int main(int argc, char *argv[])
 {
+	int opt;
+	const char *file;
 	char *buf;
+	bool debug = false;
+	bool scan = false;
+	off_t len;
+
+	while ((opt = util_getopt_long()) != EOF) {
+		switch (opt) {
+		case_USAGE_COMMON_FLAGS
 
-	if (argc < 2) {
-		fprintf(stderr, "supply input filename\n");
-		return 5;
+		case 'd':
+			debug = true;
+			break;
+		case 's':
+			scan = true;
+			break;
+		}
+	}
+	if (optind != argc - 1)
+		usage("missing input filename");
+	file = argv[optind];
+
+	buf = utilfdt_read_len(file, &len);
+	if (!buf)
+		die("could not read: %s\n", file);
+
+	/* try and locate an embedded fdt in a bigger blob */
+	if (scan) {
+		unsigned char smagic[4];
+		char *p = buf;
+		char *endp = buf + len;
+
+		fdt_set_magic(smagic, FDT_MAGIC);
+
+		/* poor man's memmem */
+		while (true) {
+			p = memchr(p, smagic[0], endp - p - 4);
+			if (!p)
+				break;
+			if (fdt_magic(p) == FDT_MAGIC) {
+				/* try and validate the main struct */
+				off_t this_len = endp - p;
+				fdt32_t max_version = 17;
+				if (fdt_version(p) <= max_version &&
+				    fdt_last_comp_version(p) < max_version &&
+				    fdt_totalsize(p) < this_len &&
+				    fdt_off_dt_struct(p) < this_len &&
+					fdt_off_dt_strings(p) < this_len)
+					break;
+				if (debug)
+					printf("%s: skipping fdt magic at offset %#zx\n",
+						file, p - buf);
+			}
+			++p;
+		}
+		if (!p)
+			die("%s: could not locate fdt magic\n", file);
+		printf("%s: found fdt at offset %#zx\n", file, p - buf);
+		buf = p;
 	}
 
-	buf = utilfdt_read(argv[1]);
-	if (buf)
-		dump_blob(buf);
-	else
-		return 10;
+	dump_blob(buf, debug);
 
 	return 0;
 }
diff --git a/scripts/dtc/fdtget.c b/scripts/dtc/fdtget.c
index c2fbab2a5476..43774192241f 100644
--- a/scripts/dtc/fdtget.c
+++ b/scripts/dtc/fdtget.c
@@ -277,33 +277,33 @@ static int do_fdtget(struct display_info *disp, const char *filename,
 	return 0;
 }
 
-static const char *usage_msg =
-	"fdtget - read values from device tree\n"
-	"\n"
-	"Each value is printed on a new line.\n\n"
-	"Usage:\n"
+/* Usage related data. */
+static const char usage_synopsis[] =
+	"read values from device tree\n"
 	"	fdtget <options> <dt file> [<node> <property>]...\n"
 	"	fdtget -p <options> <dt file> [<node> ]...\n"
-	"Options:\n"
-	"\t-t <type>\tType of data\n"
-	"\t-p\t\tList properties for each node\n"
-	"\t-l\t\tList subnodes for each node\n"
-	"\t-d\t\tDefault value to display when the property is "
-			"missing\n"
-	"\t-h\t\tPrint this help\n\n"
+	"\n"
+	"Each value is printed on a new line.\n"
 	USAGE_TYPE_MSG;
-
-static void usage(const char *msg)
-{
-	if (msg)
-		fprintf(stderr, "Error: %s\n\n", msg);
-
-	fprintf(stderr, "%s", usage_msg);
-	exit(2);
-}
+static const char usage_short_opts[] = "t:pld:" USAGE_COMMON_SHORT_OPTS;
+static struct option const usage_long_opts[] = {
+	{"type",              a_argument, NULL, 't'},
+	{"properties",       no_argument, NULL, 'p'},
+	{"list",             no_argument, NULL, 'l'},
+	{"default",           a_argument, NULL, 'd'},
+	USAGE_COMMON_LONG_OPTS,
+};
+static const char * const usage_opts_help[] = {
+	"Type of data",
+	"List properties for each node",
+	"List subnodes for each node",
+	"Default value to display when the property is missing",
+	USAGE_COMMON_OPTS_HELP
+};
 
 int main(int argc, char *argv[])
 {
+	int opt;
 	char *filename = NULL;
 	struct display_info disp;
 	int args_per_step = 2;
@@ -312,20 +312,14 @@ int main(int argc, char *argv[])
 	memset(&disp, '\0', sizeof(disp));
 	disp.size = -1;
 	disp.mode = MODE_SHOW_VALUE;
-	for (;;) {
-		int c = getopt(argc, argv, "d:hlpt:");
-		if (c == -1)
-			break;
-
-		switch (c) {
-		case 'h':
-		case '?':
-			usage(NULL);
+	while ((opt = util_getopt_long()) != EOF) {
+		switch (opt) {
+		case_USAGE_COMMON_FLAGS
 
 		case 't':
 			if (utilfdt_decode_type(optarg, &disp.type,
 					&disp.size))
-				usage("Invalid type string");
+				usage("invalid type string");
 			break;
 
 		case 'p':
@@ -347,7 +341,7 @@ int main(int argc, char *argv[])
 	if (optind < argc)
 		filename = argv[optind++];
 	if (!filename)
-		usage("Missing filename");
+		usage("missing filename");
 
 	argv += optind;
 	argc -= optind;
@@ -358,7 +352,7 @@ int main(int argc, char *argv[])
 
 	/* Check for node, property arguments */
 	if (args_per_step == 2 && (argc % 2))
-		usage("Must have an even number of arguments");
+		usage("must have an even number of arguments");
 
 	if (do_fdtget(&disp, filename, argv, argc, args_per_step))
 		return 1;
diff --git a/scripts/dtc/fdtput.c b/scripts/dtc/fdtput.c
index f2197f51930b..2a8d674471e1 100644
--- a/scripts/dtc/fdtput.c
+++ b/scripts/dtc/fdtput.c
@@ -96,12 +96,7 @@ static int encode_value(struct display_info *disp, char **arg, int arg_count,
 		/* enlarge our value buffer by a suitable margin if needed */
 		if (upto + len > value_size) {
 			value_size = (upto + len) + 500;
-			value = realloc(value, value_size);
-			if (!value) {
-				fprintf(stderr, "Out of mmory: cannot alloc "
-					"%d bytes\n", value_size);
-				return -1;
-			}
+			value = xrealloc(value, value_size);
 		}
 
 		ptr = value + upto;
@@ -131,19 +126,59 @@ static int encode_value(struct display_info *disp, char **arg, int arg_count,
 	return 0;
 }
 
-static int store_key_value(void *blob, const char *node_name,
+#define ALIGN(x)		(((x) + (FDT_TAGSIZE) - 1) & ~((FDT_TAGSIZE) - 1))
+
+static char *_realloc_fdt(char *fdt, int delta)
+{
+	int new_sz = fdt_totalsize(fdt) + delta;
+	fdt = xrealloc(fdt, new_sz);
+	fdt_open_into(fdt, fdt, new_sz);
+	return fdt;
+}
+
+static char *realloc_node(char *fdt, const char *name)
+{
+	int delta;
+	/* FDT_BEGIN_NODE, node name in off_struct and FDT_END_NODE */
+	delta = sizeof(struct fdt_node_header) + ALIGN(strlen(name) + 1)
+			+ FDT_TAGSIZE;
+	return _realloc_fdt(fdt, delta);
+}
+
+static char *realloc_property(char *fdt, int nodeoffset,
+		const char *name, int newlen)
+{
+	int delta = 0;
+	int oldlen = 0;
+
+	if (!fdt_get_property(fdt, nodeoffset, name, &oldlen))
+		/* strings + property header */
+		delta = sizeof(struct fdt_property) + strlen(name) + 1;
+
+	if (newlen > oldlen)
+		/* actual value in off_struct */
+		delta += ALIGN(newlen) - ALIGN(oldlen);
+
+	return _realloc_fdt(fdt, delta);
+}
+
+static int store_key_value(char **blob, const char *node_name,
 		const char *property, const char *buf, int len)
 {
 	int node;
 	int err;
 
-	node = fdt_path_offset(blob, node_name);
+	node = fdt_path_offset(*blob, node_name);
 	if (node < 0) {
 		report_error(node_name, -1, node);
 		return -1;
 	}
 
-	err = fdt_setprop(blob, node, property, buf, len);
+	err = fdt_setprop(*blob, node, property, buf, len);
+	if (err == -FDT_ERR_NOSPACE) {
+		*blob = realloc_property(*blob, node, property, len);
+		err = fdt_setprop(*blob, node, property, buf, len);
+	}
 	if (err) {
 		report_error(property, -1, err);
 		return -1;
@@ -161,7 +196,7 @@ static int store_key_value(void *blob, const char *node_name,
  * @param in_path	Path to process
  * @return 0 if ok, -1 on error
  */
-static int create_paths(void *blob, const char *in_path)
+static int create_paths(char **blob, const char *in_path)
 {
 	const char *path = in_path;
 	const char *sep;
@@ -177,10 +212,11 @@ static int create_paths(void *blob, const char *in_path)
 		if (!sep)
 			sep = path + strlen(path);
 
-		node = fdt_subnode_offset_namelen(blob, offset, path,
+		node = fdt_subnode_offset_namelen(*blob, offset, path,
 				sep - path);
 		if (node == -FDT_ERR_NOTFOUND) {
-			node = fdt_add_subnode_namelen(blob, offset, path,
+			*blob = realloc_node(*blob, path);
+			node = fdt_add_subnode_namelen(*blob, offset, path,
 						       sep - path);
 		}
 		if (node < 0) {
@@ -203,7 +239,7 @@ static int create_paths(void *blob, const char *in_path)
  * @param node_name	Name of node to create
  * @return new node offset if found, or -1 on failure
  */
-static int create_node(void *blob, const char *node_name)
+static int create_node(char **blob, const char *node_name)
 {
 	int node = 0;
 	char *p;
@@ -215,15 +251,17 @@ static int create_node(void *blob, const char *node_name)
 	}
 	*p = '\0';
 
+	*blob = realloc_node(*blob, p + 1);
+
 	if (p > node_name) {
-		node = fdt_path_offset(blob, node_name);
+		node = fdt_path_offset(*blob, node_name);
 		if (node < 0) {
 			report_error(node_name, -1, node);
 			return -1;
 		}
 	}
 
-	node = fdt_add_subnode(blob, node, p + 1);
+	node = fdt_add_subnode(*blob, node, p + 1);
 	if (node < 0) {
 		report_error(p + 1, -1, node);
 		return -1;
@@ -250,66 +288,64 @@ static int do_fdtput(struct display_info *disp, const char *filename,
 		 * store them into the property.
 		 */
 		assert(arg_count >= 2);
-		if (disp->auto_path && create_paths(blob, *arg))
+		if (disp->auto_path && create_paths(&blob, *arg))
 			return -1;
 		if (encode_value(disp, arg + 2, arg_count - 2, &value, &len) ||
-			store_key_value(blob, *arg, arg[1], value, len))
+			store_key_value(&blob, *arg, arg[1], value, len))
 			ret = -1;
 		break;
 	case OPER_CREATE_NODE:
 		for (; ret >= 0 && arg_count--; arg++) {
 			if (disp->auto_path)
-				ret = create_paths(blob, *arg);
+				ret = create_paths(&blob, *arg);
 			else
-				ret = create_node(blob, *arg);
+				ret = create_node(&blob, *arg);
 		}
 		break;
 	}
-	if (ret >= 0)
+	if (ret >= 0) {
+		fdt_pack(blob);
 		ret = utilfdt_write(filename, blob);
+	}
 
 	free(blob);
 	return ret;
 }
 
-static const char *usage_msg =
-	"fdtput - write a property value to a device tree\n"
-	"\n"
-	"The command line arguments are joined together into a single value.\n"
-	"\n"
-	"Usage:\n"
+/* Usage related data. */
+static const char usage_synopsis[] =
+	"write a property value to a device tree\n"
 	"	fdtput <options> <dt file> <node> <property> [<value>...]\n"
 	"	fdtput -c <options> <dt file> [<node>...]\n"
-	"Options:\n"
-	"\t-c\t\tCreate nodes if they don't already exist\n"
-	"\t-p\t\tAutomatically create nodes as needed for the node path\n"
-	"\t-t <type>\tType of data\n"
-	"\t-v\t\tVerbose: display each value decoded from command line\n"
-	"\t-h\t\tPrint this help\n\n"
+	"\n"
+	"The command line arguments are joined together into a single value.\n"
 	USAGE_TYPE_MSG;
-
-static void usage(const char *msg)
-{
-	if (msg)
-		fprintf(stderr, "Error: %s\n\n", msg);
-
-	fprintf(stderr, "%s", usage_msg);
-	exit(2);
-}
+static const char usage_short_opts[] = "cpt:v" USAGE_COMMON_SHORT_OPTS;
+static struct option const usage_long_opts[] = {
+	{"create",           no_argument, NULL, 'c'},
+	{"auto-path",        no_argument, NULL, 'p'},
+	{"type",              a_argument, NULL, 't'},
+	{"verbose",          no_argument, NULL, 'v'},
+	USAGE_COMMON_LONG_OPTS,
+};
+static const char * const usage_opts_help[] = {
+	"Create nodes if they don't already exist",
+	"Automatically create nodes as needed for the node path",
+	"Type of data",
+	"Display each value decoded from command line",
+	USAGE_COMMON_OPTS_HELP
+};
 
 int main(int argc, char *argv[])
 {
+	int opt;
 	struct display_info disp;
 	char *filename = NULL;
 
 	memset(&disp, '\0', sizeof(disp));
 	disp.size = -1;
 	disp.oper = OPER_WRITE_PROP;
-	for (;;) {
-		int c = getopt(argc, argv, "chpt:v");
-		if (c == -1)
-			break;
-
+	while ((opt = util_getopt_long()) != EOF) {
 		/*
 		 * TODO: add options to:
 		 * - delete property
@@ -317,15 +353,13 @@ int main(int argc, char *argv[])
 		 * - rename node
 		 * - pack fdt before writing
 		 * - set amount of free space when writing
-		 * - expand fdt if value doesn't fit
 		 */
-		switch (c) {
+		switch (opt) {
+		case_USAGE_COMMON_FLAGS
+
 		case 'c':
 			disp.oper = OPER_CREATE_NODE;
 			break;
-		case 'h':
-		case '?':
-			usage(NULL);
 		case 'p':
 			disp.auto_path = 1;
 			break;
@@ -344,16 +378,16 @@ int main(int argc, char *argv[])
 	if (optind < argc)
 		filename = argv[optind++];
 	if (!filename)
-		usage("Missing filename");
+		usage("missing filename");
 
 	argv += optind;
 	argc -= optind;
 
 	if (disp.oper == OPER_WRITE_PROP) {
 		if (argc < 1)
-			usage("Missing node");
+			usage("missing node");
 		if (argc < 2)
-			usage("Missing property");
+			usage("missing property");
 	}
 
 	if (do_fdtput(&disp, filename, argv, argc))
diff --git a/scripts/dtc/flattree.c b/scripts/dtc/flattree.c
index 665dad7bb465..bd99fa2d33b8 100644
--- a/scripts/dtc/flattree.c
+++ b/scripts/dtc/flattree.c
@@ -261,7 +261,7 @@ static void flatten_tree(struct node *tree, struct emitter *emit,
 {
 	struct property *prop;
 	struct node *child;
-	int seen_name_prop = 0;
+	bool seen_name_prop = false;
 
 	if (tree->deleted)
 		return;
@@ -279,7 +279,7 @@ static void flatten_tree(struct node *tree, struct emitter *emit,
 		int nameoff;
 
 		if (streq(prop->name, "name"))
-			seen_name_prop = 1;
+			seen_name_prop = true;
 
 		nameoff = stringtable_insert(strbuf, prop->name);
 
diff --git a/scripts/dtc/fstree.c b/scripts/dtc/fstree.c
index f3774530170a..6d1beec9581d 100644
--- a/scripts/dtc/fstree.c
+++ b/scripts/dtc/fstree.c
@@ -37,26 +37,26 @@ static struct node *read_fstree(const char *dirname)
 	tree = build_node(NULL, NULL);
 
 	while ((de = readdir(d)) != NULL) {
-		char *tmpnam;
+		char *tmpname;
 
 		if (streq(de->d_name, ".")
 		    || streq(de->d_name, ".."))
 			continue;
 
-		tmpnam = join_path(dirname, de->d_name);
+		tmpname = join_path(dirname, de->d_name);
 
-		if (lstat(tmpnam, &st) < 0)
-			die("stat(%s): %s\n", tmpnam, strerror(errno));
+		if (lstat(tmpname, &st) < 0)
+			die("stat(%s): %s\n", tmpname, strerror(errno));
 
 		if (S_ISREG(st.st_mode)) {
 			struct property *prop;
 			FILE *pfile;
 
-			pfile = fopen(tmpnam, "r");
+			pfile = fopen(tmpname, "rb");
 			if (! pfile) {
 				fprintf(stderr,
 					"WARNING: Cannot open %s: %s\n",
-					tmpnam, strerror(errno));
+					tmpname, strerror(errno));
 			} else {
 				prop = build_property(xstrdup(de->d_name),
 						      data_copy_file(pfile,
@@ -67,12 +67,12 @@ static struct node *read_fstree(const char *dirname)
 		} else if (S_ISDIR(st.st_mode)) {
 			struct node *newchild;
 
-			newchild = read_fstree(tmpnam);
+			newchild = read_fstree(tmpname);
 			newchild = name_node(newchild, xstrdup(de->d_name));
 			add_child(tree, newchild);
 		}
 
-		free(tmpnam);
+		free(tmpname);
 	}
 
 	closedir(d);
diff --git a/scripts/dtc/libfdt.h b/scripts/dtc/libfdt.h
index 73f49759a5e7..32d52276d671 100644
--- a/scripts/dtc/libfdt.h
+++ b/scripts/dtc/libfdt.h
@@ -116,7 +116,12 @@
 	 * Should never be returned, if it is, it indicates a bug in
 	 * libfdt itself. */
 
-#define FDT_ERR_MAX		13
+/* Errors in device tree content */
+#define FDT_ERR_BADNCELLS	14
+	/* FDT_ERR_BADNCELLS: Device tree has a #address-cells, #size-cells
+	 * or similar property with a bad format or value */
+
+#define FDT_ERR_MAX		14
 
 /**********************************************************************/
 /* Low-level functions (you probably don't need these)                */
@@ -136,6 +141,28 @@ uint32_t fdt_next_tag(const void *fdt, int offset, int *nextoffset);
 
 int fdt_next_node(const void *fdt, int offset, int *depth);
 
+/**
+ * fdt_first_subnode() - get offset of first direct subnode
+ *
+ * @fdt:	FDT blob
+ * @offset:	Offset of node to check
+ * @return offset of first subnode, or -FDT_ERR_NOTFOUND if there is none
+ */
+int fdt_first_subnode(const void *fdt, int offset);
+
+/**
+ * fdt_next_subnode() - get offset of next direct subnode
+ *
+ * After first calling fdt_first_subnode(), call this function repeatedly to
+ * get direct subnodes of a parent node.
+ *
+ * @fdt:	FDT blob
+ * @offset:	Offset of previous subnode
+ * @return offset of next subnode, or -FDT_ERR_NOTFOUND if there are no more
+ * subnodes
+ */
+int fdt_next_subnode(const void *fdt, int offset);
+
 /**********************************************************************/
 /* General functions                                                  */
 /**********************************************************************/
@@ -582,7 +609,7 @@ const char *fdt_get_alias_namelen(const void *fdt,
  * value of the property named 'name' in the node /aliases.
  *
  * returns:
- *	a pointer to the expansion of the alias named 'name', of it exists
+ *	a pointer to the expansion of the alias named 'name', if it exists
  *	NULL, if the given alias or the /aliases node does not exist
  */
 const char *fdt_get_alias(const void *fdt, const char *name);
@@ -816,6 +843,75 @@ int fdt_node_check_compatible(const void *fdt, int nodeoffset,
 int fdt_node_offset_by_compatible(const void *fdt, int startoffset,
 				  const char *compatible);
 
+/**
+ * fdt_stringlist_contains - check a string list property for a string
+ * @strlist: Property containing a list of strings to check
+ * @listlen: Length of property
+ * @str: String to search for
+ *
+ * This is a utility function provided for convenience. The list contains
+ * one or more strings, each terminated by \0, as is found in a device tree
+ * "compatible" property.
+ *
+ * @return: 1 if the string is found in the list, 0 not found, or invalid list
+ */
+int fdt_stringlist_contains(const char *strlist, int listlen, const char *str);
+
+/**********************************************************************/
+/* Read-only functions (addressing related)                           */
+/**********************************************************************/
+
+/**
+ * FDT_MAX_NCELLS - maximum value for #address-cells and #size-cells
+ *
+ * This is the maximum value for #address-cells, #size-cells and
+ * similar properties that will be processed by libfdt.  IEE1275
+ * requires that OF implementations handle values up to 4.
+ * Implementations may support larger values, but in practice higher
+ * values aren't used.
+ */
+#define FDT_MAX_NCELLS		4
+
+/**
+ * fdt_address_cells - retrieve address size for a bus represented in the tree
+ * @fdt: pointer to the device tree blob
+ * @nodeoffset: offset of the node to find the address size for
+ *
+ * When the node has a valid #address-cells property, returns its value.
+ *
+ * returns:
+ *	0 <= n < FDT_MAX_NCELLS, on success
+ *      2, if the node has no #address-cells property
+ *      -FDT_ERR_BADNCELLS, if the node has a badly formatted or invalid #address-cells property
+ *	-FDT_ERR_BADMAGIC,
+ *	-FDT_ERR_BADVERSION,
+ *	-FDT_ERR_BADSTATE,
+ *	-FDT_ERR_BADSTRUCTURE,
+ *	-FDT_ERR_TRUNCATED, standard meanings
+ */
+int fdt_address_cells(const void *fdt, int nodeoffset);
+
+/**
+ * fdt_size_cells - retrieve address range size for a bus represented in the
+ *                  tree
+ * @fdt: pointer to the device tree blob
+ * @nodeoffset: offset of the node to find the address range size for
+ *
+ * When the node has a valid #size-cells property, returns its value.
+ *
+ * returns:
+ *	0 <= n < FDT_MAX_NCELLS, on success
+ *      2, if the node has no #address-cells property
+ *      -FDT_ERR_BADNCELLS, if the node has a badly formatted or invalid #size-cells property
+ *	-FDT_ERR_BADMAGIC,
+ *	-FDT_ERR_BADVERSION,
+ *	-FDT_ERR_BADSTATE,
+ *	-FDT_ERR_BADSTRUCTURE,
+ *	-FDT_ERR_TRUNCATED, standard meanings
+ */
+int fdt_size_cells(const void *fdt, int nodeoffset);
+
+
 /**********************************************************************/
 /* Write-in-place functions                                           */
 /**********************************************************************/
@@ -882,8 +978,8 @@ int fdt_setprop_inplace(void *fdt, int nodeoffset, const char *name,
 static inline int fdt_setprop_inplace_u32(void *fdt, int nodeoffset,
 					  const char *name, uint32_t val)
 {
-	val = cpu_to_fdt32(val);
-	return fdt_setprop_inplace(fdt, nodeoffset, name, &val, sizeof(val));
+	fdt32_t tmp = cpu_to_fdt32(val);
+	return fdt_setprop_inplace(fdt, nodeoffset, name, &tmp, sizeof(tmp));
 }
 
 /**
@@ -917,8 +1013,8 @@ static inline int fdt_setprop_inplace_u32(void *fdt, int nodeoffset,
 static inline int fdt_setprop_inplace_u64(void *fdt, int nodeoffset,
 					  const char *name, uint64_t val)
 {
-	val = cpu_to_fdt64(val);
-	return fdt_setprop_inplace(fdt, nodeoffset, name, &val, sizeof(val));
+	fdt64_t tmp = cpu_to_fdt64(val);
+	return fdt_setprop_inplace(fdt, nodeoffset, name, &tmp, sizeof(tmp));
 }
 
 /**
@@ -987,19 +1083,20 @@ int fdt_nop_node(void *fdt, int nodeoffset);
 /**********************************************************************/
 
 int fdt_create(void *buf, int bufsize);
+int fdt_resize(void *fdt, void *buf, int bufsize);
 int fdt_add_reservemap_entry(void *fdt, uint64_t addr, uint64_t size);
 int fdt_finish_reservemap(void *fdt);
 int fdt_begin_node(void *fdt, const char *name);
 int fdt_property(void *fdt, const char *name, const void *val, int len);
 static inline int fdt_property_u32(void *fdt, const char *name, uint32_t val)
 {
-	val = cpu_to_fdt32(val);
-	return fdt_property(fdt, name, &val, sizeof(val));
+	fdt32_t tmp = cpu_to_fdt32(val);
+	return fdt_property(fdt, name, &tmp, sizeof(tmp));
 }
 static inline int fdt_property_u64(void *fdt, const char *name, uint64_t val)
 {
-	val = cpu_to_fdt64(val);
-	return fdt_property(fdt, name, &val, sizeof(val));
+	fdt64_t tmp = cpu_to_fdt64(val);
+	return fdt_property(fdt, name, &tmp, sizeof(tmp));
 }
 static inline int fdt_property_cell(void *fdt, const char *name, uint32_t val)
 {
@@ -1154,8 +1251,8 @@ int fdt_setprop(void *fdt, int nodeoffset, const char *name,
 static inline int fdt_setprop_u32(void *fdt, int nodeoffset, const char *name,
 				  uint32_t val)
 {
-	val = cpu_to_fdt32(val);
-	return fdt_setprop(fdt, nodeoffset, name, &val, sizeof(val));
+	fdt32_t tmp = cpu_to_fdt32(val);
+	return fdt_setprop(fdt, nodeoffset, name, &tmp, sizeof(tmp));
 }
 
 /**
@@ -1189,8 +1286,8 @@ static inline int fdt_setprop_u32(void *fdt, int nodeoffset, const char *name,
 static inline int fdt_setprop_u64(void *fdt, int nodeoffset, const char *name,
 				  uint64_t val)
 {
-	val = cpu_to_fdt64(val);
-	return fdt_setprop(fdt, nodeoffset, name, &val, sizeof(val));
+	fdt64_t tmp = cpu_to_fdt64(val);
+	return fdt_setprop(fdt, nodeoffset, name, &tmp, sizeof(tmp));
 }
 
 /**
@@ -1296,8 +1393,8 @@ int fdt_appendprop(void *fdt, int nodeoffset, const char *name,
 static inline int fdt_appendprop_u32(void *fdt, int nodeoffset,
 				     const char *name, uint32_t val)
 {
-	val = cpu_to_fdt32(val);
-	return fdt_appendprop(fdt, nodeoffset, name, &val, sizeof(val));
+	fdt32_t tmp = cpu_to_fdt32(val);
+	return fdt_appendprop(fdt, nodeoffset, name, &tmp, sizeof(tmp));
 }
 
 /**
@@ -1331,8 +1428,8 @@ static inline int fdt_appendprop_u32(void *fdt, int nodeoffset,
 static inline int fdt_appendprop_u64(void *fdt, int nodeoffset,
 				     const char *name, uint64_t val)
 {
-	val = cpu_to_fdt64(val);
-	return fdt_appendprop(fdt, nodeoffset, name, &val, sizeof(val));
+	fdt64_t tmp = cpu_to_fdt64(val);
+	return fdt_appendprop(fdt, nodeoffset, name, &tmp, sizeof(tmp));
 }
 
 /**
diff --git a/scripts/dtc/libfdt_env.h b/scripts/dtc/libfdt_env.h
index 213d7fb81c42..9dea97dfff81 100644
--- a/scripts/dtc/libfdt_env.h
+++ b/scripts/dtc/libfdt_env.h
@@ -1,29 +1,111 @@
 #ifndef _LIBFDT_ENV_H
 #define _LIBFDT_ENV_H
+/*
+ * libfdt - Flat Device Tree manipulation
+ * Copyright (C) 2006 David Gibson, IBM Corporation.
+ * Copyright 2012 Kim Phillips, Freescale Semiconductor.
+ *
+ * libfdt is dual licensed: you can use it either under the terms of
+ * the GPL, or the BSD license, at your option.
+ *
+ *  a) This library is free software; you can redistribute it and/or
+ *     modify it under the terms of the GNU General Public License as
+ *     published by the Free Software Foundation; either version 2 of the
+ *     License, or (at your option) any later version.
+ *
+ *     This library is distributed in the hope that it will be useful,
+ *     but WITHOUT ANY WARRANTY; without even the implied warranty of
+ *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ *     GNU General Public License for more details.
+ *
+ *     You should have received a copy of the GNU General Public
+ *     License along with this library; if not, write to the Free
+ *     Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston,
+ *     MA 02110-1301 USA
+ *
+ * Alternatively,
+ *
+ *  b) Redistribution and use in source and binary forms, with or
+ *     without modification, are permitted provided that the following
+ *     conditions are met:
+ *
+ *     1. Redistributions of source code must retain the above
+ *        copyright notice, this list of conditions and the following
+ *        disclaimer.
+ *     2. Redistributions in binary form must reproduce the above
+ *        copyright notice, this list of conditions and the following
+ *        disclaimer in the documentation and/or other materials
+ *        provided with the distribution.
+ *
+ *     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
+ *     CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
+ *     INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
+ *     MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
+ *     DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
+ *     CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
+ *     SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
+ *     NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
+ *     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
+ *     HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
+ *     CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
+ *     OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
+ *     EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ */
 
 #include <stddef.h>
 #include <stdint.h>
 #include <string.h>
 
-#define EXTRACT_BYTE(n)	((unsigned long long)((uint8_t *)&x)[n])
-static inline uint16_t fdt16_to_cpu(uint16_t x)
+#ifdef __CHECKER__
+#define __force __attribute__((force))
+#define __bitwise __attribute__((bitwise))
+#else
+#define __force
+#define __bitwise
+#endif
+
+typedef uint16_t __bitwise fdt16_t;
+typedef uint32_t __bitwise fdt32_t;
+typedef uint64_t __bitwise fdt64_t;
+
+#define EXTRACT_BYTE(x, n)	((unsigned long long)((uint8_t *)&x)[n])
+#define CPU_TO_FDT16(x) ((EXTRACT_BYTE(x, 0) << 8) | EXTRACT_BYTE(x, 1))
+#define CPU_TO_FDT32(x) ((EXTRACT_BYTE(x, 0) << 24) | (EXTRACT_BYTE(x, 1) << 16) | \
+			 (EXTRACT_BYTE(x, 2) << 8) | EXTRACT_BYTE(x, 3))
+#define CPU_TO_FDT64(x) ((EXTRACT_BYTE(x, 0) << 56) | (EXTRACT_BYTE(x, 1) << 48) | \
+			 (EXTRACT_BYTE(x, 2) << 40) | (EXTRACT_BYTE(x, 3) << 32) | \
+			 (EXTRACT_BYTE(x, 4) << 24) | (EXTRACT_BYTE(x, 5) << 16) | \
+			 (EXTRACT_BYTE(x, 6) << 8) | EXTRACT_BYTE(x, 7))
+
+static inline uint16_t fdt16_to_cpu(fdt16_t x)
+{
+	return (__force uint16_t)CPU_TO_FDT16(x);
+}
+static inline fdt16_t cpu_to_fdt16(uint16_t x)
 {
-	return (EXTRACT_BYTE(0) << 8) | EXTRACT_BYTE(1);
+	return (__force fdt16_t)CPU_TO_FDT16(x);
 }
-#define cpu_to_fdt16(x) fdt16_to_cpu(x)
 
-static inline uint32_t fdt32_to_cpu(uint32_t x)
+static inline uint32_t fdt32_to_cpu(fdt32_t x)
 {
-	return (EXTRACT_BYTE(0) << 24) | (EXTRACT_BYTE(1) << 16) | (EXTRACT_BYTE(2) << 8) | EXTRACT_BYTE(3);
+	return (__force uint32_t)CPU_TO_FDT32(x);
+}
+static inline fdt32_t cpu_to_fdt32(uint32_t x)
+{
+	return (__force fdt32_t)CPU_TO_FDT32(x);
 }
-#define cpu_to_fdt32(x) fdt32_to_cpu(x)
 
-static inline uint64_t fdt64_to_cpu(uint64_t x)
+static inline uint64_t fdt64_to_cpu(fdt64_t x)
+{
+	return (__force uint64_t)CPU_TO_FDT64(x);
+}
+static inline fdt64_t cpu_to_fdt64(uint64_t x)
 {
-	return (EXTRACT_BYTE(0) << 56) | (EXTRACT_BYTE(1) << 48) | (EXTRACT_BYTE(2) << 40) | (EXTRACT_BYTE(3) << 32)
-		| (EXTRACT_BYTE(4) << 24) | (EXTRACT_BYTE(5) << 16) | (EXTRACT_BYTE(6) << 8) | EXTRACT_BYTE(7);
+	return (__force fdt64_t)CPU_TO_FDT64(x);
 }
-#define cpu_to_fdt64(x) fdt64_to_cpu(x)
+#undef CPU_TO_FDT64
+#undef CPU_TO_FDT32
+#undef CPU_TO_FDT16
 #undef EXTRACT_BYTE
 
 #endif /* _LIBFDT_ENV_H */
diff --git a/scripts/dtc/libfdt_internal.h b/scripts/dtc/libfdt_internal.h
index 381133ba81df..02cfa6fb612d 100644
--- a/scripts/dtc/libfdt_internal.h
+++ b/scripts/dtc/libfdt_internal.h
@@ -57,9 +57,9 @@
 
 #define FDT_CHECK_HEADER(fdt) \
 	{ \
-		int err; \
-		if ((err = fdt_check_header(fdt)) != 0) \
-			return err; \
+		int __err; \
+		if ((__err = fdt_check_header(fdt)) != 0) \
+			return __err; \
 	}
 
 int _fdt_check_node_offset(const void *fdt, int offset);
diff --git a/scripts/dtc/livetree.c b/scripts/dtc/livetree.c
index b61465fb2f33..e229b84432f9 100644
--- a/scripts/dtc/livetree.c
+++ b/scripts/dtc/livetree.c
@@ -511,7 +511,9 @@ struct node *get_node_by_phandle(struct node *tree, cell_t phandle)
 
 struct node *get_node_by_ref(struct node *tree, const char *ref)
 {
-	if (ref[0] == '/')
+	if (streq(ref, "/"))
+		return tree;
+	else if (ref[0] == '/')
 		return get_node_by_path(tree, ref);
 	else
 		return get_node_by_label(tree, ref);
diff --git a/scripts/dtc/srcpos.c b/scripts/dtc/srcpos.c
index 246ab4bc0d9d..f534c22a888d 100644
--- a/scripts/dtc/srcpos.c
+++ b/scripts/dtc/srcpos.c
@@ -34,7 +34,7 @@ struct search_path {
 static struct search_path *search_path_head, **search_path_tail;
 
 
-static char *dirname(const char *path)
+static char *get_dirname(const char *path)
 {
 	const char *slash = strrchr(path, '/');
 
@@ -77,7 +77,7 @@ static char *try_open(const char *dirname, const char *fname, FILE **fp)
 	else
 		fullname = join_path(dirname, fname);
 
-	*fp = fopen(fullname, "r");
+	*fp = fopen(fullname, "rb");
 	if (!*fp) {
 		free(fullname);
 		fullname = NULL;
@@ -150,7 +150,7 @@ void srcfile_push(const char *fname)
 	srcfile = xmalloc(sizeof(*srcfile));
 
 	srcfile->f = srcfile_relative_open(fname, &srcfile->name);
-	srcfile->dir = dirname(srcfile->name);
+	srcfile->dir = get_dirname(srcfile->name);
 	srcfile->prev = current_srcfile;
 
 	srcfile->lineno = 1;
@@ -159,7 +159,7 @@ void srcfile_push(const char *fname)
 	current_srcfile = srcfile;
 }
 
-int srcfile_pop(void)
+bool srcfile_pop(void)
 {
 	struct srcfile_state *srcfile = current_srcfile;
 
@@ -177,7 +177,7 @@ int srcfile_pop(void)
 	 * fix this we could either allocate all the files from a
 	 * table, or use a pool allocator. */
 
-	return current_srcfile ? 1 : 0;
+	return current_srcfile ? true : false;
 }
 
 void srcfile_add_search_path(const char *dirname)
@@ -290,42 +290,27 @@ srcpos_string(struct srcpos *pos)
 	return pos_str;
 }
 
-void
-srcpos_verror(struct srcpos *pos, char const *fmt, va_list va)
+void srcpos_verror(struct srcpos *pos, const char *prefix,
+		   const char *fmt, va_list va)
 {
-       const char *srcstr;
-
-       srcstr = srcpos_string(pos);
+	char *srcstr;
 
-       fprintf(stdout, "Error: %s ", srcstr);
-       vfprintf(stdout, fmt, va);
-       fprintf(stdout, "\n");
-}
+	srcstr = srcpos_string(pos);
 
-void
-srcpos_error(struct srcpos *pos, char const *fmt, ...)
-{
-	va_list va;
+	fprintf(stderr, "%s: %s ", prefix, srcstr);
+	vfprintf(stderr, fmt, va);
+	fprintf(stderr, "\n");
 
-	va_start(va, fmt);
-	srcpos_verror(pos, fmt, va);
-	va_end(va);
+	free(srcstr);
 }
 
-
-void
-srcpos_warn(struct srcpos *pos, char const *fmt, ...)
+void srcpos_error(struct srcpos *pos, const char *prefix,
+		  const char *fmt, ...)
 {
-	const char *srcstr;
 	va_list va;
-	va_start(va, fmt);
-
-	srcstr = srcpos_string(pos);
-
-	fprintf(stderr, "Warning: %s ", srcstr);
-	vfprintf(stderr, fmt, va);
-	fprintf(stderr, "\n");
 
+	va_start(va, fmt);
+	srcpos_verror(pos, prefix, fmt, va);
 	va_end(va);
 }
 
diff --git a/scripts/dtc/srcpos.h b/scripts/dtc/srcpos.h
index 93a27123c2e9..f81827bd684a 100644
--- a/scripts/dtc/srcpos.h
+++ b/scripts/dtc/srcpos.h
@@ -21,6 +21,7 @@
 #define _SRCPOS_H_
 
 #include <stdio.h>
+#include <stdbool.h>
 
 struct srcfile_state {
 	FILE *f;
@@ -55,7 +56,7 @@ extern struct srcfile_state *current_srcfile; /* = NULL */
 FILE *srcfile_relative_open(const char *fname, char **fullnamep);
 
 void srcfile_push(const char *fname);
-int srcfile_pop(void);
+bool srcfile_pop(void);
 
 /**
  * Add a new directory to the search path for input files
@@ -106,12 +107,12 @@ extern struct srcpos *srcpos_copy(struct srcpos *pos);
 extern char *srcpos_string(struct srcpos *pos);
 extern void srcpos_dump(struct srcpos *pos);
 
-extern void srcpos_verror(struct srcpos *pos, char const *, va_list va)
-     __attribute__((format(printf, 2, 0)));
-extern void srcpos_error(struct srcpos *pos, char const *, ...)
-     __attribute__((format(printf, 2, 3)));
-extern void srcpos_warn(struct srcpos *pos, char const *, ...)
-     __attribute__((format(printf, 2, 3)));
+extern void srcpos_verror(struct srcpos *pos, const char *prefix,
+			  const char *fmt, va_list va)
+	__attribute__((format(printf, 3, 0)));
+extern void srcpos_error(struct srcpos *pos, const char *prefix,
+			 const char *fmt, ...)
+	__attribute__((format(printf, 3, 4)));
 
 extern void srcpos_set_line(char *f, int l);
 
diff --git a/scripts/dtc/treesource.c b/scripts/dtc/treesource.c
index 33eeba55fb4d..a55d1d128cce 100644
--- a/scripts/dtc/treesource.c
+++ b/scripts/dtc/treesource.c
@@ -26,12 +26,12 @@ extern int yyparse(void);
 extern YYLTYPE yylloc;
 
 struct boot_info *the_boot_info;
-int treesource_error;
+bool treesource_error;
 
 struct boot_info *dt_from_source(const char *fname)
 {
 	the_boot_info = NULL;
-	treesource_error = 0;
+	treesource_error = false;
 
 	srcfile_push(fname);
 	yyin = current_srcfile->f;
@@ -54,9 +54,9 @@ static void write_prefix(FILE *f, int level)
 		fputc('\t', f);
 }
 
-static int isstring(char c)
+static bool isstring(char c)
 {
-	return (isprint(c)
+	return (isprint((unsigned char)c)
 		|| (c == '\0')
 		|| strchr("\a\b\t\n\v\f\r", c));
 }
@@ -109,7 +109,7 @@ static void write_propval_string(FILE *f, struct data val)
 			break;
 		case '\0':
 			fprintf(f, "\", ");
-			while (m && (m->offset < i)) {
+			while (m && (m->offset <= (i + 1))) {
 				if (m->type == LABEL) {
 					assert(m->offset == (i+1));
 					fprintf(f, "%s: ", m->ref);
@@ -119,7 +119,7 @@ static void write_propval_string(FILE *f, struct data val)
 			fprintf(f, "\"");
 			break;
 		default:
-			if (isprint(c))
+			if (isprint((unsigned char)c))
 				fprintf(f, "%c", c);
 			else
 				fprintf(f, "\\x%02hhx", c);
@@ -178,7 +178,7 @@ static void write_propval_bytes(FILE *f, struct data val)
 			m = m->next;
 		}
 
-		fprintf(f, "%02hhx", *bp++);
+		fprintf(f, "%02hhx", (unsigned char)(*bp++));
 		if ((const void *)bp >= propend)
 			break;
 		fprintf(f, " ");
diff --git a/scripts/dtc/util.c b/scripts/dtc/util.c
index 2422c34e11df..9d65226df9e4 100644
--- a/scripts/dtc/util.c
+++ b/scripts/dtc/util.c
@@ -34,15 +34,16 @@
 
 #include "libfdt.h"
 #include "util.h"
+#include "version_gen.h"
 
 char *xstrdup(const char *s)
 {
 	int len = strlen(s) + 1;
-	char *dup = xmalloc(len);
+	char *d = xmalloc(len);
 
-	memcpy(dup, s, len);
+	memcpy(d, s, len);
 
-	return dup;
+	return d;
 }
 
 char *join_path(const char *path, const char *name)
@@ -69,10 +70,10 @@ char *join_path(const char *path, const char *name)
 	return str;
 }
 
-int util_is_printable_string(const void *data, int len)
+bool util_is_printable_string(const void *data, int len)
 {
 	const char *s = data;
-	const char *ss;
+	const char *ss, *se;
 
 	/* zero length is not */
 	if (len == 0)
@@ -82,13 +83,19 @@ int util_is_printable_string(const void *data, int len)
 	if (s[len - 1] != '\0')
 		return 0;
 
-	ss = s;
-	while (*s && isprint(*s))
-		s++;
+	se = s + len;
 
-	/* not zero, or not done yet */
-	if (*s != '\0' || (s + 1 - ss) < len)
-		return 0;
+	while (s < se) {
+		ss = s;
+		while (s < se && *s && isprint((unsigned char)*s))
+			s++;
+
+		/* not zero, or not done yet */
+		if (*s != '\0' || s == ss)
+			return 0;
+
+		s++;
+	}
 
 	return 1;
 }
@@ -191,7 +198,7 @@ char get_escape_char(const char *s, int *i)
 	return val;
 }
 
-int utilfdt_read_err(const char *filename, char **buffp)
+int utilfdt_read_err_len(const char *filename, char **buffp, off_t *len)
 {
 	int fd = 0;	/* assume stdin */
 	char *buf = NULL;
@@ -206,16 +213,12 @@ int utilfdt_read_err(const char *filename, char **buffp)
 	}
 
 	/* Loop until we have read everything */
-	buf = malloc(bufsize);
+	buf = xmalloc(bufsize);
 	do {
 		/* Expand the buffer to hold the next chunk */
 		if (offset == bufsize) {
 			bufsize *= 2;
-			buf = realloc(buf, bufsize);
-			if (!buf) {
-				ret = ENOMEM;
-				break;
-			}
+			buf = xrealloc(buf, bufsize);
 		}
 
 		ret = read(fd, &buf[offset], bufsize - offset);
@@ -232,13 +235,20 @@ int utilfdt_read_err(const char *filename, char **buffp)
 		free(buf);
 	else
 		*buffp = buf;
+	*len = bufsize;
 	return ret;
 }
 
-char *utilfdt_read(const char *filename)
+int utilfdt_read_err(const char *filename, char **buffp)
+{
+	off_t len;
+	return utilfdt_read_err_len(filename, buffp, &len);
+}
+
+char *utilfdt_read_len(const char *filename, off_t *len)
 {
 	char *buff;
-	int ret = utilfdt_read_err(filename, &buff);
+	int ret = utilfdt_read_err_len(filename, &buff, len);
 
 	if (ret) {
 		fprintf(stderr, "Couldn't open blob from '%s': %s\n", filename,
@@ -249,6 +259,12 @@ char *utilfdt_read(const char *filename)
 	return buff;
 }
 
+char *utilfdt_read(const char *filename)
+{
+	off_t len;
+	return utilfdt_read_len(filename, &len);
+}
+
 int utilfdt_write_err(const char *filename, const void *blob)
 {
 	int fd = 1;	/* assume stdout */
@@ -329,3 +345,100 @@ int utilfdt_decode_type(const char *fmt, int *type, int *size)
 		return -1;
 	return 0;
 }
+
+void utilfdt_print_data(const char *data, int len)
+{
+	int i;
+	const char *p = data;
+	const char *s;
+
+	/* no data, don't print */
+	if (len == 0)
+		return;
+
+	if (util_is_printable_string(data, len)) {
+		printf(" = ");
+
+		s = data;
+		do {
+			printf("\"%s\"", s);
+			s += strlen(s) + 1;
+			if (s < data + len)
+				printf(", ");
+		} while (s < data + len);
+
+	} else if ((len % 4) == 0) {
+		const uint32_t *cell = (const uint32_t *)data;
+
+		printf(" = <");
+		for (i = 0, len /= 4; i < len; i++)
+			printf("0x%08x%s", fdt32_to_cpu(cell[i]),
+			       i < (len - 1) ? " " : "");
+		printf(">");
+	} else {
+		printf(" = [");
+		for (i = 0; i < len; i++)
+			printf("%02x%s", *p++, i < len - 1 ? " " : "");
+		printf("]");
+	}
+}
+
+void util_version(void)
+{
+	printf("Version: %s\n", DTC_VERSION);
+	exit(0);
+}
+
+void util_usage(const char *errmsg, const char *synopsis,
+		const char *short_opts, struct option const long_opts[],
+		const char * const opts_help[])
+{
+	FILE *fp = errmsg ? stderr : stdout;
+	const char a_arg[] = "<arg>";
+	size_t a_arg_len = strlen(a_arg) + 1;
+	size_t i;
+	int optlen;
+
+	fprintf(fp,
+		"Usage: %s\n"
+		"\n"
+		"Options: -[%s]\n", synopsis, short_opts);
+
+	/* prescan the --long opt length to auto-align */
+	optlen = 0;
+	for (i = 0; long_opts[i].name; ++i) {
+		/* +1 is for space between --opt and help text */
+		int l = strlen(long_opts[i].name) + 1;
+		if (long_opts[i].has_arg == a_argument)
+			l += a_arg_len;
+		if (optlen < l)
+			optlen = l;
+	}
+
+	for (i = 0; long_opts[i].name; ++i) {
+		/* helps when adding new applets or options */
+		assert(opts_help[i] != NULL);
+
+		/* first output the short flag if it has one */
+		if (long_opts[i].val > '~')
+			fprintf(fp, "      ");
+		else
+			fprintf(fp, "  -%c, ", long_opts[i].val);
+
+		/* then the long flag */
+		if (long_opts[i].has_arg == no_argument)
+			fprintf(fp, "--%-*s", optlen, long_opts[i].name);
+		else
+			fprintf(fp, "--%s %s%*s", long_opts[i].name, a_arg,
+				(int)(optlen - strlen(long_opts[i].name) - a_arg_len), "");
+
+		/* finally the help text */
+		fprintf(fp, "%s\n", opts_help[i]);
+	}
+
+	if (errmsg) {
+		fprintf(fp, "\nError: %s\n", errmsg);
+		exit(EXIT_FAILURE);
+	} else
+		exit(EXIT_SUCCESS);
+}
diff --git a/scripts/dtc/util.h b/scripts/dtc/util.h
index c8eb45d9f04b..ccfdf4b12433 100644
--- a/scripts/dtc/util.h
+++ b/scripts/dtc/util.h
@@ -2,6 +2,8 @@
 #define _UTIL_H
 
 #include <stdarg.h>
+#include <stdbool.h>
+#include <getopt.h>
 
 /*
  * Copyright 2011 The Chromium Authors, All Rights Reserved.
@@ -23,7 +25,9 @@
  *                                                                   USA
  */
 
-static inline void __attribute__((noreturn)) die(char * str, ...)
+#define ARRAY_SIZE(x) (sizeof(x) / sizeof((x)[0]))
+
+static inline void __attribute__((noreturn)) die(const char *str, ...)
 {
 	va_list ap;
 
@@ -57,13 +61,15 @@ extern char *xstrdup(const char *s);
 extern char *join_path(const char *path, const char *name);
 
 /**
- * Check a string of a given length to see if it is all printable and
- * has a valid terminator.
+ * Check a property of a given length to see if it is all printable and
+ * has a valid terminator. The property can contain either a single string,
+ * or multiple strings each of non-zero length.
  *
  * @param data	The string to check
  * @param len	The string length including terminator
- * @return 1 if a valid printable string, 0 if not */
-int util_is_printable_string(const void *data, int len);
+ * @return 1 if a valid printable string, 0 if not
+ */
+bool util_is_printable_string(const void *data, int len);
 
 /*
  * Parse an escaped character starting at index i in string s.  The resulting
@@ -83,6 +89,13 @@ char get_escape_char(const char *s, int *i);
 char *utilfdt_read(const char *filename);
 
 /**
+ * Like utilfdt_read(), but also passes back the size of the file read.
+ *
+ * @param len		If non-NULL, the amount of data we managed to read
+ */
+char *utilfdt_read_len(const char *filename, off_t *len);
+
+/**
  * Read a device tree file into a buffer. Does not report errors, but only
  * returns them. The value returned can be passed to strerror() to obtain
  * an error message for the user.
@@ -93,6 +106,12 @@ char *utilfdt_read(const char *filename);
  */
 int utilfdt_read_err(const char *filename, char **buffp);
 
+/**
+ * Like utilfdt_read_err(), but also passes back the size of the file read.
+ *
+ * @param len		If non-NULL, the amount of data we managed to read
+ */
+int utilfdt_read_err_len(const char *filename, char **buffp, off_t *len);
 
 /**
  * Write a device tree buffer to a file. This will report any errors on
@@ -148,6 +167,85 @@ int utilfdt_decode_type(const char *fmt, int *type, int *size);
 #define USAGE_TYPE_MSG \
 	"<type>\ts=string, i=int, u=unsigned, x=hex\n" \
 	"\tOptional modifier prefix:\n" \
-	"\t\thh or b=byte, h=2 byte, l=4 byte (default)\n";
+	"\t\thh or b=byte, h=2 byte, l=4 byte (default)";
+
+/**
+ * Print property data in a readable format to stdout
+ *
+ * Properties that look like strings will be printed as strings. Otherwise
+ * the data will be displayed either as cells (if len is a multiple of 4
+ * bytes) or bytes.
+ *
+ * If len is 0 then this function does nothing.
+ *
+ * @param data	Pointers to property data
+ * @param len	Length of property data
+ */
+void utilfdt_print_data(const char *data, int len);
+
+/**
+ * Show source version and exit
+ */
+void util_version(void) __attribute__((noreturn));
+
+/**
+ * Show usage and exit
+ *
+ * This helps standardize the output of various utils.  You most likely want
+ * to use the usage() helper below rather than call this.
+ *
+ * @param errmsg	If non-NULL, an error message to display
+ * @param synopsis	The initial example usage text (and possible examples)
+ * @param short_opts	The string of short options
+ * @param long_opts	The structure of long options
+ * @param opts_help	An array of help strings (should align with long_opts)
+ */
+void util_usage(const char *errmsg, const char *synopsis,
+		const char *short_opts, struct option const long_opts[],
+		const char * const opts_help[]) __attribute__((noreturn));
+
+/**
+ * Show usage and exit
+ *
+ * If you name all your usage variables with usage_xxx, then you can call this
+ * help macro rather than expanding all arguments yourself.
+ *
+ * @param errmsg	If non-NULL, an error message to display
+ */
+#define usage(errmsg) \
+	util_usage(errmsg, usage_synopsis, usage_short_opts, \
+		   usage_long_opts, usage_opts_help)
+
+/**
+ * Call getopt_long() with standard options
+ *
+ * Since all util code runs getopt in the same way, provide a helper.
+ */
+#define util_getopt_long() getopt_long(argc, argv, usage_short_opts, \
+				       usage_long_opts, NULL)
+
+/* Helper for aligning long_opts array */
+#define a_argument required_argument
+
+/* Helper for usage_short_opts string constant */
+#define USAGE_COMMON_SHORT_OPTS "hV"
+
+/* Helper for usage_long_opts option array */
+#define USAGE_COMMON_LONG_OPTS \
+	{"help",      no_argument, NULL, 'h'}, \
+	{"version",   no_argument, NULL, 'V'}, \
+	{NULL,        no_argument, NULL, 0x0}
+
+/* Helper for usage_opts_help array */
+#define USAGE_COMMON_OPTS_HELP \
+	"Print this help and exit", \
+	"Print version and exit", \
+	NULL
+
+/* Helper for getopt case statements */
+#define case_USAGE_COMMON_FLAGS \
+	case 'h': usage(NULL); \
+	case 'V': util_version(); \
+	case '?': usage("unknown option");
 
 #endif /* _UTIL_H */
diff --git a/scripts/dtc/version_gen.h b/scripts/dtc/version_gen.h
index 6158b867df99..607afac1cde1 100644
--- a/scripts/dtc/version_gen.h
+++ b/scripts/dtc/version_gen.h
@@ -1 +1 @@
-#define DTC_VERSION "DTC 1.2.0-g37c0b6a0"
+#define DTC_VERSION "DTC 1.4.1"
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
