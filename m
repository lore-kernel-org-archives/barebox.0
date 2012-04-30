Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SOodi-00077K-Ou
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 11:19:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Apr 2012 13:19:22 +0200
Message-Id: <1335784768-9189-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1335784768-9189-1-git-send-email-s.hauer@pengutronix.de>
References: <1335784768-9189-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/13] hush: remove quotes at end of processing
To: barebox@lists.infradead.org

hush removes the quotes from strings too early. This leads to some bugs.
When hush executes

echo "hello sascha"

it correctly results in:

argv[0] = "echo"
argv[1] = "hello sascha"

However, the following behaves incorrect:

a="hello sascha"
echo "$a"

results in:

argv[0] = "echo"
argv[1] = "hello"
argv[2] = "sascha"

This is because hush removes the quotes and inserts variable values in a
single loop, so

echo "$a"

becomes:

echo hello sascha

after the loop.

Instead, keep the quotes until all variables are inserted and remove them
at the end.

This also fixes that echo \" resulted in \" instead of ".

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c |   89 ++++++++++++++++++++++++++++++++++++++++++---------------
 1 file changed, 66 insertions(+), 23 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index cd2afef..e32e884 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -270,7 +270,6 @@ static void syntax_err(void) {
 static int b_check_space(o_string *o, int len);
 static int b_addchr(o_string *o, int ch);
 static void b_reset(o_string *o);
-static int b_addqchr(o_string *o, int ch, int quote);
 /*  in_str manipulations: */
 static int static_get(struct in_str *i);
 static int static_peek(struct in_str *i);
@@ -356,22 +355,6 @@ static void b_free(o_string *o)
 	o->maxlen = 0;
 }
 
-/* My analysis of quoting semantics tells me that state information
- * is associated with a destination, not a source.
- */
-static int b_addqchr(o_string *o, int ch, int quote)
-{
-	if (quote && strchr("*?[",ch)) {
-		int rc;
-
-		rc = b_addchr(o, '\\');
-		if (rc)
-			return rc;
-	}
-
-	return b_addchr(o, ch);
-}
-
 static int b_adduint(o_string *o, unsigned int i)
 {
 	int r;
@@ -565,6 +548,59 @@ out:
 BAREBOX_MAGICVAR(OPTARG, "optarg for hush builtin getopt");
 #endif
 
+static void remove_quotes_in_str(char *src)
+{
+	char *trg = src;
+
+	while (*src) {
+		if (*src == '\'') {
+			src++;
+			while (*src != '\'')
+				*trg++ = *src++;
+			src++;
+			continue;
+		}
+
+		/* drop quotes */
+		if (*src == '"') {
+			src++;
+			continue;
+		}
+
+		/* replace \" with " */
+		if (*src == '\\' && *(src + 1) == '"') {
+			*trg++ = '"';
+			src += 2;
+			continue;
+		}
+
+		/* replace \' with ' */
+		if (*src == '\\' && *(src + 1) == '\'') {
+			*trg++ = '\'';
+			src += 2;
+			continue;
+		}
+
+		/* replace \\ with \ */
+		if (*src == '\\' && *(src + 1) == '\\') {
+			*trg++ = '\\';
+			src += 2;
+			continue;
+		}
+
+		*trg++ = *src++;
+	}
+	*trg = 0;
+}
+
+static void remove_quotes(int argc, char *argv[])
+{
+	int i;
+
+	for (i = 0; i < argc; i++)
+		remove_quotes_in_str(argv[i]);
+}
+
 /* run_pipe_real() starts all the jobs, but doesn't wait for anything
  * to finish.  See checkjobs().
  *
@@ -670,6 +706,8 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 		return last_return_code;
 	}
 
+	remove_quotes(child->argc - i, &child->argv[i]);
+
 #ifdef CONFIG_HUSH_GETOPT
 	if (!strcmp(child->argv[i], "getopt"))
 		return builtin_getopt(ctx, child);
@@ -1007,6 +1045,8 @@ static int set_local_var(const char *s, int flg_export)
 	}
 	*value++ = 0;
 
+	remove_quotes_in_str(value);
+
 	ret = setenv(name, value);
 	free(name);
 
@@ -1347,7 +1387,7 @@ static int handle_dollar(o_string *dest, struct p_context *ctx, struct in_str *i
 			b_addchr(dest, SPECIAL_VAR_SYMBOL);
 			break;
 		default:
-			b_addqchr(dest,'$',dest->quote);
+			b_addchr(dest, '$');
 		}
 	}
 	/* Eat the character if the flag was set.  If the compiler
@@ -1387,7 +1427,7 @@ static int parse_stream(o_string *dest, struct p_context *ctx,
 				dest->quote, ctx->stack == NULL ? '*' : '.');
 
 		if (m == 0 || ((m == 1 || m == 2) && dest->quote)) {
-			b_addqchr(dest, ch, dest->quote);
+			b_addchr(dest, ch);
 			continue;
 		}
 
@@ -1416,7 +1456,7 @@ static int parse_stream(o_string *dest, struct p_context *ctx,
 					b_getch(input);
 				}
 			} else {
-				b_addqchr(dest, ch, dest->quote);
+				b_addchr(dest, ch);
 			}
 			break;
 		case '\\':
@@ -1424,8 +1464,8 @@ static int parse_stream(o_string *dest, struct p_context *ctx,
 				syntax();
 				return 1;
 			}
-			b_addqchr(dest, '\\', dest->quote);
-			b_addqchr(dest, b_getch(input), dest->quote);
+			b_addchr(dest, '\\');
+			b_addchr(dest, b_getch(input));
 			break;
 		case '$':
 			if (handle_dollar(dest, ctx, input)!=0)
@@ -1433,11 +1473,13 @@ static int parse_stream(o_string *dest, struct p_context *ctx,
 			break;
 		case '\'':
 			dest->nonnull = 1;
-			while (ch = b_getch(input), ch!=EOF && ch != '\'') {
+			b_addchr(dest, '\'');
+			while (ch = b_getch(input), ch != EOF && ch != '\'') {
 				if (input->__promptme == 0)
 					return 1;
 				b_addchr(dest,ch);
 			}
+			b_addchr(dest, '\'');
 			if (ch == EOF) {
 				syntax();
 				return 1;
@@ -1445,6 +1487,7 @@ static int parse_stream(o_string *dest, struct p_context *ctx,
 			break;
 		case '"':
 			dest->nonnull = 1;
+			b_addchr(dest, '"');
 			dest->quote = !dest->quote;
 			break;
 		case ';':
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
