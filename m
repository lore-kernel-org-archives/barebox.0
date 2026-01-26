Delivery-date: Mon, 26 Jan 2026 11:46:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkK7S-005VvX-2G
	for lore@lore.pengutronix.de;
	Mon, 26 Jan 2026 11:46:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkK7R-0002iZ-Ce
	for lore@pengutronix.de; Mon, 26 Jan 2026 11:46:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZZ1JbE+edXDxqKmMjnPWAVjFbdja4kHWDskPBLD3Poo=; b=cygtf41wiIAPYJ+Y78ubr5TFEk
	WoISdk6BDt7S9X1LhugsLDXsBbQXA1dKOnX5NJdfAS15x+QGy9U+2VAVSftEe9X65gtqdLazCI8wH
	YhR01JaM77uOT4TlGCtkIllq8gr7bPfT+kcMWxYM83PwTsbUbbBtaM1xJvM24ufUtYyBEY7bWM1N6
	lz/Hkv/EczBK0c2WrhVVXCCwporqVp9c1v4uIVPKUH3hTjVDBrplOYMeYX56LIoFMFwEsH6UGIOKO
	k70HwK/vuGjWG4du9yrDiHBeZNwZ16T5l/wMqthPTuqJ0sY56F3R/MLPCKowMCfB/5kAPRwmCBzBl
	ebEb8sQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkK6x-0000000CLH5-3CX3;
	Mon, 26 Jan 2026 10:46:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkK5b-0000000CJn5-3gbu
	for barebox@lists.infradead.org;
	Mon, 26 Jan 2026 10:45:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkK5a-00026z-7O; Mon, 26 Jan 2026 11:44:58 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkK5a-002ZCN-2H;
	Mon, 26 Jan 2026 11:44:58 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkK5a-00000003HO4-1vBj;
	Mon, 26 Jan 2026 11:44:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 26 Jan 2026 11:44:56 +0100
Message-ID: <20260126104457.781763-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_024459_950595_09932F47 
X-CRM114-Status: GOOD (  12.53  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] boot: do not attempt booting bootsource more than once
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

storage.builtin and storage.removable do not overlap, but bootsource
can overlap with one of them leading to confusing output, when the
bootsource has nothing bootable as the boot will be attempted twice.

Add a new .nonbootsource specialization and use that in the default.

While at it, also drop the unused bootcdev.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boot.c       |  4 ++--
 common/cdev-alias.c | 23 +++++++++++++++--------
 2 files changed, 17 insertions(+), 10 deletions(-)

diff --git a/common/boot.c b/common/boot.c
index 7b2ce4740759..e400a4fcb8b3 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -138,8 +138,8 @@ static int init_boot(void)
 		global_boot_default = xstrdup(
 			IF_ENABLED(CONFIG_EFI_LOADER_BOOTMGR,  "efibootmgr ")
 			IF_ENABLED(CONFIG_BOOT_DEFAULTS,       "bootsource ")
-			IF_ENABLED(CONFIG_BOOT_DEFAULTS,       "storage.builtin ")
-			IF_ENABLED(CONFIG_BOOT_DEFAULTS,       "storage.removable ")
+			IF_ENABLED(CONFIG_BOOT_DEFAULTS,       "storage.builtin.nonbootsource ")
+			IF_ENABLED(CONFIG_BOOT_DEFAULTS,       "storage.removable.nonbootsource ")
 			"net"
 		);
 
diff --git a/common/cdev-alias.c b/common/cdev-alias.c
index 82b91108c1fc..ca5048f35a26 100644
--- a/common/cdev-alias.c
+++ b/common/cdev-alias.c
@@ -82,6 +82,8 @@ static int cdev_alias_resolve_diskuuid(struct cdev_alias_res *cdev_alias_res,
 #define STORAGE_REMOVABLE	BIT(0)
 #define STORAGE_BUILTIN		BIT(1)
 
+#define STORAGE_NONBOOTSOURCE	BIT(31)
+
 /**
  * call_for_each_storage() - invoke callback for each storage medium
  *
@@ -136,24 +138,29 @@ static int cdev_alias_resolve_storage(struct cdev_alias_res *cdev_alias_res,
 				      cdev_alias_processor_t fn,
 				      void *data)
 {
-	struct cdev *bootcdev;
 	unsigned filter = 0;
-	int bootsource, nmatches;
+	int bootsource = 0, nmatches;
 
 	if (!class)
-		filter = ~0;
+		filter = STORAGE_REMOVABLE | STORAGE_BUILTIN;
+	else if (streq_ptr(class, "nonbootsource"))
+		filter = STORAGE_REMOVABLE | STORAGE_BUILTIN | STORAGE_NONBOOTSOURCE;
 	else if (streq_ptr(class, "removable"))
 		filter |= STORAGE_REMOVABLE;
 	else if (streq_ptr(class, "builtin"))
 		filter |= STORAGE_BUILTIN;
+	else if (streq_ptr(class, "removable.nonbootsource"))
+		filter |= STORAGE_REMOVABLE | STORAGE_NONBOOTSOURCE;
+	else if (streq_ptr(class, "builtin.nonbootsource"))
+		filter |= STORAGE_BUILTIN | STORAGE_NONBOOTSOURCE;
 	else
 		return -EINVAL;
 
-	bootcdev = bootsource_of_cdev_find();
-
-	bootsource = call_for_each_storage(fn, data, filter, true);
-	if (bootsource < 0)
-		return bootsource;
+	if (!(filter & STORAGE_NONBOOTSOURCE)) {
+		bootsource = call_for_each_storage(fn, data, filter, true);
+		if (bootsource < 0)
+			return bootsource;
+	}
 
 	nmatches = call_for_each_storage(fn, data, filter, false);
 	if (nmatches < 0)
-- 
2.47.3



