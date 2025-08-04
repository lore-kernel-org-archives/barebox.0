Delivery-date: Mon, 04 Aug 2025 19:23:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uiyuC-00710V-0P
	for lore@lore.pengutronix.de;
	Mon, 04 Aug 2025 19:23:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uiyuB-0001LZ-3v
	for lore@pengutronix.de; Mon, 04 Aug 2025 19:23:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OjT+gGTW3asBSnlfG7vRuLu82VzhYcJ9uDPSO1Jpyfw=; b=1k7qPooskAaRuPAY2TyKgmOdkp
	LYOkJAjG/t2GeoNYa3SbjCXJFA3uGURuw7T+VwKo6m7nIqugWabyZ6L0iADYIeBxA9sCgh53Xommt
	LChL5C19ypqavh7EauEGzZ7rXfUeTcYbQKa0KL2Ln5EWqLCg+LBX90oucf6qnychP8Mb/4Why+jQF
	09N75ZF9Vl728DS0BCX0JdRYbvsZuGSJHV7QbaCnpsshRl1Eibi035nd2tR+z0rXnm05DdFxWrfnj
	tGmRhxUP7Qe65Z19pjQRolhqjoKwRiviyhOQReVJfsH/AKtkzpPlZzqlN0OsUs2ydv7DM5X1x7p5u
	VAbSgRuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiytY-0000000B5NT-239a;
	Mon, 04 Aug 2025 17:22:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiytX-0000000B5Lp-1YPE
	for barebox@bombadil.infradead.org;
	Mon, 04 Aug 2025 17:22:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=OjT+gGTW3asBSnlfG7vRuLu82VzhYcJ9uDPSO1Jpyfw=; b=lhzR7Pk+I3q6l+ngKWGyZ0a6L7
	BOlZh34fVTqpkPF0iN2HL12HJFtwz7UDjQ8sFDlAmZ62AnbX/P8V6kMajp/tFcV2B66jzrVBoh9FU
	XyuuqY2TrDlH1vfaSdZ2cRYd4nkbOt6Ja+RFx8LVNRGMc/gReAO+vR6CVg25V/ZQ/G8fBxM2t4sP1
	x2P6rF5RsqlAboDl3e2IQDlAQSPDs6sMXW1gETH90muj9USt7fIW14U0ATAN6W6aFswXllNTE5Qr0
	fd43a6f8F30r00TCejNsbzjK2aBgM5WUSmnH/uV+xwlE1g87wMScDiTv+IBYsYWP9GJXuot54smGm
	RAUFZTmg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiytS-0000000Dtda-41GL
	for barebox@lists.infradead.org;
	Mon, 04 Aug 2025 17:22:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uiytR-0000su-Lt; Mon, 04 Aug 2025 19:22:37 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  4 Aug 2025 19:22:26 +0200
Message-Id: <20250804172233.2158462-7-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250804172233.2158462-1-a.fatoum@barebox.org>
References: <20250804172233.2158462-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_182239_172209_A4265276 
X-CRM114-Status: GOOD (  13.70  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 06/13] ARM: mmu: provide setup_trap_pages for both 32- and 64-bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

In preparation for moving the remapping of memory banks into the common
code, rename vectors_init to setup_trap_pages and export it for both
32-bit and 64-bit ARM, so it can be called from the common code as well.

This needs to happen after the remapping, because otherwise the trap
pages would be switched cached by the SDRAM remapping loop.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/cpu/mmu-common.c |  2 ++
 arch/arm/cpu/mmu-common.h |  1 +
 arch/arm/cpu/mmu_32.c     |  4 +---
 arch/arm/cpu/mmu_64.c     | 12 ++++++++----
 4 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index f3416ae7f7ca..a55dce72a22d 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -95,6 +95,8 @@ static int mmu_init(void)
 
 	__mmu_init(get_cr() & CR_M);
 
+	setup_trap_pages();
+
 	return 0;
 }
 mmu_initcall(mmu_init);
diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
index 0f11a4b73d11..8d90da8c86fe 100644
--- a/arch/arm/cpu/mmu-common.h
+++ b/arch/arm/cpu/mmu-common.h
@@ -16,6 +16,7 @@ struct device;
 void dma_inv_range(void *ptr, size_t size);
 void dma_flush_range(void *ptr, size_t size);
 void *dma_alloc_map(struct device *dev, size_t size, dma_addr_t *dma_handle, unsigned flags);
+void setup_trap_pages(void);
 void __mmu_init(bool mmu_on);
 
 static inline void arm_mmu_not_initialized_error(void)
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 80e302596890..3572fa70d13a 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -518,7 +518,7 @@ static void create_guard_page(void)
 /*
  * Map vectors and zero page
  */
-static void vectors_init(void)
+void setup_trap_pages(void)
 {
 	create_guard_page();
 
@@ -595,8 +595,6 @@ void __mmu_init(bool mmu_on)
 
 		remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
 	}
-
-	vectors_init();
 }
 
 /*
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index db312daafdd2..ba82528990fe 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -345,6 +345,14 @@ static void create_guard_page(void)
 	pr_debug("Created guard page\n");
 }
 
+void setup_trap_pages(void)
+{
+	/* Vectors are already registered by aarch64_init_vectors */
+	/* Make zero page faulting to catch NULL pointer derefs */
+	zero_page_faulting();
+	create_guard_page();
+}
+
 /*
  * Prepare MMU for usage enable it.
  */
@@ -380,10 +388,6 @@ void __mmu_init(bool mmu_on)
 
 		remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
 	}
-
-	/* Make zero page faulting to catch NULL pointer derefs */
-	zero_page_faulting();
-	create_guard_page();
 }
 
 void mmu_disable(void)
-- 
2.39.5



