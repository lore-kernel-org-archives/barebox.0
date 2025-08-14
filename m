Delivery-date: Thu, 14 Aug 2025 17:16:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umZhI-000Y2l-1D
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 17:16:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umZhH-0001J1-5e
	for lore@pengutronix.de; Thu, 14 Aug 2025 17:16:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ea61PqxRljZphYtxuQ6qXL/yTfz7P9LtBeqVjn331vE=; b=t7x6HnvWUrFJgvPILsNyJ7+PjV
	d1GKoUqvUXqpEqyM7z8++iWiIp6k2/U1mb+nCWTrfmezpbdUCZ9GwMfLErP1PEGoNSjXVnyTLyifI
	OEGdxhpjwrwzQKDgMpt0K+M5Kqtu0rrE8DvENWkAmYQM0zbSNSlxzTiArfkt7DQlArFCsIZVuGfaD
	qLESRlLTeWIw5ZCh/B+M6T2QyF6uwfV9TlLiqR7UiXJpaQDNtWl7wjlAqy8L3IhkcsQtlKyBuh7fR
	eQ2SOXADFNjOt1T3+Xe8gp9PHknINWOBimB0bCsE/sBCj4RJY85JgTsp86nEe8dKdABoJFmqHioOi
	yDmip5iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umZh4-0000000HOhy-1Qhi;
	Thu, 14 Aug 2025 15:16:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umY7p-0000000H4PL-3Yg1
	for barebox@bombadil.infradead.org;
	Thu, 14 Aug 2025 13:36:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ea61PqxRljZphYtxuQ6qXL/yTfz7P9LtBeqVjn331vE=; b=my4himwx7i8lQDJixlxpzrV2gX
	LoAiOmIyHFwPEENpIMimmaGJ7drVxyvQjqKntRY117+RSQV+WFWNX/Vy+DlBgaugBT7RqRj1JJkKN
	XL/lZ50lWAMC0qhjVFRfP2p6c6gINU9mEEOuJ0nzuX4McIPuv/DbhfMk1yPHK68MRLFny2g4ByP4c
	vYzKXPz8VcZE/38ml7Ga2B//qYkDPIPt390xi7nAEw502aM1hNuBb8w2lj0fSH0nfKWvVxoss+sJ9
	FV0gvh4yjPOOzG23Hp89mv5MGoHI0Pu6PwFSYNab2/aLrXl4+nolpsePe0AkAPMSSAUkwE+F+Ze8M
	FT4GL8kA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umY7m-0000000GPTn-05tO
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 13:36:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umY7j-0002ir-TK; Thu, 14 Aug 2025 15:36:07 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umY7j-000GO9-2L;
	Thu, 14 Aug 2025 15:36:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfb-00Gwpv-1x;
	Thu, 14 Aug 2025 15:07:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 14 Aug 2025 15:06:58 +0200
Message-Id: <20250814130702.4039241-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
References: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_143610_172888_F32E8930 
X-CRM114-Status: GOOD (  13.26  )
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
Subject: [PATCH RFC 13/17] bootm: make unsigned image support runtime configurable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To allow runtime unlocking of a device via security policies, add a new
SCONFIG_BOOT_UNSIGNED_IMAGES option and consult it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Sconfig | 15 +++++++++++++++
 common/bootm.c | 26 +++++++++++++++++++++++++-
 2 files changed, 40 insertions(+), 1 deletion(-)

diff --git a/common/Sconfig b/common/Sconfig
index 479ac5cdf2e5..edbc4bc028af 100644
--- a/common/Sconfig
+++ b/common/Sconfig
@@ -7,3 +7,18 @@ config RATP
 	depends on $(kconfig-enabled,CONSOLE_RATP)
 
 endmenu
+
+menu "Boot Policy"
+
+config BOOT_UNSIGNED_IMAGES
+	bool "Allow booting unsigned images"
+	depends on $(kconfig-enabled,BOOTM_OPTIONAL_SIGNED_IMAGES)
+	help
+	  Say y here if you want to allow booting of images with
+	  an invalid signature or no signature at all.
+
+	  Systems with verified boot chains should say y here
+	  or force it at compile time irrespective of policy
+	  with CONFIG_BOOTM_FORCE_SIGNED_IMAGES
+
+endmenu
diff --git a/common/bootm.c b/common/bootm.c
index 5c129cd4b579..c417e760595a 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -16,8 +16,10 @@
 #include <magicvar.h>
 #include <uncompress.h>
 #include <zero_page.h>
+#include <security/config.h>
 
 static LIST_HEAD(handler_list);
+static struct sconfig_notifier_block sconfig_notifier;
 
 static __maybe_unused struct bootm_overrides bootm_overrides;
 
@@ -114,6 +116,13 @@ static const char * const bootm_verify_names[] = {
 	[BOOTM_VERIFY_SIGNATURE] = "signature",
 };
 
+/*
+ * There's three ways to influence whether signed images are forced:
+ * 1) CONFIG_BOOTM_FORCE_SIGNED_IMAGES: forced at compile time
+ * 2) SCONFIG_BOOT_UNSIGNED_IMAGES: determined by the active security policy
+ * 3) bootm_force_signed_images(): forced dynamically by board code.
+ *                                 will be deprecated in favor of 2)
+ */
 static bool force_signed_images = IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES);
 
 static void bootm_optional_signed_images(void)
@@ -141,6 +150,16 @@ static void bootm_require_signed_images(void)
 	bootm_verify_mode = BOOTM_VERIFY_SIGNATURE;
 }
 
+static void bootm_unsigned_sconfig_update(struct sconfig_notifier_block *nb,
+					  enum security_config_option opt,
+					  bool allowed)
+{
+	if (!allowed)
+		bootm_require_signed_images();
+	else
+		bootm_optional_signed_images();
+}
+
 void bootm_force_signed_images(void)
 {
 	bootm_require_signed_images();
@@ -149,7 +168,7 @@ void bootm_force_signed_images(void)
 
 bool bootm_signed_images_are_forced(void)
 {
-	return force_signed_images;
+	return force_signed_images || !IS_ALLOWED(SCONFIG_BOOT_UNSIGNED_IMAGES);
 }
 
 static int uimage_part_num(const char *partname)
@@ -1098,6 +1117,11 @@ static int bootm_init(void)
 	else
 		bootm_optional_signed_images();
 
+	sconfig_register_handler_filtered(&sconfig_notifier,
+					  bootm_unsigned_sconfig_update,
+					  SCONFIG_BOOT_UNSIGNED_IMAGES);
+
+
 	if (IS_ENABLED(CONFIG_ROOTWAIT_BOOTARG))
 		globalvar_add_simple_int("linux.rootwait",
 					 &linux_rootwait_secs, "%d");
-- 
2.39.5



