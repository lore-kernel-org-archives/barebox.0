Delivery-date: Fri, 19 Apr 2024 08:08:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rxhQg-007470-27
	for lore@lore.pengutronix.de;
	Fri, 19 Apr 2024 08:08:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rxhQf-00039Z-U0
	for lore@pengutronix.de; Fri, 19 Apr 2024 08:08:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JSMPPu2Z6TUJWMaHcbr6DybahHDwWd8fKy5cKC7Rqho=; b=yITB7ex1fmda3ENffn5T8GVKYd
	/bCAdPuvfhGKJ61jzAwsmG0VvKhhAvGuU1CXad9A7FYN1mvvrpjUzWXH2k4VukG+FLdcCNr7H/Cb/
	AMO+D0MhAWeyADhWC+gSEk5oDQYKtmPGJaE+FKEDS1M9vj/yJRrk8ZvENGOWEb7D7exq0J0E9B77S
	dGOn7CgUJc8F81kRH/rRmmFoR2wlrL1iVoePLQqTsLkEzHuLv5VzSssifJeYEOrU4aBNg4Ox50kBt
	TXOkkc+MZ3u4+yFFvvvDvpfjdUvs5CleyqHuCiCdPfwPOZFqXqHwxYg55D1+D6/eK6RUabR+b+la7
	CIbVYtbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxhQ0-00000004XkI-0wPo;
	Fri, 19 Apr 2024 06:08:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxhPs-00000004Xg8-18kn
	for barebox@lists.infradead.org;
	Fri, 19 Apr 2024 06:08:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rxhPl-0002Kt-3P; Fri, 19 Apr 2024 08:08:01 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rxhPk-00D6gl-N9; Fri, 19 Apr 2024 08:08:00 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rxhPk-00Arx6-21;
	Fri, 19 Apr 2024 08:08:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Apr 2024 08:07:59 +0200
Message-Id: <20240419060759.2590652-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240419060759.2590652-1-a.fatoum@pengutronix.de>
References: <20240419060759.2590652-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_230808_329720_37CE201E 
X-CRM114-Status: GOOD (  16.05  )
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
Subject: [PATCH 2/2] commands: clk_dump: add json output option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This formats the clock tree and the enable_count and rate of each clock
into the JSON format. This is useful to run validation scripts against
it that were originally written for Linux' /sys/kernel/debug/clk/clk_dump.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/clk.c      |  8 ++++--
 drivers/clk/clk.c   | 65 ++++++++++++++++++++++++++++++++++++++-------
 include/linux/clk.h |  1 +
 3 files changed, 63 insertions(+), 11 deletions(-)

diff --git a/commands/clk.c b/commands/clk.c
index 290acd842e78..210b61306a2e 100644
--- a/commands/clk.c
+++ b/commands/clk.c
@@ -166,11 +166,14 @@ static int do_clk_dump(int argc, char *argv[])
 	int opt, flags = 0;
 	struct clk *clk;
 
