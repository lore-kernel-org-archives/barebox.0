Delivery-date: Fri, 12 Apr 2024 18:29:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rvJmd-009DOk-26
	for lore@lore.pengutronix.de;
	Fri, 12 Apr 2024 18:29:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rvJmd-00082G-4e
	for lore@pengutronix.de; Fri, 12 Apr 2024 18:29:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=h0gvW2uwmcZq4Mlorov6KgXIrVvg1hCDu+352OHJ+VY=; b=ebfBRRa8YOwiBbopDDQ60B41u5
	69LpiZTS9qDQfsXw0yBtanRq0zhAGyUDOXsF2dgJortOsoKa1AM165bqOC0joiBmwlYK8ToRLe19K
	SAZGKwRWJ1D949oMuJzrUJ92hI//1lNSaDZPtaajbKlySNpN7iVXOP7eBEsaM4zaTz/100lcXV5Wf
	2rQEyEHx0uxywbQJrIHiAXDHcrq4yKUcaRF0640boDGX8r9vx7A6a2nAymspnUiA5Boe8A9T+3ZB8
	6CXMusVvDNMU7GfKgBmc2Q5iAd+gxygz0XMJzQ3gu+MD9WImxqfofYd2ChOuYZ9UgHp+6ygbdzqhh
	PNqNa2yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvJm4-00000000VD8-1KvX;
	Fri, 12 Apr 2024 16:29:12 +0000
Received: from smtpout-3.cvg.de ([2003:49:a034:1067:5::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvJlz-00000000V8g-3pHI
	for barebox@lists.infradead.org;
	Fri, 12 Apr 2024 16:29:10 +0000
Received: from mail-mta-3.intern.sigma-chemnitz.de (mail-mta-3.intern.sigma-chemnitz.de [192.168.12.71])
	by mail-out-3.intern.sigma-chemnitz.de (8.17.1/8.17.1) with ESMTPS id 43CGSkoI418034
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Fri, 12 Apr 2024 18:28:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1712939326;
	bh=h0gvW2uwmcZq4Mlorov6KgXIrVvg1hCDu+352OHJ+VY=; l=1688;
	h=From:To:Cc:Subject:Date;
	b=YbSHTtfW9j5cf3oK6a+4OR5T1u8btDEupQrGHRqU8p3DNJmYug6Qj0EEvQEKh2UKh
	 6c6voAmTXnS5K3Yk0WsTpHPYAKPe3KFl5OeGFLTxxS1xSBAC9T4cM6DI/zsHtDblOF
	 22dDo2lnlAxEV8wj504K2TjAsMlFo2Lyn+CbNLw/Q3Yr8dODKxmgWMEOkuX4PEHq8k
	 UtxMEn6BhjKlyC1lLPBKdbfFPkCIsd6G4gHobOLDee5grKZCNl4UQfW0Mo7FeWCl+W
	 v1cFe7j6g2vdR4zZmkrYHwPSufLmdiiVp2N6czIth4uV7Wy0uvMtUCpV4fGAphOlqF
	 rBj+Nr5up25oA==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-3.intern.sigma-chemnitz.de (8.17.1/8.17.1) with ESMTP id 43CGShI51043512
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Fri, 12 Apr 2024 18:28:45 +0200
Received: from mail-msa-2.intern.sigma-chemnitz.de ([192.168.12.72])
	by reddoxx.intern.sigma-chemnitz.de with ESMTP
	id QJ4LVY7OCH; Fri, 12 Apr 2024 18:28:43 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-2.intern.sigma-chemnitz.de (8.17.1/8.17.1) with ESMTPS id 43CGSh7N466531
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Fri, 12 Apr 2024 18:28:43 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.97.1)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1rvJlb-00000001C3j-04UJ;
	Fri, 12 Apr 2024 18:28:43 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Fri, 12 Apr 2024 18:28:35 +0200
Message-ID: <20240412162836.284671-1-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-REDDOXX-Id: 6619613bb121c496daa97498
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_092908_673615_550386F2 
X-CRM114-Status: UNSURE (   9.98  )
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
X-Spam-Status: No, score=-105.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM64: let 'end' point after the range in cache functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

v8_flush_dcache_range() and v8_inv_dcache_range() are implemented
under the assumption that their 'end' parameter points *after* the
range.

Fix callers to use it in this way.

This fixes e.g. spurious corruptions in the last octet when sending
129 bytes over ethernet.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 arch/arm/cpu/dma_64.c | 2 +-
 arch/arm/cpu/mmu_64.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/dma_64.c b/arch/arm/cpu/dma_64.c
index 74d7167860c2..b50572f5e601 100644
--- a/arch/arm/cpu/dma_64.c
+++ b/arch/arm/cpu/dma_64.c
@@ -6,7 +6,7 @@ void arch_sync_dma_for_device(void *vaddr, size_t size,
                               enum dma_data_direction dir)
 {
 	unsigned long start = (unsigned long)vaddr;
-	unsigned long end = start + size - 1;
+	unsigned long end = start + size;
 
 	if (dir == DMA_FROM_DEVICE)
 		v8_inv_dcache_range(start, end);
diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 12cd644de0c7..b48e4732b86d 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -282,7 +282,7 @@ void mmu_disable(void)
 void dma_inv_range(void *ptr, size_t size)
 {
 	unsigned long start = (unsigned long)ptr;
-	unsigned long end = start + size - 1;
+	unsigned long end = start + size;
 
 	v8_inv_dcache_range(start, end);
 }
@@ -290,7 +290,7 @@ void dma_inv_range(void *ptr, size_t size)
 void dma_flush_range(void *ptr, size_t size)
 {
 	unsigned long start = (unsigned long)ptr;
-	unsigned long end = start + size - 1;
+	unsigned long end = start + size;
 
 	v8_flush_dcache_range(start, end);
 }
-- 
2.44.0



