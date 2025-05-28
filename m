Delivery-date: Wed, 28 May 2025 13:14:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKEjv-001AOF-2n
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 13:14:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKEjv-0000iK-5C
	for lore@pengutronix.de; Wed, 28 May 2025 13:14:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XDeayu/+lCBAarg1wbqzPu5vNFiMgPkCaRU3stNpfUU=; b=tYLhXzFLCcKzLPk1FxPaf1/FSM
	q9L86C9ZkXpXfdPklpYno8Q42LT+8W6ANICKAazLjytSRCFVSXaSop2TQQHLsN36gM7rwoGQZHRxl
	IEqTRNlBntcxfaqNxniJN8So8LfNqK5yuvWM63svksAuZb2QAUMdPewbIZCrUgb0h94U5thow+orP
	SEAYEAPLY/t6GGrykz5Iu5lLSoxErJOoA16xZqaGlSe2rU+5y0tRkualHNAslnmLD42ODn25G1KW+
	s43rJbfMlL0SeHuwyvkfJhRj5ZQazLEeZuALtk3h+WetuBSIwvzmtHoo8HiYPR3DxsodAOWyf5zOw
	N20w+zWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEj7-0000000Cwzp-1yWa;
	Wed, 28 May 2025 11:13:41 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEXz-0000000Cvy4-39SV
	for barebox@bombadil.infradead.org;
	Wed, 28 May 2025 11:02:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=XDeayu/+lCBAarg1wbqzPu5vNFiMgPkCaRU3stNpfUU=; b=XdbXdwdw0fEq8kv+XfYatMcOd+
	2l6/yHufALs4Ih4mKaTThf0tRsOTPHlkYdcHQnrHS3th7epXNB61cuMMxNbcq4KQOZK5dnGY/hDPM
	nqzB+kasSpWWj8xXzarmCp1mYYx0yu6V6JJX7LjRDNC/6acQB1VDkaWKXDVh3t29ohyVkjqEAOUqT
	OBR4GlfCPpTKUx/l/jcewHZ6olPRQxXWqsSzmkaGH7vHsgGZ+MQKHtWNGp22MrvmG85bPZHyQTNkt
	/MXIbg/iMFJ7Kq8a5zsXKWMTkTYULE9DgNGuNuk2Z2Favqr1MFetooruvWsHTTx+mgQTzdCk6hLF1
	iNN3MUBw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEXw-0000000DXDs-2wAT
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 11:02:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-0001py-QS; Wed, 28 May 2025 13:01:58 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-000ZhL-1s;
	Wed, 28 May 2025 13:01:58 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-00DuY0-1a;
	Wed, 28 May 2025 13:01:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 May 2025 12:50:45 +0200
Message-Id: <20250528105046.3270397-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250528105046.3270397-1-a.fatoum@pengutronix.de>
References: <20250528105046.3270397-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_120208_790094_093BF202 
X-CRM114-Status: GOOD (  16.41  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 09/10] commands: oftree: add option to return device tree without fixups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When extracting the barebox device tree to use as argument to bootm when
BOOTM_OFTREE_FALLBACK is disabled, we will not want to apply fixups
twice, so add to oftree a -S option that just flattens the barebox
device tree as-is.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig  |  8 ++++----
 commands/oftree.c | 14 +++++++++-----
 common/oftree.c   | 22 ++++++++++++----------
 include/of.h      | 14 ++++++++++++--
 4 files changed, 37 insertions(+), 21 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 0f3155d123ab..7b84ef70e875 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2530,13 +2530,13 @@ config CMD_OFTREE
 	help
 	  oftree - handle device trees
 
-	  Usage: oftree [-lspf] [DTB]
+	  Usage: oftree [-lsSp]
 
 	  Options:
-		  -l		Load DTB to internal device tree
-		  -s		save internal device tree to DTB
+		  -l <DTB>	Load <DTB> to internal device tree
+		  -s <DTB>	save internal device tree with fixups to <DTB>
+		  -S <DTB>	save internal device tree without fixups to <DTB>
 		  -p		probe devices from stored device tree
-		  -f		free stored device tree
 
 config CMD_TIME
 	bool "time"
