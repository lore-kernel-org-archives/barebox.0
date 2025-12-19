Delivery-date: Fri, 19 Dec 2025 11:38:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsO-00DAeP-1R
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:38:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXs7-00069F-Nv
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:38:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5q6DggYkXYON+dHMjYx6SCijN1cuXhwfE36aH/eauHA=; b=oTbvNhzDkxpIY0
	cWZTXXE/rtq6TBdCKKvCAWwAojSuLZv1QaCcVpNm5xzckRI5+ItI8a9mnr6q/Q8GUTBoYINfr5kZr
	bRqjqW/o7hk6XV3VwOoWtNj7Sj153i5zCPoai2pOIT2l9TjnoW9+nlqYBAXBuZed//4GuvBkzaNhJ
	5gwQRzBRBqDKBw5fKym1FTdpQsWUrO7adqV4xxkrVdbw4CFQatDYsmfoDgGa49gfzZPJ3K+0kFgsX
	fV8ABNptNCSkBFpMxgVtGMZW58MDD+1tWMUGkquDdy0FpFpRnkpdIrcv7v+8pyipKu7W40A/ssjdR
	qXIc7wc2UTj2ya17WEBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXr7-0000000A6Hk-1j37;
	Fri, 19 Dec 2025 10:37:05 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqx-0000000A62E-2OAQ
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:36:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=5q6DggYkXYON+dHMjYx6SCijN1cuXhwfE36aH/eauHA=; b=WGZgp39lxWWdNaAqlvm83tL85P
	6oFwcsfOxw+sXgQFlFzNS/JxrlXo5e2O4+Iz9tyICo4kRfnOULEPvTBneW/4WSPTVp0xnstz2572F
	do1lLJOP3WRnGRvaWh6YCA0zdH9RS5HbFvOtIuEzKivAqwk2MHh3yUxgjG7dPxXwyYZoZIWKB359z
	7BVFHA7lssZycfW7tAhABPiq36+vpeLDwJFwJ96oC1XEo9LwbHdof6VWVFI3T4wIo1jw4afrMHxUk
	dVISp5Q14E0d1N1oKXucx3MgwGfVqtV8NhecSet+rXQ9JfXLGgQfc/ydGXtAjrtJZurlK8NMH6ih8
	GMb49ndQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXqu-00000007RTL-0Usv
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 10:36:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqs-0004hr-W8; Fri, 19 Dec 2025 11:36:51 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqs-006RWH-2E;
	Fri, 19 Dec 2025 11:36:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVh-0000000320L-1xj4;
	Fri, 19 Dec 2025 11:14:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 19 Dec 2025 10:20:57 +0100
Message-ID: <20251219101453.2806980-22-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_103652_255526_ACDEC36A 
X-CRM114-Status: GOOD (  12.15  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 21/49] bootm: fix boot override inheritance
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
Link: https://lore.barebox.org/20251110133346.1552720-1-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit d2dae53f0dc51406ee8e51708518357e2b557227)
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
index 15b18c12faa1..34c72282d6ba 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -976,9 +976,12 @@ int bootm_boot(struct bootm_data *bootm_data)
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



