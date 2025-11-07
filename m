Delivery-date: Fri, 07 Nov 2025 15:42:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHNfK-00GKK6-07
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 15:42:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHNfJ-0000Al-7x
	for lore@pengutronix.de; Fri, 07 Nov 2025 15:42:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RG48oXeLhynNebo4rx1FSG9zgq5zAGC1juHF7nLXpmw=; b=09tnAYzquObeSY5KmLEfPKSZyO
	GhkwzwlwSOGXG2f6sLe7v+1tah7kKLctvhPZCTFAjCC0459tdxeyqN+n0YckQJhr/y/IPLzjazZSI
	WbJr/NAHWE0/7/jRT/WmbRAZzSOKesiMq0QT3nOlvU2SHxIb9kJSw+ht26BP1sDOb/HoISNUnnOfq
	bG7HNh8L8l9w4FQI4uj/UFrq9jbcueDLaQHDvQwTr3L+PV3j2aWZzghllEAduA6Rk69ZE/43p+cTz
	IbdB7JPS1q3o9WvL46ISgJVItR2VQO9wzKQ99eFtTx6s55NV9iUZV3R8kl6LgOJha3IAiXdZ39wE7
	rXJtMrrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHNet-0000000HWIO-1GCl;
	Fri, 07 Nov 2025 14:41:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHNeq-0000000HWGq-0hTH
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 14:41:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHNeQ-0008Gn-Ku; Fri, 07 Nov 2025 15:41:18 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHNeP-007Xpl-2B;
	Fri, 07 Nov 2025 15:41:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHNeQ-0000000BST9-03Ot;
	Fri, 07 Nov 2025 15:41:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 07 Nov 2025 15:41:11 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-talloc-v2-3-e47bfd0e5667@pengutronix.de>
References: <20251107-talloc-v2-0-e47bfd0e5667@pengutronix.de>
In-Reply-To: <20251107-talloc-v2-0-e47bfd0e5667@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762526477; l=5837;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=A4X1ZfQ7ok3aSclsxi7ozjiEmb41bGU+ZKo5bu4kzjg=;
 b=OoOQ/XjS1hmdMdMaQszCs0nspqUPts1BRhYaTejogYGyQnNWySgYbSU0xALit7Z1quG/ILjUc
 D7ErwQxaZgQAym0YMNpU6377LQwqxrwbS9cE0Ml83F8X7QuKX1hvx8n
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_064144_217125_620D20DC 
X-CRM114-Status: GOOD (  17.99  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/4] hush: fix memory leaks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

The memory leaks in hush have been bothered me for years and every time
I look into it, I give up after a while, because the code is convoluted.

Talloc shines here as we can just allocate a "zero-size" talloc object
as parent for a context and associate all allocations from that context
with it.

Then when that context is free'd all children will be freed as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Link: https://lore.barebox.org/20251027075438.2480311-3-a.fatoum@barebox.org
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c | 41 +++++++++++++++++++++++++----------------
 1 file changed, 25 insertions(+), 16 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index ec3c0cd91320706afa2306c1ab224ecbbc0474e2..2e0cc4229d3575dcf045f68ef8db3e943c41eedb 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -97,6 +97,7 @@
 
 #define pr_fmt(fmt) "hush: " fmt
 
+#include <talloc.h>
 #include <malloc.h>         /* malloc, free, realloc*/
 #include <xfuncs.h>
 #include <linux/ctype.h>    /* isalpha, isdigit */
@@ -180,6 +181,7 @@ struct option {
 
 /* This holds pointers to the various results of parsing */
 struct p_context {
+	const void *scope;
 	struct child_prog *child;
 	struct pipe *list_head;
 	struct pipe *pipe;
@@ -308,7 +310,7 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi);
 /*   variable assignment: */
 static int is_assignment(const char *s);
 /*   data structure manipulation: */
-static void initialize_context(struct p_context *ctx);
+static void initialize_context(struct p_context *ctx, bool newscope);
 static void release_context(struct p_context *ctx);
 static int done_word(o_string *dest, struct p_context *ctx);
 static int done_command(struct p_context *ctx);
@@ -435,7 +437,7 @@ static char *getprompt(void)
 	if (prompt_command) {
 		unsigned int lr = last_return_code;
 
-		initialize_context(&ctx);
+		initialize_context(&ctx, false);
 		parse_string_outer(&ctx, prompt_command, FLAG_PARSE_SEMICOLON);
 		release_context(&ctx);
 
@@ -837,7 +839,7 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 		char * str = NULL;
 		struct p_context ctx1;
 
-		initialize_context(&ctx1);
+		initialize_context(&ctx1, true);
 
 		str = make_string((child->argv + i));
 		rcode = parse_string_outer(&ctx1, str, FLAG_EXIT_FROM_LOOP | FLAG_REPARSING);
@@ -1062,7 +1064,8 @@ static int free_pipe(struct pipe *pi, int indent)
 		}
 	}
 
