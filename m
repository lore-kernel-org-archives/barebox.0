Delivery-date: Fri, 19 Apr 2024 08:08:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rxhQh-00747L-0r
	for lore@lore.pengutronix.de;
	Fri, 19 Apr 2024 08:08:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rxhQg-0003A3-H1
	for lore@pengutronix.de; Fri, 19 Apr 2024 08:08:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=z5mymf0vrl/zwSEuiS1+jFq4rE1ly6yRAC0ncawPZXM=; b=Dp6wzyFk+j47ZDUKxGxmwLzxBS
	AYtpC3xkxGKaYdVlpsAXy4bZFpOINbBhzuEnwTxv3VQabkyJjg2q29FIZmlhmJl+7tXSLep4TQkWB
	emjCIqj/69JItpSGIKV6rFNe9qeQpvRcpXRIrh87hVmnQbBED9V+xIlh7Pfg4VTGEVQBrG4tQMRCV
	eeB7tS8aEnDyWZ7P3QXCl++8XOf9lS/4J4IPWiXHq4S4SjsZ2ZE2CvUxon5TRVgudKofGzOzQfuLc
	p8aWZH+3Sqvcb8NFFcBsiGlquNAKVgOWRyb9ZrRz7B56WxkKKQkq+OGvNukKNG1WsQQpGi00npCnQ
	pAu81i2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxhQ1-00000004Xku-47Nj;
	Fri, 19 Apr 2024 06:08:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxhPs-00000004Xg7-1e3G
	for barebox@lists.infradead.org;
	Fri, 19 Apr 2024 06:08:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rxhPl-0002Ks-2I; Fri, 19 Apr 2024 08:08:01 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rxhPk-00D6gk-Lg; Fri, 19 Apr 2024 08:08:00 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rxhPk-00Arx6-1s;
	Fri, 19 Apr 2024 08:08:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Apr 2024 08:07:58 +0200
Message-Id: <20240419060759.2590652-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_230808_472138_752AF6F3 
X-CRM114-Status: GOOD (  14.70  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] clk: add flags parameter to clk_dump(_one)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently customize dumping by means of a single verbose argument.
Follow-up commit will want to customize the dumping further, so turn
the verbose parameter into a general flags parameter.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/clk.c      |  8 ++++----
 drivers/clk/clk.c   | 28 ++++++++++++++--------------
 include/linux/clk.h |  5 +++--
 3 files changed, 21 insertions(+), 20 deletions(-)

diff --git a/commands/clk.c b/commands/clk.c
index 606519091e86..290acd842e78 100644
--- a/commands/clk.c
+++ b/commands/clk.c
@@ -163,13 +163,13 @@ BAREBOX_CMD_END
 
 static int do_clk_dump(int argc, char *argv[])
 {
-	int opt, verbose = 0;
+	int opt, flags = 0;
 	struct clk *clk;
 
 	while ((opt = getopt(argc, argv, "v")) > 0) {
 		switch(opt) {
 		case 'v':
-			verbose = 1;
+			flags |= CLK_DUMP_VERBOSE;
 			break;
 		default:
 			return -EINVAL;
@@ -178,7 +178,7 @@ static int do_clk_dump(int argc, char *argv[])
 	}
 
 	if (optind == argc) {
-		clk_dump(verbose);
+		clk_dump(flags);
 		return COMMAND_SUCCESS;
 	}
 
@@ -186,7 +186,7 @@ static int do_clk_dump(int argc, char *argv[])
 	if (IS_ERR(clk))
 		return PTR_ERR(clk);
 
-	clk_dump_one(clk, verbose);
+	clk_dump_one(clk, flags);
 
 	return COMMAND_SUCCESS;
 }
diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 03533b61df0a..f9abd3147766 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -1033,7 +1033,7 @@ static const char *clk_parent_name_by_index(struct clk *clk, u8 idx)
 	return "unknown";
 }
 
-static void dump_one(struct clk *clk, int verbose, int indent)
+static void dump_one(struct clk *clk, int flags, int indent)
 {
 	int enabled = clk_is_enabled(clk);
 	const char *hwstat, *stat;
@@ -1051,7 +1051,7 @@ static void dump_one(struct clk *clk, int verbose, int indent)
 	       clk->enable_count,
 	       hwstat);
 
-	if (verbose) {
+	if (flags & CLK_DUMP_VERBOSE) {
 
 		if (clk->num_parents > 1) {
 			int i;
@@ -1063,21 +1063,21 @@ static void dump_one(struct clk *clk, int verbose, int indent)
 	}
 }
 
-static void dump_subtree(struct clk *clk, int verbose, int indent)
+static void dump_subtree(struct clk *clk, int flags, int indent)
 {
 	struct clk *c;
 
-	dump_one(clk, verbose, indent);
+	dump_one(clk, flags, indent);
 
 	list_for_each_entry(c, &clks, list) {
 		struct clk *parent = clk_get_parent(c);
 
 		if (parent == clk)
-			dump_subtree(c, verbose, indent + 1);
+			dump_subtree(c, flags, indent + 1);
 	}
 }
 
-void clk_dump(int verbose)
+void clk_dump(int flags)
 {
 	struct clk *c;
 
@@ -1085,11 +1085,11 @@ void clk_dump(int verbose)
 		struct clk *parent = clk_get_parent(c);
 
 		if (IS_ERR_OR_NULL(parent))
-			dump_subtree(c, verbose, 0);
+			dump_subtree(c, flags, 0);
 	}
 }
 
-static int clk_print_parent(struct clk *clk, int verbose)
+static int clk_print_parent(struct clk *clk, int flags)
 {
 	struct clk *c;
 	int indent;
@@ -1098,29 +1098,29 @@ static int clk_print_parent(struct clk *clk, int verbose)
 	if (IS_ERR_OR_NULL(c))
 		return 0;
 
-	indent = clk_print_parent(c, verbose);
+	indent = clk_print_parent(c, flags);
 
-	dump_one(c, verbose, indent);
+	dump_one(c, flags, indent);
 
 	return indent + 1;
 }
 
-void clk_dump_one(struct clk *clk, int verbose)
+void clk_dump_one(struct clk *clk, int flags)
 {
 	int indent;
 	struct clk *c;
 
-	indent = clk_print_parent(clk, verbose);
+	indent = clk_print_parent(clk, flags);
 
 	printf("\033[1m");
-	dump_one(clk, verbose, indent);
+	dump_one(clk, flags, indent);
 	printf("\033[0m");
 
 	list_for_each_entry(c, &clks, list) {
 		struct clk *parent = clk_get_parent(c);
 
 		if (parent == clk)
-			dump_subtree(c, verbose, indent + 1);
+			dump_subtree(c, flags, indent + 1);
 	}
 }
 
diff --git a/include/linux/clk.h b/include/linux/clk.h
index e4efc2b77044..f2e3a443c20f 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -724,8 +724,9 @@ static inline int clk_hw_register(struct device *dev, struct clk_hw *hw)
 
 struct clk *clk_lookup(const char *name);
 
-void clk_dump(int verbose);
-void clk_dump_one(struct clk *clk, int verbose);
+#define CLK_DUMP_VERBOSE	(1 << 0)
+void clk_dump(int flags);
+void clk_dump_one(struct clk *clk, int flags);
 
 struct clk *clk_register_composite(const char *name,
 			const char * const *parent_names, int num_parents,
-- 
2.39.2



