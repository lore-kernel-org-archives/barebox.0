Delivery-date: Thu, 14 Aug 2025 15:51:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYN3-000WdB-2s
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 15:51:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umYN2-0005CA-3i
	for lore@pengutronix.de; Thu, 14 Aug 2025 15:51:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EeqTV/Kw5ubSOnBEo90QlYzoSvK0BdF8QNrlg0sM8kw=; b=D2TYrNDyThwkpaNCSxxo8aVj5m
	VRBZ8P7hirkz6F9K/4z4lTSm4VxX31vlY2fif0/4iTQ47GS/n9uQqLRFfTXa3drwFt2KHi2COMShE
	g4WfytlxqqC+oBqhrGYqrGr6wjaYI9eGSU8+zMkxq6EkQiLtzciaT9WnKs/GK8WENMPHgM24njTCB
	CUDDWNqGBKFinWgSJnv0WfUGD7TTDPs6w0FsCVOqHFJtzQlQMq3xg03eUhsB5K3Pr4bWAgQp9kcJK
	SLE0MLffBUppn0lErtwZrBXN83zt66HPaLacF8YN9Mbq7Tv/1Ao3GPj7Fe4k1kD9ly2VSXnedKFxo
	hCGNH+RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umYMW-0000000H6hv-47yF;
	Thu, 14 Aug 2025 13:51:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umXfe-0000000GvRo-2Wxk
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 13:07:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfd-0006HM-22; Thu, 14 Aug 2025 15:07:05 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfb-000GH2-1N;
	Thu, 14 Aug 2025 15:07:03 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfb-00Gwpv-14;
	Thu, 14 Aug 2025 15:07:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 14 Aug 2025 15:06:52 +0200
Message-Id: <20250814130702.4039241-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
References: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_060706_645482_3A363AB3 
X-CRM114-Status: GOOD (  13.09  )
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
Subject: [PATCH RFC 07/17] security: policy: support externally provided configs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

The enforcement of security policies to be up-to-date and removal of
implicit syncing nudges users into checking in the actual security
policy into version control. To allow the policies to live outside the
barebox tree, introduce CONFIG_SECURITY_POLICY_PATH that takes a
space-separated list of configs.

For now, the option is very strict: All files referenced must be placed
into security/ in the barebox source directory. Different build rules
sharing the same source directory can install their configs with
different names and customize via CONFIG_SECURITY_POLICY_PATH which options
to include.

sconfigpost also supports iterating over directories, but this feature
is left out for now, as it needs more extensive testing to verify that
targets are rebuilt as often as needed and not more.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 security/Kconfig.policy | 15 +++++++++++++++
 security/Makefile       | 36 ++++++++++++++++++++++++++++++++++++
 security/policy.c       |  3 +++
 3 files changed, 54 insertions(+)

diff --git a/security/Kconfig.policy b/security/Kconfig.policy
index 6c5cb5687c17..36875ea198d1 100644
--- a/security/Kconfig.policy
+++ b/security/Kconfig.policy
@@ -80,6 +80,21 @@ config SECURITY_POLICY_DEFAULT_PANIC
 
 endchoice
 
+config SECURITY_POLICY_PATH
+	string
+	depends on SECURITY_POLICY
+	prompt "Paths to additional security policies"
+	help
+	  Space separated list of security policies that should be
+	  compiled into barebox and registered. This option currently
+	  requires security policies to have the .sconfig extension
+	  and be located in the barebox source tree's security/
+	  directory.
+	  If left empty, only security policies explicitly provided
+	  and registered by board code will be available.
+
+	  Absolute paths are disallowed.
+
 config SECURITY_POLICY_NAMES
 	bool
 
diff --git a/security/Makefile b/security/Makefile
index 16b328266a1b..c7896ed74fb3 100644
--- a/security/Makefile
+++ b/security/Makefile
@@ -8,6 +8,9 @@ obj-pbl-$(CONFIG_HAVE_OPTEE)	+= optee.o
 obj-$(CONFIG_BLOBGEN)		+= blobgen.o
 obj-$(CONFIG_PASSWORD)		+= password.o
 
+# Default password handling
+# ---------------------------------------------------------------------------
+#
 ifdef CONFIG_PASSWORD
 
 ifeq ($(CONFIG_PASSWORD_DEFAULT),"")
@@ -29,3 +32,36 @@ include/generated/passwd.h: FORCE
 
 $(obj)/password.o: include/generated/passwd.h
 endif # CONFIG_PASSWORD
+
+# External security policy handling
+# ---------------------------------------------------------------------------
+
+external-policy := $(foreach p, \
+	$(call remove_quotes,$(CONFIG_SECURITY_POLICY_PATH)), $p)
+
+external-policy-tmp := $(addsuffix .tmp,$(external-policy))
+real-external-policy-tmp := $(addprefix $(obj)/,$(external-policy-tmp))
+
+ifneq ($(external-policy),)
+obj-y	+= default.sconfig.o
+extra-y	+= default.sconfig.c
+always-y += policy-list
+$(foreach p, $(external-policy), \
+	$(if $(findstring /,$p),$(error \
+	CONFIG_SECURITY_POLICY_PATH contains path separators.\
+	$(newline)"$p" must be a file name relative to security/)))
+$(foreach p, $(external-policy), \
+	$(if $(wildcard $(srctree)/$(src)/$p),,$(error \
+	CONFIG_SECURITY_POLICY_PATH contains non-existent files.\
+	$(newline)"$p" does not exit in $$(srctree)/security)))
+endif
+
+$(obj)/policy-list: $(addprefix $(src)/,$(external-policy)) FORCE
+	$(call if_changed,gen_order_src)
+
+targets += $(external-policy-tmp)
+
+$(obj)/default.sconfig.c: $(real-external-policy-tmp) FORCE
+	+$(Q)$(foreach p, $(real-external-policy-tmp), \
+		$(call noop_cmd,security_checkconfig,$p) ;)
+	$(call if_changed_dep,sconfigpost_c,$(real-external-policy-tmp))
diff --git a/security/policy.c b/security/policy.c
index 10d6148866ab..774e64968cba 100644
--- a/security/policy.c
+++ b/security/policy.c
@@ -238,6 +238,9 @@ static int security_init(void)
 	dev_add_param_string(&security_device, "policy", param_set_readonly,
 			     security_policy_get_name, &policy_name, NULL);
 
+	if (*CONFIG_SECURITY_POLICY_PATH)
+		security_policy_add(default);
+
 	return 0;
 }
 pure_initcall(security_init);
-- 
2.39.5



