Delivery-date: Fri, 13 Mar 2026 14:33:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12eI-000DKI-0t
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:33:54 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12dy-00081z-J4
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:33:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YFW1krIYgTRq+ruoV4sYITDOYYnYJUEAZq0yXiWbodk=; b=0nDzmD06VabBsK6CQ7QDOc0DEz
	Z37QP67bkM8cbbn+CH2QExZprPdZvZgBNNEEOhq5Z+2F8hXLa5QLF3iIcIeZWubU7ZOcMCnPVeRkK
	71ODIT5ejP5w3VI3e7S0Tc1v7k3c3t2vbt/6N5R6XzBUO2vQCsYg2QWRQIdsbwlUSvdDQpOv7t8oj
	5VKBfakK6Xd05pXYOjj68qGS79w4HUfnOKQHb63QxzquHappEuwvVUeylFl5t8b2F6kD5HCPtWl6Q
	02wzeRAbjiG2v5E0Jq0BpIbtdK3iN/5TMhfFagqkncH83EZUjlxMX0PbWu4AcUw4QVGR76NoqC8bD
	FVQ6/p/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d8-00000000FYG-2Z5E;
	Fri, 13 Mar 2026 13:32:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d5-00000000FVY-1T6z
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=YFW1krIYgTRq+ruoV4sYITDOYYnYJUEAZq0yXiWbodk=; b=E6sIINnyqXZAFGBEdvPFfrfsIH
	U4Af/dS1aZL6U7GAv17cEew7nQoKGQD/fXb5p6DKh5JSyZWnlu8LFFzV0hu/D1a+JkbRzATcJRTd2
	qaGiYEdXrV/JIILTrj/zhwNd6crbWDkqGpgr/Ao+gLHck718I+aSKR2wFSUCm+bdx7onkpcjw4Itc
	9Tv3B8ncsL2D4h8IJcLPEOSljn6zNKBF65w4UnULjgiIuZcoVk/TlO7oyofraTFvdxk0FDjhQM6f2
	tEWbnHZ0fi/PPCNLiWUn9jXx2eAcaAOe4lWORA1JRTr7+mWYUt+j+ZGZZXolAUjCbBslGYhh3cg3H
	I10Q/Sxw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12cy-00000003OSX-3B3W
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cx-0006mt-Cp; Fri, 13 Mar 2026 14:32:31 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cx-0005SO-0f;
	Fri, 13 Mar 2026 14:32:31 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XL-00000009ULB-1LoZ;
	Fri, 13 Mar 2026 14:26:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 13 Mar 2026 14:25:08 +0100
Message-ID: <20260313132631.2257573-25-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133234_063816_E81C52D9 
X-CRM114-Status: GOOD (  11.30  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 24/58] bootm: fix bootm override saving/restoring
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
Link: https://lore.barebox.org/20260126104656.832582-1-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/boot.c             | 4 ++--
 common/bootm.c            | 6 +++++-
 include/bootm-overrides.h | 6 ++++--
 3 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/common/boot.c b/common/boot.c
index 07bd288df29d..f54c812991ad 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -171,13 +171,13 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
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
index 34c72282d6ba..0cdaf30613fc 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -976,13 +976,17 @@ int bootm_boot(struct bootm_data *bootm_data)
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
 
 static int do_bootm_compressed(struct image_data *img_data)
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



