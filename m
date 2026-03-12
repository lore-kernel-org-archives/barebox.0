Delivery-date: Thu, 12 Mar 2026 16:03:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hZE-00Arg5-2c
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 16:03:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0hZE-0000ZD-W2
	for lore@pengutronix.de; Thu, 12 Mar 2026 16:03:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QGZhBU6l7lRORtUlVwx4gr7ArS3lJEKMTREbOivPm8M=; b=LJz4fkGCwt+HW55ff+OI2A03qG
	5AdonpUKSxpaXZCvbmIIeQuCVty+xfifXCMnruEfTBTACExoqIcpR5lonp9PBsi/x5GjEDD7sNBSG
	K7ZDrvPTMIfRETXjw5vIC8uSRaOpnFPa4TIZLVNiS6GYZgi+RJ1BX0oVdp+cHrcBIvkRqQOSZQvnO
	t8VU28Gc8KtOYWXyqla9JIKY1ELC5Arb7npxg3mXxN/ILB0RT4/myUEMifxWzwtMogt+FnXUa5s0J
	25WH4Zt8YFDVeRfY5NJv4p8lNXsbw1F5mFJ54vF+uOg/4lD5X77lPlqKMUnJHhIA39A9LO7xNZaTN
	+11QVwug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hYb-0000000EI6Y-2iSx;
	Thu, 12 Mar 2026 15:02:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0hYX-0000000EI36-2MFM
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 15:02:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hYV-0008V1-SX; Thu, 12 Mar 2026 16:02:31 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hYU-0052Pw-15;
	Thu, 12 Mar 2026 16:02:31 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0hHe-000000093tN-0Y4V;
	Thu, 12 Mar 2026 15:45:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.5" <noreply@anthropic.com>
Date: Thu, 12 Mar 2026 15:44:55 +0100
Message-ID: <20260312144505.2159816-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
References: <20260312144505.2159816-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_080233_602701_6DED2440 
X-CRM114-Status: GOOD (  13.61  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 12/16] bootm: overrides: add support for overlays
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Use loadables_from_files() for the oftree override, matching the initrd
pattern, to support colon-separated multi-file syntax. The first entry
is the base DT and subsequent entries are applied as overlays:

  bootm.oftree=a       use a as DT (unchanged behavior)
  bootm.oftree=a:b     use a as DT, apply b as overlay
  bootm.oftree=:b      keep existing DT, apply b as overlay
  bootm.oftree=a:b:c   use a as DT, apply b and c as overlays

Override overlays are applied during of_fix_tree() via a fixup registered
at of_populate_initcall level (13), placing them after global overlays
(device_initcall, 11) but before bootargs fixup (late_initcall, 14).

Co-Authored-By: Claude Opus 4.5 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm-overrides.c  | 65 +++++++++++++++++++++++++++++++++------
 common/bootm.c            |  3 ++
 include/bootm-overrides.h |  6 ++++
 3 files changed, 65 insertions(+), 9 deletions(-)

diff --git a/common/bootm-overrides.c b/common/bootm-overrides.c
index 8c71ceb5f80d..720d5636f331 100644
--- a/common/bootm-overrides.c
+++ b/common/bootm-overrides.c
@@ -3,7 +3,9 @@
 #include <bootm.h>
 #include <bootm-overrides.h>
 #include <bootm-fit.h>
+#include <init.h>
 #include <libfile.h>
+#include <of.h>
 #include <linux/pagemap.h>
 
 /**
@@ -142,15 +144,11 @@ int bootm_apply_overrides(struct image_data *data,
 	}
 
 	if (overrides->oftree_file) {
-		loadable_release(&data->oftree);
-
-		/* Empty string means to mask the original FDT */
-		if (nonempty(overrides->oftree_file)) {
-			data->oftree = loadable_from_file(overrides->oftree_file,
-							   LOADABLE_FDT);
-			if (IS_ERR(data->oftree))
-				return PTR_ERR(data->oftree);
-		}
+		int ret = loadables_from_files(&data->oftree,
+					       overrides->oftree_file, ":",
+					       LOADABLE_FDT);
+		if (ret)
+			return ret;
 		data->is_override.oftree = true;
 	}
 
