Delivery-date: Thu, 03 Sep 2026 14:10:15 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x26Gk-00ALqe-1p
	for lore@lore.pengutronix.de;
	Thu, 03 Sep 2026 14:10:15 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=C64HbkIW;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0F83E2058CF
	for <lore@pengutronix.de>; Thu, 03 Sep 2026 14:10:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Q+DqENis5g4gjlO7JjcFFdLbz58yPGV1HyqaU4ArPmA=; b=C64HbkIWVGITBIxv9Iha4RvM3l
	jEMpBGDotC1Itjltb/kC5u9/LDAdO90wUVip0P/3bKRL+C8BH74K+x8QwDHjJLtwhjRDyWIJ77ipC
	fNGGSRbayx6m8FLFsFd8wbDniJF8+o0b92uZwPw5UuAmrn/7R9Pc6sM5iNRQPyVoUS/OJXw1Eg3eh
	nBRUPhvd3YJK0/Aoorao+hHQV0Zvv5FVeZgb7IpGc0k0/MDbC4tSAqvhHpAWzWMwGI1qVYPdaPoPb
	mXaFx8YA3WqL47efPquf1efquLHxb4G9Or8Go8Y2w9yWkEiZ2ZbotPxl+p+9oyauikFjDiyyUsfoz
	LrdaqJzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x26Fn-0000000HGWG-0gW3;
	Thu, 03 Sep 2026 12:09:15 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x26Fk-0000000HGUp-0wAo
	for barebox@lists.infradead.org;
	Thu, 03 Sep 2026 12:09:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1DF3720582F;
	Thu, 03 Sep 2026 14:09:04 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x26Fc-004kaC-08;
	Thu, 03 Sep 2026 14:09:04 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x26Fb-00000009tuT-3xY9;
	Thu, 03 Sep 2026 14:09:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Stefan Kerkmann <s.kerkmann@pengutronix.de>
Subject: [PATCH] Makefile: fix security_%config configurator targets
Date: Thu,  3 Sep 2026 14:09:00 +0200
Message-ID: <20260903120902.2359859-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_050912_412530_C2B8AF3E 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The security_%config targets documented in Documentation/user/security-policies.rst
    are broken in three ways: The sync with Linux v6.17 dropped the exclusion
    of security_%config from the config-build classification, so the goals are
    now dispatched to scripts/kconfig: 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 0F83E2058CF
X-Stat-Signature: 1ciojrd6qjaukn7fo7ryuurmq6ri5xhu
X-Spamd-Result: default: False [-56.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]

The security_%config targets documented in
Documentation/user/security-policies.rst are broken in three ways:

The sync with Linux v6.17 dropped the exclusion of security_%config
from the config-build classification, so the goals are now dispatched
to scripts/kconfig:

  make[2]: *** No rule to make target 'security_olddefconfig'.  Stop.

The same sync removed $(barebox-alldirs), which collect-policies used
to derive its directory list from. With the list empty, the configurator
only ever sees policy-list files left behind by a previous build.
Collect from $(build-dir) instead; scripts/Makefile.policy recurses
through subdir-y from the top-level Kbuild.

This makes the standalone mode of scripts/Makefile.policy run for the
first time, revealing that it includes scripts/Kbuild.include relative
to the current directory and sets $(src) relative to the objtree, both
of which break out-of-tree builds. Set them up as Makefile.clean does.

Fixes: 48d0d0cc28ed ("kbuild: sync with Linux v6.17")
Fixes: e8f15886952c ("kbuild: make collect-policies lightweight with standalone Makefile.policy")
Assisted-by: Claude:fable-5.1
Reported-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile                | 5 +++--
 scripts/Makefile.policy | 7 +++----
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/Makefile b/Makefile
index 94c34918e0c0..79253470a1fb 100644
--- a/Makefile
+++ b/Makefile
@@ -272,7 +272,8 @@ endif
 need-compiler := $(may-sync-config)
 
 ifeq ($(KBUILD_EXTMOD),)
-    ifneq ($(filter %config,$(MAKECMDGOALS)),)
+    # security_%config targets configure security policies, not .config
+    ifneq ($(filter-out security_%,$(filter %config,$(MAKECMDGOALS))),)
         config-build := 1
         ifneq ($(words $(MAKECMDGOALS)),1)
             mixed-build := 1
@@ -1340,7 +1341,7 @@ targets += include/generated/sconfig_names.h
 
 KPOLICY = $(shell find $(objtree)/ -name policy-list -exec cat {} \;)
 
-collect-dirs    := $(addprefix _policy_collect_,$(barebox-alldirs))
+collect-dirs    := $(addprefix _policy_collect_,$(build-dir))
 
 PHONY += _policy_collect_clean $(collect-dirs) collect-policies
 _policy_collect_clean:
diff --git a/scripts/Makefile.policy b/scripts/Makefile.policy
index fe60eaf989ec..025739c7bf28 100644
--- a/scripts/Makefile.policy
+++ b/scripts/Makefile.policy
@@ -7,21 +7,20 @@
 ifndef build
 # Standalone mode — collect policies without building
 
-src := $(obj)
+src := $(srcroot)/$(obj)
 
 PHONY := __collect
 __collect:
 
 policy-y :=
 
-include scripts/Kbuild.include
+include $(srctree)/scripts/Kbuild.include
 
 # Include Kconfig output so CONFIG_* symbols (e.g. CONFIG_SECURITY_POLICY_PATH)
 # are available when security/Makefile computes external-policy.
 -include include/config/auto.conf
 
-kbuild-dir := $(if $(filter /%,$(src)),$(src),$(srctree)/$(src))
-include $(if $(wildcard $(kbuild-dir)/Kbuild), $(kbuild-dir)/Kbuild, $(kbuild-dir)/Makefile)
+include $(kbuild-file)
 
 __subdir-y	:= $(patsubst %/,%,$(filter %/, $(obj-y)))
 subdir-y	+= $(__subdir-y)
-- 
2.47.3



