Delivery-date: Fri, 22 Mar 2024 17:50:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rni6F-0007Md-1B
	for lore@lore.pengutronix.de;
	Fri, 22 Mar 2024 17:50:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rni6E-0002OY-JK
	for lore@pengutronix.de; Fri, 22 Mar 2024 17:50:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+IFDuPP9HownOdwpdm90y7deX3Q35/73XLnVeHJOtLo=; b=OaRWT/Rnls8E4bx1J0Aq8RhQG2
	uzG2ZSlFyqUpt76u3XTSzXJP0dDjV/gTFdlBzMpikrCqxTUxINtOYBqUbfh9KKw6dYXo3Ispg6/PV
	GVFQbnu8GpB8SZaMNOMch0weET4MB0JwV5UHZGmg4Rv7sCvB7AcgINIBWCIGAYpaFHwFzt7N/pHDm
	l8QGG1JbhEfuvcSGQWEOfUJ9lHUXY0MivOWKYxEgMm9cvhRQES38Mm9roLI29lD2sIXNymrjLLny1
	SnEgzCf0lDlxQPBTT64RZ2t83iac7ZFM/IWXRiEdKIkD0vAeep4dIwVXIbys4hUgWnOIqoX0cFtXj
	TNpaO1BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rni5i-000000081Al-02uM;
	Fri, 22 Mar 2024 16:50:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rni5c-0000000816v-3akk
	for barebox@lists.infradead.org;
	Fri, 22 Mar 2024 16:49:59 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rni5b-0001y5-Ow
	for barebox@lists.infradead.org; Fri, 22 Mar 2024 17:49:55 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 22 Mar 2024 17:49:48 +0100
Message-Id: <20240322164953.1772129-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240322164953.1772129-1-m.felsch@pengutronix.de>
References: <20240322164953.1772129-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_094956_981499_F4AFF6BB 
X-CRM114-Status: GOOD (  13.46  )
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
Subject: [PATCH 3/8] of: overlay: make the pattern match function more generic
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
index 27dc6443b237..b688e708c382 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -397,7 +397,7 @@ int of_register_overlay(struct device_node *overlay)
 }
 
 static char *of_overlay_fitconfigpattern;
-static char *of_overlay_filepattern;
+static char *of_overlay_pattern;
 static char *of_overlay_dir;
 static char *of_overlay_basedir;
 
@@ -494,10 +494,10 @@ int of_overlay_register_filter(struct of_overlay_filter *filter)
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
@@ -505,20 +505,20 @@ int of_overlay_register_filter(struct of_overlay_filter *filter)
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
@@ -533,6 +533,18 @@ static bool of_overlay_filter_filename(struct of_overlay_filter *f,
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
@@ -588,16 +600,19 @@ static struct of_overlay_filter of_overlay_compatible_filter = {
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
 
@@ -608,7 +623,7 @@ static int of_overlay_init(void)
 device_initcall(of_overlay_init);
 
 BAREBOX_MAGICVAR(global.of.overlay.compatible, "space separated list of compatibles an overlay must match");
-BAREBOX_MAGICVAR(global.of.overlay.filepattern, "space separated list of filepatterns an overlay must match");
+BAREBOX_MAGICVAR(global.of.overlay.pattern, "space separated list of filepatterns an overlay must match");
 BAREBOX_MAGICVAR(global.of.overlay.dir, "Directory to look for dt overlays");
 BAREBOX_MAGICVAR(global.of.overlay.filter, "space separated list of filters");
 BAREBOX_MAGICVAR(global.of.overlay.fitconfigpattern, "FIT config node name pattern to look for dt overlays");
-- 
2.39.2



