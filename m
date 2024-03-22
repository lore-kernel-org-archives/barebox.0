Delivery-date: Fri, 22 Mar 2024 17:50:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rni6O-0007P9-0j
	for lore@lore.pengutronix.de;
	Fri, 22 Mar 2024 17:50:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rni6N-0002W5-Gb
	for lore@pengutronix.de; Fri, 22 Mar 2024 17:50:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o0yzG7ysYAF+10EWcETgcs3C5xKCgsRLOM9ZrEq/U3k=; b=uYB/YMO7knxm0Nm+c2akE4N5rT
	OHicG7qrpghZ23wu1pRrcS7VBsmOXLLBx1/SjaFXc8XIPLIE61oM6C0OK5601jAdrEXawIdilCAbR
	zhIS6ZYApf8XYuopWwnJcbstVBg9ozO5Lmfro3J8ub69dqDv8Q+SZb4usluduiLth8WXcANJRUNYK
	s0HkEyliqN8tQg9QdSxrD0L+9jKzsMqUUv+WtyUkLwbvPebbjjc2Gn7N+LRNyXXGs9rKQ2AWpd9mU
	LiYJaRxkw/4nfh0J2+nZSolLy1H2CU5bLA+f6xaAOJ4FtpZql231TL4MKqkMGgzNSFvSGKsDDBlto
	99DGnK0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rni5v-000000081LQ-3FNl;
	Fri, 22 Mar 2024 16:50:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rni5d-00000008172-08vf
	for barebox@lists.infradead.org;
	Fri, 22 Mar 2024 16:50:01 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rni5b-0001y5-Tk
	for barebox@lists.infradead.org; Fri, 22 Mar 2024 17:49:55 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 22 Mar 2024 17:49:53 +0100
Message-Id: <20240322164953.1772129-8-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240322164953.1772129-1-m.felsch@pengutronix.de>
References: <20240322164953.1772129-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_094957_225450_2910BF2A 
X-CRM114-Status: GOOD (  15.63  )
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
Subject: [PATCH 8/8] of: overlay: replace filename with an more unique name
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
index 150b07daccaa..964b56db2337 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -233,12 +233,12 @@ static struct of_overlay_filter *of_overlay_find_filter(const char *name)
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
@@ -255,14 +255,16 @@ static bool of_overlay_matches_filter(const char *filename, struct device_node *
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
@@ -285,11 +287,11 @@ static bool of_overlay_matches_filter(const char *filename, struct device_node *
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
@@ -297,12 +299,12 @@ static bool of_overlay_matches_filter(const char *filename, struct device_node *
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
@@ -576,14 +578,15 @@ static int of_overlay_global_fixup(struct device_node *root, void *data)
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
@@ -633,7 +636,7 @@ static bool of_overlay_filter_pattern(struct of_overlay_filter *f,
 
 static struct of_overlay_filter of_overlay_pattern_filter = {
 	.name = "pattern",
-	.filter_filename = of_overlay_filter_pattern,
+	.filter_pattern = of_overlay_filter_pattern,
 };
 
 static bool of_overlay_filter_filename(struct of_overlay_filter *f,
@@ -645,7 +648,7 @@ static bool of_overlay_filter_filename(struct of_overlay_filter *f,
 
 static struct of_overlay_filter of_overlay_filepattern_filter = {
 	.name = "filepattern",
-	.filter_filename = of_overlay_filter_filename,
+	.filter_pattern = of_overlay_filter_filename,
 };
 
 /**
diff --git a/include/of.h b/include/of.h
index 19b8e7c038a4..9aace82b32ea 100644
--- a/include/of.h
+++ b/include/of.h
@@ -1248,7 +1248,8 @@ static inline struct device_node *of_find_root_node(struct device_node *node)
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



