Delivery-date: Wed, 06 Aug 2025 15:25:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uje92-007eW5-2L
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 15:25:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uje92-0007lR-01
	for lore@pengutronix.de; Wed, 06 Aug 2025 15:25:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=AIHNmim8G0MWICMiFVbPD3vvNzq/B4X2upYTW8cm8n8=; b=xYrHCZTZmc9S1oiwPSXIrK0mLT
	0mN6uQCta5q5/JcRDuag4aDf7Y62/hnnDjGB/T+gWax4oT3O+pd339KUnMI+f937HhgBwv7Ez/2Ks
	qpF4rV0F06OLvDvyRo+98PJ3t6T2Ph/66tkceRsj8xP/JiPnciT6nS2KMi0nS0icwR6fB/B5Tf/1x
	uqZt119nifpTKnsBLlzt/MHSk9Mb2wTUldzWETsEhAh5ic8wqiff4wt6QrCkl3QkvVdeFovLYErWF
	Uz8SIJq9JYxi6QTSLWYBvS9QyfNXEMHzbZGsy21DULRCzsXvAFFQxu5U/dsC4lNVfiHjdw4IP3SJY
	k5NelhPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uje8a-0000000FIGh-3gw9;
	Wed, 06 Aug 2025 13:25:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uje8X-0000000FIEn-3mKW
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 13:24:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uje8W-0007ZX-9J; Wed, 06 Aug 2025 15:24:56 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed,  6 Aug 2025 15:24:53 +0200
Message-Id: <20250806132455.2827813-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_062457_936347_E6177FF6 
X-CRM114-Status: GOOD (  14.09  )
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
Subject: [PATCH 1/3] ppc: implement sync_caches_for_execution
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of opencoding flush_dcache followed by invalidate_icache,
implement sync_caches_for_execution().

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/powerpc/boards/freescale-p1010rdb/p1010rdb.c | 3 +--
 arch/powerpc/boards/freescale-p1022ds/p1022ds.c   | 3 +--
 arch/powerpc/boards/freescale-p2020rdb/p2020rdb.c | 3 +--
 arch/powerpc/boards/owc-da923rc/da923rc.c         | 3 +--
 arch/powerpc/cpu-85xx/Makefile                    | 1 +
 arch/powerpc/cpu-85xx/cache.c                     | 9 +++++++++
 arch/powerpc/cpu-85xx/mmu.c                       | 6 ++----
 arch/powerpc/include/asm/cache.h                  | 2 ++
 8 files changed, 18 insertions(+), 12 deletions(-)
 create mode 100644 arch/powerpc/cpu-85xx/cache.c

diff --git a/arch/powerpc/boards/freescale-p1010rdb/p1010rdb.c b/arch/powerpc/boards/freescale-p1010rdb/p1010rdb.c
index c8f19bf2c147..023fb32bf3b1 100644
--- a/arch/powerpc/boards/freescale-p1010rdb/p1010rdb.c
+++ b/arch/powerpc/boards/freescale-p1010rdb/p1010rdb.c
@@ -164,8 +164,7 @@ static int p1010rdb_board_init_r(void)
 	const u8 flash_esel = e500_find_tlb_idx((void *)flashbase, 1);
 
 	/* Flush d-cache and invalidate i-cache of any FLASH data */
-	flush_dcache();
-	invalidate_icache();
+	sync_caches_for_execution();
 
 	/* invalidate existing TLB entry for flash */
 	e500_disable_tlb(flash_esel);
diff --git a/arch/powerpc/boards/freescale-p1022ds/p1022ds.c b/arch/powerpc/boards/freescale-p1022ds/p1022ds.c
index f46a0a20aee0..e3591454f831 100644
--- a/arch/powerpc/boards/freescale-p1022ds/p1022ds.c
+++ b/arch/powerpc/boards/freescale-p1022ds/p1022ds.c
@@ -165,8 +165,7 @@ static int p1022ds_board_init_r(void)
 	fsl_set_lbc_or(1, 0xffff8796);
 
 	/* Flush d-cache and invalidate i-cache of any FLASH data */
-	flush_dcache();
-	invalidate_icache();
+	sync_caches_for_execution();
 
 	/* invalidate existing TLB entry for flash */
 	e500_disable_tlb(flash_esel);
