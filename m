Delivery-date: Wed, 17 May 2023 11:41:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfE-0049pw-7q
	for lore@lore.pengutronix.de; Wed, 17 May 2023 11:41:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzDfB-0002gj-RZ
	for lore@pengutronix.de; Wed, 17 May 2023 11:41:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y41Zgxflk0n463UNo4vRC5QxbkJSISQhVTdjezLXYq8=; b=WkOK5y8hxjXT8MhkOanRRPhwEM
	wB1rlfg+LbV4Hw72jCWH+kZAcKfK750SsF+yP3GHSRcxdU4eAvrebTw2GW9hojJsaKMrNF5nCHpO4
	mIqcsq4vD5s6OOE4LzsrPcT0mlbbwXZh6Vxx/ct5EA88I223cLeM3LmCl8cl8YD4p1uct4FOhjBc0
	YK1oWf38BduOy8fjukTXnA8+Oi9k9CKrxrvtnxlg8QJvtf5hbuYMhVd/Rfmm8v3WFNhuuZCzsmO1l
	E3G+GcIX/MRaRoPE3LUvhmXXt4FPVy6lHAP5w55vvlNiKI60sw2y59iXpcXq8l2Q0WYg0u5ssTl7e
	97TwIQ9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDe0-0096Lu-1g;
	Wed, 17 May 2023 09:40:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDdv-0096Gj-2Q
	for barebox@bombadil.infradead.org;
	Wed, 17 May 2023 09:40:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Y41Zgxflk0n463UNo4vRC5QxbkJSISQhVTdjezLXYq8=; b=B2EtVRwEb3VMiAIVxiN2pXfczv
	esn5dp7mAREZUkb48WgpbsFBNPa6NtFgpjn7QAuI8w2xScwAqznLLeXdccXf4VlEr/b8v4cdFvdN7
	ZK62p86SBSHP6KWHBI/H2L0pWxSCN0n7erjDUTrXtOU2cJqp4fz0KO0OGQlAGNEi0E0qGGJD4Oax2
	aLmIpo59WOiBFPtpBcfsDRF8EXGSDvyud516gkQpfaoVDHeiPS1cgcPBG8ZD1za94cn/sBnDB6HM6
	ELoq7Nie1YqpNXH1knmMnZ5ie+bWMulCb0a57X5MhVzE31fiVfBZ+ob6NUnEC3OWQa7pIHvXM5RZZ
	EsO47eJg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzD4Z-00DAxu-0o
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 09:04:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4V-00040j-3V; Wed, 17 May 2023 11:03:47 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4U-000o7R-BZ; Wed, 17 May 2023 11:03:46 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pzD4Q-00Gase-3y; Wed, 17 May 2023 11:03:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 May 2023 11:03:34 +0200
Message-Id: <20230517090340.3954615-29-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517090340.3954615-1-s.hauer@pengutronix.de>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_100351_750081_5CF819D4 
X-CRM114-Status: GOOD (  13.46  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 28/34] ARM: mmu32: Add pte_flags_to_pmd()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_32.c | 35 +++++++++++++++++++++++++++++------
 1 file changed, 29 insertions(+), 6 deletions(-)

diff --git a/arch/arm/cpu/mmu_32.c b/arch/arm/cpu/mmu_32.c
index 4abaab7d87..0af89ac39c 100644
--- a/arch/arm/cpu/mmu_32.c
+++ b/arch/arm/cpu/mmu_32.c
@@ -187,30 +187,53 @@ static u32 pmd_flags_to_pte(u32 pmd)
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
@@ -228,7 +251,7 @@ int arch_remap_range(void *start, size_t size, unsigned flags)
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



