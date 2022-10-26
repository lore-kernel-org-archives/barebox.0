Delivery-date: Wed, 26 Oct 2022 14:56:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1onfxq-002won-54
	for lore@lore.pengutronix.de; Wed, 26 Oct 2022 14:56:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1onfxp-0000CI-3L
	for lore@pengutronix.de; Wed, 26 Oct 2022 14:56:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4ecozUnJ6QEvbsUGbezM1VVr5/i7Sbb9smAKcEdixoE=; b=ar6UsA4h8OXlCQ
	6KliLpItm2SItuwb3kpRX7djLluD1IZ48Gbn9Cw/uNF6cvcgbWRYIPWEOYHasj4yUC6ac+Ba7pc7v
	ffvggCOQHsXzVdcLCHkPIDtdgSkdFJukVSgiXNtUQlE934zCwAFqEUFyzbfp9QIsC2ChoSqQgxSjI
	bM350RmUpwijuElUB/0lyvbfJEDBi5RPW95dF4uy0l1SeyCRA9vv1aw1kICVON/oBNVSR2e0SO3Dv
	Qtj0gkxtxf805j1OGF2uj98OEas8LPowqDO+SFFV8lFQv8+Q/8mfkH8apqqU2mTEbJ/+AqI8WKr5W
	fNpcZOKgoxoJEhoPAU7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onfw5-009JQ2-J9; Wed, 26 Oct 2022 12:55:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onfvu-009JN2-7P
	for barebox@lists.infradead.org; Wed, 26 Oct 2022 12:54:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1onfvq-00088D-4o; Wed, 26 Oct 2022 14:54:54 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1onfvq-000Vdw-DL; Wed, 26 Oct 2022 14:54:53 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1onfvo-00E5P3-QR; Wed, 26 Oct 2022 14:54:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 26 Oct 2022 14:54:51 +0200
Message-Id: <20221026125451.3357318-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_055458_296557_15A4259C 
X-CRM114-Status: GOOD (  11.45  )
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
Cc: str@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: SoCFPGA: arria10: Fix DMA accesses at addresses < 256KiB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Setting BIT(1) in the ARRIA10_SYSMGR_NOC_ADDR_REMAP_VALUE results in
mapping the OCRAM to 0x0, at least for the CPU. Peripherals doing
DMA like the SDMMC controller see the SDRAM instead. Linux happens
to use this low memory for DMA sometimes and things explode nicely
at that point.

Clear the OCRAM mapping so that both the CPU and DMA controllers access
SDRAM.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-socfpga/arria10-init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-socfpga/arria10-init.c b/arch/arm/mach-socfpga/arria10-init.c
index 2fa44c21c5..93bc3368d3 100644
--- a/arch/arm/mach-socfpga/arria10-init.c
+++ b/arch/arm/mach-socfpga/arria10-init.c
@@ -174,7 +174,7 @@ void arria10_init(struct arria10_mainpll_cfg *mainpll,
 	 * Enable address filtering (Bit[0])
 	 */
 	writel(0x00000001, ARRIA10_MPUL2_ADRFLTR_START);
-	writel(0x00000002, ARRIA10_SYSMGR_NOC_ADDR_REMAP_VALUE);
+	writel(0x00000000, ARRIA10_SYSMGR_NOC_ADDR_REMAP_VALUE);
 
 	arria10_reset_peripherals();
 
-- 
2.30.2



