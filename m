Delivery-date: Fri, 27 Mar 2026 14:35:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w67Lw-005jmC-0C
	for lore@lore.pengutronix.de;
	Fri, 27 Mar 2026 14:35:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w67Lv-0007Rz-Ej
	for lore@pengutronix.de; Fri, 27 Mar 2026 14:35:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PvBExvlyOA+/1fO65YEkpmjLNUjLfAKoSO/bIODyIsw=; b=X34LhRR8fdZzu9QP/6ZFWhIWtS
	j5mkiIkWY1GG1dVW9Dc9mT0FEWCtMnJFXtlkcKlclNJFc5eGd8rKXNFRdWWTVnx6BJVvyg0nRnatC
	HHS8vqsPeCjNnC+XKq5ipgb+Qw3gT9YLn5/Hc37Mubpie1UFZknSdayIVWpSaEI2GDUT3GpE6PcG+
	Y0Mhwj8aToF8fceX7pxO0BVQjANRorusFyR/CPGKpMrLp3C1Ox8BCN7BN88BX91t4F44oTmJy3KXO
	uUwFykvfddz4YZLLAuF5jeNTP5QtCeZWk7LmWbntmkICae3uNQsNbTI/hKGZt34PZV/a5HkYf9z0w
	TpJaetyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w67LK-00000007S7Y-3nEz;
	Fri, 27 Mar 2026 13:35:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w67LH-00000007S53-3dPV
	for barebox@lists.infradead.org;
	Fri, 27 Mar 2026 13:35:17 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w67LE-0006yD-Bi; Fri, 27 Mar 2026 14:35:12 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 27 Mar 2026 14:35:00 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260327-v2026-02-0-topic-sconfig_console-v7-2-67a52ff65ed3@pengutronix.de>
References: <20260327-v2026-02-0-topic-sconfig_console-v7-0-67a52ff65ed3@pengutronix.de>
In-Reply-To: <20260327-v2026-02-0-topic-sconfig_console-v7-0-67a52ff65ed3@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_063515_909936_19A2F2C1 
X-CRM114-Status: GOOD (  10.99  )
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
Subject: [PATCH v7 2/7] security: policy: sanity check parameters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Do a sanity check for the __is_allowed, before using it as array
index.

Also updated the off-by-one error in is_allowed.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 commands/sconfig.c | 7 ++++++-
 security/policy.c  | 4 +++-
 2 files changed, 9 insertions(+), 2 deletions(-)

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
index 85333d9e6f..bdfc480500 100644
--- a/security/policy.c
+++ b/security/policy.c
@@ -52,6 +52,8 @@ static bool __is_allowed(const struct security_policy *policy, unsigned option)
 {
 	if (!policy)
 		return true;
+	if (WARN(option >= SCONFIG_NUM))
+		return false;
 
 	return policy->policy[option];
 }
@@ -60,7 +62,7 @@ bool is_allowed(const struct security_policy *policy, unsigned option)
 {
 	policy = policy ?: active_policy;
 
-	if (WARN(option > SCONFIG_NUM))
+	if (WARN(option >= SCONFIG_NUM))
 		return false;
 
 	if (!policy && *CONFIG_SECURITY_POLICY_INIT) {

-- 
2.47.3



