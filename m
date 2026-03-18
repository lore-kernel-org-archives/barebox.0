Delivery-date: Wed, 18 Mar 2026 10:22:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2n6o-00289m-0R
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 10:22:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2n6m-0004nV-AO
	for lore@pengutronix.de; Wed, 18 Mar 2026 10:22:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rTraDuj3r4TjGhbUuIdBFOJiesX+KfSVfCykemb+T4M=; b=oC7SuPol1lCobKmNWB8w+9jP/L
	giympnQLHussPoBzHa788UjZ5fyky7/tKB+xh+WMHHZTidSLHaUDmM+n0w+NteTkABnS9/gFl2dOL
	Fwb1rMwWrmhylS5sKBlYKREoOKbcL0eCdbiAAPcahD2SXwCryiQpRrhQ28AEzyScKFUqc041DomZh
	remGC/Zw9DJT5DGKdjjvW74gOTeuw1p+kAe7PA4Bf2MvA2LU0tXRXX2ouCGKr6nfcM7HlQnAuXQ+S
	+559zgBdirqU1IROO6OUP3+BACoOsX16t5XPZh04ezsrlQOZ3NiRVrq9nGDvTiHwnA2PIJ9v3FoYk
	HwzhgPyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2n6S-000000087sX-3HLf;
	Wed, 18 Mar 2026 09:22:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2n6N-000000087om-3epJ
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 09:22:10 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w2n6K-0004T5-Vq; Wed, 18 Mar 2026 10:22:05 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Wed, 18 Mar 2026 10:22:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260318-v2026-02-0-topic-sconfig_console-v3-3-e26055294723@pengutronix.de>
References: <20260318-v2026-02-0-topic-sconfig_console-v3-0-e26055294723@pengutronix.de>
In-Reply-To: <20260318-v2026-02-0-topic-sconfig_console-v3-0-e26055294723@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_022207_918894_48C9F610 
X-CRM114-Status: GOOD (  12.42  )
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
Subject: [PATCH v3 3/5] security: policy: set active policy on boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If init name has been set at compiletime and the policy is available,
because it is part of the path, then set the active policy to the policy
selected by compiletime.
Since this is so early in the bootchain, there is no need to call
security_policy_activate, because there should not be any registered
callbacks at this moment in time.
If no policy could be found, then it will be filled as before by the
first call to is_allowed.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 security/policy.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/security/policy.c b/security/policy.c
index 85333d9e6f..e2d1b10a78 100644
--- a/security/policy.c
+++ b/security/policy.c
@@ -235,6 +235,9 @@ static int security_init(void)
 	if (*CONFIG_SECURITY_POLICY_PATH)
 		security_policy_add(default);
 
+	if (*CONFIG_SECURITY_POLICY_INIT)
+		active_policy = security_policy_get(CONFIG_SECURITY_POLICY_INIT);
+
 	return 0;
 }
 pure_initcall(security_init);

-- 
2.47.3



