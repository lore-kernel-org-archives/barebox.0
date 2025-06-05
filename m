Delivery-date: Thu, 05 Jun 2025 13:37:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uF-003zhV-0J
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:37:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uB-0000T7-Gg
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:37:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OnU/9Uu2mVNJgeRlhK/MakDIX8dpNIgjZ9sSMrNqQOg=; b=NgTOR5yUZx8i/37598GL64PZxM
	4sUsPFOkwvdLZJmLQ4ZuZ+vVga8pbLYwsMJRapKcGGZKDiE3luqnuV2U4Gb2CmEZsGm9dcrmJEzsd
	ukAahShnjCpPZ/O9tLYdIXdFGJWR0Yg4fDAUmYOEyxFrzVd3hRVbPp18/BNbE0AsoLtaySVLDyMc5
	oCmSMgrFrabP8quE8u5IbWfU49WfF/vjG4Sgm3dcSPEWzy9BBRL3ZpQ530NQoXIYyMOVnj9v2x3Yn
	6IRDfRKa+NMsDUde4Rh8BC9tvP8StCommk+2pU+xSZ1f8JXqd+m8FKsB7YcGcyk9uVVhKez7voPSw
	pzmaR5Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8tZ-0000000FNKg-323e;
	Thu, 05 Jun 2025 11:36:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8sg-0000000FN80-1sZn
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:35:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sf-0007MY-62; Thu, 05 Jun 2025 13:35:33 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8se-001wzY-39;
	Thu, 05 Jun 2025 13:35:32 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sf-008mT4-1f;
	Thu, 05 Jun 2025 13:35:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Jun 2025 13:35:13 +0200
Message-Id: <20250605113530.2076990-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
References: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_043534_488400_170075DC 
X-CRM114-Status: GOOD (  10.02  )
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
Subject: [PATCH 04/21] kbuild: define and use more generic symlink command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently use symlinks only between files in the same directory.
Let's make it possible to symlink across directories as well.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile             | 2 +-
 images/Makefile      | 2 +-
 scripts/Makefile.lib | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/Makefile b/Makefile
index 031d5bdd3e20..2abd03cb0a74 100644
--- a/Makefile
+++ b/Makefile
@@ -816,7 +816,7 @@ export KBUILD_BINARY ?= barebox.bin
 # the default value.
 
 barebox-flash-image: $(KBUILD_IMAGE) FORCE
-	$(call if_changed,ln)
+	$(call if_changed,symlink)
 
 barebox-flash-images: $(KBUILD_IMAGE)
 	@echo $^ > $@
diff --git a/images/Makefile b/images/Makefile
index 91123ada4744..c8ab8fc015ae 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -240,7 +240,7 @@ __images_install: images
 PHONY += __images_install
 
 $(flash-link): $(link-dest) FORCE
-	$(call if_changed,ln)
+	$(call if_changed,symlink)
 
 $(flash-list): $(image-y-path)
 	@for i in $^; do if [ -s $$i ]; then echo $$i; fi; done > $@
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index b10119797686..e960d62ce59e 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -529,8 +529,8 @@ cmd_comp_copy ?= cat $(filter-out FORCE,$^) > $@; \
 quiet_cmd_disasm = DISASM  $@
 cmd_disasm = $(OBJDUMP) -d $< > $@
 
-quiet_cmd_ln = LN      $@
-cmd_ln = ln -sf $< $@
+quiet_cmd_symlink = LN      $@
+      cmd_symlink = mkdir -p $(dir $@) ; ln -fsn --relative $< $@
 
 quiet_cmd_check_size = CHKSIZE $2
       cmd_check_size = set -e;						\
-- 
2.39.5



