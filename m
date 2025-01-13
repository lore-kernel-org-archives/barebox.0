Delivery-date: Mon, 13 Jan 2025 12:29:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXIdF-000Zro-2o
	for lore@lore.pengutronix.de;
	Mon, 13 Jan 2025 12:29:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXIdE-0006EU-A4
	for lore@pengutronix.de; Mon, 13 Jan 2025 12:29:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fJey5mhN9LCk7yLeMIh+iAbtZnvrRkKR/CdQykyNefA=; b=ssUpYFsxrVegbm9pD5PTEu8AtZ
	/eZdE90zEAyfCJVRugxby8R13XfSm7MD8Mdc7qPINeOiH7RNnatiCFrJiLbpSTRHRd4yJ6lekQJm2
	qZhWJJF+7wcAW96LJRrJjHfgJAjcdsHbctX+OcqksQaj3rgfISQTHCu+0CsOaFVGhUhBGJ657x+lO
	p9B4wiXwXLZfWQul2P4B3azRH6w13afFigOdQkV4v+40PF+4sON8Yc33eHTsr1RL7ubvVR/LV3zzq
	nnQFSTPlbIjDlSQoxlnJnQhj7kJgD5VAHFwY8QsOmxMWTS7pBA1RY6jzac3Tx2f/MtB/gkfJQ1wa0
	sZcXLr5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXIcg-00000004uQ5-2ZUs;
	Mon, 13 Jan 2025 11:28:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXIau-00000004tqx-2Ogb
	for barebox@lists.infradead.org;
	Mon, 13 Jan 2025 11:26:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXIar-0005eh-Sw; Mon, 13 Jan 2025 12:26:53 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXIar-000FRI-0K;
	Mon, 13 Jan 2025 12:26:53 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXIar-001FK2-1e;
	Mon, 13 Jan 2025 12:26:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 13 Jan 2025 12:26:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250113-k3-r5-v3-7-065fcdcc28d3@pengutronix.de>
References: <20250113-k3-r5-v3-0-065fcdcc28d3@pengutronix.de>
In-Reply-To: <20250113-k3-r5-v3-0-065fcdcc28d3@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736767613; l=1475;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=85U8Lpu7hPTNcHnwf2A9zRJ2GxTZxfh6WuZY5lwtW7Y=;
 b=VnUsEVD1guv0LnSPNVuAJedge50xi9pOkGf3cdFa78c9hMyXBHOztpFh6K2mgUUL2+8K3TDgt
 vqIhcDg1NfjAVbt4+csKThOU2w/YsXBbcgFAFXOpJaOlPXU+qc0UsG9
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_032656_615101_E173CCBC 
X-CRM114-Status: GOOD (  11.13  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 07/23] ARM: K3: mount /boot even with env handling
 disabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox for the Cortex-R5 boot processor doesn't have environment
enabled, but still needs the bootsource mounted to /boot. Both steps
are behind a #ifdef CONFIG_ENV_HANDLING. Move the mounting of /boot
outside the ifdef.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-k3/common.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-k3/common.c b/arch/arm/mach-k3/common.c
index 1b623d22f6..d7b44f31e8 100644
--- a/arch/arm/mach-k3/common.c
+++ b/arch/arm/mach-k3/common.c
@@ -178,7 +178,6 @@ static int am625_init(void)
 }
 postcore_initcall(am625_init);
 
-#if defined(CONFIG_ENV_HANDLING)
 static int omap_env_init(void)
 {
 	char *partname, *cdevname, *envpath;
@@ -217,14 +216,17 @@ static int omap_env_init(void)
 
 	symlink(rootpath, "/boot");
 
-	envpath = xasprintf("%s/barebox.env", rootpath);
+	if (IS_ENABLED(CONFIG_ENV_HANDLING)) {
+		envpath = xasprintf("%s/barebox.env", rootpath);
 
-	pr_debug("Loading default env from %s on device %s\n",
-		 envpath, partname);
+		pr_debug("Loading default env from %s on device %s\n",
+			 envpath, partname);
 
-	default_environment_path_set(envpath);
+		default_environment_path_set(envpath);
+
+		free(envpath);
+	}
 
-	free(envpath);
 out:
 	free(partname);
 	free(cdevname);
@@ -232,4 +234,3 @@ static int omap_env_init(void)
 	return 0;
 }
 late_initcall(omap_env_init);
-#endif

-- 
2.39.5



