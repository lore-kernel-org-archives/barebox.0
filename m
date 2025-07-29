Delivery-date: Tue, 29 Jul 2025 17:35:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugmMD-004y4G-1g
	for lore@lore.pengutronix.de;
	Tue, 29 Jul 2025 17:35:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugmMB-0008Tp-OJ
	for lore@pengutronix.de; Tue, 29 Jul 2025 17:35:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8ZLNv5fa/AiXgitacTHtN0YIjPM0xjBRILjj+d8DjK0=; b=Dc9XcOLI4OiZQmW82iJ0VDtbfb
	YkhkB0wag9elK7QwO5Jbd5mUVN782LOFTn3Tu1ICacmCgBb5YxF3rFL8xAhmiC5bZvIzFkIef34JJ
	t2rt6ZQ5Bpc88qLrMcfOXgIiUH/4GrBZFRJT08XkwVUYEltw0iRGGwZFWmpewDp2xceeucKSeje0l
	9pURgp24XVChkghrjEQARbKQJhjFmbjoQor0csng7u5+ZYC+YuQ+vFRIqZ+GKeNC/rsexVb6qRZTN
	SMzmmjvvDo2muEDx0qKE97cqv/k6U2bOinmpc++261gppBd6dwJSrPyyQ8bqDSymp0P1nuO4Jxn2f
	rsu8/ytg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugmLe-0000000H93g-0qar;
	Tue, 29 Jul 2025 15:34:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugmLW-0000000H8vu-1C2z
	for barebox@lists.infradead.org;
	Tue, 29 Jul 2025 15:34:33 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1ugmLT-0007q6-PL; Tue, 29 Jul 2025 17:34:27 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Tue, 29 Jul 2025 17:34:33 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250729-v2024-05-0-topic-fit-overlay-v4-8-af3ad99acde2@pengutronix.de>
References: <20250729-v2024-05-0-topic-fit-overlay-v4-0-af3ad99acde2@pengutronix.de>
In-Reply-To: <20250729-v2024-05-0-topic-fit-overlay-v4-0-af3ad99acde2@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_083430_382114_02BB87C0 
X-CRM114-Status: GOOD (  16.02  )
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
Subject: [PATCH v4 08/11] of: overlay: replace filename with an more unique
 name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since FIT image overlays and file/dir based overlays are supported,
'filename' based variables or function hooks are no longer sufficient.

Rename them to 'pattern' based variables or function hooks. The
filter_filename function hook is still supported, to keep the backward
compatibility, but marked as deprecated.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/of/overlay.c | 39 +++++++++++++++++++++------------------
 include/of.h         |  3 ++-
 2 files changed, 23 insertions(+), 19 deletions(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 604ce0998cd8044cca59c40e65f4e9b95bec6112..33a12bd758700baef2d516b22a5445b9e53787d1 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -235,12 +235,12 @@ static struct of_overlay_filter *of_overlay_find_filter(const char *name)
 	return NULL;
 }
 