-	free(pi->progs);   /* children are an array, they get freed all at once */
+	/* children are an array, they get freed all at once */
+	talloc_free(pi->progs);
 	pi->progs = NULL;
 
 	return ret_code;
@@ -1079,7 +1082,7 @@ static int free_pipe_list(struct pipe *head, int indent)
 		final_printf("%s pipe followup code %d\n", indenter(indent), pi->followup);
 		next = pi->next;
 		pi->next = NULL;
-		free(pi);
+		talloc_free(pi);
 	}
 	return rcode;
 }
@@ -1182,16 +1185,18 @@ static int is_assignment(const char *s)
 }
 
 
-static struct pipe *new_pipe(void)
+static struct pipe *new_pipe(struct p_context *ctx)
 {
-	return xzalloc(sizeof(struct pipe));
+	return xtalloc_zero_size(ctx->scope, sizeof(struct pipe));
 }
 
-static void initialize_context(struct p_context *ctx)
+static void initialize_context(struct p_context *ctx, bool newscope)
 {
+	if (newscope)
+		ctx->scope = talloc_new(NULL);
 	ctx->pipe = NULL;
 	ctx->child = NULL;
-	ctx->list_head = new_pipe();
+	ctx->list_head = new_pipe(ctx);
 	ctx->pipe = ctx->list_head;
 	ctx->w = RES_NONE;
 	ctx->stack = NULL;
@@ -1211,6 +1216,7 @@ static void release_context(struct p_context *ctx)
 		free(opt);
 	}
 #endif
+	talloc_free((void *)ctx->scope);
 }
 
 /* normal return is 0
@@ -1269,7 +1275,7 @@ static int reserved_word(o_string *dest, struct p_context *ctx)
 				return 1;
 			}
 			*new = *ctx;   /* physical copy */
-			initialize_context(ctx);
+			initialize_context(ctx, false);
 			ctx->stack = new;
 		} else if (ctx->w == RES_NONE || !(ctx->old_flag & (1 << r->code))) {
 			syntax_unexpected_token(r->literal);
@@ -1366,7 +1372,10 @@ static int done_command(struct p_context *ctx)
 	} else {
 		hush_debug("%s: initializing\n", __func__);
 	}
-	pi->progs = xrealloc(pi->progs, sizeof(*pi->progs) * (pi->num_progs + 1));
+	pi->progs = talloc_realloc_size(ctx->scope, pi->progs,
+					sizeof(*pi->progs) * (pi->num_progs + 1));
+	if (!pi->progs)
+		panic("enomem");
 
 	prog = pi->progs + pi->num_progs;
 	prog->glob_result.gl_pathv = NULL;
@@ -1392,7 +1401,7 @@ static int done_pipe(struct p_context *ctx, pipe_style type)
 	ctx->pipe->followup = type;
 	ctx->pipe->r_mode = ctx->w;
 
-	new_p = new_pipe();
+	new_p = new_pipe(ctx);
 
 	ctx->pipe->next = new_p;
 	ctx->pipe = new_p;
@@ -1705,7 +1714,7 @@ char *shell_expand(char *str)
 
 	o.quote = 1;
 
-	initialize_context(&ctx);
+	initialize_context(&ctx, false);
 
 	parse_string(&o, &ctx, str);
 
@@ -1732,7 +1741,7 @@ static int parse_stream_outer(struct p_context *ctx, struct in_str *inp, int fla
 
 	do {
 		ctx->type = flag;
-		initialize_context(ctx);
+		initialize_context(ctx, false);
 		update_ifs_map();
 
 		if (!(flag & FLAG_PARSE_SEMICOLON) || (flag & FLAG_REPARSING))
@@ -1921,7 +1930,7 @@ int run_command(const char *cmd)
 	if (!IS_ALLOWED(SCONFIG_SHELL))
 		return -EPERM;
 
-	initialize_context(&ctx);
+	initialize_context(&ctx, true);
 
 	ret = parse_string_outer(&ctx, cmd, FLAG_PARSE_SEMICOLON);
 	release_context(&ctx);
@@ -1949,7 +1958,7 @@ static int source_script(const char *path, int argc, char *argv[])
 	char *script;
 	int ret;
 
-	initialize_context(&ctx);
+	initialize_context(&ctx, true);
 
 	ctx.global_argc = argc;
 	ctx.global_argv = argv;

-- 
2.47.3



