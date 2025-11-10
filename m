Delivery-date: Mon, 10 Nov 2025 22:47:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIZjb-00HWdf-2D
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 22:47:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIZjb-0001BX-5X
	for lore@pengutronix.de; Mon, 10 Nov 2025 22:47:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ivf+BuYCg+2/ZFWsKsWVI3ywPEHdIeNRVFiryezAtPI=; b=C0Tp2Ckk875HAJypjH2s3ctGn8
	znZpZusPlUYSjdkgMUxjp5JD4OHvGGbGp0bvImIsoRxc1RlxQfB3m6LyRzWNg302gUeAG8uUey7a6
	405+p/0JGEg66FH7EjlfPDMUnUmCoAj65JTGb4zQB9CzFsb7mptd+BgqmASm2bnT9TiKciOX9X8XJ
	cR98HBD2tiPB1e/wlDKLExHRBws1FPwhsuKYL04o4K0ztDBDgCh6FVMz+/0FhGjF/Mui3LDZ3OWOK
	NCxiNyP5IxkttcFu6MoLxroqqk2REQBIg7JOaUI92hswUYKaVIeBB6ipqp5lRZT2jbAbYbsbrxxkQ
	K231GTtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIZiz-00000006AoE-0nqr;
	Mon, 10 Nov 2025 21:46:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIZiw-00000006Anr-1fo8
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 21:46:55 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vIZit-000127-G9; Mon, 10 Nov 2025 22:46:51 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>
Date: Mon, 10 Nov 2025 22:46:42 +0100
Message-ID: <20251110214648.2738052-1-f.pflug@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_134654_438984_A0B3B419 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] security: policy: allow querying the active policy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Sometimes it is needed from board code to not to check what is allowed,
but what is the currently activated security policy to do some stuff.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 include/security/policy.h | 1 +
 security/policy.c         | 8 ++++++++
 2 files changed, 9 insertions(+)

diff --git a/include/security/policy.h b/include/security/policy.h
index c41220ef3b..3eedf6e5ac 100644
--- a/include/security/policy.h
+++ b/include/security/policy.h
@@ -32,6 +32,7 @@ const struct security_policy *security_policy_get(const char *name);
 int security_policy_activate(const struct security_policy *policy);
 int security_policy_select(const char *name);
 void security_policy_list(void);
+bool security_policy_is_active(const char *name);
 
 #ifdef CONFIG_SECURITY_POLICY
 int __security_policy_register(const struct security_policy policy[]);
diff --git a/security/policy.c b/security/policy.c
index 85333d9e6f..abb956014d 100644
--- a/security/policy.c
+++ b/security/policy.c
@@ -225,6 +225,14 @@ static int security_policy_get_name(struct param_d *param, void *priv)
 	return 0;
 }
 
+bool security_policy_is_active(const char *name)
+{
+	if (!active_policy)
+		return false;
+
+	return !strcmp(name, active_policy->name);
+}
+
 static int security_init(void)
 {
 	register_device(&security_device);
-- 
2.47.3