diff --git a/commands/oftree.c b/commands/oftree.c
index 3adc660a77e0..b172aee9e074 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -32,13 +32,13 @@ static int do_oftree(int argc, char *argv[])
 {
 	struct fdt_header *fdt = NULL;
 	int opt;
-	int probe = 0;
+	int probe = 0, fixup = 0;
 	char *load = NULL;
 	char *save = NULL;
 	int ret;
 	struct device_node *root;
 
-	while ((opt = getopt(argc, argv, "pfl:s:")) > 0) {
+	while ((opt = getopt(argc, argv, "pfl:s:S:")) > 0) {
 		switch (opt) {
 		case 'l':
 			load = optarg;
@@ -52,6 +52,9 @@ static int do_oftree(int argc, char *argv[])
 			}
 			break;
 		case 's':
+			fixup = 1;
+			fallthrough;
+		case 'S':
 			save = optarg;
 			break;
 		}
@@ -61,7 +64,7 @@ static int do_oftree(int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 
 	if (save) {
-		fdt = of_get_fixed_tree(NULL);
+		fdt = of_get_flattened_tree(NULL, fixup);
 		if (!fdt) {
 			printf("no devicetree available\n");
 			ret = -EINVAL;
@@ -102,14 +105,15 @@ static int do_oftree(int argc, char *argv[])
 BAREBOX_CMD_HELP_START(oftree)
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-l <DTB>",  "Load <DTB> to internal devicetree")
-BAREBOX_CMD_HELP_OPT ("-s <DTB>",  "save internal devicetree to <DTB>")
+BAREBOX_CMD_HELP_OPT ("-s <DTB>",  "save internal devicetree after fixups to <DTB>")
+BAREBOX_CMD_HELP_OPT ("-S <DTB>",  "save internal devicetree without fixups to <DTB>")
 BAREBOX_CMD_HELP_OPT ("-p",  "probe devices from stored device tree")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(oftree)
 	.cmd		= do_oftree,
 	BAREBOX_CMD_DESC("handle device trees")
-	BAREBOX_CMD_OPTS("[-lsp]")
+	BAREBOX_CMD_OPTS("[-lsSp]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_oftree_help)
 BAREBOX_CMD_END
diff --git a/common/oftree.c b/common/oftree.c
index b9a854c786f6..58e96c39d897 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -413,15 +413,14 @@ void of_fix_tree(struct device_node *node)
 }
 
 /*
- * Get the fixed fdt. This function uses the fdt input pointer
+ * Get the fdt. This function uses the fdt input pointer
  * if provided or the barebox internal devicetree if not.
- * It increases the size of the tree and applies the registered
- * fixups.
  */
-struct fdt_header *of_get_fixed_tree(const struct device_node *node)
+struct fdt_header *of_get_flattened_tree(const struct device_node *node,
+					 bool fixup)
 {
 	struct fdt_header *fdt = NULL;
-	struct device_node *np;
+	struct device_node *np = NULL;
 
 	if (!node) {
 		node = of_get_root_node();
@@ -429,16 +428,19 @@ struct fdt_header *of_get_fixed_tree(const struct device_node *node)
 			return NULL;
 	}
 
-	np = of_dup(node);
+	if (fixup)
+		node = np = of_dup(node);
 
-	if (!np)
+	if (!node)
 		return NULL;
 
-	of_fix_tree(np);
+	if (fixup)
+		of_fix_tree(np);
 
-	fdt = of_flatten_dtb(np);
+	fdt = of_flatten_dtb((struct device_node *)node);
 
-	of_delete_node(np);
+	if (fixup)
+		of_delete_node(np);
 
 	return fdt;
 }
diff --git a/include/of.h b/include/of.h
index a9bd37fdca2f..f08ac8ccca69 100644
--- a/include/of.h
+++ b/include/of.h
@@ -323,7 +323,7 @@ extern const char *of_parse_phandle_and_get_alias_from(struct device_node *root,
 						       int index);
 
 extern struct device_node *of_get_root_node(void);
-extern struct fdt_header *of_get_fixed_tree(const struct device_node *node);
+extern struct fdt_header *of_get_flattened_tree(const struct device_node *node, bool fixup);
 extern int of_set_root_node(struct device_node *node);
 extern int barebox_register_of(struct device_node *root);
 extern int barebox_register_fdt(const void *dtb);
@@ -466,7 +466,7 @@ static inline struct device_node *of_get_root_node(void)
 	return NULL;
 }
 
-static inline struct fdt_header *of_get_fixed_tree(const struct device_node *node)
+static inline struct fdt_header *of_get_flattened_tree(const struct device_node *node, bool fixup)
 {
 	return NULL;
 }
@@ -1358,6 +1358,16 @@ static inline struct device_node *of_find_root_node(struct device_node *node)
 	return node;
 }
 
+/*
+ * Get the fixed fdt. This function uses the fdt input pointer
+ * if provided or the barebox internal devicetree if not.
+ * It increases the size of the tree and applies the registered
+ * fixups.
+ */
+static inline struct fdt_header *of_get_fixed_tree(const struct device_node *node)
+{
+	return of_get_flattened_tree(node, true);
+}
 
 static inline struct fdt_header *of_get_fixed_tree_for_boot(const struct device_node *node)
 {
-- 
2.39.5



