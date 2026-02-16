Delivery-date: Mon, 16 Feb 2026 09:39:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vru8x-002FzP-3D
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 09:39:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vru8y-0000SZ-5K
	for lore@pengutronix.de; Mon, 16 Feb 2026 09:39:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TUjs+hON/E6U1nQPBWDtqIQinEpse6sZWMVb73OlQA8=; b=a4ejSQAHCsXZgLbySPhwcKjg6d
	e63mZ8v4RAsKqPReKUVT2a5yhACnEwRHAD1BxQkaCumIkQL6w+CDSIk69aGPFKs7LPUD5Vu9yQLQn
	OTwLDjSkuckw0B7XcbXiedtAHj9eYd8O2r9yJpwuUYMavIUL3rsdBbK+l/kem4Z70/m4103UXvW0E
	JowOQ1oaHOm4eLfByJM5CY/J0uQgdgNcUx7nQcPzqzhiERR45Nuea13qK/td58n/UJBxdsBkj2ofn
	agcgExBVgmzm0PQQDqUmWOd6AXqnSLDXqLJGo97ea5Gpvb3EJ68WmfI99CnshK8zYSD0fY93xBVad
	x8Plq4+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vru8O-00000006AD2-3tJz;
	Mon, 16 Feb 2026 08:39:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vru8L-00000006ACB-346f
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 08:39:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vru8J-0000KB-UJ; Mon, 16 Feb 2026 09:39:07 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vru8I-0012Aw-1A;
	Mon, 16 Feb 2026 09:39:07 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vru8J-0000000Err4-2Y28;
	Mon, 16 Feb 2026 09:39:07 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:39:01 +0100
Message-ID: <20260216083907.3543595-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_003909_773800_E6EB5CFC 
X-CRM114-Status: GOOD (  10.43  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] kconfig: add merge_into_defconfig_named to set CONFIG_NAME
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Generated defconfigs that merge fragments into a base config inherit
CONFIG_NAME from the base, which is wrong for testing: pytest uses
CONFIG_NAME to locate the matching Labgrid environment YAML.

Add merge_into_defconfig_named, which appends the correct CONFIG_NAME
to .config before running olddefconfig, and switch all callers over.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile                 |  4 ++--
 arch/arm/Makefile        |  4 ++--
 arch/mips/Makefile       |  6 +++---
 arch/riscv/Makefile      |  4 ++--
 arch/sandbox/Makefile    | 10 +++++-----
 scripts/Makefile.defconf | 13 +++++++++++++
 6 files changed, 27 insertions(+), 14 deletions(-)

diff --git a/Makefile b/Makefile
index 4296c97ef02d..7f31e79439fd 100644
--- a/Makefile
+++ b/Makefile
@@ -618,9 +618,9 @@ export KBUILD_DEFCONFIG CC_VERSION_TEXT
 endif
 
 %_efiloader_defconfig: FORCE
-	$(call merge_into_defconfig,$*_defconfig,efi-loader)
+	$(call merge_into_defconfig_named,$*_defconfig,efi-loader,$@)
 %_efi_defconfig: FORCE
-	$(call merge_into_defconfig,$*_defconfig,efi-loader efi-payload)
+	$(call merge_into_defconfig_named,$*_defconfig,efi-loader efi-payload,$@)
 
 config: outputmakefile scripts_basic FORCE
 	$(Q)$(MAKE) $(build)=scripts/kconfig KCONFIG_DEFCONFIG_LIST= $@
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index b38f694339a4..3455b2a79f75 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -4,9 +4,9 @@ KBUILD_DEFCONFIG := multi_v8_defconfig
 
 generated_configs += am335x_mlo_sdmmc_defconfig am335x_mlo_rawflash_defconfig
 am335x_mlo_sdmmc_defconfig:
-	$(call merge_into_defconfig,am335x_mlo_defconfig,nomtd)
+	$(call merge_into_defconfig_named,am335x_mlo_defconfig,nomtd,$@)
 am335x_mlo_rawflash_defconfig:
