Delivery-date: Fri, 29 Nov 2024 12:45:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGzQy-001q8e-11
	for lore@lore.pengutronix.de;
	Fri, 29 Nov 2024 12:45:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGzQx-0005gi-Af
	for lore@pengutronix.de; Fri, 29 Nov 2024 12:45:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Phdjg9HmEYs8pw9d6j1MOFF8GM6OjWRKMkUN/e6pewk=; b=VFgPcbS0avR3INnqxddyQ3DsGg
	53MVi85ki6/wwbgDkI6wG4ZnMgOPHJpNq+IVMqvrkacSIqtj7FeaG4/jwFPLSufrcmww+wtFO9XSa
	EB85/ZZSF5CwKxbtuhcX1w95uE54PGn8GnAl92Swq9LUHjODbBsEct5ZVNwI0aM42YL/doPBPyFZr
	a7vssuxWwoqhE9l3Pqe3wGxe2uAGWIlNaBR8XtUKNn3MgYXzCt+9PwSzme5IEH28pCuv8WTNDwQyn
	+Ktgs773oXTOIalfd4yCU1S2ahWXR1tExpRljiUbqYIxRzpdvFPU8JhTmlVooJAD6WCD7flLtOuon
	rzopuHmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzQK-0000000HaBh-3Hvf;
	Fri, 29 Nov 2024 11:44:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzQG-0000000Ha9A-2O5a
	for barebox@bombadil.infradead.org;
	Fri, 29 Nov 2024 11:44:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=Phdjg9HmEYs8pw9d6j1MOFF8GM6OjWRKMkUN/e6pewk=; b=oXYDVTcfVkBqSjLOpen+GvsPYG
	xNwGeSrxbno3mzzPbTsVBBuijeuK8kjLdh2vOnPLEmVYGlsue+W43rsfPYIeyYzh/8ElvOa3aACTy
	h/0XskeY/RYmxMOHJrKPtEhS9rkse1ux1GIsekxPann7alL8jyKEN+NBAXX6bCz6UcZ3f3JEtRaBU
	J8AZ3Jj/w/JHJoYiZsJ5b1DJbdwK6QEkDxURQm0cOTDcB+Ml9kBNM6MHcWHxbUCe3Umd+kfB+cbq9
	NW3ENeb3+5JPLnLcUEFtU+OLAh7+0Nr5bqf8nuBZuICHiqgZ7YqbCAQ3CHiL0dOef7xE9Zl9xEkxe
	0OP2FqKg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzQD-00000001jO6-3Y7g
	for barebox@lists.infradead.org;
	Fri, 29 Nov 2024 11:44:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzQA-0005CD-5j; Fri, 29 Nov 2024 12:44:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzQ9-000mJN-08;
	Fri, 29 Nov 2024 12:44:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzQ9-000vyS-2E;
	Fri, 29 Nov 2024 12:44:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Nov 2024 12:44:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241129-k3-r5-v1-7-67c4bb42a5c7@pengutronix.de>
References: <20241129-k3-r5-v1-0-67c4bb42a5c7@pengutronix.de>
In-Reply-To: <20241129-k3-r5-v1-0-67c4bb42a5c7@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732880665; l=1475;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=vBmH7mWW600AlJm6WsUDQdHySoay/fHyX73Fg99F55E=;
 b=9ONokyEWTdSiPbW7VZ225ltt+A88XG8eeiRnLCXvTzu/yivWCKtslsTtAj1mCYc4VjVDsgQxA
 G8Dvg7MbkqbDjfkRvM2KwSLIvP6gCLo7K8BcNRv3cUEuNyosUfWNHuL
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_114429_965432_5618588A 
X-CRM114-Status: GOOD (  10.84  )
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
Subject: [PATCH 07/20] ARM: K3: mount /boot even with env handling disabled
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
index 13f3f5e169..ee20e23b1a 100644
--- a/arch/arm/mach-k3/common.c
+++ b/arch/arm/mach-k3/common.c
@@ -188,7 +188,6 @@ static int am625_init(void)
 }
 postcore_initcall(am625_init);
 
-#if defined(CONFIG_ENV_HANDLING)
 static int omap_env_init(void)
 {
 	char *partname, *cdevname, *envpath;
@@ -227,14 +226,17 @@ static int omap_env_init(void)
 
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
@@ -242,4 +244,3 @@ static int omap_env_init(void)
 	return 0;
 }
 late_initcall(omap_env_init);
-#endif

-- 
2.39.5



