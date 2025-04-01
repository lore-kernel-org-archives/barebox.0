Delivery-date: Tue, 01 Apr 2025 13:05:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZQs-006xwV-1s
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 13:05:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzZQr-0003FI-Rz
	for lore@pengutronix.de; Tue, 01 Apr 2025 13:05:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pizO7FCsPc7PpAAvbS1vzXnqam1JHMIlGQMooB41Eks=; b=U5tJ+nMPl5Gm/jFZqerqZpPKAK
	A9B11chRHkn+CLBcMPsN1kRKOBSjOJrDVwh8f1jAlbnKgLyQrlKn8DuDfEnNMS5PUH4J4OUMtGhjj
	bzUCzLXfE8duxkzJ24U03o4j5fi5MX9caNzNIHpV7lQNa3tMKYhPzEzSVb0CfWopGASBZCm4bC2Sq
	yeH1rbzXk2TJ/KFcEkGZ7heI5aNgUee7neyT5INnhUJWl/bte5jpdgVi0kL2HyAoV+H9YhszedKWu
	9AEabwSiIHbWkpiZlqj/F399Oq3QAvN1YTYyaZkn62bXY4i+Wy9BpuMyxi3qVq1SBmHTGKmx5Qd4+
	o1CRPQTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZQM-00000002isU-3aSL;
	Tue, 01 Apr 2025 11:04:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzZA9-00000002fof-0GlJ
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 10:48:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-0000NN-RZ; Tue, 01 Apr 2025 12:48:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-002kWu-1z;
	Tue, 01 Apr 2025 12:48:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzZA7-00GcAa-1g;
	Tue, 01 Apr 2025 12:48:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Apr 2025 12:47:58 +0200
Message-Id: <20250401104806.3959859-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
References: <20250401104806.3959859-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_034809_398419_9F7FBE4D 
X-CRM114-Status: GOOD (  16.83  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/16] bootm: associate bootm overrides with struct bootentry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The boot override logic is currently controlled by the boot command,
which makes it cumbersome to exercise from custom bootentry providers.

A more natural place would be associating it with the boot entry logic,
so move it there.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/boot.c           | 11 ++---------
 common/boot.c             |  4 ++++
 common/bootm.c            |  3 ++-
 include/boot.h            |  2 ++
 include/bootm-overrides.h | 30 ++++++++++++++++++++++++++++++
 include/bootm.h           | 18 ------------------
 6 files changed, 40 insertions(+), 28 deletions(-)
 create mode 100644 include/bootm-overrides.h

diff --git a/commands/boot.c b/commands/boot.c
index 820708380191..aad01fdc6c95 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -55,11 +55,6 @@ static int boot_add_override(struct bootm_overrides *overrides, char *var)
 	return 0;
 }
 
-static inline bool boot_has_overrides(const struct bootm_overrides *overrides)
-{
-	return overrides->os_file || overrides->oftree_file || overrides->initrd_file;
-}
-
 static int do_boot(int argc, char *argv[])
 {
 	char *freep = NULL;
@@ -128,8 +123,6 @@ static int do_boot(int argc, char *argv[])
 	}
 
 	entries = bootentries_alloc();
-	if (boot_has_overrides(&overrides))
-		bootm_set_overrides(&overrides);
 
 	while ((name = next(&handle)) != NULL) {
 		if (!*name)
@@ -142,6 +135,8 @@ static int do_boot(int argc, char *argv[])
 			continue;
 
 		bootentries_for_each_entry(entries, entry) {
+			bootm_merge_overrides(&entry->overrides, &overrides);
+
 			ret = boot_entry(entry, verbose, dryrun);
 			if (!ret)
 				goto out;
@@ -164,8 +159,6 @@ static int do_boot(int argc, char *argv[])
 
 	ret = 0;
 out:
-	if (boot_has_overrides(&overrides))
-		bootm_unset_overrides();
 	bootentries_free(entries);
 	free(freep);
 
diff --git a/common/boot.c b/common/boot.c
index bfb2eb13f67f..cb16a9a2b508 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -165,10 +165,14 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
 		}
 	}
 
