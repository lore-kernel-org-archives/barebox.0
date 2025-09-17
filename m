Delivery-date: Wed, 17 Sep 2025 16:19:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyszw-0046OI-1a
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 16:19:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyszs-0003gI-QM
	for lore@pengutronix.de; Wed, 17 Sep 2025 16:19:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fim/gAhqRL2Gecfgyk8kXnUYbN5QZVAfhcPmoxnEe7U=; b=28AZhleO9cWtHwQyQrjqByHuO3
	nu96InKW/wYlvw9LoAwPFQFYsXSPSV/RRqJ3xcPdDud/CLY6WoXpVXHrDgm4oTOoOjODczFuMZBoG
	a5/vNkpFVu3pJtGTop1bJsQ5Ka3jCTeeLVGWEMRPajWG82KIQw5im3V02WcR7Twx1aXRBfes7UqSq
	8f8t7c1/DJgPyNyJZSJZe/Viq+iy/TInRhj879yASbbOM4TA/WzCu4OQ54YM460ftCokgPHGrSFrd
	8FdQas49NvshBkrQG/e6SsT0pBeYN7JleFOoW8yelfx6kSBt4s4TQmyYCQWucmXD7Ecl0SVqG6CgH
	A0nOczfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszJ-0000000C8Bu-3kt9;
	Wed, 17 Sep 2025 14:18:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszH-0000000C87L-0Bk0
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 14:18:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyszF-000312-Du; Wed, 17 Sep 2025 16:18:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyszF-001mGQ-0l;
	Wed, 17 Sep 2025 16:18:21 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbA-0000000CZtI-33Oq;
	Wed, 17 Sep 2025 15:53:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Sep 2025 15:53:33 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250917-security-policies-v2-13-f30769a3ff51@pengutronix.de>
References: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
In-Reply-To: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758117208; l=3264;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=L3DBye2Pm5+tHRsSX/Fp58WHwxrNhQltD8DfryK+yUo=;
 b=xJKxvW69iBWjP9rWZOR9xijaDivMWe0l12xm0Q9M9eVOHz/PJHlQruYjuS8/72V3a9CkVPx5F
 nCKWfaKVjnBC0hdMMzCxKKMuLkLm+/pNpWPwQ+UR/Yr8OBEoBVehsqg
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_071823_106946_EDC1A5E4 
X-CRM114-Status: GOOD (  13.99  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 13/24] bootm: make unsigned image support runtime
 configurable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

To allow runtime unlocking of a device via security policies, add a new
SCONFIG_BOOT_UNSIGNED_IMAGES option and consult it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Sconfig | 15 +++++++++++++++
 common/bootm.c | 26 +++++++++++++++++++++++++-
 2 files changed, 40 insertions(+), 1 deletion(-)

diff --git a/common/Sconfig b/common/Sconfig
index 479ac5cdf2e560a638d39abbc9f91afe2edd7403..edbc4bc028af79e2a72bb86de94ecce5c7b7643d 100644
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
index 755c9358ce3a17c8ce37a9db13cf18d0aea1b5e7..17792b2a1d81a0d0164d9b899093395341475fc9 100644
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
@@ -1109,6 +1128,11 @@ static int bootm_init(void)
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
2.47.3



