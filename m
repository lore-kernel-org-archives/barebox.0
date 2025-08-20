Delivery-date: Wed, 20 Aug 2025 16:32:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojrX-002eFW-1f
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 16:32:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojrU-0006PE-Fp
	for lore@pengutronix.de; Wed, 20 Aug 2025 16:32:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OwwtFG26kozmUc/2ZIVHvaUnYnNEOBQiAqvbbhYncT4=; b=JKUCnJYUxdax64kx1xjPK+3Aqr
	mDRACv4cr3o7v2wCq5KLjF/vW1A8TgZVLDtPjr0+uIT4ZvmpCDKxlUfADUsntuxdnDHAJK0qk9FNh
	O6nPzUzEyzG0BU4iN88OG9Y0vSFscSynwgNOw1L3gfWlOzUMwA6ILcDSJZi8iktur1Zb2I9q+3xv4
	s3tA4Efg4UYNKA4OWYWUlixmjuRxbBLwRnJzdkcgqVhVi+9BCTCBz7EMdO9dLZ5ctPiw+bQcSoQyB
	MW+NWsEQh2kSpGoVKT9v2SupDoGXaoDMTg4oswDVaMerAwGrcSBc6oHGRKSKZv1Bkq45Sf5ijiuB3
	69hAKxZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uojqw-0000000E4Ni-0hwp;
	Wed, 20 Aug 2025 14:31:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoixJ-0000000DoZk-0rkd
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 13:34:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoixI-0003Fj-2z; Wed, 20 Aug 2025 15:34:20 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoixH-001Fru-2p;
	Wed, 20 Aug 2025 15:34:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihK-004jSI-1u;
	Wed, 20 Aug 2025 15:17:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 Aug 2025 15:18:06 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-security-policies-v1-22-76fde70fdbd8@pengutronix.de>
References: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
In-Reply-To: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755695870; l=1776;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=o/2Dtf5S048UEyyfob+bDd/Zkt1Pn7+IposN85AZ3As=;
 b=/teDaMt2/TORKxFcxn+2br9Kh7IF8pqu6rQ6Ys7aFjfSSI7CGMPVr3gmGx5e4f6B8cxr2nQCW
 JV93WlZtOYWDF1/p3Sr7/MeLHS2+zxSW0cbUHs/YgRsZ8gnq2znfI3Q
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_063421_305178_C5A25E79 
X-CRM114-Status: GOOD (  11.65  )
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
Subject: [PATCH 22/24] security: add security policy for loading barebox
 environment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In secure environments we shouldn't load a persistent and potentially
manipulated environment. Add a security policy for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Sconfig       | 8 ++++++++
 common/environment.c | 6 ++++++
 2 files changed, 14 insertions(+)

diff --git a/common/Sconfig b/common/Sconfig
index ac027022e932dffd429f0b34cb8e1a199b0b595b..ec68bc2737af02cff3ce38c7bc1b9d59af2336c5 100644
--- a/common/Sconfig
+++ b/common/Sconfig
@@ -20,6 +20,14 @@ config SHELL_INTERACTIVE
 
 	  Disabling this option also disables interruption with ctrl-c keystrokes.
 
+config ENVIRONMENT_LOAD
+	bool "Allow loading barebox environment from persistent media"
+	depends on $(kconfig-enabled,ENV_HANDLING)
+	help
+	  The barebox environment doesn't have any security measures and could be
+	  manipulated by an attacker. Loading it from persistent media imposes a
+	  security risk and should thus be disabled.
+
 config RATP
 	bool "Allow remote control via RATP"
 	depends on $(kconfig-enabled,CONSOLE_RATP)
diff --git a/common/environment.c b/common/environment.c
index 33ab4c43295da0c66811d16649d0d6cc1a711277..62b8120cbd7d839b0d995bfe67b4e869a9e12aee 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -30,6 +30,7 @@
 #include <efi/partition.h>
 #include <bootsource.h>
 #include <magicvar.h>
+#include <security/config.h>
 #else
 #define EXPORT_SYMBOL(x)
 #endif
@@ -449,6 +450,11 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
 	int ret = 0;
 	size_t size, rsize;
 
+#ifdef __BAREBOX__
+	if (!IS_ALLOWED(SCONFIG_ENVIRONMENT_LOAD))
+		return -EPERM;
+#endif
+
 	if (!filename)
 		filename = default_environment_path_get();
 	if (!filename)

-- 
2.39.5



