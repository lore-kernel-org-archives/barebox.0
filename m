Delivery-date: Tue, 02 May 2023 13:16:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptnzy-002EQq-3R
	for lore@lore.pengutronix.de; Tue, 02 May 2023 13:16:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptnzv-0002pu-PQ
	for lore@pengutronix.de; Tue, 02 May 2023 13:16:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=diSD43Y90GPkKaLd0RC9vqlHtssKE6Yno3Bh2yW5xqg=; b=I+MfvHHdseFyv8XmswFo9OaJAq
	NlxU64lYq4R9hy8nfY+0PrEp5diRpNrnIAvE1SMOdUuKlX5IB1F54PRK1zBw9DQpnajx6tXk5S8F1
	WYyw0WTIEzwmta+tvi+ER5ptmYN0uBMDhTY3TtUUao9Hv+b7LdwFqg6/xZTws+cfuSlWjFGcthnGx
	LYcXy3hcGHtZUIMXBJqb8SPqwnj8pswg9cu1QINn3mkpyYEFUWccFUEWzqFomAMf60y44lzjeFRna
	hw2/H0p4/9KpKflTkWpgqu40S3iH+4JAl6T817pP6UUwNeplk/gS7j4btW+YSpMqmVZftnTB8nlXd
	MMaDvruA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptnyZ-001Byc-2k;
	Tue, 02 May 2023 11:15:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptnyV-001Bxo-2t
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 11:15:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptnyU-0002UQ-F2; Tue, 02 May 2023 13:15:14 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptnyT-000a1V-RH; Tue, 02 May 2023 13:15:13 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptnyT-001ufj-0S; Tue, 02 May 2023 13:15:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 13:15:12 +0200
Message-Id: <20230502111512.455556-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_041516_091947_6D6424CC 
X-CRM114-Status: GOOD (  20.25  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] of: add function to read a file as unflattened device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There are several places in the tree that read in a dtb file
and unflatten it. Add a of_read_file() helper function for that
and use it where appropriately.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/of_diff.c            | 13 +------------
 commands/of_display_timings.c | 26 ++++----------------------
 commands/of_dump.c            | 15 ++-------------
 commands/of_overlay.c         | 15 ++++-----------
 commands/oftree.c             | 16 ++++------------
 common/blspec.c               | 11 +----------
 common/efi/payload/init.c     | 24 ++++--------------------
 drivers/of/base.c             | 27 +++++++++++++++++++++++++++
 drivers/of/overlay.c          | 11 +----------
 include/of.h                  |  1 +
 10 files changed, 49 insertions(+), 110 deletions(-)