+	bootm_set_overrides(&be->overrides);
+
 	ret = be->boot(be, verbose, dryrun);
 	if (ret && ret != -ENOMEDIUM)
 		pr_err("Booting entry '%s' failed: %pe\n", be->title, ERR_PTR(ret));
 
+	bootm_set_overrides(NULL);
+
 	globalvar_set_match("linux.bootargs.dyn.", "");
 
 	return ret;
diff --git a/common/bootm.c b/common/bootm.c
index fe4d51681d73..6b63987f0900 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -2,6 +2,7 @@
 
 #include <common.h>
 #include <bootm.h>
+#include <bootm-overrides.h>
 #include <fs.h>
 #include <malloc.h>
 #include <memory.h>
@@ -1004,7 +1005,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 #ifdef CONFIG_BOOT_OVERRIDE
 void bootm_set_overrides(const struct bootm_overrides *overrides)
 {
-	bootm_overrides = *overrides;
+	bootm_overrides = overrides ? *overrides : (struct bootm_overrides){};
 }
 #endif
 
diff --git a/include/boot.h b/include/boot.h
index 8afbee6549c6..71da2e2baba8 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -5,6 +5,7 @@
 #include <of.h>
 #include <menu.h>
 #include <environment.h>
+#include <bootm-overrides.h>
 
 #ifdef CONFIG_FLEXIBLE_BOOTARGS
 const char *linux_bootargs_get(void);
@@ -33,6 +34,7 @@ struct bootentry {
 	char *description;
 	int (*boot)(struct bootentry *entry, int verbose, int dryrun);
 	void (*release)(struct bootentry *entry);
+	struct bootm_overrides overrides;
 };
 
 int bootentries_add_entry(struct bootentries *entries, struct bootentry *entry);
diff --git a/include/bootm-overrides.h b/include/bootm-overrides.h
new file mode 100644
index 000000000000..231c913709e2
--- /dev/null
+++ b/include/bootm-overrides.h
@@ -0,0 +1,30 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __BOOTM_OVERRIDES_H
+#define __BOOTM_OVERRIDES_H
+
+struct bootm_overrides {
+	const char *os_file;
+	const char *oftree_file;
+	const char *initrd_file;
+};
+
+#ifdef CONFIG_BOOT_OVERRIDE
+void bootm_set_overrides(const struct bootm_overrides *overrides);
+#else
+static inline void bootm_set_overrides(const struct bootm_overrides *overrides) {}
+#endif
+
+static inline void bootm_merge_overrides(struct bootm_overrides *dst,
+					 const struct bootm_overrides *src)
+{
+	if (!IS_ENABLED(CONFIG_BOOT_OVERRIDE))
+		return;
+	if (src->os_file)
+		dst->os_file = src->os_file;
+	if (src->oftree_file)
+		dst->oftree_file = src->oftree_file;
+	if (src->initrd_file)
+		dst->initrd_file = src->initrd_file;
+}
+
+#endif
diff --git a/include/bootm.h b/include/bootm.h
index 0e5e99773a26..b86d06b0f55d 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -160,22 +160,4 @@ void bootm_force_signed_images(void);
 
 void *booti_load_image(struct image_data *data, phys_addr_t *oftree);
 
-struct bootm_overrides {
-	const char *os_file;
-	const char *oftree_file;
-	const char *initrd_file;
-};
-
-#ifdef CONFIG_BOOT_OVERRIDE
-void bootm_set_overrides(const struct bootm_overrides *overrides);
-#else
-static inline void bootm_set_overrides(const struct bootm_overrides *overrides) {}
-#endif
-
-static inline void bootm_unset_overrides(void)
-{
-	struct bootm_overrides overrides = {};
-	bootm_set_overrides(&overrides);
-}
-
 #endif /* __BOOTM_H */
-- 
2.39.5



