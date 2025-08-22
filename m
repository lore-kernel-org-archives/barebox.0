Delivery-date: Fri, 22 Aug 2025 17:29:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upThy-003MNn-12
	for lore@lore.pengutronix.de;
	Fri, 22 Aug 2025 17:29:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1upThx-00082Y-6J
	for lore@pengutronix.de; Fri, 22 Aug 2025 17:29:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7+sveqTHh1VlJJupYpqO425e9YykWCjouAbraV/56wQ=; b=FzjlSTcDF4/Y0iK7GFv9w7NNW+
	KXYo5WLaAOkZsleCN7U3aRgXguSePa7XPB9T+ndzqdwNEQoamAbDsp810MnJKVXY6NT2G89PoIp+4
	1aVGRuJ/KHWgbwXrgEuAxfs7jXOZT9LEfMNT7V4KPogOdYfxqKuMgSpKPFZVfn+iaZzBcx7kDth98
	efzjqFPaguruoYywqlKWsPpOgItgOa41k/RcjWW+z6tY6NuJnprd+ib+h8fyy0tvgvVLMGV52msVG
	8PJLZ4uUefeSHXrx5qAROEGUZA8rxc/XAzvsZN+T+CRTckX7wD5m0Dh9Ks0+qr/lcBIDXdwlwNKI0
	ODQ6Oi4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upThO-0000000317Y-2uMr;
	Fri, 22 Aug 2025 15:29:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upP9W-00000002DW2-0Xgv
	for barebox@lists.infradead.org;
	Fri, 22 Aug 2025 10:37:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1upP9U-0006pW-RO; Fri, 22 Aug 2025 12:37:44 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1upP9U-001Yxi-29;
	Fri, 22 Aug 2025 12:37:44 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1upP9U-00000001UNy-2Hlj;
	Fri, 22 Aug 2025 12:37:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 22 Aug 2025 12:37:43 +0200
Message-ID: <20250822103743.355123-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250820-security-policies-v1-4-76fde70fdbd8@pengutronix.de>
References: <20250820-security-policies-v1-4-76fde70fdbd8@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250822_033746_166002_AE22FD08 
X-CRM114-Status: UNSURE (   9.59  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! Add security policy support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Remove policy-list files before recreating them, otherwise we can get stale
security configs when changing the build configuration or branch.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 49658e5fe2..be87fbbc7a 100644
--- a/Makefile
+++ b/Makefile
@@ -1195,10 +1195,14 @@ targets += include/generated/sconfig_names.h
 KPOLICY = $(shell find $(objtree)/ -name policy-list -exec cat {} \;)
 KPOLICY.tmp = $(addsuffix .tmp,$(KPOLICY))
 
+PHONY += remove-policies
+remove-policies: FORCE
+	find -name "policy-list" | xargs rm
+
 PHONY += collect-policies
 collect-policies: KBUILD_MODULES :=
 collect-policies: KBUILD_BUILTIN :=
-collect-policies: $(barebox-dirs) FORCE
+collect-policies: remove-policies $(barebox-dirs) FORCE
 
 PHONY += security_listconfigs
 security_listconfigs: collect-policies FORCE
-- 
2.47.2



