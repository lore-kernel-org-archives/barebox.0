Delivery-date: Wed, 17 Sep 2025 16:19:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyszs-0046NH-0D
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 16:19:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyszq-0003eL-MY
	for lore@pengutronix.de; Wed, 17 Sep 2025 16:18:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N/M/K4puIerhP0fKXF9NxvD39XPc/sJbuiWq56d1eNI=; b=qjDaJRRl76BOatQIf1+43ppyvG
	VHmvit4dCtwcRoOLK4qTq8XTxl93NPoBY6bFEBd5cdSRAdf5+fa+KO96nR4s4ggiV6Ompq/CwRnnP
	KiPJzou4v/ht3eDyAjCjXB95bvCjcCGawr17GlL/I7Oi3YKtXShXHmb1+8FG4nEHMvv8YdNXP+djF
	bJlKjMp/jWyJL/AGmFJCDZuP+isf1BeKF+BOl4nOEF3QCiMVVxyHqpnAMyyE+4XbQIxYAClaFcQqw
	URwQ/Ghmo9bj/2DmZfOKIAV/S/fC43guhm5+LC5y6C8HGDePxOc/28JQ34CRcJQh3SBhAPczEwcON
	WAHsnN2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszI-0000000C8BS-2MYE;
	Wed, 17 Sep 2025 14:18:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyszH-0000000C87O-0CJ2
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 14:18:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyszF-00031P-JO; Wed, 17 Sep 2025 16:18:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyszF-001mGX-1L;
	Wed, 17 Sep 2025 16:18:21 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uysbA-0000000CZtI-37W7;
	Wed, 17 Sep 2025 15:53:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Sep 2025 15:53:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250917-security-policies-v2-22-f30769a3ff51@pengutronix.de>
References: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
In-Reply-To: <20250917-security-policies-v2-0-f30769a3ff51@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758117208; l=1776;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=lrrYHwyICDqG3rZr9aTR9YFjqemVAgw7rqbmEStIFmU=;
 b=M7H2p+aJwQR09ukAX8KNHhgDdIcnitC2Z2/mAK3Sy3/WakWdldx3GXASdaqr/Jq6lbn5cVdk7
 1eqi/dQBij+D2n8vh8gyhJ73epZMSTfYSzqlTXA+yPbIVeAcaEy+8Vo
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_071823_095653_A58D26B1 
X-CRM114-Status: GOOD (  11.56  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 22/24] security: add security policy for loading barebox
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
2.47.3



