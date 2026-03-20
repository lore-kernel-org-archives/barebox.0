Delivery-date: Fri, 20 Mar 2026 08:18:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3U7Q-002wpN-37
	for lore@lore.pengutronix.de;
	Fri, 20 Mar 2026 08:18:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3U7Q-0000ro-3L
	for lore@pengutronix.de; Fri, 20 Mar 2026 08:18:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TzgOZIsFmKXoCGCZMQMuWHscsFpNie+MVZfdd5AR2Ds=; b=Pi0y5zppM10Q4iSDbQXKPbb/+c
	um2djMUs9umvvvJJ29ZR2tdeQUc22XojT7S9FrNBUF5ePpcdJKno7cUuYNJKex8surq3/n5io4S6W
	FAgbFnpnHPbkxh+JD4wxCL7LaFbo/qcvX3HV0eHudVnbmMMm3+oGrI2+8rk6uFaVbPwZAK5Dh/g86
	ZsDggX3PU7KBwryU4SXnoo6NxZ14HIJ/GcAcksIo36Us5CiqZoRNnwJqe6RESx8Hps/vjwqxkZrA9
	vhXPJIgNEK3MJkJJOj0/iNtZvQ3ZVFg/eQAOi8gFmi4/TpmEcNtcC3MsEFWik/Y1WcilJxYeBCRkI
	jTzsqMHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3U70-0000000CE6h-2DEr;
	Fri, 20 Mar 2026 07:17:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3U6x-0000000CE3N-2FTp
	for barebox@bombadil.infradead.org;
	Fri, 20 Mar 2026 07:17:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=TzgOZIsFmKXoCGCZMQMuWHscsFpNie+MVZfdd5AR2Ds=; b=J7TkNUmXX13y1zF1gcZHaX4eoa
	C6Nz1Uia5Dd6rgbP1tKJbHsdC+1HmkBIK9J+MIIqUGdWzzwf9isXpKO+52fj1zX0a2qyqL6tzPXb2
	TZUks5PzrIizqRxQ6HRVVohpqEJbYDMrV9mhyHTTWIyJd/besZoIy25nyYa1R1IFjz9lbLxtvVWMb
	Eh7vGy9Yud7u5YryR9xH0I38EdWLSDcqN/y59Sich+ZkHP6G7ohDXDmQyXYQsycmuk9UAshz1jTuq
	HOmlXoEa2paSgXY8u+lflbFr36bVypdt5PonwCMe1cjGYhrP3SrsfIXsGHQxT+Ned7lNd4QHUpeYp
	b8nKs91g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3U6t-0000000F2Gk-0wvg
	for barebox@lists.infradead.org;
	Fri, 20 Mar 2026 07:17:33 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w3U6r-0000T8-W3; Fri, 20 Mar 2026 08:17:30 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 20 Mar 2026 08:17:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-v2026-02-0-topic-sconfig_console-v5-3-2efcaa7cb03e@pengutronix.de>
References: <20260320-v2026-02-0-topic-sconfig_console-v5-0-2efcaa7cb03e@pengutronix.de>
In-Reply-To: <20260320-v2026-02-0-topic-sconfig_console-v5-0-2efcaa7cb03e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_071731_590341_FC503A1A 
X-CRM114-Status: GOOD (  14.22  )
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
Subject: [PATCH v5 3/7] security: policy: remove global active_policy var
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Replace with a getter function called security_policy_get_active(), that
automatically initializes the active_policy, if an initial policy is
set.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 commands/sconfig.c        |  2 ++
 include/security/policy.h |  3 +--
 security/Kconfig.policy   |  3 ++-
 security/policy.c         | 16 ++++++++++------
 4 files changed, 15 insertions(+), 9 deletions(-)

diff --git a/commands/sconfig.c b/commands/sconfig.c
index 3ca4478270..7afb24366b 100644
--- a/commands/sconfig.c
+++ b/commands/sconfig.c
@@ -114,6 +114,7 @@ static int do_sconfig_flags(int argc, char *argv[])
 static struct security_policy *alloc_policy(void)
 {
 	struct security_policy *override;
+	const struct security_policy *active_policy = security_policy_get_active();
 
 	override = xmalloc(sizeof(*override));
 
@@ -137,6 +138,7 @@ static void free_policy(struct security_policy *policy)
 
 static int do_sconfig(int argc, char *argv[])
 {
+	const struct security_policy *active_policy = security_policy_get_active();
 	struct security_policy *override;
 	bool allow_color;
 	int i, ret;
diff --git a/include/security/policy.h b/include/security/policy.h
index c41220ef3b..11490bf173 100644
--- a/include/security/policy.h
+++ b/include/security/policy.h
@@ -25,9 +25,8 @@
 #define POLICY_TAMPER		"tamper"
 #define POLICY_FIELD_RETURN	"return"
 
-extern const struct security_policy *active_policy;
-
 const struct security_policy *security_policy_get(const char *name);
+const struct security_policy *security_policy_get_active(void);
 
 int security_policy_activate(const struct security_policy *policy);
 int security_policy_select(const char *name);
diff --git a/security/Kconfig.policy b/security/Kconfig.policy
index 9ea52e91da..e778327b0d 100644
--- a/security/Kconfig.policy
+++ b/security/Kconfig.policy
@@ -49,7 +49,8 @@ config SECURITY_POLICY_INIT
 	prompt "Initial security policy"
 	help
 	  The policy named here will be automatically selected the first
-	  time a security policy is to be consulted.
+	  time a security policy is to be consulted or the currently active
+	  policy is queried.
 	  It's recommended to use a restrictive policy here and remove
 	  the restrictions if needed instead of the other way round.
 
diff --git a/security/policy.c b/security/policy.c
index 95e7bf99a2..fce527df67 100644
--- a/security/policy.c
+++ b/security/policy.c
@@ -60,15 +60,12 @@ static bool __is_allowed(const struct security_policy *policy, unsigned option)
 
 bool is_allowed(const struct security_policy *policy, unsigned option)
 {
-	policy = policy ?: active_policy;
-
 	if (WARN(option > SCONFIG_NUM))
 		return false;
 
-	if (!policy && *CONFIG_SECURITY_POLICY_INIT) {
-		security_policy_select(CONFIG_SECURITY_POLICY_INIT);
-		policy = active_policy;
-	}
+	/* initialize and use active policy if none is selected */
+	if (!policy)
+		policy = security_policy_get_active();
 
 	if (policy) {
 		bool allow = __is_allowed(policy, option);
@@ -108,6 +105,13 @@ int security_policy_activate(const struct security_policy *policy)
 	return 0;
 }
 
+const struct security_policy *security_policy_get_active(void)
+{
+	if (!active_policy && *CONFIG_SECURITY_POLICY_INIT)
+		security_policy_select(CONFIG_SECURITY_POLICY_INIT);
+	return active_policy;
+}
+
 const struct security_policy *security_policy_get(const char *name)
 {
 	const struct policy_list_entry *entry;

-- 
2.47.3



