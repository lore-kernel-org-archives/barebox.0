Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WTSsa-0006KB-9A
 for barebox@lists.infradead.org; Fri, 28 Mar 2014 09:15:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Mar 2014 10:14:41 +0100
Message-Id: <1395998083-18979-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1395998083-18979-1-git-send-email-s.hauer@pengutronix.de>
References: <1395998083-18979-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] Add shell_expand function
To: barebox@lists.infradead.org

shell_expand expands shell variables in a string.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c    | 33 +++++++++++++++++++++++++++++++++
 include/common.h |  9 +++++++++
 2 files changed, 42 insertions(+)

diff --git a/common/hush.c b/common/hush.c
index bd534c1..1447fdb 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1637,6 +1637,39 @@ static void update_ifs_map(void)
 	mapset(ifs, 2);			/* also flow through if quoted */
 }
 
+/*
+ * shell_expand - Expand shell variables in a string.
+ * @str:	The input string containing shell variables like
+ *		$var or ${var}
+ * Return:	The expanded string. Must be freed with free().
+ */
+char *shell_expand(char *str)
+{
+	struct p_context ctx = {};
+	o_string o = {};
+	char *res, *parsed;
+
+	remove_quotes_in_str(str);
+
+	o.quote = 1;
+
+	initialize_context(&ctx);
+
+	parse_string(&o, &ctx, str);
+
+	parsed = xmemdup(o.data, o.length + 1);
+	parsed[o.length] = 0;
+
+	res = insert_var_value(parsed);
+	if (res != parsed)
+		free(parsed);
+
+	free_pipe_list(ctx.list_head, 0);
+	b_free(&o);
+
+	return res;
+}
+
 /* most recursion does not come through here, the exeception is
  * from builtin_source() */
 static int parse_stream_outer(struct p_context *ctx, struct in_str *inp, int flag)
diff --git a/include/common.h b/include/common.h
index 6987b4f..bfd3ce8 100644
--- a/include/common.h
+++ b/include/common.h
@@ -165,6 +165,15 @@ void arch_shutdown(void);
 
 int run_shell(void);
 
+#ifdef CONFIG_SHELL_HUSH
+char *shell_expand(char *str);
+#else
+static inline char *shell_expand(char *str)
+{
+	return strdup(str);
+}
+#endif
+
 /* Force a compilation error if condition is true */
 #define BUILD_BUG_ON(condition) ((void)BUILD_BUG_ON_ZERO(condition))
 
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
