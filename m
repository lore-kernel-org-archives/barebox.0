Delivery-date: Mon, 23 Feb 2026 09:35:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRPG-004lZD-1n
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 09:35:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRPG-00045A-KY
	for lore@pengutronix.de; Mon, 23 Feb 2026 09:35:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dTVPSXtazGF+S9rHetWG5iZAv6kv6CF+Hu/d8zonG1Q=; b=qadBiuZotiCls1fa0WIn35dktm
	3Eb+QQdMGGGEkbRf4mrAmljlpTlTM4QZG8c/RWqN+k2b8U0ZNgEwKNygKgp8E8rMZzRht/0FSLcXy
	u4hrIv8DctiEyltYDDrrcUm1dlLT1kgw9Nr49m5g9XZuW25zgNgfHCVMlhnXsdAVx/zCPucj2Fl8P
	HZv2hcJ75oAH1hBbBqEHqnJHSP3E8EuVYruXM5Zx3S91omlKQT+qbtJYkuJ/ew8QK65mA1S6WSDo9
	luT6mAaZuKoP9eHD1cpUqeHlKQkJ8DbCltmbulhXlmHLIJfVG1H26BufoeMtivLVovjur5ZMyzA6n
	BRXzx0CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuROa-0000000HQXZ-0nUh;
	Mon, 23 Feb 2026 08:34:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuROX-0000000HQVy-2Mno
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 08:34:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuROO-0003pV-5X; Mon, 23 Feb 2026 09:34:12 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuROM-002CHe-1u;
	Mon, 23 Feb 2026 09:34:11 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuRON-00000000llL-3WVL;
	Mon, 23 Feb 2026 09:34:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Feb 2026 09:34:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-arm-mmu-v1-3-707d45f6f6e1@pengutronix.de>
References: <20260223-arm-mmu-v1-0-707d45f6f6e1@pengutronix.de>
In-Reply-To: <20260223-arm-mmu-v1-0-707d45f6f6e1@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771835651; l=3213;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=htXhAzr15r8TxgUlXu5TPQT8ZrwzkkcpylMBPZ5HyBI=;
 b=tW193rjRPxPDbq2yVZxwrAaT5tPEew+mRCSvzyx1Ywrkpmkk4z7plaOOp0LAN7Rr+3dEzY786
 la9IrkGdqr8DI59ntQ4sl1xkXW7KVv8KebBnddeB5m/r6prbiAmzgKh
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_003421_682313_18F47AAB 
X-CRM114-Status: GOOD (  13.07  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] ARM: pbl: MMU: drop unnecessary barebox mapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

mmu_early_enable() sets up a mapping for the barebox proper regions.
This is no longer necessary as they are configured from the ELF binary
afterwards anyway, so drop it and remove the unnecessary arguments.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c      | 4 ++--
 arch/arm/cpu/mmu_64.c      | 7 +------
 arch/arm/cpu/uncompress.c  | 2 +-
 arch/arm/include/asm/mmu.h | 2 +-
 4 files changed, 5 insertions(+), 10 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index a5ac9a3ff9..cdd4d07826 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -606,10 +606,10 @@ void mmu_disable(void)
 	__mmu_cache_off();
 }
 
-void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned long barebox_start)
+void mmu_early_enable(unsigned long membase, unsigned long memsize)
 {
 	uint32_t *ttb = (uint32_t *)arm_mem_ttb(membase + memsize);
-	unsigned long barebox_size, optee_start;
+	unsigned long optee_start;
 
 	pr_debug("enabling MMU, ttb @ 0x%p\n", ttb);
 
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 69d4b89dd8..7f38473079 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -378,11 +378,10 @@ static void early_init_range(size_t total_level0_tables)
 	}
 }
 
-void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned long barebox_start)
+void mmu_early_enable(unsigned long membase, unsigned long memsize)
 {
 	int el;
 	u64 optee_membase;
-	unsigned long barebox_size;
 	unsigned long ttb = arm_mem_ttb(membase + memsize);
 
 	if (get_cr() & CR_M)
@@ -408,10 +407,6 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 	/* Default location for OP-TEE: end of DRAM, leave OPTEE_SIZE space for it */
 	optee_membase = membase + memsize - OPTEE_SIZE;
 
-	barebox_size = optee_membase - barebox_start;
-
-	early_remap_range(barebox_start, barebox_size, MAP_CACHED_RWX);
-
 	/* OP-TEE might be at location specified in OP-TEE header */
 	optee_get_membase(&optee_membase);
 
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index dffdd2c812..38f7dbc113 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -85,7 +85,7 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	print_pbl_mem_layout(membase, endmem, barebox_base);
 #endif
 	if (IS_ENABLED(CONFIG_MMU))
-		mmu_early_enable(membase, memsize, barebox_base);
+		mmu_early_enable(membase, memsize);
 	else if (IS_ENABLED(CONFIG_ARMV7R_MPU))
 		set_cr(get_cr() | CR_C);
 
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index bcaa984a40..ce050babab 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -69,6 +69,6 @@ void __dma_clean_range(unsigned long, unsigned long);
 void __dma_flush_range(unsigned long, unsigned long);
 void __dma_inv_range(unsigned long, unsigned long);
 
-void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned long barebox_base);
+void mmu_early_enable(unsigned long membase, unsigned long memsize);
 
 #endif /* __ASM_MMU_H */

-- 
2.47.3



