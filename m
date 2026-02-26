Delivery-date: Thu, 26 Feb 2026 09:50:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvX4O-005pEe-2w
	for lore@lore.pengutronix.de;
	Thu, 26 Feb 2026 09:50:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvX4P-0004GJ-0k
	for lore@pengutronix.de; Thu, 26 Feb 2026 09:50:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4gkyu4Bg9YoUUaSp9glzCBc03tqE9VIUvoj0mquX/mU=; b=d4Gl3Php7NmzLewxisyGIC/p3V
	F845vVMrO1hRN+ZSIIrpw8HoTcVgA0DEUKCmGoW5mZQpgZmEpMVXXk9T6KECtiPGFFgfNsjUJ6YG8
	QGwCSWH5bBfMWFTURJnWrRPz/3vv2QxddBB9rXtKrsgRfAmxAa4onfKxN+QdGLtZUwrXcNbHX20uK
	6idB0wfaMYuZSaTr8VMhpKHm3DWclEUHSzSQ+ORP30lx59i9KxVjPwt3q0SdsX14HlkXQUNgDtHVy
	jtva5HHQEQ36iD7FeMLy5IJjHHTVNXi+Bs4IK9Vbc7hDvkWrtLrY+97qgHHqmdWXimA3AUOMPDdkW
	rDPtwx4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvX3w-00000005hRu-06BW;
	Thu, 26 Feb 2026 08:49:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvX3t-00000005hPt-1uFJ
	for barebox@lists.infradead.org;
	Thu, 26 Feb 2026 08:49:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvX3k-0003zi-07; Thu, 26 Feb 2026 09:49:24 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvX3i-002hVz-1A;
	Thu, 26 Feb 2026 09:49:23 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvX3j-00000004ufu-2e4M;
	Thu, 26 Feb 2026 09:49:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Feb 2026 09:49:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260226-security-policies-not-so-much-compile-v2-1-b667deba06ff@pengutronix.de>
References: <20260226-security-policies-not-so-much-compile-v2-0-b667deba06ff@pengutronix.de>
In-Reply-To: <20260226-security-policies-not-so-much-compile-v2-0-b667deba06ff@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772095763; l=5182;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=VCzaiwSCtgEKaoQRlpuo+iZdxPkv4NXPchUfxO8CPjw=;
 b=3LD15Yp3uiOcmt4/VN126YYfP3XEo0lSpuw0yU5BurhT6IrYckauQT6o53PRToiAe+wyWyiWQ
 tCV8ekTP61mBjOL/ZRnQLLrOdR86ASEw95aE4rcuy2u5Bwi4GmicwfB
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_004933_499354_28D66F66 
X-CRM114-Status: GOOD (  10.25  )
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
Subject: [PATCH v2 1/2] kbuild: make collect-policies lightweight with
 standalone Makefile.policy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Claude <noreply@anthropic.com>

collect-policies previously depended on $(barebox-dirs), which requires
`prepare scripts` and triggers unnecessary rebuilds. Repurpose
Makefile.policy to support dual-mode operation: when invoked standalone
it bootstraps kbuild infrastructure and recurses through subdirectories
(like Makefile.clean), and when included from Makefile.build it provides
the existing build-time .sconfig rules.

Replace the collect-policies target to use lightweight _policy_collect_
prefixed dirs with no build prerequisites.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile                | 24 +++++++++++++-------
 scripts/Makefile.policy | 58 +++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 74 insertions(+), 8 deletions(-)

diff --git a/Makefile b/Makefile
index 4296c97ef0..4bf77896b6 100644
--- a/Makefile
+++ b/Makefile
@@ -1133,7 +1133,6 @@ $(sort $(BAREBOX_OBJS)) $(BAREBOX_LDS) $(BAREBOX_PBL_OBJS): $(barebox-dirs) ;
 
 PHONY += $(barebox-dirs)
 $(barebox-dirs): prepare scripts
-	@find $(objtree)/$@ -name policy-list -exec rm -f {} \; 2>/dev/null || true
 	$(Q)$(MAKE) $(build)=$@
 
 # Store (new) KERNELRELASE string in include/config/kernel.release
@@ -1228,12 +1227,17 @@ targets += include/generated/security_autoconf.h
 targets += include/generated/sconfig_names.h
 
 KPOLICY = $(shell find $(objtree)/ -name policy-list -exec cat {} \;)
-KPOLICY.tmp = $(addsuffix .tmp,$(KPOLICY))
 
