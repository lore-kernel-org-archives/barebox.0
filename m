Delivery-date: Thu, 01 Jun 2023 13:43:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4ghw-005jRV-5X
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 13:43:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4ght-0007uf-8p
	for lore@pengutronix.de; Thu, 01 Jun 2023 13:43:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lNoeWBJPgPYyTk/tUjm6WaoLp0IpVqH4aRRPCicRNBw=; b=SY0TuWs6CN/aMwd8R1vAaFOP38
	y5CPL8ikA6g5MnjSr4HsitlHFwekMNYK3z4okatvCXwN7fu8T2h2LhOTOaN+dHySA7ImHtmL1aPR4
	tuli+xzWLG0HseizuZU+HhyZnvZgVzeFSB/0OOyGkVh+29IDylbZc4h+ZM/t4Fq+yD6pp8Pei15wB
	E3TS8QeU8PjzmSdJ8qb5Ue8oVKE+c/jukwb0yLr4lq9lYPIyOOJGm8MyqrsczL2wGLilX0zDv+rbz
	qw99a5wmCz7O3matg+0/NMJIcDeJBXl2C6rWJ/lnEbHbRWWGba1u0sbmTx7vlFTy60h3GYmINXNUb
	nZopw8CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4ggg-003GwT-2Z;
	Thu, 01 Jun 2023 11:41:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4gge-003Gvm-0P
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 11:41:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4ggc-0007rX-1k; Thu, 01 Jun 2023 13:41:46 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q4ggb-004LC4-Cv; Thu, 01 Jun 2023 13:41:45 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q4gga-006MB3-I4; Thu, 01 Jun 2023 13:41:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  1 Jun 2023 13:41:43 +0200
Message-Id: <20230601114143.1515209-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_044148_168662_A7C93BD3 
X-CRM114-Status: GOOD (  13.40  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: mmu_32: Fix zero page faulting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Even with MAP_FAULT we still set PTE_TYPE_SMALL in the 2nd level page
table. With this the zero page doesn't fault on ARMv6 and earlier. Fix
this by only setting PTE_TYPE_SMALL when the map_type is not MAP_FAULT.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 14775768a3..a6cb3e04f4 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -266,7 +266,9 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 			 * replace it with a section
 			 */
 			chunk = PGDIR_SIZE;
-			*pgd = phys_addr | pmd_flags | PMD_TYPE_SECT;
+			*pgd = phys_addr | pmd_flags;
+			if (map_type != MAP_FAULT)
+				*pgd |= PMD_TYPE_SECT;
 			dma_flush_range(pgd, sizeof(*pgd));
 		} else {
 			unsigned int num_ptes;
@@ -306,7 +308,9 @@ static void __arch_remap_range(void *_virt_addr, phys_addr_t phys_addr, size_t s
 
 			for (i = 0; i < num_ptes; i++) {
 				pte[i] = phys_addr + i * PAGE_SIZE;
-				pte[i] |= pte_flags | PTE_TYPE_SMALL;
+				pte[i] |= pte_flags;
+				if (map_type != MAP_FAULT)
+					pte[i] |= PTE_TYPE_SMALL;
 			}
 
 			dma_flush_range(pte, num_ptes * sizeof(u32));
-- 
2.39.2