@@ -158,3 +156,52 @@ int bootm_apply_overrides(struct image_data *data,
 
 	return 0;
 }
+
+static struct loadable *pending_oftree_overlays;
+
+void bootm_set_pending_oftree_overlays(struct loadable *oftree)
+{
+	pending_oftree_overlays = oftree;
+}
+
+void bootm_clear_pending_oftree_overlays(void)
+{
+	pending_oftree_overlays = NULL;
+}
+
+static int bootm_override_overlay_fixup(struct device_node *root, void *ctx)
+{
+	struct loadable *ovl;
+
+	if (!pending_oftree_overlays)
+		return 0;
+
+	list_for_each_entry(ovl, &pending_oftree_overlays->chained_loadables, list) {
+		const void *dtbo;
+		size_t size;
+		int ret;
+
+		dtbo = loadable_view(ovl, &size);
+		if (IS_ERR(dtbo)) {
+			pr_err("could not load overlay \"%s\": %pe\n",
+			       ovl->name, dtbo);
+			continue;
+		}
+
+		ret = of_overlay_apply_dtbo(root, dtbo);
+		if (ret)
+			pr_err("failed to apply overlay \"%s\": %pe\n",
+			       ovl->name, ERR_PTR(ret));
+		loadable_view_free(ovl, dtbo, size);
+	}
+
+	return 0;
+}
+
+static int bootm_register_override_overlay_fixup(void)
+{
+	if (!IS_ENABLED(CONFIG_OF_OVERLAY))
+		return 0;
+	return of_register_fixup(bootm_override_overlay_fixup, NULL);
+}
+of_populate_initcall(bootm_register_override_overlay_fixup);
diff --git a/common/bootm.c b/common/bootm.c
index ed79c20c0972..d4a3a232743f 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -11,6 +11,7 @@
 #include <block.h>
 #include <libfile.h>
 #include <bootm-fit.h>
+#include <bootm-overrides.h>
 #include <bootm-uimage.h>
 #include <globalvar.h>
 #include <init.h>
@@ -325,7 +326,9 @@ void *bootm_get_devicetree(struct image_data *data)
 		of_add_reserve_entry(data->initrd_res->start, data->initrd_res->end);
 	}
 
+	bootm_set_pending_oftree_overlays(data->oftree);
 	of_fix_tree(data->of_root_node);
+	bootm_clear_pending_oftree_overlays();
 
 	oftree = of_flatten_dtb(data->of_root_node);
 	if (!oftree)
diff --git a/include/bootm-overrides.h b/include/bootm-overrides.h
index 9b133928a923..0dbf6e7fa823 100644
--- a/include/bootm-overrides.h
+++ b/include/bootm-overrides.h
@@ -9,6 +9,7 @@ struct bootm_overrides {
 };
 
 struct image_data;
+struct loadable;
 
 #ifdef CONFIG_BOOT_OVERRIDE
 static inline void bootm_merge_overrides(struct bootm_overrides *dst,
@@ -24,6 +25,8 @@ static inline void bootm_merge_overrides(struct bootm_overrides *dst,
 
 int bootm_apply_overrides(struct image_data *data,
 			  const struct bootm_overrides *overrides);
+void bootm_set_pending_oftree_overlays(struct loadable *oftree);
+void bootm_clear_pending_oftree_overlays(void);
 #else
 
 static inline void bootm_merge_overrides(struct bootm_overrides *dst,
@@ -36,6 +39,9 @@ static inline int bootm_apply_overrides(struct image_data *data,
 {
 	return 0;
 }
+
+static inline void bootm_set_pending_oftree_overlays(struct loadable *o) {}
+static inline void bootm_clear_pending_oftree_overlays(void) {}
 #endif
 
 #endif
-- 
2.47.3



