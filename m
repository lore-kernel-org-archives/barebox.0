Delivery-date: Wed, 20 Aug 2025 16:05:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojRg-002dey-0k
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 16:05:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojRe-00015u-LC
	for lore@pengutronix.de; Wed, 20 Aug 2025 16:05:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ANBSzrkuEHgp9ArSzQxtniX7uJlBReC9rWJj2c5E8VU=; b=Ua0RUBl73HVWaxx7RD3tIC3zqb
	8dBhZZE5JKnQDqjCXZf/UJr0xwDTNysrXyLqwLBB//GjGHEErvqUO/6wfvHHgl2dxLda3+pNfK1I3
	/HrTkbj5Y8f2i+J2zG9ST5MIhyRRymPfd7V7+kPw9G8yxIrS3XQTFXv+TU9Nlaqct6tSAE7DR1w5O
	4rrACAcCsc1I/jgjx/S4TwzCDMo35CRXjVWGyX4tTRX+EgEVN268kNbT6pSn+RtjBxUtxRDqnsh5S
	/7PtDOVErcib1v/HBWGGyHMxxFFJoX225m9mIMg5NfkwBrI1Dzwa9EZgBf3QFAmncOkLbxjOFH7Dr
	Of3W9plg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uojR4-0000000DvtY-12cm;
	Wed, 20 Aug 2025 14:05:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoihM-0000000DjqO-1Uah
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 13:17:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihL-0000fw-0B; Wed, 20 Aug 2025 15:17:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihK-001FpB-1y;
	Wed, 20 Aug 2025 15:17:50 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoihK-004jSI-1Z;
	Wed, 20 Aug 2025 15:17:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 Aug 2025 15:17:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250820-security-policies-v1-7-76fde70fdbd8@pengutronix.de>
References: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
In-Reply-To: <20250820-security-policies-v1-0-76fde70fdbd8@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755695870; l=4445;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Vn/Ycoi3htUMZbThBg5XgLI+RJhj1+pCLSI4z4kjGSA=;
 b=lFGL3MTiWfgzbiX5qwi9blYmCf/kAEnIEYUbYKRZ7/zxaUKmRk1VGiQAbiw7Uf0vbggrB7NJE
 ObFRpd9HC4zA2YYzPHv1xOXjayzluagmQnPwMV6gwDjEFEh9a3JaygT
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_061752_403536_46756EA2 
X-CRM114-Status: GOOD (  14.09  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Ahmad Fatoum <a.fatoum@barebox.org>
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
Subject: [PATCH 07/24] security: policy: support externally provided
 configs
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
 security/Makefile       | 37 +++++++++++++++++++++++++++++++++++++
 security/policy.c       |  3 +++
 3 files changed, 55 insertions(+)

diff --git a/security/Kconfig.policy b/security/Kconfig.policy
index 6c5cb5687c17c5a66f8757191c00d1c3d75a9312..bf938a9f3dd87fc21009f0260f3cf8be7937bd36 100644
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
+	  requires each security policy to match security/*.sconfig, i.e.
+	  be directly located in the security/ directory of the source
+	  source tree and have the .sconfig extension.
+	  If left empty, only security policies explicitly provided
+	  and registered by board code will be available.
+
+	  Absolute paths are disallowed.
+
 config SECURITY_POLICY_NAMES
 	bool
 
diff --git a/security/Makefile b/security/Makefile
index 16b328266a1b35861ee263e8026fc8ebd704aedb..3e92fb776fb2aed36cb79ee267b02c7c279eabce 100644
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
@@ -29,3 +32,37 @@ include/generated/passwd.h: FORCE
 
 $(obj)/password.o: include/generated/passwd.h
 endif # CONFIG_PASSWORD
+
+# External security policy handling
+# ---------------------------------------------------------------------------
+
+external-policy := $(foreach p, \
+	$(call remove_quotes,$(CONFIG_SECURITY_POLICY_PATH)), \
+		$(p:security/%=%))
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
+	$(newline)"$p" must start with security/)))
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
index 10d6148866ab2eba6cc8ff0d78e99025d83ed3e8..774e64968cbab2d5e63155caacebf0a2d31627da 100644
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



