Delivery-date: Fri, 04 Mar 2022 07:26:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nQ1OD-00HHff-H8
	for lore@lore.pengutronix.de; Fri, 04 Mar 2022 07:26:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nQ1OB-00064d-RW
	for lore@pengutronix.de; Fri, 04 Mar 2022 07:26:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gy/0JLxKb8Aq3Va9kFDoL4AggEmQyb92g6Bv2MtnQoc=; b=0/623gCmrrqiM0
	shpUuZjlT0eGk5Te2JGIMhJIYAG+X4lGMojNryhPvzFDXt8tBVDwfwB14iLfFSRvE41h0/xHFhfwE
	8NZjV7f3ExNHjydKK4ayR5QsAwsTclQmRJTPjPKQdUqpjID5AIeMgaFP7MjdBOTBhxyFfUtvohzWz
	KI6zSUzfktdUXcKxKZUB7enDniGUiE3LWuk4bRERKqr3MTmD35Y6y0PMl3TfdyHKe+BAGnM8mHoy1
	2IuUuzwIPSKeZ1QX6Q6VUKwc2Y+CKGg/bRyQgMbF4f2uIiMlGV8/mmVApDAMeM33HfjAdFLEMcGJe
	hm9rQrODuTXCAn7yhEuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQ1Mo-008ceF-N8; Fri, 04 Mar 2022 06:24:42 +0000
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQ1Me-008ccR-GE
 for barebox@lists.infradead.org; Fri, 04 Mar 2022 06:24:34 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id 3098692D70; Fri,  4 Mar 2022 07:24:28 +0100 (CET)
