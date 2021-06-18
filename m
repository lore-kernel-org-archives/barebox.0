Delivery-date: Fri, 18 Jun 2021 10:11:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lu9b7-0007WD-36
	for lore@lore.pengutronix.de; Fri, 18 Jun 2021 10:11:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lu9b6-0001ga-8T
	for lore@pengutronix.de; Fri, 18 Jun 2021 10:11:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5EpHii1ggxtLuc9HNGFSggzyAHA24fFFVQpKsLYTDQE=; b=SSEhThcBCkY53S
	hfsGtwqF0jylccFIpNdUmOS6R7kqB91eUy3BSqSI5LLv+VKWMp+67RB/138R66dX72JOS1t9NiJAQ
	clwLS5G/G8adyK8Kgrt27WMnrDBWAElmI0OOzrwxz/5mDykvGZIwlP0+2AUT2EIb4K7/BVfIuecu7
	twvBJ5+52V0gML4lYLUDXYjv2e4R275xqz8f7goXtH9v1dMPcqTeJzppPSWgHHGB6OF7Q2BBiOZl/
	BfxS7JqaBfRg3yMNs+G6xGpvvjIr7ZoB+52K4VBkc+SoIuKoimnxWKeeDl0LG/2dQVEH3bvoQ7vcn
	11q/pdy3KjPDsNEYwbuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lu9ZX-00DFrc-UC; Fri, 18 Jun 2021 08:09:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lu9ZS-00DFpe-9p
 for barebox@lists.infradead.org; Fri, 18 Jun 2021 08:09:47 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>)
 id 1lu9ZN-0001Cm-QJ; Fri, 18 Jun 2021 10:09:41 +0200
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>)
 id 1lu9ZN-0006GD-EE; Fri, 18 Jun 2021 10:09:41 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 18 Jun 2021 10:09:38 +0200
Message-Id: <20210618080939.15343-1-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_010946_437404_AA2B55DB 
X-CRM114-Status: GOOD (  13.04  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: mmu: inherit pte flags from pmd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

When creating a 2nd level page table from a section inherit the flags
from the section rather than assuming the section was mapped cached
previously. This fixes creating a 2nd level pagetable when the section
was mapped differently than we expected.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.c | 28 ++++++++++++++++++++++++----
 1 file changed, 24 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 6af228505dd1..6388e1bf14f6 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -138,6 +138,29 @@ static u32 *arm_create_pte(unsigned long virt, uint32_t flags)
 	return table;
 }
 
+static u32 pmd_flags_to_pte(u32 pmd)
+{
+	u32 pte = 0;
+
+	if (pmd & PMD_SECT_BUFFERABLE)
+		pte |= PTE_BUFFERABLE;
+	if (pmd & PMD_SECT_CACHEABLE)
+		pte |= PTE_CACHEABLE;
+	if (pmd & PMD_SECT_nG)
+		pte |= PTE_EXT_NG;
+	if (pmd & PMD_SECT_XN)
+		pte |= PTE_EXT_XN;
+
+	/* TEX[2:0] */
+	pte |= PTE_EXT_TEX((pmd >> 12) & 7);
+	/* AP[1:0] */
+	pte |= ((pmd >> 10) & 0x3) << 4;
+	/* AP[2] */
+	pte |= ((pmd >> 15) & 0x1) << 9;
+
+	return pte;
+}
+
 int arch_remap_range(void *start, size_t size, unsigned flags)
 {
 	u32 addr = (u32)start;
@@ -206,11 +229,8 @@ int arch_remap_range(void *start, size_t size, unsigned flags)
 				 * If PTE is not found it means that
 				 * we needs to split this section and
 				 * create a new page table for it
-				 *
-				 * NOTE: Here we assume that section
-				 * we just split was mapped as cached
 				 */
-				table = arm_create_pte(addr, pte_flags_cached);
+				table = arm_create_pte(addr, pmd_flags_to_pte(*pgd));
 				pte = find_pte(addr);
 				BUG_ON(!pte);
 			}
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

