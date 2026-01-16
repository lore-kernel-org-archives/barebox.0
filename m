Delivery-date: Fri, 16 Jan 2026 17:07:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgmMb-00217E-33
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 17:07:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgmMY-0005h7-9I
	for lore@pengutronix.de; Fri, 16 Jan 2026 17:07:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q9796aQItsp7kGF5E5IfV/nC60/qgILMTT0Omkonq2A=; b=3aVgNIzAnXA3U7h+zxsT+TFQAw
	OS/K7HknTtwYxAcaq3+u48Y4NPzEYcIZjz9HAlMOk/eVxJns2sNWoibKR8Wcan/5xiSIOvTBBdMzW
	kcibjgyOZXGcLXjNcBdWIQtLExneCwfvfivI5hh8fv9LpAmx589wRrx2jiXEaWX2ilL5Yutyu9mTD
	XsZ786LkkaD5xPj64UC0N+oImARDJgfLzFpPZnEeFFAzAbRkynGrzj1ghIWxYTllZA1veXuD/1r/V
	hA8bdUSMIbz4T1XcylZ6eW88wAPCS4tj5FVcOR8O6Q73KhS96GyynhYgLgP6LzafW70tF5pdsmjWI
	Hug2HCUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgmLu-0000000EQ59-22z7;
	Fri, 16 Jan 2026 16:07:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgmLp-0000000EPxo-0jCG
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 16:07:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vgmLm-0004sd-Np; Fri, 16 Jan 2026 17:07:02 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>,
	Claude <noreply@claude.ai>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 16 Jan 2026 17:06:35 +0100
Message-ID: <20260116160654.3981425-13-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260116160654.3981425-1-a.fatoum@barebox.org>
References: <20260116160654.3981425-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_080705_201768_803D7C89 
X-CRM114-Status: GOOD (  11.03  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 12/13] defaultenv: add barebox_modules_env target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We want a single file with all modules to make it easier to load them
inside emulation. Add a very simple environment target to facilitate
this.

There may be room for improvement as enabling CONFIG_MODULES_ENVIRONMENT
triggers the rebuild every time, but for experimental feature that's
not enabled by default, it should be acceptable for now.

Co-developed-by: Claude <noreply@claude.ai>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Makefile              | 14 ++++++++++++++
 common/Kconfig        | 14 ++++++++++++++
 defaultenv/.gitignore |  1 +
 3 files changed, 29 insertions(+)

diff --git a/Makefile b/Makefile
index b6023dc4ff2c..9c70aa0f49a3 100644
--- a/Makefile
+++ b/Makefile
@@ -1341,6 +1341,20 @@ else
 depmod_opts	:= -b $(INSTALL_MOD_PATH) -r
 endif
 
+# Target to build modules environment
+MODULES_ENV_DIR := $(objtree)/.tmp_barebox_modules_env
+CLEAN_DIRS += $(MODULES_ENV_DIR)
+
+barebox_modules_env: modules FORCE
+	$(Q)rm -rf $(MODULES_ENV_DIR)
+	$(Q)$(MAKE) -f $(srctree)/Makefile modules_install MODLIB=$(MODULES_ENV_DIR)
+	$(Q)$(objtree)/scripts/bareboxenv -s $(MODULES_ENV_DIR)/barebox $@
+	$(Q)mv barebox_modules_env $(objtree)/defaultenv/
+
+ifdef CONFIG_MODULES_ENVIRONMENT
+all: barebox_modules_env
+endif
+
 else # CONFIG_MODULES
 
 # Modules not configured
diff --git a/common/Kconfig b/common/Kconfig
index d4d9d930a996..50c26695b2b5 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -356,6 +356,20 @@ config MODULES
 	  As modules can't be signed, loading external modules is not
 	  recommended for secure systems.
 
+config MODULES_ENVIRONMENT
+	bool "Build environment with all modules"
+	depends on MODULES
+	help
+	  This option creates a separate environment file (barebox_modules_env)
+	  containing all built modules in stripped form. This environment is
+	  not built into barebox but can be flashed separately and mounted
+	  at runtime to load modules.
+
+	  The modules are taken from the barebox/ directory inside $MODLIB
+	  after running modules_install and have been stripped.
+
+	  If unsure, say n here.
+
 config KALLSYMS
 	depends on HAS_KALLSYMS
 	bool "kallsyms"
diff --git a/defaultenv/.gitignore b/defaultenv/.gitignore
index d14aa0f494b5..7847b5ce19d6 100644
--- a/defaultenv/.gitignore
+++ b/defaultenv/.gitignore
@@ -2,4 +2,5 @@
 
 barebox_default_env*
 barebox_zero_env
+barebox_modules_env
 defaultenv-2-ikconfig/
-- 
2.47.3



