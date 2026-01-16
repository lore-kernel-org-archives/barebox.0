Delivery-date: Fri, 16 Jan 2026 17:07:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgmMW-00215r-08
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 17:07:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgmMT-0005bn-WB
	for lore@pengutronix.de; Fri, 16 Jan 2026 17:07:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iN7KqIHGxKzPx2fH4gWefYAJlvW1EdaFOvygErC+txc=; b=xkdkmkpAwmiCdvtj1LlIpeP41R
	0u2fhZch2mLpLoFpZUDgJRHKiuOztUqVeQ+UUN6tZJvWmacp2URMtfwC61Lxk9xNjKjt5Z7jjLZqB
	Pt25junWbAODUw5vVP2Ibl0JxO6oNHQDv7P1+eKy5YY00hacrjdZZ4FSko2JlDtrYSytnrvfhWLZw
	fbg1j7+XTZ0zFHvG8VEJ1MAdF9698VTeAhqaEkG0/Sk6DX5/VUEozx6tJfEqOzp6c+80X6F5cSDu0
	exAkUCYSwsGcHd9GpcvYNoExil58lL8Zudhypo/J0JMymME+slEiLk/zs5XJ8b7ZK41Zjuie6DFqj
	t0pclzaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgmLt-0000000EQ4L-3eln;
	Fri, 16 Jan 2026 16:07:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgmLn-0000000EPvi-0Kox
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 16:07:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vgmLk-0004sd-He; Fri, 16 Jan 2026 17:07:00 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>,
	Claude <noreply@claude.ai>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 16 Jan 2026 17:06:31 +0100
Message-ID: <20260116160654.3981425-9-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260116160654.3981425-1-a.fatoum@barebox.org>
References: <20260116160654.3981425-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_080703_109653_820048D7 
X-CRM114-Status: GOOD (  16.08  )
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
Subject: [PATCH 08/13] kbuild: add support for installing and stripping modules
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a defunct modules_install target, which fails when called.
Fix it, so it actually installs stripped modules.

This is important, because we don't want barebox to attempt relocation
the .debug sections as it doesn't support all relocations that can occur
there.

Note that unlike Linux, we always strip. Linux on the other hand has a
check that skips relocation of non-alloc segments and we may want to add
that too in future, but only after switching to barebox proper being
linked in PBL as proper ELF.

Co-developed-by: Claude <noreply@claude.ai>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Makefile                 | 15 ++-------
 scripts/Makefile.modinst | 67 ++++++++++++++++++++++++++++++++++++++++
 2 files changed, 70 insertions(+), 12 deletions(-)
 create mode 100644 scripts/Makefile.modinst

diff --git a/Makefile b/Makefile
index 1a5f21b66ebb..b6023dc4ff2c 100644
--- a/Makefile
+++ b/Makefile
@@ -448,7 +448,6 @@ LEX		= flex
 YACC		= bison
 AWK		= awk
 GENKSYMS	= scripts/genksyms/genksyms
-DEPMOD		= /sbin/depmod
 KALLSYMS	= scripts/kallsyms
 SCONFIGPOST	= scripts/sconfig/sconfigpost
 PERL		= perl
@@ -1317,18 +1316,13 @@ modules_prepare: prepare scripts
 
 # Target to install modules
 PHONY += modules_install
-modules_install: _modinst_ _modinst_post
+modules_install: _modinst_
 
 PHONY += _modinst_
 _modinst_:
-	@if [ -z "`$(DEPMOD) -V 2>/dev/null | grep module-init-tools`" ]; then \
-		echo "Warning: you may need to install module-init-tools"; \
-		echo "See http://www.codemonkey.org.uk/docs/post-halloween-2.6.txt";\
-		sleep 1; \
-	fi
-	@rm -rf $(MODLIB)/kernel
+	@rm -rf $(MODLIB)/barebox
 	@rm -f $(MODLIB)/source
-	@mkdir -p $(MODLIB)/kernel
+	@mkdir -p $(MODLIB)/barebox
 	@ln -s $(srctree) $(MODLIB)/source
 	@if [ ! $(objtree) -ef  $(MODLIB)/build ]; then \
 		rm -f $(MODLIB)/build ; \
@@ -1346,9 +1340,6 @@ depmod_opts	:=
 else
 depmod_opts	:= -b $(INSTALL_MOD_PATH) -r
 endif
-PHONY += _modinst_post
-_modinst_post: _modinst_
-	if [ -r System.map -a -x $(DEPMOD) ]; then $(DEPMOD) -ae -F System.map $(depmod_opts) $(KERNELRELEASE); fi
 
 else # CONFIG_MODULES
 
diff --git a/scripts/Makefile.modinst b/scripts/Makefile.modinst
new file mode 100644
index 000000000000..6cb9b6ccaa1e
--- /dev/null
+++ b/scripts/Makefile.modinst
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: GPL-2.0
+# ==========================================================================
+# Installing modules
+# ==========================================================================
+
+PHONY := __modinst
+__modinst:
+
+include $(objtree)/include/config/auto.conf
+include $(srctree)/scripts/Kbuild.include
+
+install-y :=
+
+# remove the old directory
+$(shell rm -fr $(MODLIB)/barebox)
+
+dst := $(MODLIB)/barebox
+
+# Find all .ko files in the build tree
+modules := $(shell find $(objtree) -name '*.ko' -not -path '$(MODLIB)/*' 2>/dev/null)
+modules-dst := $(addprefix $(dst)/, $(patsubst $(objtree)/%,%,$(modules)))
+
+install-$(CONFIG_MODULES) += $(modules-dst)
+
+__modinst: $(install-y)
+	@:
+
+#
+# Installation
+#
+quiet_cmd_install = INSTALL $@
+      cmd_install = mkdir -p $(dir $@) && cp $< $@
+
+INSTALL_MOD_STRIP ?= 1
+
+# Strip
+#
+# INSTALL_MOD_STRIP, if defined, will cause modules to be stripped after they
+# are installed. If INSTALL_MOD_STRIP is '1', then the default option
+# --strip-debug will be used. Otherwise, INSTALL_MOD_STRIP value will be used
+# as the options to the strip command.
+ifdef INSTALL_MOD_STRIP
+
+ifeq ($(INSTALL_MOD_STRIP),1)
+strip-option := --strip-debug
+else
+strip-option := $(INSTALL_MOD_STRIP)
+endif
+
+quiet_cmd_strip = STRIP   $@
+      cmd_strip = $(STRIP) $(strip-option) $@
+
+else
+
+quiet_cmd_strip =
+      cmd_strip = :
+
+endif
+
+$(dst)/%.ko: $(objtree)/%.ko FORCE
+	$(call cmd,install)
+	$(call cmd,strip)
+
+PHONY += FORCE
+FORCE:
+
+.PHONY: $(PHONY)
-- 
2.47.3



