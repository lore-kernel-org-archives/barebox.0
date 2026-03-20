Delivery-date: Fri, 20 Mar 2026 08:18:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3U7N-002wnw-2W
	for lore@lore.pengutronix.de;
	Fri, 20 Mar 2026 08:18:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3U7M-0000oz-SF
	for lore@pengutronix.de; Fri, 20 Mar 2026 08:18:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ulImKJWHXRj4w80KAbv8dGdGTjFbVeeFNJE3pnGMSW8=; b=DIJJZz5FKbzNaQptWP2l/GpE5K
	Ocl8is5+rX98bmcn0VGitBEsByAFt33LYBmHVb8tjEIHgdpe+ZykGzxvyL0VRpZ7Qvvyv5D7JfAjz
	22N+wcu1Fg/xGyWcUF+5WuTzJtfsnRr8pFlH/UvTYHUVorAy1+L/zc+6SzQRd1A/09Y0P3jmpqpfB
	D0yg3LJv/GwaMM7UghEagCNKYjiGzC/oUG7TE2fmM6N+ChCPB3LMFFHW9NnkKEv/JTPtuSDcf5ZUY
	tRbyYshWX0+Ud2RCWVy9tPJkNJH+Vcp7o2bsqW43WziT+PhrHDzzFGSTOdCOu8p19qp2O1RE2oEzS
	ZQxb6JVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3U6z-0000000CE50-0ydt;
	Fri, 20 Mar 2026 07:17:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3U6t-0000000CE1T-3eFF
	for barebox@lists.infradead.org;
	Fri, 20 Mar 2026 07:17:33 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w3U6r-0000T8-Ur; Fri, 20 Mar 2026 08:17:29 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 20 Mar 2026 08:17:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-v2026-02-0-topic-sconfig_console-v5-2-2efcaa7cb03e@pengutronix.de>
References: <20260320-v2026-02-0-topic-sconfig_console-v5-0-2efcaa7cb03e@pengutronix.de>
In-Reply-To: <20260320-v2026-02-0-topic-sconfig_console-v5-0-2efcaa7cb03e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_001731_907309_55AC8727 
X-CRM114-Status: GOOD (  10.43  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v5 2/7] security: policy: sanity check parameters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Do a sanity check for the the is_allowed, before using it as array
index.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 commands/sconfig.c | 7 ++++++-
 security/policy.c  | 2 ++
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/commands/sconfig.c b/commands/sconfig.c
index 02c3a6b1ed..3ca4478270 100644
--- a/commands/sconfig.c
+++ b/commands/sconfig.c
@@ -37,7 +37,12 @@ static void sconfig_print(const struct security_policy *policy)
 static int sconfig_command_notify(struct notifier_block *nb,
 				  unsigned long opt, void *unused)
 {
-	bool allow = is_allowed(NULL, opt);
+	bool allow;
+
+	if (opt >= SCONFIG_NUM)
+		return 0;
+
+	allow = is_allowed(NULL, opt);
 
 	printf("%s%s%s%s\n", allow ? green : red, allow ? "+" : "-", nc,
 	       sconfig_names[opt]);
diff --git a/security/policy.c b/security/policy.c
index 85333d9e6f..95e7bf99a2 100644
--- a/security/policy.c
+++ b/security/policy.c
@@ -52,6 +52,8 @@ static bool __is_allowed(const struct security_policy *policy, unsigned option)
 {
 	if (!policy)
 		return true;
+	if (WARN(option > SCONFIG_NUM))
+		return false;
 
 	return policy->policy[option];
 }

-- 
2.47.3