diff --git a/arch/powerpc/boards/freescale-p2020rdb/p2020rdb.c b/arch/powerpc/boards/freescale-p2020rdb/p2020rdb.c
index b1efee26f11e..ba4f58be10e7 100644
--- a/arch/powerpc/boards/freescale-p2020rdb/p2020rdb.c
+++ b/arch/powerpc/boards/freescale-p2020rdb/p2020rdb.c
@@ -246,8 +246,7 @@ static int board_init_r(void)
 	fsl_set_lbc_or(0, 0xff000ff7);
 
 	/* Flush d-cache and invalidate i-cache of any FLASH data */
-	flush_dcache();
-	invalidate_icache();
+	sync_caches_for_execution();
 
 	/* invalidate existing TLB entry for flash */
 	e500_disable_tlb(flash_esel);
diff --git a/arch/powerpc/boards/owc-da923rc/da923rc.c b/arch/powerpc/boards/owc-da923rc/da923rc.c
index b3e347794b49..baede439b15b 100644
--- a/arch/powerpc/boards/owc-da923rc/da923rc.c
+++ b/arch/powerpc/boards/owc-da923rc/da923rc.c
@@ -147,8 +147,7 @@ static int da923rc_board_init_r(void)
 
 	da923rc_boardinfo_get(&binfo);
 
-	flush_dcache();
-	invalidate_icache();
+	sync_caches_for_execution();
 
 	/* Clear LBC error interrupts */
 	out_be32(lbc + FSL_LBC_LTESR_OFFSET, 0xffffffff);
diff --git a/arch/powerpc/cpu-85xx/Makefile b/arch/powerpc/cpu-85xx/Makefile
index c7c5c8a00663..cc85eb759472 100644
--- a/arch/powerpc/cpu-85xx/Makefile
+++ b/arch/powerpc/cpu-85xx/Makefile
@@ -2,6 +2,7 @@
 
 obj-y			+= traps.o
 obj-y			+= tlb.o
+obj-y			+= cache.o
 obj-$(CONFIG_MMU)	+= mmu.o
 extra-y			+= start.o
 extra-y			+= resetvec.o
diff --git a/arch/powerpc/cpu-85xx/cache.c b/arch/powerpc/cpu-85xx/cache.c
new file mode 100644
index 000000000000..fcd71b6f9b76
--- /dev/null
+++ b/arch/powerpc/cpu-85xx/cache.c
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include <asm/cache.h>
+
+void sync_caches_for_execution(void)
+{
+	flush_dcache();
+	invalidate_icache();
+}
diff --git a/arch/powerpc/cpu-85xx/mmu.c b/arch/powerpc/cpu-85xx/mmu.c
index 3bd75281eb98..091873d966a3 100644
--- a/arch/powerpc/cpu-85xx/mmu.c
+++ b/arch/powerpc/cpu-85xx/mmu.c
@@ -47,10 +47,8 @@ int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, unsign
 			break;
 		e500_read_tlbcam_entry(esel, &valid, &tsize, &epn,
 				&rpn);
-		if (pte_flags & MAS2_I) {
-			flush_dcache();
-			invalidate_icache();
-		}
+		if (pte_flags & MAS2_I)
+			sync_caches_for_execution();
 		e500_set_tlb(1, epn, rpn, MAS3_SX|MAS3_SW|MAS3_SR,
 				(u8)wimge, 0, esel, tsize, 1);
 		/* convert tsize to bytes to increment address. */
diff --git a/arch/powerpc/include/asm/cache.h b/arch/powerpc/include/asm/cache.h
index c9066099ab6d..2edf11de2ef8 100644
--- a/arch/powerpc/include/asm/cache.h
+++ b/arch/powerpc/include/asm/cache.h
@@ -35,6 +35,8 @@ extern void clean_dcache_range(unsigned long start, unsigned long stop);
 extern void invalidate_dcache_range(unsigned long start, unsigned long stop);
 extern void flush_dcache(void);
 extern void invalidate_icache(void);
+#define sync_caches_for_execution sync_caches_for_execution
+extern void sync_caches_for_execution(void);
 #ifdef CFG_INIT_RAM_LOCK
 extern void unlock_ram_in_cache(void);
 #endif /* CFG_INIT_RAM_LOCK */
-- 
2.39.5



