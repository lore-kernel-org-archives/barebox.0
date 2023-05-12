Delivery-date: Fri, 12 May 2023 13:12:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgv-00F2Vt-Vn
	for lore@lore.pengutronix.de; Fri, 12 May 2023 13:12:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxQgr-0005El-C7
	for lore@pengutronix.de; Fri, 12 May 2023 13:12:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dddpxiKsLoyrsGWYUtxVM8NLEveZ8Rd6/4S68u0RFC4=; b=GKvHWqSZFD0dJWpdeoK0Vr42kU
	IIUuh16YpoAN6R7kqreoVnHjNJouqPw4ZTb3/7sMQuZ7s7CASVbKCNaY6Vg+CAwRzqogmI1zsjg9T
	//p4pKFEYtAj4F3FwoRydy4fNJNSgtJ9tf0UzqQlsYep5hgf6NskRlyZlD0JJ9fCjxIb1hiqGW0Aa
	VAA1SFrl23ECtIxucfvbwVDj2H3rfm/E1XqKWhBuqIeyOKLsyKSJOsmYQx3wdxyqW+l7QBunEAedq
	o/o0TSYTbQeLSxsxjNYdfcpjjoJELDB5rzcCO/Uj77/3Dl1dlHfePCL1kBqZEUGdYYgYDNPctWq1H
	bt4Vvigg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfc-00BkIm-2E;
	Fri, 12 May 2023 11:10:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfK-00Bk0z-2q
	for barebox@bombadil.infradead.org;
	Fri, 12 May 2023 11:10:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=dddpxiKsLoyrsGWYUtxVM8NLEveZ8Rd6/4S68u0RFC4=; b=oh7G73muiUWgl9EDHRvyn3JPUB
	HIapqlKICO6hlVv1+d2LCJc0spOdGXjdUFA3Kj6NHpBl01oMWmj0iRZelpseD5wSf2EJUeppdm1rG
	Bev3qIwsC6uWbj1gQWhuoyASsbRWHLcbGC0i6OrCiggPAowWH/QWAjSWaiKmLZhEjXAkiksRAHwr4
	MkcBdCYhPpSZ8JcFax5mSrEMCW3JWva39qOslLBRmIonlXFSH7yEimHfpKR2xUWj5L3Rh1oDF1ZMq
	8ygZI6AEpj+rHCoQCExaq6AZ2WHl61y+dbpnIGMYPgPkJPavZJkGFTq1Zz4ocdyG6cofAcOypTtwE
	BcL1aCcA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxQfF-00982x-12
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 11:10:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf8-0003e8-EV; Fri, 12 May 2023 13:10:14 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf7-002wjf-PG; Fri, 12 May 2023 13:10:13 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pxQf4-0055Ek-Dh; Fri, 12 May 2023 13:10:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 12 May 2023 13:10:02 +0200
Message-Id: <20230512111008.1120833-22-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230512111008.1120833-1-s.hauer@pengutronix.de>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_121021_481963_24A1539D 
X-CRM114-Status: GOOD (  13.05  )
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
Subject: [PATCH 21/27] ARM: mmu32: Add pte_flags_to_pmd()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 35 +++++++++++++++++++++++++++++------
 1 file changed, 29 insertions(+), 6 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 3939f60758..fd1f429398 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -193,30 +193,53 @@ static u32 pmd_flags_to_pte(u32 pmd)
 	return pte;
 }
 
+static u32 pte_flags_to_pmd(u32 pte)
+{
+	u32 pmd = 0;
+
+	if (pte & PTE_BUFFERABLE)
+		pmd |= PMD_SECT_BUFFERABLE;
+	if (pte & PTE_CACHEABLE)
+		pmd |= PMD_SECT_CACHEABLE;
+
+	if (cpu_architecture() >= CPU_ARCH_ARMv7) {
+		if (pte & PTE_EXT_NG)
+			pmd |= PMD_SECT_nG;
+		if (pte & PTE_EXT_XN)
+			pmd |= PMD_SECT_XN;
+
+		/* TEX[2:0] */
+		pmd |= ((pte >> 6) & 7) << 12;
+		/* AP[1:0] */
+		pmd |= ((pte >> 4) & 0x3) << 10;
+		/* AP[2] */
+		pmd |= ((pte >> 9) & 0x1) << 15;
+	} else {
+		pmd |= PMD_SECT_AP_WRITE | PMD_SECT_AP_READ;
+	}
+
+	return pmd;
+}
+
 int arch_remap_range(void *start, size_t size, unsigned flags)
 {
 	u32 addr = (u32)start;
 	u32 pte_flags;
-	u32 pgd_flags;
 
 	BUG_ON(!IS_ALIGNED(addr, PAGE_SIZE));
 
 	switch (flags) {
 	case MAP_CACHED:
 		pte_flags = pte_flags_cached;
-		pgd_flags = PMD_SECT_DEF_CACHED;
 		break;
 	case MAP_UNCACHED:
 		pte_flags = pte_flags_uncached;
-		pgd_flags = pgd_flags_uncached;
 		break;
 	case MAP_FAULT:
 		pte_flags = 0x0;
-		pgd_flags = 0x0;
 		break;
 	case ARCH_MAP_WRITECOMBINE:
 		pte_flags = pte_flags_wc;
-		pgd_flags = pgd_flags_wc;
 		break;
 	default:
 		return -EINVAL;
@@ -234,7 +257,7 @@ int arch_remap_range(void *start, size_t size, unsigned flags)
 			 * replace it with a section
 			 */
 			chunk = PGDIR_SIZE;
-			*pgd = addr | pgd_flags;
+			*pgd = addr | pte_flags_to_pmd(pte_flags) | PMD_TYPE_SECT;
 			dma_flush_range(pgd, sizeof(*pgd));
 		} else {
 			unsigned int num_ptes;
-- 
2.39.2



