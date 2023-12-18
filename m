Delivery-date: Mon, 18 Dec 2023 13:43:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFCyG-002r5t-2v
	for lore@lore.pengutronix.de;
	Mon, 18 Dec 2023 13:43:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFCyG-0000lp-BA
	for lore@pengutronix.de; Mon, 18 Dec 2023 13:43:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WMBOwZ4a4pJ/RYpBlsqnswqAr77rwJW6cvfDN4SDbCQ=; b=u96cq7ADhttAixvOoZA3lEX/dN
	AXJeWPZwLNr9FdyUS4iSQH5HVUOid4QouPpQTnBSU3Os8eDBg/4B2k+p4aaBT20FuMEt5Jw6Dgwvj
	T1pGGnRBChYHPwfNll35/r6/XSwlK/K32wGT/t6rTeqNMz/v20FKcWDUQJlfzlpkWDagyFjedKxsb
	sshaxPDVFJy3zr6tZqTDHAgArksg7OSgSp50sXejDjmn4b/Lf/3JDUHeW1gLteot8fR373ZAfgGW6
	0NpqfaPLtU9oF5SdwdCMhaWMGyGJ+lG+tcYIdZZH89YM72PQ6mMaSb5vvTNa4oJnKajet6/uvIp5Z
	7rIaCDIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCx9-00AeaS-1C;
	Mon, 18 Dec 2023 12:42:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCx0-00AeUL-0U
	for barebox@lists.infradead.org;
	Mon, 18 Dec 2023 12:42:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rFCwv-00009s-0q; Mon, 18 Dec 2023 13:42:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rFCwu-00Ghq6-Kt; Mon, 18 Dec 2023 13:42:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rFCwu-00C3MM-1p;
	Mon, 18 Dec 2023 13:42:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 18 Dec 2023 13:42:16 +0100
Message-Id: <20231218124216.2872831-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <PR3P195MB055567DB185710A642B12808C390A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
References: <PR3P195MB055567DB185710A642B12808C390A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_044226_215972_3E406664 
X-CRM114-Status: GOOD (  11.01  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! ARM64: mmu: fix mmu_early_enable VA->PA mapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Fix warnings and reformat:

  - fix whitespaces in accordance with kernel coding style
  - mark locally-used function static to fix warning
  - remove cast to fix -Wint-conversion warning
  - Use C-style comments as used elsewhere

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index e855ae4fa7d4..a392789ab696 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -294,12 +294,13 @@ void dma_flush_range(void *ptr, size_t size)
 	v8_flush_dcache_range(start, end);
 }
 
-void init_range(void *virt_addr, size_t size)
+static void init_range(void *virt_addr, size_t size)
 {
 	uint64_t *ttb = get_ttb();
 	uint64_t addr = (uint64_t)virt_addr;
-	while(size) {
-		early_remap_range((void *)addr, L0_XLAT_SIZE, MAP_UNCACHED);
+
+	while (size) {
+		early_remap_range(addr, L0_XLAT_SIZE, MAP_UNCACHED);
 		split_block(ttb,0);
 		size -= L0_XLAT_SIZE;
 		addr += L0_XLAT_SIZE;
@@ -324,9 +325,10 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize)
 
 	memset((void *)ttb, 0, GRANULE_SIZE);
 
-	// Assume maximum BITS_PER_PA set to 40 bits.
-	// Set 1:1 mapping of VA->PA. So to cover the full 1TB range we need 2 tables.
-	init_range(0, 2*L0_XLAT_SIZE);
+	/* Assuming maximum BITS_PER_PA set to 40 bits, set 1:1 mapping
+	 * of VA->PA. To cover the full 1TiB range we need 2 tables.
+	 */
+	init_range(0, 2 * L0_XLAT_SIZE);
 	early_remap_range(membase, memsize - OPTEE_SIZE, MAP_CACHED);
 	early_remap_range(membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_FAULT);
 	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext), MAP_CACHED);
-- 
2.39.2



