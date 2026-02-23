Delivery-date: Mon, 23 Feb 2026 09:35:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRPH-004lZk-24
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 09:35:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRPH-00045a-Tc
	for lore@pengutronix.de; Mon, 23 Feb 2026 09:35:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OP6LealXeHCuJNslBH83wXYMGMRpO2jV7gD1LulL2hA=; b=gxAOr0OnOT8IsTw7GpqLHl4o/o
	mHMq4fmtGc5ZRax6gCLIX0wGX35lsq1HddegfHHJP6P9uWpCCubcrOs8eDgTUEIM1KvNXomXO7iQx
	2ed91RMWqaELCia4qidMLyxqCM8F92UzbJcpo4mcL04Wo/GJTUFgSKfMGWtD+gHjhaLP3NM3M7vkq
	t8zr/CHRaewsMF/RM5GPBs2hirbI617XjLBVSWFVNPCZ3uhPtkXd6yfK/qBP8bWkrf/nDkmjgXtef
	/I9pk1Fs0Gn2H6rowtrbbBmJdgoS7b2Ak3y+njDlj8PJTDUFfnIL+Q98m/qjg7mEWaHSPe7oNyniZ
	+WNSwBww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuROY-0000000HQWn-3ZIw;
	Mon, 23 Feb 2026 08:34:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuROS-0000000HQUg-2RmT
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 08:34:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuROO-0003pT-52; Mon, 23 Feb 2026 09:34:12 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuROM-002CHf-1s;
	Mon, 23 Feb 2026 09:34:11 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuRON-00000000llL-3Xaq;
	Mon, 23 Feb 2026 09:34:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Feb 2026 09:34:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-arm-mmu-v1-4-707d45f6f6e1@pengutronix.de>
References: <20260223-arm-mmu-v1-0-707d45f6f6e1@pengutronix.de>
In-Reply-To: <20260223-arm-mmu-v1-0-707d45f6f6e1@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771835651; l=1034;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=lK+uNgw5E3g9ayMfdWeAa5VOkqIc4UuGQcq013VgH70=;
 b=xl4e5dMrV3mtLmkr4Rqh8JXTh9AdDZu5ZSLGPT9ekvXBIF9Y/mPUlcFWQqjNQC+d/sy8AgChs
 /Oew1LESqqpCtKRdajPlhq7MveNhgCqTCxcFX1tfUPeL/0XWy6Ix91T
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_003416_628995_CA1DF0EF 
X-CRM114-Status: GOOD (  11.94  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] ARM: pbl: MMU: Make it callable multiple times
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

mmu_early_enable() is called in barebox_pbl_start() after a call to
setup_c(). setup_c() clears the BSS which means alloc_pte() starts at
index zero again when mmu_early_enable() has been called earlier
already.

Some boards might want to do exactly that: Call mmu_early_enable()
earlier to do for example otherwise expensive hashing of xloaded
binaries.

Make mmu_early_enable() safe to be called multiple times by moving the
PTE index out of the BSS.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu_64.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 7f38473079..2f451b3c91 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -86,7 +86,10 @@ static void set_pte_range(unsigned level, uint64_t *virt, phys_addr_t phys,
 #ifdef __PBL__
 static uint64_t *alloc_pte(void)
 {
-	static unsigned int idx;
+	static int idx = -1;
+
+	if (idx == -1)
+		idx = 0;
 
 	idx++;
 

-- 
2.47.3



