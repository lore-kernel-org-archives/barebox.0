Delivery-date: Wed, 25 Feb 2026 16:31:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvGrI-005ZKs-0f
	for lore@lore.pengutronix.de;
	Wed, 25 Feb 2026 16:31:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvGrI-0005jY-ER
	for lore@pengutronix.de; Wed, 25 Feb 2026 16:31:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2UfxLRwwWsWEhdUwCz6qV1vZoZahKSasiGoUqdi8Tj0=; b=wdIhTWGtee42aU
	L/h5syE/0eSCVitlcbVzplgVWKFkx27/HQ3WwZQGznoULGb6nCxVTLyU80tqykEMr1+XSRPwZSzDz
	4PDsYrF+VwcdrboJaz2f6tOj8ieCODIcG1kyoqp93j0+Zc7sgy9gxsiDxKfeeA+LCZAtDVHoULLEE
	fFDoZRX2DHylAHTOJqwjSLaNlrIpmVpdtjXZ9ypPNNk8xwMig2jaUSDkHInVsBo2d32yyyc0DhhBj
	theQUW/fxoKeZYecq01vXlJEpjed24+UwstAr1McG407iBc6Y4v2vM+DEzPvg4U8Z+fx8Ffyf8aiB
	hSYWNGqRhz6Xno+bEOUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvGqu-00000004IJW-0MOe;
	Wed, 25 Feb 2026 15:31:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvGqr-00000004IIU-2stN
	for barebox@lists.infradead.org;
	Wed, 25 Feb 2026 15:31:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvGqq-0005Yg-9j; Wed, 25 Feb 2026 16:31:00 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvGqo-002aKA-2T;
	Wed, 25 Feb 2026 16:31:00 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvGqq-0000000DQYb-04bv;
	Wed, 25 Feb 2026 16:31:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 25 Feb 2026 16:30:56 +0100
Message-ID: <20260225153057.3199724-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260225153057.3199724-1-s.hauer@pengutronix.de>
References: <20260225153057.3199724-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_073101_723247_7B63BA23 
X-CRM114-Status: GOOD (  13.20  )
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
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] kbuild: policy: support out-of-tree builds for external policy files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far the sconfig files were required to be in the source tree which
was a deliberate decision because we wanted the sconfig files to be
committed. With barebox integrated into build systems the sconfig files
are most of the time stored in the build system anyway, so having
them in the source tree is unnecessary and just prevents sharing the
barebox source tree between different builds.

Change this by:
- Using resolve-external instead of resolve-srctree when copying
  .sconfig.tmp files back after security_%config
- Adding a .sconfig.tmp rule in Makefile.policy analogous to the
  existing .config.tmp rule
- Searching both srctree and objtree for external policy files in
  security/Makefile and resolving the correct path for dependencies

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile                | 2 +-
 scripts/Makefile.policy | 7 +++++++
 security/Makefile       | 9 ++++++---
 3 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/Makefile b/Makefile
index 14921da40a..1bcea26ef0 100644
--- a/Makefile
+++ b/Makefile
@@ -1258,7 +1258,7 @@ security_%config: collect-policies FORCE
 		$(@:security_%=%),$p.tmp))
 ifeq ($(KPOLICY_TMPUPDATE),)
 	+$(Q)$(foreach p, $(KPOLICY), \
-		cp 2>/dev/null $p.tmp $(call resolve-srctree,$p) || true;)
+		cp 2>/dev/null $p.tmp $(call resolve-external,$p) || true;)
 endif
 
 quiet_cmd_sconfigpost = SCONFPP $@
diff --git a/scripts/Makefile.policy b/scripts/Makefile.policy
index e4ba84b2cc..3f85972fb4 100644
--- a/scripts/Makefile.policy
+++ b/scripts/Makefile.policy
@@ -81,6 +81,13 @@ else
 	$(call if_changed,shipped)
 endif
 
+$(obj)/%.sconfig.tmp: $(obj)/%.sconfig FORCE
+ifeq ($(KPOLICY_TMPUPDATE),)
+	$(call filechk,cat)
+else
+	$(call if_changed,shipped)
+endif
+
 quiet_cmd_sconfigpost_c = SCONFPP $@
       cmd_sconfigpost_c = $(SCONFIGPOST) -o $@ -D$(depfile) $(2)
 
diff --git a/security/Makefile b/security/Makefile
index 1096cbfb9b..510fe5af65 100644
--- a/security/Makefile
+++ b/security/Makefile
@@ -52,12 +52,15 @@ $(foreach p, $(external-policy), \
 	CONFIG_SECURITY_POLICY_PATH contains path separators.\
 	$(newline)"$p" must start with security/)))
 $(foreach p, $(external-policy), \
-	$(if $(wildcard $(srctree)/$(src)/$p),,$(error \
+	$(if $(or $(wildcard $(srctree)/$(src)/$p),$(wildcard $(objtree)/$(src)/$p)),,$(error \
 	CONFIG_SECURITY_POLICY_PATH contains non-existent files.\
-	$(newline)"$p" does not exist in $$(srctree)/security)))
+	$(newline)"$p" does not exist in $$(srctree)/security or $$(objtree)/security)))
 endif
 
-$(obj)/policy-list: $(addprefix $(src)/,$(external-policy)) FORCE
+external-policy-src = $(foreach p,$(external-policy),\
+    $(if $(wildcard $(srctree)/$(src)/$p),$(src)/$p,$(obj)/$p))
+
+$(obj)/policy-list: $(external-policy-src) FORCE
 	$(call if_changed,gen_order_src)
 
 targets += $(external-policy-tmp)
-- 
2.47.3



