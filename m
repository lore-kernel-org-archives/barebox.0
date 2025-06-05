Delivery-date: Thu, 05 Jun 2025 13:37:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uG-003ziR-0B
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:37:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uC-0000U9-9S
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:37:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z3guQ9C8LVnNpe2L9PjXJ3cjtet1+DgYkPACgG0et2k=; b=X6zSjEwSfbVOC8oHQWnPj0HEOq
	1sEI2pqj0v9Dulim+IYeAP2rrlP0P0t0QQ8Ra3LlP2el9rqbwDvCz/9lEXk0uBw48qt1UiNB4hg4A
	ujDGkisOI9HM0dfTAau1nh8pIIWDsCFZZ73/75RbpPNrdmS/5+qw3iOyuHwXwZUMPaxZjfolO4kHJ
	oCP3OQUPmwe1Z2UxHcWyExHPJsq0qS+dhIARMZ/Ec/RZGRrRBvqrXwlFbA1SZv1vhgP9kjzkENb4q
	8q44ZPbpZb1dPT4KLdt8/nYrbo21WAI31j6j1dkOsRiKzRNeMlbZMOiCRbHFY33cI/mAgi+MRXIEl
	mKtMo0Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8ta-0000000FNLJ-2wiq;
	Thu, 05 Jun 2025 11:36:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8sg-0000000FN7z-1qH8
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:35:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sf-0007Mm-8D; Thu, 05 Jun 2025 13:35:33 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sf-001wzb-08;
	Thu, 05 Jun 2025 13:35:33 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sf-008mT4-1p;
	Thu, 05 Jun 2025 13:35:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Jun 2025 13:35:14 +0200
Message-Id: <20250605113530.2076990-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
References: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_043534_514021_160697BB 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/21] kbuild: collect compatibility symlink creation in symlink-y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This allows for easier addition of symlinks, which is something we are
going to do soon for the fuzzing support.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile             | 21 ++++++++++++---------
 images/Makefile      | 10 +++++++++-
 scripts/Makefile.lib |  2 ++
 3 files changed, 23 insertions(+), 10 deletions(-)

diff --git a/Makefile b/Makefile
index 2abd03cb0a74..ecaf195b726d 100644
--- a/Makefile
+++ b/Makefile
@@ -815,9 +815,6 @@ export KBUILD_BINARY ?= barebox.bin
 # Also any assignments in arch/$(SRCARCH)/Makefile take precedence over
 # the default value.
 
-barebox-flash-image: $(KBUILD_IMAGE) FORCE
-	$(call if_changed,symlink)
-
 barebox-flash-images: $(KBUILD_IMAGE)
 	@echo $^ > $@
 
@@ -826,16 +823,22 @@ images: barebox.bin FORCE
 images/%: barebox.bin FORCE
 	$(Q)$(MAKE) $(build)=images $@
 
-ifdef CONFIG_EFI_STUB
-all: barebox.bin images barebox.efi
-barebox.efi: FORCE
-	$(Q)ln -fsn images/barebox-dt-2nd.img $@
-else ifdef CONFIG_PBL_IMAGE
+ifdef CONFIG_PBL_IMAGE
+SYMLINK_TARGET_barebox.efi = images/barebox-dt-2nd.img
+symlink-$(CONFIG_EFI_STUB) += barebox.efi
 all: barebox.bin images
 else
-all: barebox-flash-image barebox-flash-images
+SYMLINK_TARGET_barebox-flash-image = $(KBUILD_IMAGE)
+symlink-y += barebox-flash-image
+all: barebox-flash-images
 endif
 
+all: $(symlink-y)
+
+.SECONDEXPANSION:
+$(symlink-y): $$(SYMLINK_TARGET_$$(@F)) FORCE
+	$(call if_changed,symlink_quiet)
+
 common-$(CONFIG_PBL_IMAGE)	+= pbl/
 common-$(CONFIG_DEFAULT_ENVIRONMENT) += defaultenv/
 
diff --git a/images/Makefile b/images/Makefile
index c8ab8fc015ae..ca37c054ae9c 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -223,9 +223,12 @@ flash-list := $(obj)/../barebox-flash-images
 # multiple images
 flash-link := $(obj)/../barebox-flash-image
 link-dest := $(if $(filter 1,$(words $(image-y))),$(image-y-path),multi-image-build)
+
+symlink-y-path := $(addprefix $(obj)/,$(symlink-y))
+
 multi-image-build:
 
-images: $(image-y-path) $(flash-link) $(flash-list) FORCE
+images: $(image-y-path) $(flash-link) $(flash-list) $(symlink-y-path) FORCE
 	@echo "images built:"
 	@for i in $(image-y); do \
 	  if [ -s $(obj)/$$i ]; then echo $$i; \
@@ -233,6 +236,7 @@ images: $(image-y-path) $(flash-link) $(flash-list) FORCE
 	  $(if $(CONFIG_MISSING_FIRMWARE_ERROR), >&2 sed 's/^/\t/' <$(obj)/$${i}.missing-firmware; missing=1;) \
 	  fi; done; if [ -n "$$missing" ]; then \
 	    echo >&2 "Firmware missing in CONFIG_MISSING_FIRMWARE_ERROR=y build"; exit 1; fi
+	@for i in $(symlink-y); do echo $$i; done
 
 __images_install: images
 	@for i in $(image-y-path); do if [ -s $$i ]; then install -t "$(INSTALL_PATH)" $$i; fi; done
@@ -245,6 +249,10 @@ $(flash-link): $(link-dest) FORCE
 $(flash-list): $(image-y-path)
 	@for i in $^; do if [ -s $$i ]; then echo $$i; fi; done > $@
 
+.SECONDEXPANSION:
+$(symlink-y-path): $(obj)/$$(SYMLINK_TARGET_$$(@F)) FORCE
+	$(call if_changed,symlink_quiet)
+
 clean-files := *.pbl *.pblb *.elf *.map start_*.imximg *.img barebox.z start_*.kwbimg \
 	start_*.kwbuartimg *.socfpgaimg *.mlo *.t20img *.t20img.cfg *.t30img \
 	*.t30img.cfg *.t124img *.t124img.cfg *.mlospi *.mlo *.mxsbs *.mxssd *.rkimg \
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index e960d62ce59e..e6f0e254960a 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -532,6 +532,8 @@ cmd_disasm = $(OBJDUMP) -d $< > $@
 quiet_cmd_symlink = LN      $@
       cmd_symlink = mkdir -p $(dir $@) ; ln -fsn --relative $< $@
 
+cmd_symlink_quiet = mkdir -p $(dir $@) ; ln -fsn --relative $< $@
+
 quiet_cmd_check_size = CHKSIZE $2
       cmd_check_size = set -e;						\
 	size=`printf "%d" $2`;						\
-- 
2.39.5



