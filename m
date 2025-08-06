Delivery-date: Wed, 06 Aug 2025 15:06:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdqD-007dz2-0r
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 15:06:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdqC-0005KP-BD
	for lore@pengutronix.de; Wed, 06 Aug 2025 15:06:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4l02kdCJJXI0lT2HJIhDPcVk9MryBdtD8rel3F0t5A0=; b=olhxdsYhtGuzxvJS4qWH3ClC8L
	MJzC3Tx6oB9CMLx7SuPaJgMMsPVQr+EnUtGU+/7dP4SodNMxFq8yE/1kTuaa9UFpdFP6XjBoXB8f5
	shYePD3aT2rl6rvSvEpw3E92PEUHWs1wFBeGLgB9+ICv4RSznVUGOIB2HT0tUBc5+c8+1uA/XAFSk
	HDPur1Y1KN3ksEUXsxFpJ+WjqLClEFD2jRIWxk12+jl2923wBIwc2HP2pJ3kvwOqpy9k36P/UMGFx
	gc5h2WPNfICHrJNPs0I2g8Sw6jxjt0mqMQ33q9CAfk3/oXxXK+Bysg0kQ+q5rSTt6OqdQF7fh3adF
	+sULYs5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdpd-0000000FFne-2OTP;
	Wed, 06 Aug 2025 13:05:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdpb-0000000FFlv-0E0G
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 13:05:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdpZ-0004km-2u; Wed, 06 Aug 2025 15:05:21 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdpY-00CDTB-0V;
	Wed, 06 Aug 2025 15:05:20 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-009YOP-23;
	Wed, 06 Aug 2025 14:37:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Aug 2025 14:37:04 +0200
Message-Id: <20250806123714.2092620-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
References: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_060523_109508_13DA0261 
X-CRM114-Status: GOOD (  10.29  )
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
Subject: [PATCH 12/22] ARM: mmu64: move granule_size to the top of the file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The function with its comment is a useful clue for understanding the
code, so move it at the very top.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 66 +++++++++++++++++++++----------------------
 1 file changed, 33 insertions(+), 33 deletions(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 6e617a15a6d7..9f709fc2d865 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -24,6 +24,39 @@
 
 #include "mmu_64.h"
 
+static size_t granule_size(int level)
+{
+	/*
+	 *  With 4k page granule, a virtual address is split into 4 lookup parts
+	 *  spanning 9 bits each:
+	 *
+	 *    _______________________________________________
+	 *   |       |       |       |       |       |       |
+	 *   |   0   |  Lv0  |  Lv1  |  Lv2  |  Lv3  |  off  |
+	 *   |_______|_______|_______|_______|_______|_______|
+	 *     63-48   47-39   38-30   29-21   20-12   11-00
+	 *
+	 *             mask        page size
+	 *
+	 *    Lv0: FF8000000000       --
+	 *    Lv1:   7FC0000000       1G
+	 *    Lv2:     3FE00000       2M
+	 *    Lv3:       1FF000       4K
+	 *    off:          FFF
+	 */
+	switch (level) {
+	default:
+	case 0:
+		return L0_XLAT_SIZE;
+	case 1:
+		return L1_XLAT_SIZE;
+	case 2:
+		return L2_XLAT_SIZE;
+	case 3:
+		return L3_XLAT_SIZE;
+	}
+}
+
 static uint64_t *get_ttb(void)
 {
 	return (uint64_t *)get_ttbr(current_el());
@@ -210,39 +243,6 @@ static int __arch_remap_range(uint64_t virt, uint64_t phys, uint64_t size,
 	return 0;
 }
 
-static size_t granule_size(int level)
-{
-	/*
-	 *  With 4k page granule, a virtual address is split into 4 lookup parts
-	 *  spanning 9 bits each:
-	 *
-	 *    _______________________________________________
-	 *   |       |       |       |       |       |       |
-	 *   |   0   |  Lv0  |  Lv1  |  Lv2  |  Lv3  |  off  |
-	 *   |_______|_______|_______|_______|_______|_______|
-	 *     63-48   47-39   38-30   29-21   20-12   11-00
-	 *
-	 *             mask        page size
-	 *
-	 *    Lv0: FF8000000000       --
-	 *    Lv1:   7FC0000000       1G
-	 *    Lv2:     3FE00000       2M
-	 *    Lv3:       1FF000       4K
-	 *    off:          FFF
-	 */
-	switch (level) {
-	default:
-	case 0:
-		return L0_XLAT_SIZE;
-	case 1:
-		return L1_XLAT_SIZE;
-	case 2:
-		return L2_XLAT_SIZE;
-	case 3:
-		return L3_XLAT_SIZE;
-	}
-}
-
 static bool pte_is_cacheable(uint64_t pte)
 {
 	return (pte & PTE_ATTRINDX_MASK) == PTE_ATTRINDX(MT_NORMAL);
-- 
2.39.5



