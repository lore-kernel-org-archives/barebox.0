Delivery-date: Thu, 05 Jun 2025 13:37:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uF-003zhi-1B
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:37:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uB-0000TI-Lb
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:37:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kuj5GC0QMzDUP0qySVzOyMGVHfplcyLERtQdFAqhA3U=; b=Q3SaXxSNr2uqhcAHghPXeBgIcm
	vOZIXQTu1RRM5q7bK1hII6YaouvNYjSRplcQMLdrAKEnqNHq8OyPN+pjVfPgXDLE2MbliF9mmFE5r
	zkWsVEpS6pzQ5n2VXJP7xa6X/Xg9eQ5YjFLKTTFQoCUmMYB39QiaMI9v5B1bbNyRty+EJ0OpTJGcJ
	12NXuUC/zRuvgs0EW+PB89VpgKEdIvE5X7frMN1p6dDpiA+GfpBwNDdTeERNgbEgrorMCMMPtCP7i
	NVafXpthPIGKajzDY5UgB+VhuNM3dhx1K6dJDRmfAFuBW8p9yJ6/maIXiPt8+B8g7sSs4yMOhTRHN
	T192lUKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8tY-0000000FNIx-1zlK;
	Thu, 05 Jun 2025 11:36:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8sg-0000000FN7w-0pLx
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:35:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8se-0007MR-WF; Thu, 05 Jun 2025 13:35:33 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8se-001wzP-2d;
	Thu, 05 Jun 2025 13:35:32 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8sf-008mT4-19;
	Thu, 05 Jun 2025 13:35:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Jun 2025 13:35:10 +0200
Message-Id: <20250605113530.2076990-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
References: <20250605113530.2076990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_043534_235158_4FE67BEB 
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 01/21] pbl: add provision for architectures without piggy loader
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for enabling PBL support on sandbox, allow sandbox to
link directly PBL with barebox proper without requiring PBL to use mmap
to change attributes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/Makefile | 11 +++++++----
 pbl/Kconfig     |  8 ++++++++
 2 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/images/Makefile b/images/Makefile
index 6daaee8b7c7e..91123ada4744 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -56,21 +56,24 @@ extra-y += $(pbl-lds)
 $(pbl-lds): $(obj)/../arch/$(SRCARCH)/lib/pbl.lds.S FORCE
 	$(call if_changed_dep,cpp_lds_S)
 
+ifeq ($(CONFIG_PBL_IMAGE_NO_PIGGY),)
+BAREBOX_PIGGY_OBJS = $(obj)/piggy.o $(obj)/sha_sum.o
+endif
+
 quiet_cmd_elf__ ?= LD      $@
       cmd_elf__ ?= $(LD) $(LDFLAGS_$(patsubst .%,%,$(suffix $(@F)))) 	\
 		-e $(2) -Map $@.map $(LDFLAGS_$(@F)) -o $@		\
 		--gc-sections --defsym=__pbl_board_entry=$(2)  		\
 		-T $(pbl-lds)						\
-		--whole-archive $(BAREBOX_PBL_OBJS) $(obj)/piggy.o	\
-		$(obj)/sha_sum.o
+		--whole-archive $(BAREBOX_PBL_OBJS) $(BAREBOX_PIGGY_OBJS) \
 
 PBL_CPPFLAGS	+= -fdata-sections -ffunction-sections
 
-$(obj)/%.pbl: $(pbl-lds) $(BAREBOX_PBL_OBJS) $(obj)/piggy.o $(obj)/sha_sum.o FORCE
+$(obj)/%.pbl: $(pbl-lds) $(BAREBOX_PBL_OBJS) $(BAREBOX_PIGGY_OBJS) FORCE
 	$(call if_changed,elf__,$(*F))
 	$(call if_changed,prelink__)
 
-$(obj)/%.elf: $(pbl-lds) $(BAREBOX_PBL_OBJS) $(obj)/piggy.o $(obj)/sha_sum.o FORCE
+$(obj)/%.elf: $(pbl-lds) $(BAREBOX_PBL_OBJS) $(BAREBOX_PIGGY_OBJS) FORCE
 	$(call if_changed,elf__,$(*F))
 	$(call if_changed,prelink__)
 
diff --git a/pbl/Kconfig b/pbl/Kconfig
index 6e3581829d58..e9fa35e29b19 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -13,6 +13,14 @@ config PBL_IMAGE
 	bool "Pre-Bootloader image"
 	depends on HAVE_PBL_IMAGE
 
+config PBL_IMAGE_NO_PIGGY
+	bool
+	depends on PBL_IMAGE
+	help
+	  This is a special case for architectures that don't
+	  want to use the piggy mechanism to load barebox proper.
+	  It's so far only intended for sandbox.
+
 config PBL_MULTI_IMAGES
 	bool
 	select PBL_IMAGE
-- 
2.39.5



