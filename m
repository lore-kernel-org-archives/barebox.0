Delivery-date: Fri, 26 May 2023 08:35:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2R2f-00Ei91-RN
	for lore@lore.pengutronix.de; Fri, 26 May 2023 08:35:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2R2d-00067q-BC
	for lore@pengutronix.de; Fri, 26 May 2023 08:35:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z+sfZvxLcOfh6cT2C/qRMiCgcBoOYOXLDWmBMCwXzls=; b=jwRZIwYJl09BD672BV3CCmNveK
	/IlCUQM/VEg7eidZiZ0YI38xeK9qBauZSdIx1A8RMaQfWPXdrmNMCU8NUw+c/sBfWxUsI7k+S5+S8
	SHC4/at13FKIjjoOdWuuibEM4Hxv7vyU+EDdaMnVG3ckq9Gem5zpADeHCd34hgL7vH2PoFXjeKerC
	Qjg11q4gxtTtMw887+YgHk0XQgVx5JcGqcfKabXNhholUfJG7GaS7j4vQ3Q4aYnelel17zx16U6qr
	guN7p653xq2p2Vw/dmKfMvUs6rSIbqkaXprNeudvljfOGnTVHGM3kJfGUiSKYPhu8EfamLXekXBuw
	FqRBXVJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2R1Z-001GdY-02;
	Fri, 26 May 2023 06:34:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2R1U-001Gbz-2V
	for barebox@lists.infradead.org;
	Fri, 26 May 2023 06:34:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q2R1R-0005rs-SO; Fri, 26 May 2023 08:33:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q2R1R-002tTb-7e; Fri, 26 May 2023 08:33:57 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q2R1Q-004oPl-6L; Fri, 26 May 2023 08:33:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 26 May 2023 08:33:53 +0200
Message-Id: <20230526063354.1145474-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230526063354.1145474-1-a.fatoum@pengutronix.de>
References: <20230526063354.1145474-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_233400_815997_CFF3F7AE 
X-CRM114-Status: UNSURE (   9.82  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 3/4] ARM: mmu32: define early_remap_range for mmu_early_enable usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Like done for ARM64, define early_remap_range, which should always be
safe to call while MMU is disabled. This is to prepare doing cache
maintenance in regular arch_remap_range.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 1c59225934ee..a324ebf71a55 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -241,7 +241,7 @@ static uint32_t get_pmd_flags(int map_type)
 	return pte_flags_to_pmd(get_pte_flags(map_type));
 }
 
-int arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t size, unsigned map_type)
+static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t size, unsigned map_type)
 {
 	u32 virt_addr = (u32)_virt_addr;
 	u32 pte_flags, pmd_flags;
@@ -318,6 +318,15 @@ int arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t size, unsig
 	}
 
 	tlb_invalidate();
+}
+static void early_remap_range(u32 addr, size_t size, unsigned map_type)
+{
+	__arch_remap_range((void *)addr, addr, size, map_type);
+}
+
+int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsigned map_type)
+{
+	__arch_remap_range(virt_addr, phys_addr, size, map_type);
 	return 0;
 }
 
@@ -580,9 +589,9 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize)
 	create_flat_mapping();
 
 	/* maps main memory as cachable */
-	remap_range((void *)membase, memsize - OPTEE_SIZE, MAP_CACHED);
-	remap_range((void *)membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_UNCACHED);
-	remap_range((void *)PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext), MAP_CACHED);
+	early_remap_range(membase, memsize - OPTEE_SIZE, MAP_CACHED);
+	early_remap_range(membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_UNCACHED);
+	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext), MAP_CACHED);
 
 	__mmu_cache_on();
 }
-- 
2.39.2



