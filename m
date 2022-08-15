Delivery-date: Mon, 15 Aug 2022 17:39:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNcBm-006bCs-TJ
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 17:39:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNcBm-0008IA-Jb
	for lore@pengutronix.de; Mon, 15 Aug 2022 17:39:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IvbFxbhZMJjXdXfLq/fXIdrIV5wtiL7rxUheCF0D/QE=; b=tiob/tyHHfHp8t66PsSbmo2ykH
	ORbOMeN7+rJ063nKJTpgWpulzPEDBFqqt0lUJwAQiukT7TAPhW5L1HFuvTkEBHtkh7WG7euBFFqQ8
	U/Jx6ZEZcpzU1y5w6yTa48+MXdahR03ZzMdjMgtpUePybiRdnUazWVRdTiwL6e28sp3GEmBJSzNJY
	orQH1eScCwfHQfR9wD9cC8485Kh7kzxE32t4N2ziJn4t9jnTKODYY5+rUlN5dZe2sJYI4LTNgaOvM
	UU35a5aK1VtXQSJSR7eHqyUfIVMOZ7mp+N5c4067oPm7CwTi+UDhVBs+pg9cf/gqRWK2oPmDyF+Rn
	H99wD6Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNc9s-000xWD-ET; Mon, 15 Aug 2022 15:37:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNc4i-000uCY-Cr
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 15:32:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oNc4b-0007A8-M6; Mon, 15 Aug 2022 17:32:13 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNc4Y-003wmg-LZ; Mon, 15 Aug 2022 17:32:12 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNc4Z-00AAGM-GE; Mon, 15 Aug 2022 17:32:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Aug 2022 17:32:05 +0200
Message-Id: <20220815153209.2422662-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220815153209.2422662-1-a.fatoum@pengutronix.de>
References: <20220815153209.2422662-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_083220_549074_2BC97698 
X-CRM114-Status: GOOD (  13.01  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 06/10] ARM: mmu64: map reserved regions uncached
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Now that we have reserved memory regions specially marked in the SDRAM
bank requests, we can use this information to map these regions
uncached and eXecute Never to avoid speculative access into these
regions from causing hard-to-debug data aborts.

The sequence used here is safe because __mmu_init turns off the MMU if
enabled, so even if we overwrite early MMU uncached entries they are
without effect until the MMU is turned on again, by which time the
for_each_reserved_region should have disabled caching for them again
(e.g. because they were listed in DT as /reserve-memory).

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu-common.h | 15 +++++++++++++++
 arch/arm/cpu/mmu_64.c     | 10 +++++++++-
 2 files changed, 24 insertions(+), 1 deletion(-)

diff --git a/arch/arm/cpu/mmu-common.h b/arch/arm/cpu/mmu-common.h
index ed7d5bc3168f..c9ea2c122857 100644
--- a/arch/arm/cpu/mmu-common.h
+++ b/arch/arm/cpu/mmu-common.h
@@ -3,6 +3,11 @@
 #ifndef __ARM_MMU_COMMON_H
 #define __ARM_MMU_COMMON_H
 
+#include <linux/types.h>
+#include <linux/ioport.h>
+#include <linux/kernel.h>
+#include <linux/sizes.h>
+
 void dma_inv_range(void *ptr, size_t size);
 void dma_flush_range(void *ptr, size_t size);
 void *dma_alloc_map(size_t size, dma_addr_t *dma_handle, unsigned flags);
@@ -19,4 +24,14 @@ static inline void arm_mmu_not_initialized_error(void)
 	panic("MMU not initialized\n");
 }
 
+static inline size_t resource_first_page(const struct resource *res)
+{
+	return ALIGN_DOWN(res->start, SZ_4K);
+}
+
+static inline size_t resource_count_pages(const struct resource *res)
+{
+	return ALIGN(resource_size(res), SZ_4K);
+}
+
 #endif
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 06049e000375..f43ac9a12186 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -201,9 +201,17 @@ void __mmu_init(bool mmu_on)
 	create_sections(0, 0, 1UL << (BITS_PER_VA - 1), attrs_uncached_mem());
 
 	/* Map sdram cached. */
-	for_each_memory_bank(bank)
+	for_each_memory_bank(bank) {
+		struct resource *rsv;
+
 		create_sections(bank->start, bank->start, bank->size, CACHED_MEM);
 
+		for_each_reserved_region(bank, rsv) {
+			create_sections(resource_first_page(rsv), resource_first_page(rsv),
+					resource_count_pages(rsv), attrs_uncached_mem());
+		}
+	}
+
 	/* Make zero page faulting to catch NULL pointer derefs */
 	zero_page_faulting();
 
-- 
2.30.2