diff --git a/commands/of_diff.c b/commands/of_diff.c
index 6a78263200..19a4a26d20 100644
--- a/commands/of_diff.c
+++ b/commands/of_diff.c
@@ -16,9 +16,6 @@
 static struct device_node *get_tree(const char *filename, struct device_node *root)
 {
 	struct device_node *node;
-	void *fdt;
-	size_t size;
-	int ret;
 
 	if (!strcmp(filename, "-")) {
 		node = of_get_root_node();
@@ -40,15 +37,7 @@ static struct device_node *get_tree(const char *filename, struct device_node *ro
 		return node;
 	}
 
-	ret = read_file_2(filename, &size, &fdt, FILESIZE_MAX);
-	if (ret)
-		return ERR_PTR(ret);
-
-	node = of_unflatten_dtb(fdt, size);
-
-	free(fdt);
-
-	return node;
+	return of_read_file(filename);
 }
 
 static int do_of_diff(int argc, char *argv[])
diff --git a/commands/of_display_timings.c b/commands/of_display_timings.c
index aab57b17d6..1fb0c4eb00 100644
--- a/commands/of_display_timings.c
+++ b/commands/of_display_timings.c
@@ -67,29 +67,11 @@ static int do_of_display_timings(int argc, char *argv[])
 
 	/* Check if external dtb given */
 	if (dtbfile) {
-		void *fdt;
-		size_t size;
-
-		fdt = read_file(dtbfile, &size);
-		if (!fdt) {
-			pr_err("unable to read %s: %s\n", dtbfile,
-				strerror(errno));
-			return -errno;
-		}
-
-		if (file_detect_type(fdt, size) != filetype_oftree) {
-			pr_err("%s is not a oftree file.\n", dtbfile);
-			free(fdt);
-			return -EINVAL;
-		}
-
-		root = of_unflatten_dtb(fdt, size);
-
-		free(fdt);
-
-		if (IS_ERR(root))
+		root = of_read_file(dtbfile);
+		if (IS_ERR(root)) {
+			printf("Cannot open %s: %pe\n", dtbfile, root);
 			return PTR_ERR(root);
-
+		}
 	} else {
 		root = of_get_root_node();
 	}
diff --git a/commands/of_dump.c b/commands/of_dump.c
index c2ca8485cd..86755ff1e4 100644
--- a/commands/of_dump.c
+++ b/commands/of_dump.c
@@ -37,7 +37,6 @@ static int do_of_dump(int argc, char *argv[])
 	int fix = 0;
 	struct device_node *root = NULL, *node, *of_free = NULL;
 	char *dtbfile = NULL;
-	size_t size;
 	const char *nodename;
 	unsigned maxpropsize = ~0;
 	int names_only = 0, properties_only = 0;
@@ -72,19 +71,9 @@ static int do_of_dump(int argc, char *argv[])
 		nodename = argv[optind];
 
 	if (dtbfile) {
-		void *fdt;
-
-		fdt = read_file(dtbfile, &size);
-		if (!fdt) {
-			printf("unable to read %s: %s\n", dtbfile, strerror(errno));
-			return -errno;
-		}
-
-		root = of_unflatten_dtb(fdt, size);
-
-		free(fdt);
-
+		root = of_read_file(dtbfile);
 		if (IS_ERR(root)) {
+			printf("Cannot open %s: %pe\n", dtbfile, root);
 			ret = PTR_ERR(root);
 			goto out;
 		}
diff --git a/commands/of_overlay.c b/commands/of_overlay.c
index b0ca57749b..fda9115a82 100644
--- a/commands/of_overlay.c
+++ b/commands/of_overlay.c
@@ -15,9 +15,7 @@
 static int do_of_overlay(int argc, char *argv[])
 {
 	int ret;
-	struct fdt_header *fdt;
 	struct device_node *overlay;
-	size_t size;
 	bool live_tree = false;
 	int opt;
 
@@ -37,16 +35,11 @@ static int do_of_overlay(int argc, char *argv[])
 		return 1;
 	}
 
-	fdt = read_file(argv[optind], &size);
-	if (!fdt) {
-		printf("cannot read %s\n", argv[optind]);
-		return 1;
-	}
-
-	overlay = of_unflatten_dtb(fdt, size);
-	free(fdt);
-	if (IS_ERR(overlay))
+	overlay = of_read_file(argv[optind]);
+	if (IS_ERR(overlay)) {
+		printf("Cannot open %s: %pe\n", argv[optind], overlay);
 		return PTR_ERR(overlay);
+	}
 
 	if (live_tree) {
 		ret = of_overlay_apply_tree(of_get_root_node(), overlay);
diff --git a/commands/oftree.c b/commands/oftree.c
index 7d4b08c9d3..7b12c86e1d 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -31,7 +31,6 @@
 static int do_oftree(int argc, char *argv[])
 {
 	struct fdt_header *fdt = NULL;
-	size_t size;
 	int opt;
 	int probe = 0;
 	char *load = NULL;
@@ -76,18 +75,11 @@ static int do_oftree(int argc, char *argv[])
 	}
 
 	if (load) {
-		fdt = read_file(load, &size);
-		if (!fdt) {
-			printf("unable to read %s\n", load);
-			return 1;
-		}
-
-		root = of_unflatten_dtb(fdt, size);
-
-		free(fdt);
-
-		if (IS_ERR(root))
+		root = of_read_file(load);
+		if (IS_ERR(root)) {
+			printf("Cannot open %s: %pe\n", load, root);
 			return PTR_ERR(root);
+		}
 
 		ret = of_set_root_node(root);
 		if (ret) {
diff --git a/common/blspec.c b/common/blspec.c
index 55785fa97d..197ccb2b07 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -427,7 +427,6 @@ static bool entry_is_of_compatible(struct blspec_entry *entry)
 	const char *devicetree;
 	const char *abspath;
 	size_t size;
-	void *fdt = NULL;
 	int ret;
 	struct device_node *root = NULL, *barebox_root;
 	const char *compat;
@@ -457,14 +456,7 @@ static bool entry_is_of_compatible(struct blspec_entry *entry)
 
 	filename = basprintf("%s/%s", abspath, devicetree);
 
-	fdt = read_file(filename, &size);
-	if (!fdt) {
-		pr_err("Cannot read: %s\n", filename);
-		ret = false;
-		goto out;
-	}
-
-	root = of_unflatten_dtb(fdt, size);
+	root = of_read_file(filename);
 	if (IS_ERR(root)) {
 		ret = false;
 		root = NULL;
@@ -485,7 +477,6 @@ out:
 	if (root)
 		of_delete_node(root);
 	free(filename);
-	free(fdt);
 
 	return ret;
 }
diff --git a/common/efi/payload/init.c b/common/efi/payload/init.c
index 3ee5d66d60..b990b54b26 100644
--- a/common/efi/payload/init.c
+++ b/common/efi/payload/init.c
@@ -322,31 +322,15 @@ static int efi_late_init(void)
 	state_desc = xasprintf("/boot/EFI/barebox/state.dtb");
 
 	if (state_desc) {
-		void *fdt;
-		size_t size;
 		struct device_node *root = NULL;
 		struct device_node *np = NULL;
 		struct state *state;
 
-		fdt = read_file(state_desc, &size);
-		if (!fdt) {
-			pr_err("unable to read %s: %s\n", state_desc,
-			       strerror(errno));
-			return -errno;
-		}
-
-		if (file_detect_type(fdt, size) != filetype_oftree) {
-			pr_err("%s is not an oftree file.\n", state_desc);
-			free(fdt);
-			return -EINVAL;
-		}
-
-		root = of_unflatten_dtb(fdt, size);
-
-		free(fdt);
-
-		if (IS_ERR(root))
+		root = of_read_file(state_desc);
+		if (IS_ERR(root)) {
+			printf("Cannot open %s: %pe\n", state_desc, root);
 			return PTR_ERR(root);
+		}
 
 		ret = barebox_register_of(root);
 		if (ret)
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 5644e8e953..918d5e0c53 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -17,6 +17,7 @@
 #include <linux/sizes.h>
 #include <of_graph.h>
 #include <string.h>
+#include <libfile.h>
 #include <linux/clk.h>
 #include <linux/ctype.h>
 #include <linux/err.h>
@@ -2892,6 +2893,32 @@ int of_device_disable_by_alias(const char *alias)
 	return of_device_disable(node);
 }
 
+struct device_node *of_read_file(const char *filename)
+{
+	void *fdt;
+	size_t size;
+	struct device_node *root;
+
+	fdt = read_file(filename, &size);
+	if (!fdt) {
+		pr_err("unable to read %s: %s\n", filename,
+			strerror(errno));
+		return ERR_PTR(-errno);
+	}
+
+	if (IS_ENABLED(CONFIG_FILETYPE) && file_detect_type(fdt, size) != filetype_oftree) {
+		pr_err("%s is not a flat device tree file.\n", filename);
+		root = ERR_PTR(-EINVAL);
+		goto out;
+	}
+
+	root = of_unflatten_dtb(fdt, size);
+out:
+	free(fdt);
+
+       return root;
+}
+
 /**
  * of_get_reproducible_name() - get a reproducible name of a node
  * @node: The node to get a name from
diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 9d112b67f1..223ebb318b 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -308,22 +308,13 @@ static bool of_overlay_matches_filter(const char *filename, struct device_node *
 int of_overlay_apply_file(struct device_node *root, const char *filename,
 			  bool filter)
 {
-	void *fdt;
 	struct device_node *ovl;
-	size_t size;
 	int ret;
 
 	if (filter && !of_overlay_matches_filter(filename, NULL))
 		return 0;
 
-	ret = read_file_2(filename, &size, &fdt, FILESIZE_MAX);
-	if (ret)
-		return ret;
-
-	ovl = of_unflatten_dtb(fdt, size);
-
-	free(fdt);
-
+	ovl = of_read_file(filename);
 	if (IS_ERR(ovl)) {
 		pr_err("Failed to unflatten %s: %pe\n", filename, ovl);
 		return PTR_ERR(ovl);
diff --git a/include/of.h b/include/of.h
index 4b0266fd31..c631a24c5f 100644
--- a/include/of.h
+++ b/include/of.h
@@ -116,6 +116,7 @@ int of_diff(struct device_node *a, struct device_node *b, int indent);
 int of_probe(void);
 int of_parse_dtb(struct fdt_header *fdt);
 struct device_node *of_unflatten_dtb(const void *fdt, int size);
+struct device_node *of_read_file(const char *filename);
 struct device_node *of_unflatten_dtb_const(const void *infdt, int size);
 
 int of_fixup_reserved_memory(struct device_node *node, void *data);
-- 
2.39.2



