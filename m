Delivery-date: Wed, 06 Aug 2025 14:39:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdQa-007dai-2G
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 14:39:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdQZ-00010J-Hq
	for lore@pengutronix.de; Wed, 06 Aug 2025 14:39:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2QEibq7VmTXIrHN1usO+BLU1+Uky42Rt6JPKObOltfw=; b=DQfOgyuPL7LqKzytu76pUOBQL4
	8KGppaE22AQo/AFf0zv3X2zxEaxCFBFzb9AGvhTpRG5rlc8I2GDiMK2Hc01iK8olIXzCSRlFtOZIM
	Hrp1mJQ8JdDAKhRXfHUB3iwazd2btzo+pTpDtgqBcujngggY4pIt7619paJk3qEz6fvfd36wr3vl6
	8evY1oStyltiU2Ye6iSWH935ODpqfAzoiG4uWXaCHq58VYaLH+fkEOfonh+a2petiB5rrv+8dNJ3N
	uLtPOdTBM1jFpY1oFHtuuJrmyZg/4xOvvi7bOoEVejzGiwnf2tZxBM048KFxctGMrtPrcdRRft1oU
	ItWyz+mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdQ7-0000000FAPc-30w3;
	Wed, 06 Aug 2025 12:39:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdOW-0000000FA8G-35DV
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 12:37:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-0000MU-H4; Wed, 06 Aug 2025 14:37:15 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-00CD8t-10;
	Wed, 06 Aug 2025 14:37:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-009YOP-0h;
	Wed, 06 Aug 2025 14:37:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Aug 2025 14:36:55 +0200
Message-Id: <20250806123714.2092620-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
References: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_053724_775471_736E638C 
X-CRM114-Status: GOOD (  12.03  )
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
Subject: [PATCH 03/22] ARM: mmu: prefix pre-MMU functions with early_
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already have early_remap_range for remapping operations done before
enabling the MMU. Let's use the same name scheme for all early page
table operations.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 10 +++++-----
 arch/arm/cpu/mmu_64.c |  4 ++--
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index ae86c27e7e27..848d2d2b8c0b 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -381,8 +381,8 @@ int arch_remap_range(void *virt_addr, phys_addr_t phys_addr, size_t size, maptyp
 	return 0;
 }
 
-static void create_sections(unsigned long first, unsigned long last,
-			    unsigned int flags)
+static void early_create_sections(unsigned long first, unsigned long last,
+				  unsigned int flags)
 {
 	uint32_t *ttb = get_ttb();
 	unsigned long ttb_start = pgd_index(first);
@@ -395,10 +395,10 @@ static void create_sections(unsigned long first, unsigned long last,
 	}
 }
 
-static inline void create_flat_mapping(void)
+static inline void early_create_flat_mapping(void)
 {
 	/* create a flat mapping using 1MiB sections */
-	create_sections(0, 0xffffffff, attrs_uncached_mem());
+	early_create_sections(0, 0xffffffff, attrs_uncached_mem());
 }
 
 void *map_io_sections(unsigned long phys, void *_start, size_t size)
@@ -634,7 +634,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 	 * This marks the whole address space as uncachable as well as
 	 * unexecutable if possible
 	 */
-	create_flat_mapping();
+	early_create_flat_mapping();
 
 	/* maps main memory as cachable */
 	optee_start = membase + memsize - OPTEE_SIZE;
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 9e8d36d94944..83738ed6ad0d 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -424,7 +424,7 @@ void *dma_alloc_writecombine(struct device *dev, size_t size, dma_addr_t *dma_ha
 	return dma_alloc_map(dev, size, dma_handle, MAP_WRITECOMBINE);
 }
 
-static void init_range(size_t total_level0_tables)
+static void early_init_range(size_t total_level0_tables)
 {
 	uint64_t *ttb = get_ttb();
 	uint64_t addr = 0;
@@ -460,7 +460,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize, unsigned lon
 	 * Assume maximum BITS_PER_PA set to 40 bits.
 	 * Set 1:1 mapping of VA->PA. So to cover the full 1TB range we need 2 tables.
 	 */
-	init_range(2);
+	early_init_range(2);
 
 	early_remap_range(membase, memsize, ARCH_MAP_CACHED_RWX, false);
 
-- 
2.39.5



