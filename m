Delivery-date: Wed, 20 Aug 2025 12:30:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uog5L-002aSh-1b
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 12:30:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uog5K-0007bp-2O
	for lore@pengutronix.de; Wed, 20 Aug 2025 12:30:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EuIAK5Q6vvQS6WYUQoqxxcCovzi5drNJwulaOr9orUY=; b=nxg7gMKxa5oGP2RsU+KPVimgAg
	NcCF7uLZHzzzWgW8j0Co/ZzCN+BqopLIu0rSykH5WUmrsSXC11liFiPTvgjO+sZ4UvHBflZGgu3NH
	nc4/1Ic7AZMLa0rU3S1+z/JY5DuXiS0Uw+9gDa4bR8x7m26mSei2A+j9GGA/qqgMJg34OD0rsIMPg
	Qz/xJX640KbjfmT3QWRYRpUuw5DOIJTy7WyCbbP+jp0eG+kWH6j1uoWISWu6KCNHE/ezaB6B98e4I
	sLgNcYAhRrtphsNWWaHOXatGZitoqrJoLurKDCrxev9u9N1fQebhqUDEwUtBb1IqydutMOjfoDlnq
	HajtIsUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uog4k-0000000D9JA-16y2;
	Wed, 20 Aug 2025 10:29:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofQx-0000000D0qR-38SU
	for barebox@bombadil.infradead.org;
	Wed, 20 Aug 2025 09:48:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=EuIAK5Q6vvQS6WYUQoqxxcCovzi5drNJwulaOr9orUY=; b=VvMCnlixqTmQ/yPlfPGuOPmNLa
	FnXT/la1ByTxbRcWKL31tziGJ/NX3glo3HTRRAOOUdikAusYzVUOrqV+5wJyb1v81MCjWcBb2D6uj
	O9+n5mgXc9hS7WtsbGCIGC8NUNg+0XvFdMHJqitdUwo49aK8cX6VJgl3OAHj1AzwmWfkk8D4ycYnS
	mccYsi86JI3obLxfiholJh9rXKAR6hF85f/uLnFDGKWQhvS5A+BxP3ua2ib6VT3QYZvkP7ecGv9Yv
	pX7QERIF2/ZeBTzCvOIpfZVnfXJQ2LW+w2IiOmcf8F+prGfWpReXNZQZsIgCSUBSN0FIPJuhM4HED
	roZdAMmw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uofQt-00000000HWW-1YkD
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 09:48:42 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uofQq-0000DY-DH; Wed, 20 Aug 2025 11:48:36 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 20 Aug 2025 11:48:35 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-v2024-05-0-topic-fit-overlay-v6-3-9d1b3bab2ee2@pengutronix.de>
References: <20250820-v2024-05-0-topic-fit-overlay-v6-0-9d1b3bab2ee2@pengutronix.de>
In-Reply-To: <20250820-v2024-05-0-topic-fit-overlay-v6-0-9d1b3bab2ee2@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_104839_581047_1D6B704D 
X-CRM114-Status: GOOD (  14.37  )
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
Subject: [PATCH v6 03/12] of: overlay: make the pattern match function more
 generic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The current overlay mechanism can handle files only, so filepattern was
an obvious name.

Drop the "file" prefix to prepare the codebase to handle overlays
supplied via a FIT images as well.

Keep the backward compatibility by still providing the filepattern
filter and the global of.overlay.filepattern variable, but mark them as
deprecated.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 Documentation/user/devicetree.rst |  6 +++---
 drivers/of/overlay.c              | 37 ++++++++++++++++++++++++++-----------
 2 files changed, 29 insertions(+), 14 deletions(-)

diff --git a/Documentation/user/devicetree.rst b/Documentation/user/devicetree.rst
index ea2945ab2b564a10a780ba0055daa37ed0c85581..ef04e14f7c0dde579493425073f1ee01395f0d8c 100644
--- a/Documentation/user/devicetree.rst
+++ b/Documentation/user/devicetree.rst
@@ -118,15 +118,15 @@ the kernel. The behaviour is controlled by different variables:
   these compatibles will be applied. When this list is empty then all overlays
   will be applied. Overlays that don't have a compatible are considered being
   always compatible.
-``global.of.overlay.filepattern``
+``global.of.overlay.pattern``
   This is a space separated list of file patterns. An overlay is only applied
   when its filename matches one of the patterns. The patterns can contain
   ``*`` and ``?`` as wildcards. The default is ``*`` which means all files are
   applied.
 ``global.of.overlay.filter``
   This is a space separated list of filters to apply. There are two generic filters:
-  ``filepattern`` matches ``global.of.overlay.filepattern`` above, ``compatible`` matches
-  ``global.of.overlay.compatible`` above. The default is ``filepattern compatible``
+  ``pattern`` matches ``global.of.overlay.pattern`` above, ``compatible`` matches
+  ``global.of.overlay.compatible`` above. The default is ``pattern compatible``
   which means the two generic filters are active. This list may be replaced or
   supplemented by board specific filters.
 
diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 6944dd4a744de909c89622322c99b81fc046e43b..a63cca1b47e74615d4453a27a55fb15d1f706fae 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -407,7 +407,7 @@ int of_register_overlay(struct device_node *overlay)
 	return of_register_fixup(of_overlay_fixup, overlay);
 }
 
-static char *of_overlay_filepattern;
+static char *of_overlay_pattern;
 static char *of_overlay_dir;
 static char *of_overlay_basedir;
 
@@ -504,10 +504,10 @@ int of_overlay_register_filter(struct of_overlay_filter *filter)
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
@@ -515,20 +515,20 @@ int of_overlay_register_filter(struct of_overlay_filter *filter)
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
 
 	while ((n = strsep_unescaped(&p, " ", NULL))) {
 		if (!*n)
 			continue;
 
-		ret = fnmatch(n, filename, 0);
+		ret = fnmatch(n, pattern, 0);
 
 		if (!ret) {
 			apply = true;
@@ -543,6 +543,18 @@ static bool of_overlay_filter_filename(struct of_overlay_filter *f,
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
@@ -597,15 +609,18 @@ static struct of_overlay_filter of_overlay_compatible_filter = {
 
 static int of_overlay_init(void)
 {
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
 
+	globalvar_alias_deprecated("of.overlay.filepattern", "of.overlay.pattern");
+
+	of_overlay_register_filter(&of_overlay_pattern_filter);
 	of_overlay_register_filter(&of_overlay_filepattern_filter);
 	of_overlay_register_filter(&of_overlay_compatible_filter);
 
@@ -616,6 +631,6 @@ static int of_overlay_init(void)
 device_initcall(of_overlay_init);
 
 BAREBOX_MAGICVAR(global.of.overlay.compatible, "space separated list of compatibles an overlay must match");
-BAREBOX_MAGICVAR(global.of.overlay.filepattern, "space separated list of filepatterns an overlay must match");
+BAREBOX_MAGICVAR(global.of.overlay.pattern, "space separated list of filepatterns an overlay must match");
 BAREBOX_MAGICVAR(global.of.overlay.dir, "Directory to look for dt overlays");
 BAREBOX_MAGICVAR(global.of.overlay.filter, "space separated list of filters");

-- 
2.39.5



