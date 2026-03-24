Delivery-date: Tue, 24 Mar 2026 10:53:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w4ySD-004SFu-07
	for lore@lore.pengutronix.de;
	Tue, 24 Mar 2026 10:53:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w4ySC-00085y-FZ
	for lore@pengutronix.de; Tue, 24 Mar 2026 10:53:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ulImKJWHXRj4w80KAbv8dGdGTjFbVeeFNJE3pnGMSW8=; b=U1IS9DQFuflkyGiDZSARwoODnH
	hQWxbqVUGHxevpEqO6VZJwS4vpf0mYdSobx3XG/n4WTTG4nxUNpu+pHH8QiIX2b4o9dOj7eMXZTI8
	OPjaHzaHksbXZpMN5iHe44CNYJ/Ze4oMEyu8FONUe6lpnV6vgKsIZITweJR+eAaHgoHGIxmWygVlI
	uE+dwVmU8Y2SZmTavG8VPBYo+L85e6ayYy/alq+EqDedkOK+ybOzeHqj0IcG6fwJ3bo0EgmMVba9P
	N6weQgpkx/aLOkvblS3FsAqgnoq5cqhZqxiqVEw3Qi3wDOpbLs2QV2YYxZBdHlV9ARpKsCc+97hka
	VurFfKbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4yRZ-000000018fE-3rML;
	Tue, 24 Mar 2026 09:53:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4yRX-000000018eU-0cOT
	for barebox@lists.infradead.org;
	Tue, 24 Mar 2026 09:53:00 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w4yRU-0007eb-7I; Tue, 24 Mar 2026 10:52:56 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Tue, 24 Mar 2026 10:52:35 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260324-v2026-02-0-topic-sconfig_console-v6-2-f0eb6af2cc06@pengutronix.de>
References: <20260324-v2026-02-0-topic-sconfig_console-v6-0-f0eb6af2cc06@pengutronix.de>
In-Reply-To: <20260324-v2026-02-0-topic-sconfig_console-v6-0-f0eb6af2cc06@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_025259_185354_BBB3994C 
X-CRM114-Status: GOOD (  11.02  )
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
Subject: [PATCH v6 2/7] security: policy: sanity check parameters
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



