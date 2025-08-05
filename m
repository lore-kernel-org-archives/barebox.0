Delivery-date: Tue, 05 Aug 2025 20:37:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujMXc-007NiR-0x
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 20:37:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujMXb-0001Cq-3K
	for lore@pengutronix.de; Tue, 05 Aug 2025 20:37:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Yv9IuyIdR17S5p1eeQwEdubwW0/9/zYhr8JcTiIXdOw=; b=RikopkpvosRhHGEmvHLtdR5H6L
	IHBZsfpO0f3oLUT8DRUTq271fPgU/7EqbIh0jvt9YZWguiQRlpOss1MMvfNzYAekGJps20o43AFX1
	QU5AcpmnfsZGQabX5d4VvTmlAEBg7T2zuQ1/3xukpVgxM1B/EoY/PtfmIswCuRdy7BWyvYK00Ejzr
	eqB3rV7JgsN1K3GqisKH/f8pLvTdZ90Q+YogToECA1Agsj0iFHvAenF+vmZA9LCpKb1s+nBztjagR
	bIwtElakiyS9b99jxo+uhnfyr+f1/C+4HfDfahs2OyJK7ksPJYA0Sdb7DiBlxiZaoOlGgmAKOlzlZ
	KkLJkcyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujMWy-0000000DYSB-1f59;
	Tue, 05 Aug 2025 18:37:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujLjQ-0000000DSgV-3JSa
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 17:45:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ujLjO-0003rm-3k; Tue, 05 Aug 2025 19:45:46 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue,  5 Aug 2025 19:45:37 +0200
Message-Id: <20250805174541.2606267-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250805174541.2606267-1-a.fatoum@barebox.org>
References: <20250805174541.2606267-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_104548_832638_A741C44C 
X-CRM114-Status: UNSURE (   9.44  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 4/8] ARM64: mmu: pass map type not PTE flags to early_remap_range
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

early_remap_range() is calling get_pre_attrs() internally already on the
flags argument, so passing PTE flags here is incorrect.

Fixes: 59c1288698b4 ("ARM: MMU64: map memory for barebox proper pagewise")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/cpu/mmu_64.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 91b3cd76c24f..0db95bceba1b 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -499,12 +499,12 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 		barebox_size = optee_membase - barebox_start;
 
 		early_remap_range(optee_membase - barebox_size, barebox_size,
-			     get_pte_attrs(ARCH_MAP_CACHED_RWX), true);
+			     ARCH_MAP_CACHED_RWX, true);
 	} else {
 		barebox_size = membase + memsize - barebox_start;
 
 		early_remap_range(membase + memsize - barebox_size, barebox_size,
-			     get_pte_attrs(ARCH_MAP_CACHED_RWX), true);
+			     ARCH_MAP_CACHED_RWX, true);
 	}
 
 	early_remap_range(optee_membase, OPTEE_SIZE, MAP_FAULT, false);
-- 
2.39.5



