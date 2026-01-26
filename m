Delivery-date: Mon, 26 Jan 2026 11:47:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkK88-005Vx0-0E
	for lore@lore.pengutronix.de;
	Mon, 26 Jan 2026 11:47:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkK87-0002us-0B
	for lore@pengutronix.de; Mon, 26 Jan 2026 11:47:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xSSFK9ez/LC7E4loVdsOjRLUZfHdbkxp/jiYMRUVs+k=; b=B+HkEwqf+fRpYroQyKyI/MgvLe
	HoeDnN49Ynp96QZUAQCKKdE7cQN48H3SFiJuIxsZgjTfxiDu4ovfmGCH70A2Jll0wBnKUM8Esy35Q
	rvOFfFexUFcSFhHW5NVE2eFxhxs4dyP3lB/Q2Ju3Jn00jtehIFEHLUGSXA1gqGK5V8ukFraTuoTtU
	zxJ+BfiTANVWNUFBP/ceNRePxGKRM61eqqJia0ZOUy/LbWtTbcMj6W+X/YyIVbzqgeyVzUS6fOG61
	UxkiYtWaWchQEYocgk/gUvd3P5sK6PlUO9pjlE7HCuRtJFHtp4e638svrVydR4GSfw+HffIYpmKfa
	v53Gxayg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkK7e-0000000CLus-1MG2;
	Mon, 26 Jan 2026 10:47:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkK7d-0000000CLtk-27Li
	for barebox@bombadil.infradead.org;
	Mon, 26 Jan 2026 10:47:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=xSSFK9ez/LC7E4loVdsOjRLUZfHdbkxp/jiYMRUVs+k=; b=gcLdAGwqaBAGzjSc7wSngiz6sv
	briK7pCbBx3kykIngVd2DCZv63FgosmzDAwysdjuJag+E9YUUAp1dBcAmy4t1/NKnTirNNH4ss/3R
	L42BeritJe0P25burK0aUVS/13oAm+hIbrCQSVb02oht4tdDH02gNVK6GVgZR0g4T/pNNZwTCqTRp
	p6sHGEThSPsrprz9q1QtpJd6XgIn3qORtAgRzkgysliVZ2uEO3g5KE70KzJBsvTgxqkZlEJGYdK/N
	c4ehXUS8GoomdK2C3xpArfSUUs391iOVNORawOgPfKSSmd/tNfCWYeltgGoHJlK4aGJ5uAQXxqZo/
	vmAHPMBg==;
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkK7Z-000000053kK-2SJv
	for barebox@lists.infradead.org;
	Mon, 26 Jan 2026 10:47:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkK7Y-0002mQ-UA; Mon, 26 Jan 2026 11:47:00 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkK7Z-002ZCq-1K;
	Mon, 26 Jan 2026 11:47:00 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkK7Z-00000003XNJ-0bpl;
	Mon, 26 Jan 2026 11:47:00 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 26 Jan 2026 11:46:44 +0100
Message-ID: <20260126104656.832582-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_104701_767869_37040805 
X-CRM114-Status: GOOD (  11.81  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] bootm: fix bootm override saving/restoring
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As bootm_set_overrides() only sets non-NULL members, it's not suitable
to restore old settings as once a member is non-NULL, it can't change
it.

This may lead to use-after-frees, as the original strings are free'd,
but the override keeps pointing at it.
Fix this by merging overrides only before the boot and resetting all
members after.

Fixes: d2dae53f0dc5 ("bootm: fix boot override inheritance")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boot.c             | 4 ++--
 common/bootm.c            | 6 +++++-
 include/bootm-overrides.h | 6 ++++--
 3 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/common/boot.c b/common/boot.c
index e400a4fcb8b3..af07d218f059 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -174,13 +174,13 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
 		}
 	}
 
-	old = bootm_set_overrides(be->overrides);
+	old = bootm_save_overrides(be->overrides);
 
 	ret = be->boot(be, verbose, dryrun);
 	if (ret && ret != -ENOMEDIUM)
 		pr_err("Booting entry '%s' failed: %pe\n", be->title, ERR_PTR(ret));
 
-	bootm_set_overrides(old);
+	bootm_restore_overrides(old);
 
 	globalvar_set_match("linux.bootargs.dyn.", "");
 
diff --git a/common/bootm.c b/common/bootm.c
index f05a4b1b1f42..35305f25375a 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -778,13 +778,17 @@ int bootm_boot(struct bootm_data *bootm_data)
 }
 
 #ifdef CONFIG_BOOT_OVERRIDE
-struct bootm_overrides bootm_set_overrides(const struct bootm_overrides overrides)
+struct bootm_overrides bootm_save_overrides(const struct bootm_overrides overrides)
 {
 	struct bootm_overrides old = bootm_overrides;
 	/* bootm_merge_overrides copies only actual (non-NULL) overrides */
 	bootm_merge_overrides(&bootm_overrides, &overrides);
 	return old;
 }
+void bootm_restore_overrides(const struct bootm_overrides overrides)
+{
+	bootm_overrides = overrides;
+}
 #endif
 
 bool bootm_efi_check_image(struct image_handler *handler,
diff --git a/include/bootm-overrides.h b/include/bootm-overrides.h
index 4a270b95afcc..b807e5be310a 100644
--- a/include/bootm-overrides.h
+++ b/include/bootm-overrides.h
@@ -8,12 +8,14 @@ struct bootm_overrides {
 };
 
 #ifdef CONFIG_BOOT_OVERRIDE
-struct bootm_overrides bootm_set_overrides(const struct bootm_overrides overrides_new);
+struct bootm_overrides bootm_save_overrides(const struct bootm_overrides overrides);
+void bootm_restore_overrides(const struct bootm_overrides overrides);
 #else
-static inline struct bootm_overrides bootm_set_overrides(const struct bootm_overrides overrides)
+static inline struct bootm_overrides bootm_save_overrides(const struct bootm_overrides overrides)
 {
 	return (struct bootm_overrides) {};
 }
+static inline void bootm_restore_overrides(const struct bootm_overrides overrides) {}
 #endif
 
 static inline void bootm_merge_overrides(struct bootm_overrides *dst,
-- 
2.47.3



