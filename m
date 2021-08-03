Delivery-date: Tue, 03 Aug 2021 11:46:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mAr03-0005ne-Ni
	for lore@lore.pengutronix.de; Tue, 03 Aug 2021 11:46:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mAr02-0000cS-JQ
	for lore@pengutronix.de; Tue, 03 Aug 2021 11:46:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/OXNwG8N4+t2VwTRKHX/Tum2LKdEmMirVQPF84vy8SI=; b=J+f279pW/sO2fs
	EOqo/VpSJi2xfG3LXts57GOaDd5wrsX8ThxWMK7Edu5pNC7EY8+nhlH2mivPMxPh1dcnGP7tfJwTU
	h4E3JnauZDvupEy0eFlFgQL5Sy3cb8gO4uP4my0q+umN/TIwotVYqOuzpB02p7MB4kPhvSyQGtQ+w
	7ycSGYD6ZivPTakiI7qTAEnK9ZPgev5aJCOnpZ00my0nLxbeEyJuz5ErZxnYeb8eVqMMtFcQdZxWN
	7GyfZlrSgAQ/FRe2CqXYud6RKgUjScQ8y1AsDmiI1STUtJplmAVILCgwdDOV6K6m3Nzij4tzQGvaS
	9VDLLsP4yArJCn9VOZHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAqyW-001r3A-Ij; Tue, 03 Aug 2021 09:44:40 +0000
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAqyM-001qzT-8L
 for barebox@lists.infradead.org; Tue, 03 Aug 2021 09:44:31 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id F1B028A182; Tue,  3 Aug 2021 11:44:25 +0200 (CEST)
Received: from localhost (unknown
 [IPv6:2001:9e8:217d:6102:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id CAA6C8A107;
 Tue,  3 Aug 2021 11:44:22 +0200 (CEST)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue,  3 Aug 2021 11:44:13 +0200
Message-Id: <20210803094418.475609-4-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210803094418.475609-1-r.czerwinski@pengutronix.de>
References: <20210803094418.475609-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210803_024430_509652_D108ED42 
X-CRM114-Status: GOOD (  16.07  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/8] ARM: mmu: use reserve mem entries to modify maps
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use the information from the reserved memory entries to modify the
mapping of memory regions to mark them as uncachable and not-executable.
This also prevents the processor from speculating into these regions,
preventing hard to debug scenarios where boots fail for unknown reasons.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/cpu/mmu.c | 34 ++++++++++++++++++++++++++++++++--
 1 file changed, 32 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 6388e1bf14..73f4cf5b36 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -17,6 +17,7 @@
 #include <memory.h>
 #include <asm/system_info.h>
 #include <asm/sections.h>
+#include <of.h>
 
 #include "mmu.h"
 
@@ -407,6 +408,36 @@ static void vectors_init(void)
 	create_vector_table(ARM_LOW_VECTORS);
 }
 
+static void create_sections_with_intersect(struct memory_bank *bank)
+{
+	struct of_reserve_map *res_map;
+	unsigned long j_end;
+	unsigned long end;
+	unsigned long j;
+	u32 pmd_flags;
+	int i;
+
+	res_map = of_get_reserve_map();
+	if (!res_map)
+		return;
+
+	end = bank->start + bank->size - 1;
+
+	for (j = bank->start; j < end; j += PGDIR_SIZE) {
+		pmd_flags = PMD_SECT_DEF_CACHED;
+		j_end = j + PGDIR_SIZE - 1;
+
+		for (i = 0; i < res_map->num_entries; i++) {
+			if ((BIT(i) & res_map->xn) &&
+			    j_end >= res_map->start[i] &&
+			    j_end <= res_map->end[i])
+				pmd_flags = PMD_SECT_DEF_UNCACHED | PMD_SECT_XN;
+		}
+
+		create_sections(ttb, j, j_end, pmd_flags);
+	}
+}
+
 /*
  * Prepare MMU for usage enable it.
  */
@@ -468,8 +499,7 @@ void __mmu_init(bool mmu_on)
 	vectors_init();
 
 	for_each_memory_bank(bank) {
-		create_sections(ttb, bank->start, bank->start + bank->size - 1,
-				PMD_SECT_DEF_CACHED);
+		create_sections_with_intersect(bank);
 		__mmu_cache_flush();
 	}
 
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

