Delivery-date: Thu, 05 Jun 2025 13:37:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uH-003zjt-28
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:37:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uD-0000XO-MP
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:37:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hJfo+1QKFNcyT+tObItGJzDJCrGDL0fiCZzU5W5KKdY=; b=aZimNiy1MHh/zVkK149sHTrKL9
	t0wBSiWS3dWLnaTeLq5YdzhOtRBww147KPZPNoZGoa+BgunxkJhkxWO7PFS8xMCdMizF2BAQ4xykz
	Dm5GyUX22wm6/DDX9T4+KDZEDWmM4P7FoRR3QEk5Wd81W5AjwglPrIfUW4PEE7tLNtAkHNTqbkGTn
	CLitzN26ISfhP+J5QhGCPpm8N8URK3gogUKcfjmoaLEF8zwrpEXzNm7coN85ZTlgnoPNmPHQSniUI
	utDaQbK5GH9LSn1yeCRNvzMG8A1ClDnLiySCUgMNRhxc4lrJyoXyzvX1LV5IhL2j51aEzWzIGFOkW
	SabFe7Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8tb-0000000FNN6-15ky;
	Thu, 05 Jun 2025 11:36:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8sg-0000000FN81-2CPX
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:35:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sf-0007Mu-A6; Thu, 05 Jun 2025 13:35:33 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sf-001wzf-0I;
	Thu, 05 Jun 2025 13:35:33 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sf-008mT4-20;
	Thu, 05 Jun 2025 13:35:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Jun 2025 13:35:15 +0200
Message-Id: <20250605113530.2076990-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
References: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_043534_609177_95D9A242 
X-CRM114-Status: UNSURE (   9.58  )
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
Subject: [PATCH 06/21] kbuild: allow customizing barebox proper binary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We usually objcopy barebox proper into a linear binary, but for sandbox,
we are going to rely on the OS to do loading and relocation, so let's
make it possible, which BAREBOX_PROPER binary should be the target.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile        | 10 ++++++----
 images/Makefile |  2 +-
 2 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/Makefile b/Makefile
index ecaf195b726d..8fbe9e9622c2 100644
--- a/Makefile
+++ b/Makefile
@@ -815,18 +815,20 @@ export KBUILD_BINARY ?= barebox.bin
 # Also any assignments in arch/$(SRCARCH)/Makefile take precedence over
 # the default value.
 
+export BAREBOX_PROPER ?= barebox.bin
+
 barebox-flash-images: $(KBUILD_IMAGE)
 	@echo $^ > $@
 
-images: barebox.bin FORCE
+images: $(BAREBOX_PROPER) FORCE
 	$(Q)$(MAKE) $(build)=images $@
-images/%: barebox.bin FORCE
+images/%: $(BAREBOX_PROPER) FORCE
 	$(Q)$(MAKE) $(build)=images $@
 
 ifdef CONFIG_PBL_IMAGE
 SYMLINK_TARGET_barebox.efi = images/barebox-dt-2nd.img
 symlink-$(CONFIG_EFI_STUB) += barebox.efi
-all: barebox.bin images
+all: $(BAREBOX_PROPER) images
 else
 SYMLINK_TARGET_barebox-flash-image = $(KBUILD_IMAGE)
 symlink-y += barebox-flash-image
@@ -1030,7 +1032,7 @@ ifeq ($(INSTALL_PATH),)
 endif
 ifdef CONFIG_PBL_IMAGE
 	$(Q)$(MAKE) $(build)=images __images_install
-	@install -t "$(INSTALL_PATH)" barebox.bin
+	@install -t "$(INSTALL_PATH)" $(BAREBOX_PROPER)
 else
 	@install -t "$(INSTALL_PATH)" $(KBUILD_IMAGE)
 endif
diff --git a/images/Makefile b/images/Makefile
index ca37c054ae9c..40400a95a935 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -143,7 +143,7 @@ $(obj)/barebox.sum: $(obj)/barebox.z FORCE
 
 # barebox.z - compressed barebox binary
 # ----------------------------------------------------------------
-$(obj)/barebox.z: $(obj)/../barebox.bin FORCE
+$(obj)/barebox.z: $(obj)/../$(BAREBOX_PROPER) FORCE
 	$(call if_changed,$(suffix_y))
 
 # %.img - create a copy from another file
-- 
2.39.5



