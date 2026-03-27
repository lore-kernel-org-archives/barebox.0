Delivery-date: Fri, 27 Mar 2026 14:35:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w67Ly-005jmv-0Z
	for lore@lore.pengutronix.de;
	Fri, 27 Mar 2026 14:35:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w67Lx-0007UO-JZ
	for lore@pengutronix.de; Fri, 27 Mar 2026 14:35:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iNJNBWCVWMoPI0xwRE5rIwG+ILgsLfEW30AZP7EIysE=; b=RO5F/lHuH7F3Pkv/8ZkR/Y0Nmw
	fEja5Q+N9waV5wHYHdV7t/UyQEKxRJpZxqNeGGHTRHx0YZdmaY5T1mQcHNMacDnt0lbfHkZGINDez
	l9SY/Xp/EGDXh3UjJLncVru8Hzh96+0+JjtE75FVyPdFq80MngKbmr2uDzO5n6KbEDtiB+zF6i8a6
	4hhcFyI6ge84FYfg64IDiVHEa5b1oECRVZS7pHo1JSMEJ/ZLLIGLUCMCpYDPUNr0R8DBejF3XsuYb
	CjJdbaGUDMj1K93hSdINWEVrITnOSsnFixYssmFYteskLuu5i0jMOp+Ew/E/4cZ2DaFH0yhRNh1sQ
	q6DaU0oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w67LN-00000007S8Z-25YP;
	Fri, 27 Mar 2026 13:35:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w67LH-00000007S54-3kEw
	for barebox@lists.infradead.org;
	Fri, 27 Mar 2026 13:35:18 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w67LE-0006yD-E0; Fri, 27 Mar 2026 14:35:12 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 27 Mar 2026 14:35:02 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260327-v2026-02-0-topic-sconfig_console-v7-4-67a52ff65ed3@pengutronix.de>
References: <20260327-v2026-02-0-topic-sconfig_console-v7-0-67a52ff65ed3@pengutronix.de>
In-Reply-To: <20260327-v2026-02-0-topic-sconfig_console-v7-0-67a52ff65ed3@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_063515_970004_69006920 
X-CRM114-Status: UNSURE (   8.93  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v7 4/7] security: policy: add notifier chain for name
 change
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add an additional notifier chain, that gets called, whenever a security
policy itself is changed, independent of the policies that have changed,
which could be used to inform users about the currently selected policy
name.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 include/security/config.h | 1 +
 security/policy.c         | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/include/security/config.h b/include/security/config.h
index b37ef4272c..35a5e963f7 100644
--- a/include/security/config.h
+++ b/include/security/config.h
@@ -20,6 +20,7 @@ extern const char *sconfig_names[SCONFIG_NUM];
 int sconfig_lookup(const char *name);
 
 extern struct notifier_head sconfig_notifier_list;
+extern struct notifier_head sconfig_name_notifier;
 
 bool is_allowed(const struct security_policy *policy, unsigned option);
 
diff --git a/security/policy.c b/security/policy.c
index 2924bfeabc..e3c68aa992 100644
--- a/security/policy.c
+++ b/security/policy.c
@@ -47,6 +47,7 @@ static const struct security_policy *active_policy;
 
 static LIST_HEAD(policy_list);
 NOTIFIER_HEAD(sconfig_notifier_list);
+NOTIFIER_HEAD(sconfig_name_notifier);
 
 static bool __is_allowed(const struct security_policy *policy, unsigned option)
 {
@@ -102,6 +103,8 @@ int security_policy_activate(const struct security_policy *policy)
 		notifier_call_chain(&sconfig_notifier_list, i, NULL);
 	}
 
+	notifier_call_chain(&sconfig_name_notifier, 0, NULL);
+
 	return 0;
 }
 

-- 
2.47.3