-static bool of_overlay_matches_filter(const char *filename, struct device_node *ovl)
+static bool of_overlay_matches_filter(const char *pattern, struct device_node *ovl)
 {
 	struct of_overlay_filter *filter;
 	char *p, *path, *n;
 	bool apply = false;
-	bool have_filename_filter = false;
+	bool have_pattern_filter = false;
 	bool have_content_filter = false;
 
 	p = path = strdup(of_overlay_filter);
@@ -257,14 +257,16 @@ static bool of_overlay_matches_filter(const char *filename, struct device_node *
 			continue;
 		}
 
-		if (filter->filter_filename)
-			have_filename_filter = true;
+		if (filter->filter_pattern || filter->filter_filename)
+			have_pattern_filter = true;
 		if (filter->filter_content)
 			have_content_filter = true;
 
-		if (filename) {
-			if (filter->filter_filename &&
-			    filter->filter_filename(filter, kbasename(filename)))
+		if (pattern) {
+			if ((filter->filter_pattern &&
+			     filter->filter_pattern(filter, kbasename(pattern))) ||
+			    (filter->filter_filename &&
+			     filter->filter_filename(filter, kbasename(pattern))))
 				score++;
 		} else {
 			score++;
@@ -287,11 +289,11 @@ static bool of_overlay_matches_filter(const char *filename, struct device_node *
 	free(path);
 
 	/* No filter found at all, no match */
-	if (!have_filename_filter && !have_content_filter)
+	if (!have_pattern_filter && !have_content_filter)
 		return false;
 
-	/* Want to match filename, but we do not have a filename_filter */
-	if (filename && !have_filename_filter)
+	/* Want to match pattern, but we do not have a filename_filter */
+	if (pattern && !have_pattern_filter)
 		return true;
 
 	/* Want to match content, but we do not have a content_filter */
@@ -299,12 +301,12 @@ static bool of_overlay_matches_filter(const char *filename, struct device_node *
 		return true;
 
 	if (apply)
-		pr_debug("filename %s, overlay %p: match against filter %s\n",
-			 filename ?: "<NONE>",
+		pr_debug("pattern %s, overlay %p: match against filter %s\n",
+			 pattern ?: "<NONE>",
 			 ovl, filter->name);
 	else
-		pr_debug("filename %s, overlay %p: no match\n",
-			 filename ?: "<NONE>", ovl);
+		pr_debug("pattern %s, overlay %p: no match\n",
+			 pattern ?: "<NONE>", ovl);
 
 	return apply;
 }
@@ -602,14 +604,15 @@ static int of_overlay_global_fixup(struct device_node *root, void *data)
  * @filter: The new filter
  *
  * Register a new overlay filter. A filter can either match on
- * the filename or on the content of an overlay, but not on both.
+ * a pattern or on the content of an overlay, but not on both.
  * If that's desired two filters have to be registered.
  *
  * @return: 0 for success, negative error code otherwise
  */
 int of_overlay_register_filter(struct of_overlay_filter *filter)
 {
-	if (filter->filter_filename && filter->filter_content)
+	if ((filter->filter_pattern || filter->filter_filename) &&
+	    filter->filter_content)
 		return -EINVAL;
 
 	list_add_tail(&filter->list, &of_overlay_filters);
@@ -659,7 +662,7 @@ static bool of_overlay_filter_pattern(struct of_overlay_filter *f,
 
 static struct of_overlay_filter of_overlay_pattern_filter = {
 	.name = "pattern",
-	.filter_filename = of_overlay_filter_pattern,
+	.filter_pattern = of_overlay_filter_pattern,
 };
 
 static bool of_overlay_filter_filename(struct of_overlay_filter *f,
@@ -671,7 +674,7 @@ static bool of_overlay_filter_filename(struct of_overlay_filter *f,
 
 static struct of_overlay_filter of_overlay_filepattern_filter = {
 	.name = "filepattern",
-	.filter_filename = of_overlay_filter_filename,
+	.filter_pattern = of_overlay_filter_filename,
 };
 
 /**
diff --git a/include/of.h b/include/of.h
index 2258cd501b727797ac00fc4cce1a6fdcfc529d44..1c7c0c867700fcf1aa2316ed1e1702b93aa13011 100644
--- a/include/of.h
+++ b/include/of.h
@@ -1384,7 +1384,8 @@ static inline struct device_node *of_dup_root_node_for_boot(void)
 }
 
 struct of_overlay_filter {
-	bool (*filter_filename)(struct of_overlay_filter *, const char *filename);
+	bool (*filter_filename)(struct of_overlay_filter *, const char *filename); /* deprecated */
+	bool (*filter_pattern)(struct of_overlay_filter *, const char *pattern);
 	bool (*filter_content)(struct of_overlay_filter *, struct device_node *);
 	const char *name;
 	struct list_head list;

-- 
2.39.5



