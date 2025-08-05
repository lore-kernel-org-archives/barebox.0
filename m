Delivery-date: Tue, 05 Aug 2025 20:37:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujMXf-007NkR-1m
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 20:37:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujMXd-0001F5-Jv
	for lore@pengutronix.de; Tue, 05 Aug 2025 20:37:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gwAy45VXyiHVCKs13l0TtpS43RBwwxl0R/NCPt5JYVQ=; b=EaBSivUY+cF2rp2d/j7RCP2Q+8
	8T4OXo7VYILQPNTmGljcLR70XKgdl5yqKXjzxuOvMhwKIOiynizruGe8VgBUTUzxoH02Js2tg24PD
	64x6p33R98nPIFhMD3IFIc9wn3elTwJaao2Ietsh5ThbH1MBbUq3zuX8ztUu7tHmKEuHW9kOc0kex
	nMFjQK1npq2wHV6hHy+qtXDeXMGvs3rZpjuMACLoCNDfriSYWw0E5mWpDlTLtOEPwjMhw8SC1KSjk
	gFWHMKIKL1g/TvuVPZGU2+YSGerW8bLBrLAZilcwj3MRGOb2mmjL81R+RFUZuwFBQGUOaUWoDcAM7
	P+IqOyMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujMX0-0000000DYTs-2K74;
	Tue, 05 Aug 2025 18:37:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujLjQ-0000000DSgX-3pLg
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 17:45:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ujLjO-0003rm-AU; Tue, 05 Aug 2025 19:45:46 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue,  5 Aug 2025 19:45:38 +0200
Message-Id: <20250805174541.2606267-6-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250805174541.2606267-1-a.fatoum@barebox.org>
References: <20250805174541.2606267-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_104548_960179_1EC64E76 
X-CRM114-Status: GOOD (  12.69  )
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
Subject: [PATCH master 5/8] ARM: mmu: provide setup_trap_pages for both 32- and 64-bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for moving the remapping of memory banks into the common
code, rename vectors_init to setup_trap_pages and export it for both
32-bit and 64-bit ARM, so it can be called from the common code as well.

This needs to happen after the remapping, because otherwise the trap
pages would be switched cached by the SDRAM remapping loop.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/cpu/mmu-common.h |  1 +
 arch/arm/cpu/mmu_32.c     |  4 ++--
 arch/arm/cpu/mmu_64.c     | 12 +++++++++---
 3 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
index 3bca5cc3b821..f76c7c4c38d6 100644
--- a/arch/arm/cpu/mmu-common.h
+++ b/arch/arm/cpu/mmu-common.h
@@ -18,6 +18,7 @@ struct device;
 void dma_inv_range(void *ptr, size_t size);
 void dma_flush_range(void *ptr, size_t size);
 void *dma_alloc_map(struct device *dev, size_t size, dma_addr_t *dma_handle, unsigned flags);
+void setup_trap_pages(void);
 void __mmu_init(bool mmu_on);
 
 static inline unsigned arm_mmu_maybe_skip_permissions(unsigned map_type)
diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 5f303ae1dc87..151e786c9b2d 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -542,7 +542,7 @@ static void create_guard_page(void)
 /*
  * Map vectors and zero page
  */
-static void vectors_init(void)
+void setup_trap_pages(void)
 {
 	create_guard_page();
 
@@ -632,7 +632,7 @@ void __mmu_init(bool mmu_on)
 		remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
 	}
 
-	vectors_init();
+	setup_trap_pages();
 
 	remap_range((void *)code_start, code_size, MAP_CODE);
 	remap_range((void *)rodata_start, rodata_size, ARCH_MAP_CACHED_RO);
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 0db95bceba1b..7e6e89cb98c2 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -360,6 +360,14 @@ static void create_guard_page(void)
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
@@ -412,9 +420,7 @@ void __mmu_init(bool mmu_on)
 	remap_range((void *)code_start, code_size, MAP_CODE);
 	remap_range((void *)rodata_start, rodata_size, ARCH_MAP_CACHED_RO);
 
-	/* Make zero page faulting to catch NULL pointer derefs */
-	zero_page_faulting();
-	create_guard_page();
+	setup_trap_pages();
 }
 
 void mmu_disable(void)
-- 
2.39.5



