Delivery-date: Mon, 04 Aug 2025 20:29:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uizwb-0071xm-3D
	for lore@lore.pengutronix.de;
	Mon, 04 Aug 2025 20:29:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uizwb-0007M7-BZ
	for lore@pengutronix.de; Mon, 04 Aug 2025 20:29:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KigoA4Rl9u/yCybeZGyPvojK/avREl7UqZA/J9DRWOk=; b=I1n0CW/ezERWpVcxWIrGx81AwU
	gv0rQOdoxMTC2bS6qaHI04u+KUVVwyIIftplT0gGIKTaGwsvLHNeXq1REsx7mD68N6vwK0tJqWyCF
	pzDOiI+dbQvJMY5TvVSXccmNINyoxyPgrB2802nTZixOWc/OalYr4ecy6sSp4etGtpaY2GE6YAfQO
	lm0+DbqKEJ/0YaseB4VbVG6mnCW0zVw2DRqY/63OBCHNxUnqmDQZEbMADKYwnnuPcgIZBUboYYzcn
	zcZP9f7aWrxiW5L8XwHb9R+Aj7Yu41V+y/p5qJkcTvtNyMNq9UACfr9lQRjEM9UbKCMbxKwGtn9Dw
	qnk6x0AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uizwJ-0000000BA0n-00wS;
	Mon, 04 Aug 2025 18:29:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiytT-0000000B5Jo-3KEx
	for barebox@lists.infradead.org;
	Mon, 04 Aug 2025 17:22:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uiytS-0000su-4R; Mon, 04 Aug 2025 19:22:38 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  4 Aug 2025 19:22:28 +0200
Message-Id: <20250804172233.2158462-9-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250804172233.2158462-1-a.fatoum@barebox.org>
References: <20250804172233.2158462-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_102239_832613_06BAA212 
X-CRM114-Status: GOOD (  11.75  )
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
Subject: [PATCH v4 08/13] ARM: mmu: make mmu_remap_memory_banks clearer with helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

regmap_range operates on regions identified by start and size, but for
mmu_remap_memory_bank, we operate on the (exclusive) region end instead.

Make the code easier to reason about by using a regmap_range_end()
helper. This is intentionally not exported and functions that operate on
an end are error-prone with respect to whether the range end is
inclusive or exclusive.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/cpu/mmu-common.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index 85cb7cb007b9..4c30f98cbd79 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -69,6 +69,19 @@ void zero_page_faulting(void)
 	remap_range(0x0, PAGE_SIZE, MAP_FAULT);
 }
 
+/**
+ * remap_range_end - remap a range identified by [start, end)
+ *
+ * @start:    start of the range
+ * @end:      end of the first range (exclusive)
+ * @map_type: mapping type to apply
+ */
+static inline void remap_range_end(unsigned long start, unsigned long end,
+				   unsigned map_type)
+{
+	remap_range((void *)start, end - start, map_type);
+}
+
 static void mmu_remap_memory_banks(void)
 {
 	struct memory_bank *bank;
@@ -87,11 +100,11 @@ static void mmu_remap_memory_banks(void)
 
 		/* Skip reserved regions */
 		for_each_reserved_region(bank, rsv) {
-			remap_range((void *)pos, rsv->start - pos, MAP_CACHED);
+			remap_range_end(pos, rsv->start, MAP_CACHED);
 			pos = rsv->end + 1;
 		}
 
-		remap_range((void *)pos, bank->start + bank->size - pos, MAP_CACHED);
+		remap_range_end(pos, bank->start + bank->size, MAP_CACHED);
 	}
 
 	setup_trap_pages();
-- 
2.39.5



