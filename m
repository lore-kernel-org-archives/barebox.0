Delivery-date: Mon, 04 Mar 2024 20:09:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDgl-008dd6-0L
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:09:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDgj-0004NH-Jy
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:09:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SqAyQpRGxilBKUPIyUCV7JR+hKumsLryGpsAdV3N4x0=; b=JYIXNs1hB2Tdyv6hhbm3hOnQuR
	fE2pZbNH/tiH5bbgvRbzTNTLLZNxQe3lAOb+yT7Cjux4GXenVW07sKQoATYUm/icLEAMtJf6ZNDwB
	3znB9NgXk6iWBUSnfq0SMSWnQm/VunZxrrXgppl6gjdg/c2AdIE2zLZbhz+jcIFcZAu0QedoypmM9
	HKyAkK5XuezUXt2E2SOp/+TMYfLv4TnPQKFWJ+ru8Y8P7zOZG4HbnG4N8RYLdxeb1tHpl6WVO+yAG
	BLui6A6XtCZNIoa5MMYnpji5TIrNn7EXtqiXWjuJ/P2Z0nCl37nHU7FHL6SHU2qS9tcSJ3gWPYSwf
	3FwUz0cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDg9-0000000AMLK-1hR4;
	Mon, 04 Mar 2024 19:08:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaZ-0000000AIZF-11xu
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=SqAyQpRGxilBKUPIyUCV7JR+hKumsLryGpsAdV3N4x0=; b=Rmw++sJ665zy1MAEhm2MdH4+8D
	o2gxd/qLWUOmoOtVaqqO4obRa2/E8+CJ0Blgmuoo7FpHwez/c2FruuP2aVfG0nlQkOz4Gal8WosgG
	QlxleySgT/z3OO90dhoOU0sLkC29M5hEtCzmq+oL6/2UYE2xY7mdNM0sOln2ebnxsnP6dBvKh3v7I
	TRn7fMdu+9EkQKn6ZksBnOVIudER4mqt/7irGKsBDw93EzSyuAvXRtFuYX8jZDSjr3QWIoxuoemMT
	Mp5rMmsa8H4MbbHbTSBgXEdWs9fHBsRJHR2SWazH/qUOxRSvQRJS580m3cFTo7/EDR2wksuu1pUFL
	1YMCUI5Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaR-000000051vm-4AkG
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaH-0006Bh-H3; Mon, 04 Mar 2024 20:02:45 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaH-004PKn-0T; Mon, 04 Mar 2024 20:02:45 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYJ-00Ed9V-1h;
	Mon, 04 Mar 2024 20:00:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:58:55 +0100
Message-Id: <20240304190038.3486881-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190256_064614_C9282EC6 
X-CRM114-Status: GOOD (  11.75  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 010/113] of: don't report failure to of_read_file twice
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
index bb4c156d686d..6e5ddfd22beb 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -400,10 +400,8 @@ static int efi_late_init(void)
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



