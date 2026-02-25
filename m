Delivery-date: Wed, 25 Feb 2026 16:31:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvGrI-005ZLD-1q
	for lore@lore.pengutronix.de;
	Wed, 25 Feb 2026 16:31:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvGrI-0005jZ-MW
	for lore@pengutronix.de; Wed, 25 Feb 2026 16:31:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j9Cl6TI1DsF56eVX1Cg/S5ZgF5qfUigE8L5wjjptKZ4=; b=UHu/be4s6Kk5TF
	YHNZ4f/NQm6WhKlltAWmsYQYr69IAM4/01mDBFgomV/gZ2AUiseT5gSV+xEQDDhvZdKqtl8RVpJUs
	zGEWqwWY2LM4NLwNHt821MuuzQCbK7bAPlFw0MmocEgO+s5YuS+MZXaGvxq73Tc/BKknXGPzofRyK
	cOuJDsHJexcaImOwnOO4trdDdap2DQBhJW08MGYoZm379ufKEgwll/kSOyq7jCnRDbqnEh/KKN71h
	AFJNoG4n+HfiMUdDpHn4IdWkXGqjxjKiXU69f4c/eOBZ+HewtvD81AiQI4aWbD0XqKL6G1S9kHgl+
	zMfNPad/waHQ6rchQbTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvGqt-00000004IJJ-3QfO;
	Wed, 25 Feb 2026 15:31:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvGqr-00000004IIQ-00Y0
	for barebox@lists.infradead.org;
	Wed, 25 Feb 2026 15:31:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvGqp-0005YR-GK; Wed, 25 Feb 2026 16:30:59 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvGqn-002aK6-2y;
	Wed, 25 Feb 2026 16:30:59 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvGqp-0000000DQYb-0hId;
	Wed, 25 Feb 2026 16:30:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 25 Feb 2026 16:30:55 +0100
Message-ID: <20260225153057.3199724-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_073101_049571_60AAB2C1 
X-CRM114-Status: GOOD (  10.96  )
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
Cc: Claude <noreply@anthropic.com>
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
Subject: [PATCH 1/2] kbuild: make collect-policies lightweight with standalone Makefile.policy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Claude <noreply@anthropic.com>

collect-policies previously depended on $(barebox-dirs), which requires
`prepare scripts` and triggers unnecessary rebuilds. Repurpose
Makefile.policy to support dual-mode operation: when invoked standalone
via $(collect)=dir it bootstraps kbuild infrastructure and recurses
through subdirectories (like Makefile.clean), and when included from
Makefile.build it provides the existing build-time .sconfig rules.

Add a $(collect) shorthand in Kbuild.include and replace the
collect-policies target to use lightweight _collect_ prefixed dirs
with no build prerequisites.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile                | 24 +++++++++++------
 scripts/Makefile.policy | 59 +++++++++++++++++++++++++++++++++++++++++
 2 files changed, 75 insertions(+), 8 deletions(-)

diff --git a/Makefile b/Makefile
index 9ba624f291..14921da40a 100644
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
+collect-dirs    := $(addprefix _collect_,$(barebox-alldirs))
+
+PHONY += _collect_clean $(collect-dirs) collect-policies
+_collect_clean:
+	$(Q)find $(objtree)/ -name policy-list -delete 2>/dev/null || true
+
+$(collect-dirs): | _collect_clean
+	$(Q)$(MAKE) -f $(srctree)/scripts/Makefile.policy obj=$(patsubst _collect_%,%,$@)
+
+collect-policies: $(collect-dirs)
 
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
index e517feb56e..e4ba84b2cc 100644
--- a/scripts/Makefile.policy
+++ b/scripts/Makefile.policy
@@ -1,5 +1,62 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
+# When invoked standalone (make -f Makefile.policy obj=dir), bootstrap
+# the kbuild infrastructure and handle recursion. When included from
+# Makefile.build, skip straight to the rules.
+
+ifndef build
+# Standalone mode — collect policies without building
+# (invoked via $(collect)=dir, like Makefile.clean)
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
@@ -36,3 +93,5 @@ $(obj)/%.sconfig.c: $(obj)/%.sconfig.tmp FORCE
 # ---------------------------------------------------------------------------
 
 targets += $(always-y)
+
+endif # build
-- 
2.47.3



