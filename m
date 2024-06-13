Delivery-date: Thu, 13 Jun 2024 16:04:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHl3j-005P0V-0K
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 16:04:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHl3i-0003Nj-AA
	for lore@pengutronix.de; Thu, 13 Jun 2024 16:04:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aFrf6Zz0MPzEc6GTKXHy0Hz1K6BaxLtU0qm5vlwSbY8=; b=n6kIrB1vySQvw6ivvelZ+ZsRkI
	AXu7q5zO6Qq/XmaUD6XHi0ZM5ZXhHoOriazY+6q7lSIBqYmA9tDv1FCkneZllc1m9zCLgMoh2PYq3
	d4lYC8yMFBKrV36OXxEiRHZl2I2g+UtAjQdmhfXlhLSUxlOr5KGrIHI9gp4QXzQk4oIAqdDmhMmmJ
	9+1mkRIs26S6Ade9OvqJ22rmsDF1Wo07Sb61hZCfcZQ/H1JAIzkgywc6LfGs17BWPy5M3fW8j0kzr
	/EgRyDDvc6MEfalbGsaWNly92t4GRchO+2lcMOGnZEqJbEKt3/Wp5MffWFG4uAi5pgaGznYmpkffg
	WaBImJMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHl3P-0000000Gs1I-3fZl;
	Thu, 13 Jun 2024 14:03:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHk27-0000000Gb50-09hp
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 12:58:28 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sHk22-00045H-C4
	for barebox@lists.infradead.org; Thu, 13 Jun 2024 14:58:22 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 13 Jun 2024 14:58:16 +0200
Message-Id: <20240613125818.30499-10-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240613125818.30499-1-m.felsch@pengutronix.de>
References: <20240613125818.30499-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_055827_096972_1290DEA5 
X-CRM114-Status: GOOD (  15.54  )
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
	T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH v2 09/11] of: overlay: replace filename with an more unique name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since we do support FIT image overlays and file/dir based overlays the
filename variable is not sufficient anylonger. Therefore rename the
local variables as well as the filter function to hook.

To not break any systems keep the old filename based name too but mark
them as deprecated.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/of/overlay.c | 39 +++++++++++++++++++++------------------
 include/of.h         |  3 ++-
 2 files changed, 23 insertions(+), 19 deletions(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index dad4e05ca27f..90e5ebcf6765 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -234,12 +234,12 @@ static struct of_overlay_filter *of_overlay_find_filter(const char *name)
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
@@ -256,14 +256,16 @@ static bool of_overlay_matches_filter(const char *filename, struct device_node *
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
@@ -286,11 +288,11 @@ static bool of_overlay_matches_filter(const char *filename, struct device_node *
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
@@ -298,12 +300,12 @@ static bool of_overlay_matches_filter(const char *filename, struct device_node *
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
@@ -581,14 +583,15 @@ static int of_overlay_global_fixup(struct device_node *root, void *data)
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
@@ -638,7 +641,7 @@ static bool of_overlay_filter_pattern(struct of_overlay_filter *f,
 
 static struct of_overlay_filter of_overlay_pattern_filter = {
 	.name = "pattern",
-	.filter_filename = of_overlay_filter_pattern,
+	.filter_pattern = of_overlay_filter_pattern,
 };
 
 static bool of_overlay_filter_filename(struct of_overlay_filter *f,
@@ -650,7 +653,7 @@ static bool of_overlay_filter_filename(struct of_overlay_filter *f,
 
 static struct of_overlay_filter of_overlay_filepattern_filter = {
 	.name = "filepattern",
-	.filter_filename = of_overlay_filter_filename,
+	.filter_pattern = of_overlay_filter_filename,
 };
 
 /**
diff --git a/include/of.h b/include/of.h
index f99cff5cf54a..34cb535e1924 100644
--- a/include/of.h
+++ b/include/of.h
@@ -1298,7 +1298,8 @@ static inline struct device_node *of_find_root_node(struct device_node *node)
 }
 
 struct of_overlay_filter {
-	bool (*filter_filename)(struct of_overlay_filter *, const char *filename);
+	bool (*filter_filename)(struct of_overlay_filter *, const char *filename); /* deprecated */
+	bool (*filter_pattern)(struct of_overlay_filter *, const char *pattern);
 	bool (*filter_content)(struct of_overlay_filter *, struct device_node *);
 	char *name;
 	struct list_head list;
-- 
2.39.2