Received: from localhost (unknown
 [IPv6:2001:9e8:216d:8301:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id 0532592D68;
 Fri,  4 Mar 2022 07:24:26 +0100 (CET)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Fri,  4 Mar 2022 07:24:13 +0100
Message-Id: <20220304062412.1248657-4-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220304062412.1248657-1-r.czerwinski@pengutronix.de>
References: <20220304062412.1248657-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_222432_939008_7C3274A1 
X-CRM114-Status: GOOD (  17.79  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [RFC Patch 3/3] blspec: allow setting compatible depth
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In some cases its desirable to not only evaluate the first compatible of
the barebox device tree against the bootspec device tree, but following
compatibles as well. This is the case if fallback needs to be
implemented for older device trees which use a different compatible.
Allow setting the compatible depth by board code.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 common/blspec.c  | 99 +++++++++++++++++++++++++++++++-----------------
 include/blspec.h |  2 +-
 2 files changed, 65 insertions(+), 36 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index c1b1991338..4713a2157f 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -22,6 +22,8 @@
 #include <linux/err.h>
 #include <mtd/ubi-user.h>
 
+static unsigned int compatible_depth = 1;
+
 /*
  * blspec_entry_var_set - set a variable to a value
  */
@@ -32,6 +34,11 @@ int blspec_entry_var_set(struct blspec_entry *entry, const char *name,
 			val ? strlen(val) + 1 : 0, 1);
 }
 
+void blspec_set_compatible_depth(unsigned int depth)
+{
+	compatible_depth = depth;
+}
+
 static int blspec_overlay_fixup(struct device_node *root, void *ctx)
 {
 	struct blspec_entry *entry = ctx;
@@ -542,6 +549,10 @@ int blspec_scan_directory(struct bootentries *bootentries, const char *root)
 	struct list_head entry_list;
 	struct blspec_list_entry *lentry;
 	struct blspec_list_entry *temp;
+	struct device_node *barebox_root;
+	struct property *prop;
+	const char *compat;
+	int depth;
 
 	INIT_LIST_HEAD(&entry_list);
 
@@ -611,51 +622,69 @@ int blspec_scan_directory(struct bootentries *bootentries, const char *root)
 		lentry->entry = entry;
 		lentry->name = d->d_name;
 
-		list_add_sort(&entry_list, &lentry->list, compare);
+		list_add_sort(&lentry->list, &entry_list, compare);
 	}
 
-	list_for_each_entry_safe(lentry, temp, &entry_list, list) {
-		char *devname = NULL, *hwdevname = NULL;
+	barebox_root = of_get_root_node();
 
-		entry = lentry->entry;
+	prop = of_find_property(barebox_root, "compatible", NULL);
 
-		if (!entry_is_of_compatible(entry, of_get_machine_compatible())) {
-			blspec_entry_free(&entry->entry);
-			list_del(&lentry->list);
-			free(lentry);
-			continue;
-		}
+	compat = of_prop_next_string(prop, NULL);
+	depth = compatible_depth;
+	do {
+		list_for_each_entry_safe(lentry, temp, &entry_list, list) {
+			char *devname = NULL, *hwdevname = NULL;
 
-		if (!entry_is_match_machine_id(entry)) {
-			blspec_entry_free(&entry->entry);
-			list_del(&lentry->list);
-			free(lentry);
-			continue;
-		}
+			entry = lentry->entry;
 
-		found++;
+			if (!entry_is_of_compatible(entry, compat)) {
+				if (depth == 1) {
+					blspec_entry_free(&entry->entry);
+					list_del(&lentry->list);
+					free(lentry);
+				}
+				continue;
+			}
 
-		if (entry->cdev && entry->cdev->dev) {
-			devname = xstrdup(dev_name(entry->cdev->dev));
-			if (entry->cdev->dev->parent)
-				hwdevname = xstrdup(dev_name(entry->cdev->dev->parent));
-		}
+			if (!entry_is_match_machine_id(entry)) {
+				if (depth == 1) {
+					blspec_entry_free(&entry->entry);
+					list_del(&lentry->list);
+					free(lentry);
+				}
+				continue;
+			}
 
-		entry->entry.title = xasprintf("%s (%s)", blspec_entry_var_get(entry, "title"),
-					       entry->configpath);
-		entry->entry.description = basprintf("blspec entry, device: %s hwdevice: %s",
-						    devname ? devname : "none",
-						    hwdevname ? hwdevname : "none");
-		free(devname);
-		free(hwdevname);
+			found++;
 
-		entry->entry.me.type = MENU_ENTRY_NORMAL;
-		entry->entry.release = blspec_entry_free;
+			if (entry->cdev && entry->cdev->dev) {
+				devname = xstrdup(dev_name(entry->cdev->dev));
+				if (entry->cdev->dev->parent)
+					hwdevname = xstrdup(dev_name(entry->cdev->dev->parent));
+			}
 
-		bootentries_add_entry(bootentries, &entry->entry);
-		list_del(&lentry->list);
-		free(lentry);
-	}
+			entry->entry.title = xasprintf("%s (%s)", blspec_entry_var_get(entry, "title"),
+						       entry->configpath);
+			entry->entry.description = basprintf("blspec entry, device: %s hwdevice: %s",
+							     devname ? devname : "none",
+							     hwdevname ? hwdevname : "none");
+			free(devname);
+			free(hwdevname);
+
+			entry->entry.me.type = MENU_ENTRY_NORMAL;
+			entry->entry.release = blspec_entry_free;
+
+			bootentries_add_entry(bootentries, &entry->entry);
+			list_del(&lentry->list);
+			free(lentry);
+		}
+
+		compat = of_prop_next_string(prop, compat);
+		if (!compat)
+			break;
+
+		depth--;
+	} while (depth > 0);
 
 	ret = found;
 
diff --git a/include/blspec.h b/include/blspec.h
index 37076cd47c..f499ad8b2d 100644
--- a/include/blspec.h
+++ b/include/blspec.h
@@ -23,5 +23,5 @@ int blspec_scan_devices(struct bootentries *bootentries);
 int blspec_scan_device(struct bootentries *bootentries, struct device_d *dev);
 int blspec_scan_devicename(struct bootentries *bootentries, const char *devname);
 int blspec_scan_directory(struct bootentries *bootentries, const char *root);
-
+void blspec_set_compatible_depth(unsigned int depth);
 #endif /* __LOADER_H__ */
-- 
2.35.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

