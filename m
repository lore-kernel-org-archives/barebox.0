Delivery-date: Thu, 16 Apr 2026 11:48:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDJLH-00Cm4J-1M
	for lore@lore.pengutronix.de;
	Thu, 16 Apr 2026 11:48:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDJLG-0001Ja-SL
	for lore@pengutronix.de; Thu, 16 Apr 2026 11:48:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7u4pBktagPCRtrgk46kRTXoo/Al8dxRLkb868JG11qQ=; b=y79dfpBMEcqGRj0jAkHm6ET7uC
	9IowW+5KVUJU5STm7rX26/Dq1Uoz2d/NVNhjbc2mFk/z35P3yp5I3jmvrkGJYqBvCbz/G/hI/kKtS
	apfTzuQQ3DchrIMxdjXkrnvpA3T2ThnO/npThOrj+n3d6NKkHoupnKBHNZRZ+AfvFa8gQqjOc1e7V
	hryfkOI4Iq22AEvP0jfsDicWBklws5kG4aFlRZa5w9Tv8K+fiP7crx06x0M2duwxlW8xdaUM9lPao
	y9oD7ZRW0qnETRzT3MP0baMZh3rCNzJh92B8P2vM+5rQ4ZFnJpIgyPSLjwQm+WizNE2vepT4agtKe
	8RzQSN1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDJKh-00000002GSt-0sFa;
	Thu, 16 Apr 2026 09:48:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDJKa-00000002GOC-3XYa
	for barebox@lists.infradead.org;
	Thu, 16 Apr 2026 09:48:20 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wDJKX-0000o5-81; Thu, 16 Apr 2026 11:48:13 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 16 Apr 2026 11:48:10 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260416-socfpga-agilex5-sdram-v1-6-07556aa7219f@pengutronix.de>
References: <20260416-socfpga-agilex5-sdram-v1-0-07556aa7219f@pengutronix.de>
In-Reply-To: <20260416-socfpga-agilex5-sdram-v1-0-07556aa7219f@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_024816_945592_7A7007AC 
X-CRM114-Status: UNSURE (   6.10  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 6/9] arm: socfpga: agilex5: remove unused declarations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The functions are declared but neither defined nor used. Remove the
declarations to avoid readers' confusion.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 include/mach/socfpga/soc64-sdram.h | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/include/mach/socfpga/soc64-sdram.h b/include/mach/socfpga/soc64-sdram.h
index c3eac2c43076..681afe3bae0e 100644
--- a/include/mach/socfpga/soc64-sdram.h
+++ b/include/mach/socfpga/soc64-sdram.h
@@ -175,18 +175,6 @@ struct altera_sdram_plat {
 #define FW_HMC_ADAPTOR_REG_ADDR			0xf8020004
 #define FW_HMC_ADAPTOR_MPU_MASK			BIT(0)
 
-u32 hmc_readl(struct altera_sdram_plat *plat, u32 reg);
-u32 hmc_ecc_readl(struct altera_sdram_plat *plat, u32 reg);
-u32 hmc_ecc_writel(struct altera_sdram_plat *plat,
-		   u32 data, u32 reg);
-u32 ddr_sch_writel(struct altera_sdram_plat *plat, u32 data,
-		   u32 reg);
-int emif_clear(struct altera_sdram_plat *plat);
-int emif_reset(struct altera_sdram_plat *plat);
-int poll_hmc_clock_status(void);
-void sdram_clear_mem(phys_addr_t addr, phys_size_t size);
-//void sdram_set_firewall(struct bd_info *bd);
-phys_size_t sdram_calculate_size(struct altera_sdram_plat *plat);
 int agilex5_ddr_init_full(void);
 
 static inline phys_addr_t agilex5_mpfe_sdram_base(void)

-- 
2.47.3



