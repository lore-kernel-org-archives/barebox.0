Delivery-date: Tue, 17 Jun 2025 19:11:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRZpu-008LC0-0x
	for lore@lore.pengutronix.de;
	Tue, 17 Jun 2025 19:11:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRZpt-0001zZ-Bd
	for lore@pengutronix.de; Tue, 17 Jun 2025 19:11:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hsPdkSdk5wOLWvnUsRprxLWczpsxeqIl/mlIALmB14o=; b=e0CSrLA0ywlNR5/2FFqJqeB5vU
	ZsCqYL0e7yIOFb5g1E2CbW5JkAIf45R+MvY1zuMvGupfyxXjR8/w8YkycU2vCFWTCrxx3pbqEzIi6
	56N9HhsAIF+ocsgqWu2m3Ym1XleJaG1Ay3vQhf2sINssO7aBbytHuYN8ZRbuY9wLr6LQF3rbVOBUX
	l+68MkaaLsRmRDXHnXFdgbc3dEnTkxE/KSkGJ6naWM+ePKYJjIQOKXavKMWBNRS+QzQHpTduKsLgZ
	pSE9WPjF5jdIzck2kT9hTfrMgzfT6TXvGsGDBg8ItNL8TLtF2HNvNOYkYsiu+iPryyXbPzlclyFU4
	WIZxu8xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRZpY-00000007xdw-1JYy;
	Tue, 17 Jun 2025 17:10:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRXIM-00000007YTD-1zuC
	for barebox@lists.infradead.org;
	Tue, 17 Jun 2025 14:28:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRXIL-0007nV-2c; Tue, 17 Jun 2025 16:28:13 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRXIK-003zFg-2i;
	Tue, 17 Jun 2025 16:28:12 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRXIK-00Gvg5-2P;
	Tue, 17 Jun 2025 16:28:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 17 Jun 2025 16:28:08 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250617-mmu-xn-ro-v2-1-3c7aa9046b67@pengutronix.de>
References: <20250617-mmu-xn-ro-v2-0-3c7aa9046b67@pengutronix.de>
In-Reply-To: <20250617-mmu-xn-ro-v2-0-3c7aa9046b67@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750170492; l=3398;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=fK7m/mQE9ZVEbVJWKqDhXnMyrdSR7JmM9NroFG3KRpA=;
 b=yXgz7oK0UIzmUp52iLgfvL2F+P30LQRtmvBZlu9sKYshOHJXZBSe+kmvL4zVJWdltlcxI9kpe
 eZIdzKLvuH3B59ZV2eDgcl2aztiSZVwU8wtpNRVO92UM+vmB0CdXJkf
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_072814_520610_CA5C9793 
X-CRM114-Status: GOOD (  13.36  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/6] ARM: pass barebox base to mmu_early_enable()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We'll need the barebox base in the next patches to map the barebox
area differently.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c      | 2 +-
 arch/arm/cpu/mmu_64.c      | 2 +-
 arch/arm/cpu/uncompress.c  | 9 ++++-----
 arch/arm/include/asm/mmu.h | 2 +-
 4 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 40462f6fa5cf5735c628a069a660fcce018648fe..2c2144327380c7cbb6c7426212d94a4a9ba5f70f 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -614,7 +614,7 @@ void *dma_alloc_writecombine(struct device *dev, size_t size, dma_addr_t *dma_ha
 	return dma_alloc_map(dev, size, dma_handle, ARCH_MAP_WRITECOMBINE);
 }
 
-void mmu_early_enable(unsigned long membase, unsigned long memsize)
+void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned long barebox_start)
 {
 	uint32_t *ttb = (uint32_t *)arm_mem_ttb(membase + memsize);
 
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index d72ff020f48546bff37235b9a71624e8667c7af9..cb0803400cfd6a55f0b34dea823576d6593e96f1 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -435,7 +435,7 @@ static void init_range(size_t total_level0_tables)
 	}
 }
 
-void mmu_early_enable(unsigned long membase, unsigned long memsize)
+void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned long barebox_start)
 {
 	int el;
 	u64 optee_membase;
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index 4657a4828e67e1b0acfa9dec3aef33bc4c525468..e24e754e0b16bda4974df0dd754936e87fe59d2d 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -63,11 +63,6 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 
 	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
 
-	if (IS_ENABLED(CONFIG_MMU))
-		mmu_early_enable(membase, memsize);
-	else if (IS_ENABLED(CONFIG_ARMV7R_MPU))
-		set_cr(get_cr() | CR_C);
-
 	/* Add handoff data now, so arm_mem_barebox_image takes it into account */
 	if (boarddata)
 		handoff_data_add_dt(boarddata);
@@ -83,6 +78,10 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 #ifdef DEBUG
 	print_pbl_mem_layout(membase, endmem, barebox_base);
 #endif
+	if (IS_ENABLED(CONFIG_MMU))
+		mmu_early_enable(membase, memsize, barebox_base);
+	else if (IS_ENABLED(CONFIG_ARMV7R_MPU))
+		set_cr(get_cr() | CR_C);
 
 	pr_debug("uncompressing barebox binary at 0x%p (size 0x%08x) to 0x%08lx (uncompressed size: 0x%08x)\n",
 			pg_start, pg_len, barebox_base, uncompressed_len);
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index ebf1e096c68295858bc8f3e6ab0e6f2dd6512717..5538cd3558e8e6c069923f7f6ccfc38e7df87c9f 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -64,7 +64,7 @@ void __dma_clean_range(unsigned long, unsigned long);
 void __dma_flush_range(unsigned long, unsigned long);
 void __dma_inv_range(unsigned long, unsigned long);
 
-void mmu_early_enable(unsigned long membase, unsigned long memsize);
+void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned long barebox_base);
 void mmu_early_disable(void);
 
 #endif /* __ASM_MMU_H */

-- 
2.39.5



