Delivery-date: Mon, 10 Nov 2025 14:34:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIS2p-00HOaZ-18
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 14:34:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIS2o-0007fX-Nn
	for lore@pengutronix.de; Mon, 10 Nov 2025 14:34:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NRNmCCppc7dtYy2i8oBscyCguA8V+diluReGJRLXikY=; b=caUgTeDQd4MvZm
	VmB8vWlpEyDK5fRE0F7wM4IipR6X0nK8F9V+0zOYGSVo7JFao3979ic0xBSfU94NmNyKbQK9toYne
	0v7G2pIXErM63+fvE0kmKXy73CM+jeNLS0MX8gkMIYdhGHRnbaVS4Z99xsKr4xXMLOmqisXcusFu4
	pBDjOowBa0zEHhbsvNvvaY13c0RtXDor+iSolkzG4Z8irsCfAcdwPvtp4DHDNkttwB2IPwRKcqPnO
	6mMLbAkH8n1CUl/RLM+FVmBizs8uGCiRvpc0oQOeifo2aCKTn5+8CamvkOIMWGU5tqCw6xt0t4ksd
	3lHTFcLCkHLTzBoNG0rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIS1q-00000005Usf-1Wf5;
	Mon, 10 Nov 2025 13:33:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIS1m-00000005Us2-2p8y
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 13:33:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vIS1j-0007Ss-JI; Mon, 10 Nov 2025 14:33:47 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vIS1j-0082Bu-1J;
	Mon, 10 Nov 2025 14:33:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vIS1j-00000006WpO-1Df1;
	Mon, 10 Nov 2025 14:33:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 10 Nov 2025 14:33:45 +0100
Message-ID: <20251110133346.1552720-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_053350_723635_48791495 
X-CRM114-Status: GOOD (  13.12  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] bootm: fix boot override inheritance
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Nested boot calls were incorrectly handled by the override mechanism,
although they are a common occurrence e.g. when using bootchooser:

 - boot command enumerates entries including bootchooser and boots the
   "bootchooser" entry
 - bootchooser boot enumerates entries for its targets and boots
   one of these entries

Each boot entry boot calls bootm_set_overrides(), which is broken in the
nested case for two reasons:

 - bootm_set_overrides(&be->overrides) reverts the overrides for the
   first nested boot entry, because it doesn't first check if the
   individual overrides (as opposed to the pointer to the struct
   containing them) is NULL

 - bootm_set_overrides(NULL) additionally reverts the overrides for
   all later boot entries, because instead of restoring the previous
   override state, it discards it.

Fix both of these by having bootm_set_overrides return the old
overrides, so they can be reinstated.

Reported-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boot.c             | 5 +++--
 common/bootm.c            | 7 +++++--
 include/bootm-overrides.h | 7 +++++--
 3 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/common/boot.c b/common/boot.c
index d755805d9314..07bd288df29d 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -156,6 +156,7 @@ BAREBOX_MAGICVAR(global.boot.watchdog_timeout,
 
 int boot_entry(struct bootentry *be, int verbose, int dryrun)
 {
+	struct bootm_overrides old;
 	int ret;
 
 	pr_info("Booting entry '%s'\n", be->title);
@@ -170,13 +171,13 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
 		}
 	}
 
-	bootm_set_overrides(&be->overrides);
+	old = bootm_set_overrides(be->overrides);
 
 	ret = be->boot(be, verbose, dryrun);
 	if (ret && ret != -ENOMEDIUM)
 		pr_err("Booting entry '%s' failed: %pe\n", be->title, ERR_PTR(ret));
 
-	bootm_set_overrides(NULL);
+	bootm_set_overrides(old);
 
 	globalvar_set_match("linux.bootargs.dyn.", "");
 
diff --git a/common/bootm.c b/common/bootm.c
index 17792b2a1d81..37c09b846f2a 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -1010,9 +1010,12 @@ int bootm_boot(struct bootm_data *bootm_data)
 }
 
 #ifdef CONFIG_BOOT_OVERRIDE
-void bootm_set_overrides(const struct bootm_overrides *overrides)
+struct bootm_overrides bootm_set_overrides(const struct bootm_overrides overrides)
 {
-	bootm_overrides = overrides ? *overrides : (struct bootm_overrides){};
+	struct bootm_overrides old = bootm_overrides;
+	/* bootm_merge_overrides copies only actual (non-NULL) overrides */
+	bootm_merge_overrides(&bootm_overrides, &overrides);
+	return old;
 }
 #endif
 
diff --git a/include/bootm-overrides.h b/include/bootm-overrides.h
index 19557f63acd9..4a270b95afcc 100644
--- a/include/bootm-overrides.h
+++ b/include/bootm-overrides.h
@@ -8,9 +8,12 @@ struct bootm_overrides {
 };
 
 #ifdef CONFIG_BOOT_OVERRIDE
-void bootm_set_overrides(const struct bootm_overrides *overrides);
+struct bootm_overrides bootm_set_overrides(const struct bootm_overrides overrides_new);
 #else
-static inline void bootm_set_overrides(const struct bootm_overrides *overrides) {}
+static inline struct bootm_overrides bootm_set_overrides(const struct bootm_overrides overrides)
+{
+	return (struct bootm_overrides) {};
+}
 #endif
 
 static inline void bootm_merge_overrides(struct bootm_overrides *dst,
-- 
2.47.3



