Delivery-date: Tue, 28 Apr 2026 11:24:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHega-00HH03-3C
	for lore@lore.pengutronix.de;
	Tue, 28 Apr 2026 11:24:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHega-0006Ir-CF
	for lore@pengutronix.de; Tue, 28 Apr 2026 11:24:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m8OfphG1OAFlL/7qHbdd8odIt6hCdCG98p39ELGhG1c=; b=1nlfK5EE2YjMDWtVChudloZUYx
	Z/a+jrED50irRfldYREgXPTUD0nmEL3AWZkOpXpktqJhxXHp1ckdeAat9z3zslgSWiOpP8Hf0Bw2s
	9w+mISxTYa2esj75Gc4+X9LX8hFhFUzPVnzZKFOoFxaGG3AhwNVnXsalXg+cRa1pb5aFWe0jU3KrX
	rwqy+kaU5zskoPUTkIuA/NyJdmvruR+5cm0iHtEVKlufDLOveyjKYos2O8kNKAD6XdhQ77p8VCuVg
	H/L1nWQk+DEg4X7syo4g/BRpGIHd3M08exf/I1E3XXpNzqXG5ZpYy3ostHzmf6rve4snES+ciri2b
	yrM24xxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHegB-00000001589-200A;
	Tue, 28 Apr 2026 09:24:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHeg9-0000000157H-1EC4
	for barebox@lists.infradead.org;
	Tue, 28 Apr 2026 09:24:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wHefr-0005wp-PS; Tue, 28 Apr 2026 11:24:11 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wHefr-007dfC-0e;
	Tue, 28 Apr 2026 11:24:11 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wHefr-000000093nw-0Yvh;
	Tue, 28 Apr 2026 11:24:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 28 Apr 2026 11:24:12 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260428-env-autoprobe-v1-3-9cdedfa0752e@pengutronix.de>
References: <20260428-env-autoprobe-v1-0-9cdedfa0752e@pengutronix.de>
In-Reply-To: <20260428-env-autoprobe-v1-0-9cdedfa0752e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1777368251; l=2740;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=xU9TFWKAPfCUDll98dx+DNs8LBuiEddgINLNlPXNHGA=;
 b=zwOLrNRvObeIWggISGqkqR08G4CtlV3o+O5EN/N8SctiAqtSDHqzo+ii8ErnhntXIQf4TMfQW
 ZK1iJJyHYawDT6Jqor4txOsXqlbQ8TL5qCkNSl/GcVj0ApMaI0jd32q
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_022429_336720_F0F855BB 
X-CRM114-Status: GOOD (  18.58  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] environment: add explicit option to allow searching
 for environment devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add an explicit Kconfig option to allow searching the environment storage path
based on the barebox environment partition GUID.

So far this depended on CONFIG_INSECURE being set. First of all loading the
barebox environment from storage is always insecure as the barebox environment
doesn't have any security measures. The difference that comes with loading
the environment from an explicitly specified storage device and autoprobing
it from the available block devices is that with the former an attacker would
need access to the internal storage whereas with the latter barebox could
be tricked into loading an environment from an external SD card.

Whether or not this is acceptable depends on the case, so ask the user for it.

Real security can only be provided by not loading an environment from storage
at all, but that can be controlled at compile time by disabling CONFIG_ENV_HANDLING
or at runtime by security policies.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig       | 14 ++++++++++++++
 common/environment.c |  2 +-
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index fd422714d5..f74f06b4ad 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -987,6 +987,20 @@ config ENV_HANDLING
 	  A safe use of the mutable environment may be possible if board code only
 	  mounts it after verifying a JSON Web Token that enables a debug mode.
 
+config ENV_HANDLING_AUTOPROBE
+	depends on ENV_HANDLING
+	bool "Autoprobe for environment devices"
+	default y
+	help
+	  There are two ways for specifying where the barebox environment is. The first one
+	  specifies the path explicitly in the device tree or board code. The other one is
+	  to automatically search it on block devices which is enabled with this option.
+	  Here a partition with the barebox environment GUID is searched. If this option
+	  is enabled and no environment is chosen by device tree or board code then a block
+	  device containing a partition with the barebox environment GUID is used for the
+	  environment. A block device barebox has booted from is preferred over other block
+	  devices.
+
 config DEFAULT_ENVIRONMENT
 	select CRC32
 	bool
diff --git a/common/environment.c b/common/environment.c
index f883a520c6..a3281feca2 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -53,7 +53,7 @@ struct action_data {
 
 #define TMPDIR "/.defaultenv"
 
-static int global_env_autoprobe = IS_ENABLED(CONFIG_INSECURE);
+static int global_env_autoprobe = IS_ENABLED(CONFIG_ENV_HANDLING_AUTOPROBE);
 static char *default_environment_path;
 
 void default_environment_path_set(const char *path)

-- 
2.47.3