-	while ((opt = getopt(argc, argv, "v")) > 0) {
+	while ((opt = getopt(argc, argv, "vj")) > 0) {
 		switch(opt) {
 		case 'v':
 			flags |= CLK_DUMP_VERBOSE;
 			break;
+		case 'j':
+			flags |= CLK_DUMP_JSON;
+			break;
 		default:
 			return -EINVAL;
 
@@ -194,12 +197,13 @@ static int do_clk_dump(int argc, char *argv[])
 BAREBOX_CMD_HELP_START(clk_dump)
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-v",  "verbose")
+BAREBOX_CMD_HELP_OPT ("-j",  "json output")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(clk_dump)
 	.cmd		= do_clk_dump,
 	BAREBOX_CMD_DESC("show information about registered clocks")
-	BAREBOX_CMD_OPTS("[-v] [clkname]")
+	BAREBOX_CMD_OPTS("[-vj] [clkname]")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_HELP(cmd_clk_dump_help)
 	BAREBOX_CMD_COMPLETE(clk_name_complete)
diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index f9abd3147766..4c09c4e322f5 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -1033,7 +1033,7 @@ static const char *clk_parent_name_by_index(struct clk *clk, u8 idx)
 	return "unknown";
 }
 
-static void dump_one(struct clk *clk, int flags, int indent)
+static void dump_one_summary(struct clk *clk, int flags, int indent)
 {
 	int enabled = clk_is_enabled(clk);
 	const char *hwstat, *stat;
@@ -1063,6 +1063,32 @@ static void dump_one(struct clk *clk, int flags, int indent)
 	}
 }
 
+static void dump_one_json(struct clk *clk, int flags, int indent)
+{
+	printf("\"%s\": { \"rate\": %lu,\"enable_count\": %d",
+	       clk->name,
+	       clk_get_rate(clk),
+	       clk->enable_count);
+}
+
+static void dump_one(struct clk *clk, int flags, int indent)
+{
+	if (flags & CLK_DUMP_JSON)
+		dump_one_json(clk, flags, indent);
+	else
+		dump_one_summary(clk, flags, indent);
+}
+
+static inline bool json_puts(const char *str, int flags)
+{
+	if (flags & CLK_DUMP_JSON) {
+		puts(str);
+		return true;
+	}
+
+	return false;
+}
+
 static void dump_subtree(struct clk *clk, int flags, int indent)
 {
 	struct clk *c;
@@ -1072,21 +1098,34 @@ static void dump_subtree(struct clk *clk, int flags, int indent)
 	list_for_each_entry(c, &clks, list) {
 		struct clk *parent = clk_get_parent(c);
 
-		if (parent == clk)
+		if (parent == clk) {
+			json_puts(",", flags);
 			dump_subtree(c, flags, indent + 1);
+		}
 	}
+
+	json_puts("}", flags);
 }
 
 void clk_dump(int flags)
 {
+	bool first_node = true;
 	struct clk *c;
 
+	json_puts("{", flags);
+
 	list_for_each_entry(c, &clks, list) {
 		struct clk *parent = clk_get_parent(c);
 
-		if (IS_ERR_OR_NULL(parent))
+		if (IS_ERR_OR_NULL(parent)) {
+			if (!first_node)
+				json_puts(",", flags);
+			first_node = false;
 			dump_subtree(c, flags, 0);
+		}
 	}
+
+	json_puts("}\n", flags);
 }
 
 static int clk_print_parent(struct clk *clk, int flags)
@@ -1107,21 +1146,29 @@ static int clk_print_parent(struct clk *clk, int flags)
 
 void clk_dump_one(struct clk *clk, int flags)
 {
-	int indent;
+	int indent = 0;
 	struct clk *c;
 
-	indent = clk_print_parent(clk, flags);
+	if (json_puts("{", flags)) {
+		dump_one(clk, flags, indent);
+	} else {
+		indent = clk_print_parent(clk, flags);
 
-	printf("\033[1m");
-	dump_one(clk, flags, indent);
-	printf("\033[0m");
+		printf("\033[1m");
+		dump_one(clk, flags, indent);
+		printf("\033[0m");
+	}
 
 	list_for_each_entry(c, &clks, list) {
 		struct clk *parent = clk_get_parent(c);
 
-		if (parent == clk)
+		if (parent == clk) {
+			json_puts(",", flags);
 			dump_subtree(c, flags, indent + 1);
+		}
 	}
+
+	json_puts("}}\n", flags);
 }
 
 int clk_name_complete(struct string_list *sl, char *instr)
diff --git a/include/linux/clk.h b/include/linux/clk.h
index f2e3a443c20f..c467bcf8ddda 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -725,6 +725,7 @@ static inline int clk_hw_register(struct device *dev, struct clk_hw *hw)
 struct clk *clk_lookup(const char *name);
 
 #define CLK_DUMP_VERBOSE	(1 << 0)
+#define CLK_DUMP_JSON		(1 << 1)
 void clk_dump(int flags);
 void clk_dump_one(struct clk *clk, int flags);
 
-- 
2.39.2



