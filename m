Delivery-date: Mon, 04 Aug 2025 20:29:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uizwc-0071xt-06
	for lore@lore.pengutronix.de;
	Mon, 04 Aug 2025 20:29:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uizwb-0007M8-CC
	for lore@pengutronix.de; Mon, 04 Aug 2025 20:29:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ko+XMM/qS+Ub4AnMkWuvAngN+mD0gdoh3iqRiel3odI=; b=T8oCpyb4sWGElOnGLYpy3ccZQZ
	+CmiYXi1NV0lUevK4rG0BQAsAxLimVSTV+G4Qlc/vsA+vchGOJDp+eo4V5eLP62rWasTb4/e8vr6p
	9nkEVc5JAwqHfhACuK0QVhgIc1qEiKNR6QBA1dQhVzMrrHivnGoyyXmsCRGGgJRAFy6Ip1+D+NDyK
	bxxJs19LLhSTSTjR1MWoZuEggazIGIo5I0SsgKeZ/zF/GogZ4Gh0vJqwWI8nviGV3VKoB29AYrdEy
	qUiNxOaB5I/1JoSsb4bhZX3QDVwNVfyL6tjyFeqea/ScmN14lgF5YUNo9b/uyLppQ3VrXxmwlEQU9
	tM/wnnig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uizwK-0000000BA1a-24Vc;
	Mon, 04 Aug 2025 18:29:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiytV-0000000B5LD-3coC
	for barebox@bombadil.infradead.org;
	Mon, 04 Aug 2025 17:22:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ko+XMM/qS+Ub4AnMkWuvAngN+mD0gdoh3iqRiel3odI=; b=mnErh9PWZU/z5mzoMwp0KN2Y1i
	Xl9LyZCdVLnA++ZB39jF9sg0gpPC4cnUjWArGr6qv5at9Cf3U76ayN8nsnO/P6lQJwqtpdbU3o+P8
	L/418pNdkbgbQqj4EGY9Zy6m7BnI5LTxYRJ7O0UG/j447QOnOVQxxBBK1FGq7rUvJ353SKJpJMYK6
	7upYE0BS2AZd5zwbgwglpDuH5m2QhwNKAdr9pJlgBwtIm4FA/nk868FGY623TBP4m+Am0GQmnJq8D
	tn1qN8RNfsYp6TqzNpprhcsYRWtirNKH5m796KbqTySAJznbueqQG6BlOez2CcplzfM16KPN91WAx
	O5DqKgvg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiytS-0000000DtdU-3MXx
	for barebox@lists.infradead.org;
	Mon, 04 Aug 2025 17:22:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uiytQ-0000su-Ok; Mon, 04 Aug 2025 19:22:36 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  4 Aug 2025 19:22:22 +0200
Message-Id: <20250804172233.2158462-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250804172233.2158462-1-a.fatoum@barebox.org>
References: <20250804172233.2158462-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_182239_042773_F65AA9E9 
X-CRM114-Status: GOOD (  13.09  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH v4 02/13] ARM: pass barebox base to mmu_early_enable()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

We'll need the barebox base in the next patches to map the barebox
area differently.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/cpu/mmu_32.c      | 2 +-
 arch/arm/cpu/mmu_64.c      | 2 +-
 arch/arm/cpu/uncompress.c  | 9 ++++-----
 arch/arm/include/asm/mmu.h | 2 +-
 4 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 40462f6fa5cf..2c2144327380 100644
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
index d72ff020f485..cb0803400cfd 100644
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
index 4529ef5e3821..b9fc1d04db96 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -65,11 +65,6 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 
 	arm_pbl_init_exceptions();
 
-	if (IS_ENABLED(CONFIG_MMU))
-		mmu_early_enable(membase, memsize);
-	else if (IS_ENABLED(CONFIG_ARMV7R_MPU))
-		set_cr(get_cr() | CR_C);
-
 	/* Add handoff data now, so arm_mem_barebox_image takes it into account */
 	if (boarddata)
 		handoff_data_add_dt(boarddata);
@@ -85,6 +80,10 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
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
index ebf1e096c682..5538cd3558e8 100644
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