-	$(call merge_into_defconfig,am335x_mlo_defconfig,nomci)
+	$(call merge_into_defconfig_named,am335x_mlo_defconfig,nomci,$@)
 
 # Generic rule applying the fragment is in top-level Makefile
 generated_configs += $(patsubst %_defconfig,%_efiloader_defconfig, \
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 67d355e0ad81..8001bb54bed5 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -4,11 +4,11 @@ KBUILD_DEFCONFIG := qemu-malta_defconfig
 
 generated_configs += $(patsubst %, qemu-malta%_defconfig, el 64 64el)
 qemu-maltael_defconfig:
-	$(call merge_into_defconfig,qemu-malta_defconfig,le)
+	$(call merge_into_defconfig_named,qemu-malta_defconfig,le,$@)
 qemu-malta64_defconfig:
-	$(call merge_into_defconfig,qemu-malta_defconfig,mips64)
+	$(call merge_into_defconfig_named,qemu-malta_defconfig,mips64,$@)
 qemu-malta64el_defconfig:
-	$(call merge_into_defconfig,qemu-malta_defconfig,mips64 le)
+	$(call merge_into_defconfig_named,qemu-malta_defconfig,mips64 le,$@)
 
 #
 # Select the object file format to substitute into the linker script.
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index c7682d4bd003..d22a0368a33c 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -5,9 +5,9 @@ KBUILD_DEFCONFIG := rv64i_defconfig
 generated_configs += virt32_mmu_defconfig rv64i_mmu_defconfig
 
 virt32_mmu_defconfig:
-	$(call merge_into_defconfig,virt32_defconfig,enable_mmu)
+	$(call merge_into_defconfig_named,virt32_defconfig,enable_mmu,$@)
 rv64i_mmu_defconfig:
-	$(call merge_into_defconfig,rv64i_defconfig,enable_mmu)
+	$(call merge_into_defconfig_named,rv64i_defconfig,enable_mmu,$@)
 
 KBUILD_CPPFLAGS += -fno-strict-aliasing
 
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 1b1774cc4b0a..27c3a591e2d9 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -5,15 +5,15 @@ KBUILD_DEFCONFIG := sandbox_defconfig
 generated_configs += headless_defconfig noshell_defconfig lockdown_defconfig \
 		     simpleconsole_defconfig libfuzzer_defconfig
 headless_defconfig:
-	$(call merge_into_defconfig,sandbox_defconfig,headless)
+	$(call merge_into_defconfig_named,sandbox_defconfig,headless,$@)
 noshell_defconfig:
-	$(call merge_into_defconfig,sandbox_defconfig,noshell)
+	$(call merge_into_defconfig_named,sandbox_defconfig,noshell,$@)
 lockdown_defconfig:
-	$(call merge_into_defconfig,sandbox_defconfig,headless noshell)
+	$(call merge_into_defconfig_named,sandbox_defconfig,headless noshell,$@)
 simpleconsole_defconfig:
-	$(call merge_into_defconfig,sandbox_defconfig,simpleconsole)
+	$(call merge_into_defconfig_named,sandbox_defconfig,simpleconsole,$@)
 libfuzzer_defconfig:
-	$(call merge_into_defconfig,sandbox_defconfig,libfuzzer)
+	$(call merge_into_defconfig_named,sandbox_defconfig,libfuzzer,$@)
 
 KBUILD_CPPFLAGS += -D__SANDBOX__ -fno-strict-aliasing -fvisibility=hidden
 
diff --git a/scripts/Makefile.defconf b/scripts/Makefile.defconf
index 93c848bb5a12..75a39cf333a5 100644
--- a/scripts/Makefile.defconf
+++ b/scripts/Makefile.defconf
@@ -35,3 +35,16 @@ define merge_into_defconfig_override
 		))
 	+$(Q)$(MAKE) -f $(srctree)/Makefile olddefconfig
 endef
+
+
+# Creates 'merged defconfigs' and sets CONFIG_NAME to the config name
+# ---------------------------------------------------------------------------
+# Usage:
+#   $(call merge_into_defconfig_named,base_config,config_fragment1 config_fragment2 ...,config_name)
+#
+# Input config fragments without '.config' suffix
+define merge_into_defconfig_named
+	$(call merge_into_defconfig_override,$1,$2)
+	$(Q)echo 'CONFIG_NAME="$3"' >> $(objtree)/.config
+	+$(Q)$(MAKE) -f $(srctree)/Makefile olddefconfig
+endef
-- 
2.47.3



