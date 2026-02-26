Delivery-date: Thu, 26 Feb 2026 09:50:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvX4O-005pEM-1o
	for lore@lore.pengutronix.de;
	Thu, 26 Feb 2026 09:50:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvX4O-0004GH-JR
	for lore@pengutronix.de; Thu, 26 Feb 2026 09:50:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9XotN2hdGVrLzJ/uPbhZR67eqfXqaCTGWzoSZQ7of4E=; b=xfwJaLaHMl4fcySnOv8DtRXkik
	4SHgDg/Iv/XVHooJOkzny19QmMm/iN25nOFK6f4VYfBpWCTsqHOHP9dNF9y9XC4XfwNXbhqeN+b5Q
	7to1VLD+BbiPZdx20oS0r1CQvBTukBVPdqOWcMYDplXwS6l8JhCFwxox/3tX6e1bYG9AoXZ/T5bCb
	ENps7uSlJLijL48qb66m82Kz803dKlC30f8yBN4nM0559JWrWWC7sCe6ymRNXPlSRKAMvMBVkmqXc
	XPx8XoIUI4WDXDcU5qEfyVm/I9/tdIa/Ahu6ewAVQ/h2zXUWnrKSN6+smvY65Eq1jpl201Vvv9rlu
	AKbXk9QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvX3q-00000005hOw-37DF;
	Thu, 26 Feb 2026 08:49:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvX3n-00000005hLW-23Ud
	for barebox@lists.infradead.org;
	Thu, 26 Feb 2026 08:49:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvX3j-0003zg-Vw; Thu, 26 Feb 2026 09:49:24 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvX3i-002hW0-17;
	Thu, 26 Feb 2026 09:49:23 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvX3j-00000004ufu-2ete;
	Thu, 26 Feb 2026 09:49:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Feb 2026 09:49:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-security-policies-not-so-much-compile-v2-2-b667deba06ff@pengutronix.de>
References: <20260226-security-policies-not-so-much-compile-v2-0-b667deba06ff@pengutronix.de>
In-Reply-To: <20260226-security-policies-not-so-much-compile-v2-0-b667deba06ff@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772095763; l=3083;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=GRnifxtv/nqXjLHRXnkxGdxpRbDX4Sf+7T61PvthHBM=;
 b=gBkF5MzvRreP9fOaJxoiwZW/Wm8sloyeoeQUeXHgTp86GFFDDEmNF9s81hJtAY4sENMnaEynN
 n1vSXJNTdloAtLGNDAMQ8B8g+eioRLFTLPsS/79oJZ0WkT1aLdgUVe6
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_004927_529703_0AB85C25 
X-CRM114-Status: GOOD (  13.17  )
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
Subject: [PATCH v2 2/2] kbuild: policy: support out-of-tree builds for
 external policy files
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
Link: https://lore.barebox.org/20260225153057.3199724-2-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile                | 2 +-
 scripts/Makefile.policy | 7 +++++++
 security/Makefile       | 9 ++++++---
 3 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/Makefile b/Makefile
index 4bf77896b6..a5b2543900 100644
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
index f2c6b204d5..12aa920c04 100644
--- a/scripts/Makefile.policy
+++ b/scripts/Makefile.policy
@@ -80,6 +80,13 @@ else
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



