Delivery-date: Thu, 13 Jun 2024 14:59:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHk2x-005NP7-16
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 14:59:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHk2w-0004Ws-B0
	for lore@pengutronix.de; Thu, 13 Jun 2024 14:59:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PpTbCE6BDKDRuyMbcBaGXbJrkq2Kq7Xcbe1NHtAZp74=; b=a2qR8o/Zebvyu+LVb7C+286roI
	crMdVHKZrlBKtMdzEbMYYwiBLRS6KPDckJ5iticGGhGhoJ1MUBYJ6MyCDzwFjakMQ/WZ/q/pq3AP+
	wiEW8b4IeTR/+A4DWLGSO4BpylaNh9PKyIHJmcapCEqZWykGnXjhCsTu/m+/1KCA5rsvv41/n63ah
	rkoXIqQSk9kJ32Jp6NXP3cLwu8DUucG4LABj4XMxDzxis6Wbx/l3djdhy85jiHIsb7DtCv7Mi4Qjk
	RMum0T9s6xavLuRz4pwDKjp/keP0TNRxpKC7SZ157SIccEiOwR9mQcoqhezANZ1qSE6m+8cRwC5PS
	0KapXoxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHk2D-0000000GbAC-39KG;
	Thu, 13 Jun 2024 12:58:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHk27-0000000Gb4v-0Was
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 12:58:30 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sHk22-00045H-79
	for barebox@lists.infradead.org; Thu, 13 Jun 2024 14:58:22 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 13 Jun 2024 14:58:11 +0200
Message-Id: <20240613125818.30499-5-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240613125818.30499-1-m.felsch@pengutronix.de>
References: <20240613125818.30499-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_055827_272330_B9A1D954 
X-CRM114-Status: GOOD (  13.47  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 04/11] of: overlay: make the pattern match function more generic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The current overlay mechanism can handle files only, so filepattern was
obvious. With the next commit this will change, so overlays can also
supplied via FIT images. To prepare the pattern filter to match FIT
config-nodes make the filter and global variable handling the pattern
more generic by dropping the "file" prefix.

Keep the backward compatibility by still providing the filepattern
filter and the global of.overlay.filepattern variable but notice the
user that the usage of those are deprecated.

No functional change.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/of/overlay.c | 37 ++++++++++++++++++++++++++-----------
 1 file changed, 26 insertions(+), 11 deletions(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 20e12211d63f..f9464cce2b84 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -395,7 +395,7 @@ int of_register_overlay(struct device_node *overlay)
 }
 
 static char *of_overlay_fitconfigpattern;
-static char *of_overlay_filepattern;
+static char *of_overlay_pattern;
 static char *of_overlay_dir;
 static char *of_overlay_basedir;
 
@@ -492,10 +492,10 @@ int of_overlay_register_filter(struct of_overlay_filter *filter)
 }
 
 /**
- * of_overlay_filter_filename - A filter that matches on the filename of
+ * of_overlay_filter_pattern - A filter that matches on the filename or
  *                                an overlay
  * @f: The filter
- * @filename: The filename of the overlay
+ * @pattern: The filename of the overlay
  *
  * This filter matches when the filename matches one of the patterns given
  * in global.of.overlay.filepattern. global.of.overlay.filepattern shall
@@ -503,20 +503,20 @@ int of_overlay_register_filter(struct of_overlay_filter *filter)
  *
  * @return: True when the overlay shall be applied, false otherwise.
  */
-static bool of_overlay_filter_filename(struct of_overlay_filter *f,
-				       const char *filename)
+static bool of_overlay_filter_pattern(struct of_overlay_filter *f,
+				      const char *pattern)
 {
 	char *p, *path, *n;
 	int ret;
 	bool apply;
 
-	p = path = strdup(of_overlay_filepattern);
+	p = path = strdup(of_overlay_pattern);
 
 	while ((n = strsep_unescaped(&p, " "))) {
 		if (!*n)
 			continue;
 
-		ret = fnmatch(n, filename, 0);
+		ret = fnmatch(n, pattern, 0);
 
 		if (!ret) {
 			apply = true;
@@ -531,6 +531,18 @@ static bool of_overlay_filter_filename(struct of_overlay_filter *f,
 	return apply;
 }
 
+static struct of_overlay_filter of_overlay_pattern_filter = {
+	.name = "pattern",
+	.filter_filename = of_overlay_filter_pattern,
+};
+
+static bool of_overlay_filter_filename(struct of_overlay_filter *f,
+				       const char *filename)
+{
+	pr_warn("'filepattern' filter is marked as deprecated, convert to 'pattern' filter\n");
+	return of_overlay_filter_pattern(f, filename);
+}
+
 static struct of_overlay_filter of_overlay_filepattern_filter = {
 	.name = "filepattern",
 	.filter_filename = of_overlay_filter_filename,
@@ -586,16 +598,19 @@ static struct of_overlay_filter of_overlay_compatible_filter = {
 static int of_overlay_init(void)
 {
 	of_overlay_fitconfigpattern = strdup("*.dtbo");
-	of_overlay_filepattern = strdup("*");
-	of_overlay_filter = strdup("filepattern compatible");
+	of_overlay_pattern = strdup("*");
+	of_overlay_filter = strdup("pattern compatible");
 	of_overlay_set_basedir("/");
 
 	globalvar_add_simple_string("of.overlay.compatible", &of_overlay_compatible);
-	globalvar_add_simple_string("of.overlay.filepattern", &of_overlay_filepattern);
+	globalvar_add_simple_string("of.overlay.pattern", &of_overlay_pattern);
 	globalvar_add_simple_string("of.overlay.filter", &of_overlay_filter);
 	globalvar_add_simple_string("of.overlay.dir", &of_overlay_dir);
 	globalvar_add_simple_string("of.overlay.fitconfigpattern", &of_overlay_fitconfigpattern);
 
+	globalvar_alias_deprecated("of.overlay.filepattern", "of.overlay.pattern");
+
+	of_overlay_register_filter(&of_overlay_pattern_filter);
 	of_overlay_register_filter(&of_overlay_filepattern_filter);
 	of_overlay_register_filter(&of_overlay_compatible_filter);
 
@@ -606,7 +621,7 @@ static int of_overlay_init(void)
 device_initcall(of_overlay_init);
 
 BAREBOX_MAGICVAR(global.of.overlay.compatible, "space separated list of compatibles an overlay must match");
-BAREBOX_MAGICVAR(global.of.overlay.filepattern, "space separated list of filepatterns an overlay must match");
+BAREBOX_MAGICVAR(global.of.overlay.pattern, "space separated list of filepatterns an overlay must match");
 BAREBOX_MAGICVAR(global.of.overlay.dir, "Directory to look for dt overlays");
 BAREBOX_MAGICVAR(global.of.overlay.filter, "space separated list of filters");
 BAREBOX_MAGICVAR(global.of.overlay.fitconfigpattern, "FIT config node name pattern to look for dt overlays");
-- 
2.39.2



