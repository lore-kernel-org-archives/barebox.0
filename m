Delivery-date: Wed, 03 Jul 2024 18:59:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP3Kn-001EZr-01
	for lore@lore.pengutronix.de;
	Wed, 03 Jul 2024 18:59:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP3Kl-0005RB-CB
	for lore@pengutronix.de; Wed, 03 Jul 2024 18:59:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Br/96sLQczLv8av28jePIwc7z1CZO9eoUZ5wjSLxux8=; b=D4XMpwtQmijNeYh8pqcc2jQ3R7
	vQyVXGXuNwOO2Xwj3s0koa0vJHppsejf4sWJduiiOoIISKqTEY9ja89pU757iUveeqB6WOF8RXcLc
	yR3XJeqSiLAIkl8kPUl6t2w6lU8LGvLYMZWawi5tb5SHqwh6NfhgiUlrPHMsS90D3byxxVedSB4eI
	97Z93Ekrkw2bZRt2oqZTwGBDJOijcG/jI7IN2nMhkKjoZ0+5wusQcDpc0hLXR3IYKm+swKCfH3eyW
	PAlnbqJ7mCtAfmIdl1gonXDTFAE3I2R/sXGnH1BV2vMqwWCdlIKgp459qLetssHaTUpUS15rLmrjB
	0/RuiT+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP3K2-0000000Av6H-3tfW;
	Wed, 03 Jul 2024 16:59:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP3Jv-0000000Av25-01Dm
	for barebox@lists.infradead.org;
	Wed, 03 Jul 2024 16:59:07 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sP3Jr-0004uJ-CT; Wed, 03 Jul 2024 18:58:59 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 03 Jul 2024 18:58:32 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240703-v2024-05-0-topic-fit-overlay-v3-4-c1fd766fd31d@pengutronix.de>
References: <20240703-v2024-05-0-topic-fit-overlay-v3-0-c1fd766fd31d@pengutronix.de>
In-Reply-To: <20240703-v2024-05-0-topic-fit-overlay-v3-0-c1fd766fd31d@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_095903_179609_C4264E0D 
X-CRM114-Status: GOOD (  10.59  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 04/10] of: overlay: make search dir/path more generic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation of adding support for FIT image overlay handling the
global.of.overlay.dir can be reused if we rename it to a more generic
global.of.overlay.path since it does not imply an directory.

This commit adds the ground work by deprecating the old
global.of.overlay.dir and moving the directory handling into a separate
of_overlay_global_fixup_dir() helper.

No functional change.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/of/overlay.c | 22 ++++++++++++++--------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index f0588076ff10..5617f322ddca 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -395,7 +395,7 @@ int of_register_overlay(struct device_node *overlay)
 }
 
 static char *of_overlay_pattern;
-static char *of_overlay_dir;
+static char *of_overlay_path;
 static char *of_overlay_basedir;
 
 /**
@@ -450,18 +450,18 @@ static int of_overlay_apply_dir(struct device_node *root, const char *dirname,
 	return ret;
 }
 
-static int of_overlay_global_fixup(struct device_node *root, void *data)
+static int of_overlay_global_fixup_dir(struct device_node *root, const char *ovl_dir)
 {
 	char *dir;
 	int ret;
 
-	if (*of_overlay_dir == '/')
-		return of_overlay_apply_dir(root, of_overlay_dir, true);
+	if (*ovl_dir == '/')
+		return of_overlay_apply_dir(root, ovl_dir, true);
 
-	if (*of_overlay_dir == '\0')
+	if (*ovl_dir == '\0')
 		return 0;
 
-	dir = concat_path_file(of_overlay_basedir, of_overlay_dir);
+	dir = concat_path_file(of_overlay_basedir, ovl_dir);
 
 	ret = of_overlay_apply_dir(root, dir, true);
 
@@ -470,6 +470,11 @@ static int of_overlay_global_fixup(struct device_node *root, void *data)
 	return ret;
 }
 
+static int of_overlay_global_fixup(struct device_node *root, void *data)
+{
+	return of_overlay_global_fixup_dir(root, of_overlay_path);
+}
+
 /**
  * of_overlay_register_filter - register a new overlay filter
  * @filter: The new filter
@@ -603,9 +608,10 @@ static int of_overlay_init(void)
 	globalvar_add_simple_string("of.overlay.compatible", &of_overlay_compatible);
 	globalvar_add_simple_string("of.overlay.pattern", &of_overlay_pattern);
 	globalvar_add_simple_string("of.overlay.filter", &of_overlay_filter);
-	globalvar_add_simple_string("of.overlay.dir", &of_overlay_dir);
+	globalvar_add_simple_string("of.overlay.path", &of_overlay_path);
 
 	globalvar_alias_deprecated("of.overlay.filepattern", "of.overlay.pattern");
+	globalvar_alias_deprecated("of.overlay.dir", "of.overlay.path");
 
 	of_overlay_register_filter(&of_overlay_pattern_filter);
 	of_overlay_register_filter(&of_overlay_filepattern_filter);
@@ -619,5 +625,5 @@ device_initcall(of_overlay_init);
 
 BAREBOX_MAGICVAR(global.of.overlay.compatible, "space separated list of compatibles an overlay must match");
 BAREBOX_MAGICVAR(global.of.overlay.pattern, "space separated list of filepatterns an overlay must match");
-BAREBOX_MAGICVAR(global.of.overlay.dir, "Directory to look for dt overlays");
+BAREBOX_MAGICVAR(global.of.overlay.path, "Path to look for dt overlays");
 BAREBOX_MAGICVAR(global.of.overlay.filter, "space separated list of filters");

-- 
2.39.2



