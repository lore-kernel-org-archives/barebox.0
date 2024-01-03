Delivery-date: Wed, 03 Jan 2024 19:36:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66h-002OEp-2b
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:36:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66c-00085T-0p
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:36:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7pszoGdH1mNQxhHIdyQEB/h9WXHKL9kVN6yEYd2GXqQ=; b=gJUmv1i13CDWJUmtPMWo30cDev
	MIIh1JzIdLVsmZWAb96s1A6IHZm0VuvjqE8qOBH66pO4cbmCaMMC4fikyc1Zk7BvPbU4ju7fd5Ya6
	g5pIpwzWuD/1FqiHPCOQR1SW93z7PFb+MIDdV6k7KqTVJuxM/Wq3IT9csXhipzQahiRg5rvsvN18Y
	rcivAvBIaBb88l68FN7BsgLVwKpX9kNdrUDFH/WMsZu5R0Ny9L4XdrmXvgkdaNrRgTcP/tRcycy0O
	OB5Se5dkTy4V4zV8fagK056keGfyRYuTAA1yTuyhrxptsMUIRs6or0CHx2z9VBRCwPyI59gIyAnv6
	Yw/AM98g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL64w-00Blez-0O;
	Wed, 03 Jan 2024 18:34:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61M-00BhQl-2s
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=7pszoGdH1mNQxhHIdyQEB/h9WXHKL9kVN6yEYd2GXqQ=; b=cV8XpS1X1W6tkRf91kRyenUUF5
	QokUlzH6cUS3z8s/8ToSBiBeoxzqBpQpvU7c3O48ACe9n6emLhr8R4sD2Z+4qgW6k+TYJwMaM+Kf+
	SXoIMxqeTzxSA82e9W2A93V8ufqnm+yCxa8fWzN9xP8Ixj/loIa2nv0BaVb/C+x/19VZcsW0lNs/6
	CEluSdm7y5uCrrAUFib1TklUqKiHSh5F/KEQZsYtaU2fFCHBpHcZkJImmPBEalnKE4NA+wtMB6BkB
	POuqDwLIEPzsBrw6C1HMWVZLgTiBo64CitSDADP/pr/g6Zur//hF+CR5ZSnnCYQqsytdXAxWVS0a6
	HmplQdXQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61E-005eCO-1H
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL612-0001ah-Iz; Wed, 03 Jan 2024 19:30:56 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL612-000AwQ-5b; Wed, 03 Jan 2024 19:30:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k1-001j4X-1K;
	Wed, 03 Jan 2024 19:13:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:30 +0100
Message-Id: <20240103181312.409668-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183108_598916_858041ED 
X-CRM114-Status: GOOD (  11.42  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 010/112] of: don't report failure to of_read_file twice
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

of_read_file already prints to log messages when it fails, so
duplicating the error message in the caller is needlessly verbose.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/of_diff.c            | 5 ++---
 commands/of_display_timings.c | 4 +---
 commands/of_overlay.c         | 4 +---
 commands/oftree.c             | 4 +---
 drivers/of/overlay.c          | 4 +---
 efi/payload/init.c            | 4 +---
 6 files changed, 7 insertions(+), 18 deletions(-)

diff --git a/commands/of_diff.c b/commands/of_diff.c
index 8b19c093ddab..623b033c7323 100644
--- a/commands/of_diff.c
+++ b/commands/of_diff.c
@@ -19,15 +19,14 @@ static struct device_node *get_tree(const char *filename, struct device_node *ro
 
 	if (!strcmp(filename, "-")) {
 		node = of_dup(root) ?: ERR_PTR(-ENOENT);
+		if (IS_ERR(node))
+			printf("Cannot duplicate live tree: %pe\n", node);
 	} else if (!strcmp(filename, "+")) {
 		return NULL;
 	} else {
 		node = of_read_file(filename);
 	}
 
-	if (IS_ERR(node))
-		printf("Cannot read %s: %pe\n", filename, node);
-
 	return node;
 }
 
diff --git a/commands/of_display_timings.c b/commands/of_display_timings.c
index 4cc79ec88d7e..232074fce786 100644
--- a/commands/of_display_timings.c
+++ b/commands/of_display_timings.c
@@ -68,10 +68,8 @@ static int do_of_display_timings(int argc, char *argv[])
 	/* Check if external dtb given */
 	if (dtbfile) {
 		root = of_read_file(dtbfile);
-		if (IS_ERR(root)) {
-			printf("Cannot open %s: %pe\n", dtbfile, root);
+		if (IS_ERR(root))
 			return PTR_ERR(root);
-		}
 	} else {
 		root = of_get_root_node();
 	}
diff --git a/commands/of_overlay.c b/commands/of_overlay.c
index fda9115a8201..2013c4b27867 100644
--- a/commands/of_overlay.c
+++ b/commands/of_overlay.c
@@ -36,10 +36,8 @@ static int do_of_overlay(int argc, char *argv[])
 	}
 
 	overlay = of_read_file(argv[optind]);
-	if (IS_ERR(overlay)) {
-		printf("Cannot open %s: %pe\n", argv[optind], overlay);
+	if (IS_ERR(overlay))
 		return PTR_ERR(overlay);
-	}
 
 	if (live_tree) {
 		ret = of_overlay_apply_tree(of_get_root_node(), overlay);
diff --git a/commands/oftree.c b/commands/oftree.c
index 7b12c86e1dc3..76227a10b033 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -76,10 +76,8 @@ static int do_oftree(int argc, char *argv[])
 
 	if (load) {
 		root = of_read_file(load);
-		if (IS_ERR(root)) {
-			printf("Cannot open %s: %pe\n", load, root);
+		if (IS_ERR(root))
 			return PTR_ERR(root);
-		}
 
 		ret = of_set_root_node(root);
 		if (ret) {
diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 2d2367fc101b..73c7a91db9b5 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -315,10 +315,8 @@ int of_overlay_apply_file(struct device_node *root, const char *filename,
 		return 0;
 
 	ovl = of_read_file(filename);
-	if (IS_ERR(ovl)) {
-		pr_err("Failed to unflatten %s: %pe\n", filename, ovl);
+	if (IS_ERR(ovl))
 		return PTR_ERR(ovl);
-	}
 
 	if (filter && !of_overlay_matches_filter(NULL, ovl))
 		return 0;
diff --git a/efi/payload/init.c b/efi/payload/init.c
index ffa466e3ad44..caab28741cc5 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -399,10 +399,8 @@ static int efi_late_init(void)
 		struct state *state;
 
 		root = of_read_file(state_desc);
-		if (IS_ERR(root)) {
-			printf("Cannot open %s: %pe\n", state_desc, root);
+		if (IS_ERR(root))
 			return PTR_ERR(root);
-		}
 
 		ret = barebox_register_of(root);
 		if (ret)
-- 
2.39.2