-PHONY += collect-policies
-collect-policies: KBUILD_MODULES :=
-collect-policies: KBUILD_BUILTIN :=
-collect-policies: $(barebox-dirs) FORCE
+collect-dirs    := $(addprefix _policy_collect_,$(barebox-alldirs))
+
+PHONY += _policy_collect_clean $(collect-dirs) collect-policies
+_policy_collect_clean:
+	$(Q)find $(objtree)/ -name policy-list -delete 2>/dev/null || true
+
+$(collect-policy-dirs): | _policy_collect_clean
+	$(Q)$(MAKE) -f $(srctree)/scripts/Makefile.policy obj=$(patsubst _policy_collect_%,%,$@)
+
+collect-policies: $(collect-policy-dirs)
 
 PHONY += security_listconfigs
 security_listconfigs: collect-policies FORCE
@@ -1241,11 +1245,15 @@ security_listconfigs: collect-policies FORCE
 	@$(foreach p, $(KPOLICY), echo $p ;)
 
 PHONY += security_checkconfigs
-security_checkconfigs: collect-policies $(KPOLICY.tmp) FORCE
+security_checkconfigs: collect-policies FORCE
+	+$(Q)$(foreach p, $(KPOLICY), \
+		$(MAKE) $(build)=$(patsubst %/,%,$(dir $p)) $p.tmp ;)
 	+$(Q)$(foreach p, $(KPOLICY), \
 		$(call loop_cmd,security_checkconfig,$p.tmp))
 
-security_%config: collect-policies $(KPOLICY.tmp) FORCE
+security_%config: collect-policies FORCE
+	+$(Q)$(foreach p, $(KPOLICY), \
+		$(MAKE) $(build)=$(patsubst %/,%,$(dir $p)) $p.tmp ;)
 	+$(Q)$(foreach p, $(KPOLICY), $(call loop_cmd,sconfig, \
 		$(@:security_%=%),$p.tmp))
 ifeq ($(KPOLICY_TMPUPDATE),)
diff --git a/scripts/Makefile.policy b/scripts/Makefile.policy
index e517feb56e..f2c6b204d5 100644
--- a/scripts/Makefile.policy
+++ b/scripts/Makefile.policy
@@ -1,5 +1,61 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
+# When invoked standalone (make -f Makefile.policy obj=dir), bootstrap
+# the kbuild infrastructure and handle recursion. When included from
+# Makefile.build, skip straight to the rules.
+
+ifndef build
+# Standalone mode — collect policies without building
+
+src := $(obj)
+
+PHONY := __collect
+__collect:
+
+policy-y :=
+
+include scripts/Kbuild.include
+
+# Include Kconfig output so CONFIG_* symbols (e.g. CONFIG_SECURITY_POLICY_PATH)
+# are available when security/Makefile computes external-policy.
+-include include/config/auto.conf
+
+kbuild-dir := $(if $(filter /%,$(src)),$(src),$(srctree)/$(src))
+include $(if $(wildcard $(kbuild-dir)/Kbuild), $(kbuild-dir)/Kbuild, $(kbuild-dir)/Makefile)
+
+__subdir-y	:= $(patsubst %/,%,$(filter %/, $(obj-y)))
+subdir-y	+= $(__subdir-y)
+__subdir-m	:= $(patsubst %/,%,$(filter %/, $(obj-m)))
+subdir-m	+= $(__subdir-m)
+
+subdir-ym	:= $(sort $(subdir-y) $(subdir-m))
+subdir-ym	:= $(addprefix $(obj)/,$(subdir-ym))
+
+real-policy-y	:= $(addprefix $(obj)/,$(policy-y))
+
+# external-policy is set by security/Makefile from CONFIG_SECURITY_POLICY_PATH
+real-external-policy := $(addprefix $(obj)/,$(external-policy))
+all-policy	:= $(real-policy-y) $(real-external-policy)
+
+quiet_cmd_collect = COLLECT $(obj)
+      cmd_collect = { $(foreach p,$(all-policy),echo $(p);) :; } > $(obj)/policy-list
+
+__collect: $(subdir-ym)
+ifneq ($(strip $(all-policy)),)
+	$(Q)mkdir -p $(obj)
+	$(call cmd,collect)
+endif
+	@:
+
+PHONY += $(subdir-ym)
+$(subdir-ym):
+	$(Q)$(MAKE) -f $(srctree)/scripts/Makefile.policy obj=$@
+
+.PHONY: $(PHONY)
+
+else
+# Included from Makefile.build — provide build-time rules
+
 real-policy-y   := $(addprefix $(obj)/, $(policy-y))
 
 targets         += $(addsuffix .tmp, $(real-policy-y))
@@ -36,3 +92,5 @@ $(obj)/%.sconfig.c: $(obj)/%.sconfig.tmp FORCE
 # ---------------------------------------------------------------------------
 
 targets += $(always-y)
+
+endif # build

-- 
2.47.3



