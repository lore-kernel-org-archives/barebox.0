Delivery-date: Mon, 17 Jun 2024 13:37:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAg2-007YiW-0v
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 13:37:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAg1-0007FX-8c
	for lore@pengutronix.de; Mon, 17 Jun 2024 13:37:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+wmmNa9mgNA+irLNWmbj625dYecY/xHDb0Fpsfh2CRY=; b=b4hBhQnr0rGTxhHv9x/VLQu/IO
	MYPSswAE074s44xiFAyT659jDIP2vCTpE+GRy3eTPxEF+XQ00jXzKpJIbtYWl1ZytEAR7kLvAF/he
	4G3v8Y/GIALevbon9jRxQg+/RWSthvAZt2hJeI9V0KKICFFjeR4ZbkKaI6KD4jMv4Prcfdj+1E496
	f5ZnFjOo5eepRQXElzyShKirNZ8pvATVtNAMdX5KS4d/qQVHZX8mSBXsz77+/ERIBgwQtimwNEfPP
	lm6TGYffIvzbdEANT8NFwqVVd2vEULD0L8KfVcF/psE5hExEIOigZwQtQTd2wHEogIynztcOJJ0cM
	8jcfVPng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAfT-0000000AVl3-1PrA;
	Mon, 17 Jun 2024 11:36:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAfB-0000000AVWb-0prJ
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 11:36:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1sJAf8-0006ab-Jx; Mon, 17 Jun 2024 13:36:38 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 17 Jun 2024 13:36:32 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-10-48a6eba4bb5e@pengutronix.de>
References: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-0-48a6eba4bb5e@pengutronix.de>
In-Reply-To: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-0-48a6eba4bb5e@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_043641_311851_9D8BD432 
X-CRM114-Status: UNSURE (   8.80  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 10/14] ARM: Arria10: arria10_finish_io: remove unused param
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

arria10_finish_io() doesn't use mainpll_cfg, perpll_cfg.
Remove them from the parameter list.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/enclustra-aa1/lowlevel.c   | 4 ++--
 arch/arm/boards/reflex-achilles/lowlevel.c | 4 ++--
 arch/arm/mach-socfpga/arria10-init.c       | 4 +---
 include/mach/socfpga/generic.h             | 3 +--
 4 files changed, 6 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/enclustra-aa1/lowlevel.c b/arch/arm/boards/enclustra-aa1/lowlevel.c
index 10a2095e19..fc6b2779c9 100644
--- a/arch/arm/boards/enclustra-aa1/lowlevel.c
+++ b/arch/arm/boards/enclustra-aa1/lowlevel.c
@@ -83,7 +83,7 @@ ENTRY_FUNCTION_WITHSTACK(start_socfpga_aa1_xload, ARRIA10_STACKTOP, r0, r1, r2)
 
 	arria10_load_fpga(bitstream, SZ_32M);
 
-	arria10_finish_io(&mainpll_cfg, &perpll_cfg, pinmux);
+	arria10_finish_io(pinmux);
 
 	arria10_ddr_calibration_sequence();
 
@@ -115,7 +115,7 @@ ENTRY_FUNCTION_WITHSTACK(start_socfpga_aa1_bringup, ARRIA10_STACKTOP, r0, r1, r2
 	/* wait for fpga_usermode */
 	a10_wait_for_usermode(0x1000000);
 
-	arria10_finish_io(&mainpll_cfg, &perpll_cfg, pinmux);
+	arria10_finish_io(pinmux);
 
 	arria10_ddr_calibration_sequence();
 
diff --git a/arch/arm/boards/reflex-achilles/lowlevel.c b/arch/arm/boards/reflex-achilles/lowlevel.c
index 12ead6d6dd..a6548605ec 100644
--- a/arch/arm/boards/reflex-achilles/lowlevel.c
+++ b/arch/arm/boards/reflex-achilles/lowlevel.c
@@ -74,7 +74,7 @@ ENTRY_FUNCTION_WITHSTACK(start_socfpga_achilles_xload, ARRIA10_STACKTOP, r0, r1,
 
 	arria10_load_fpga(bitstream, SZ_64M);
 
-	arria10_finish_io(&mainpll_cfg, &perpll_cfg, pinmux);
+	arria10_finish_io(pinmux);
 
 	arria10_ddr_calibration_sequence();
 
@@ -105,7 +105,7 @@ ENTRY_FUNCTION_WITHSTACK(start_socfpga_achilles_bringup, ARRIA10_STACKTOP, r0, r
 	/* wait for fpga_usermode */
 	a10_wait_for_usermode(0x1000000);
 
-	arria10_finish_io(&mainpll_cfg, &perpll_cfg, pinmux);
+	arria10_finish_io(pinmux);
 
 	arria10_ddr_calibration_sequence();
 
diff --git a/arch/arm/mach-socfpga/arria10-init.c b/arch/arm/mach-socfpga/arria10-init.c
index d1586c2d40..f8a15ec8b4 100644
--- a/arch/arm/mach-socfpga/arria10-init.c
+++ b/arch/arm/mach-socfpga/arria10-init.c
@@ -127,9 +127,7 @@ static void arria10_mask_ecc_errors(void)
 	writel(0x0007FFFF, ARRIA10_SYSMGR_ADDR + 0x94);
 }
 
-void arria10_finish_io(struct arria10_mainpll_cfg *mainpll,
-		       struct arria10_perpll_cfg *perpll,
-		       uint32_t *pinmux)
+void arria10_finish_io(uint32_t *pinmux)
 {
 	int i;
 
diff --git a/include/mach/socfpga/generic.h b/include/mach/socfpga/generic.h
index 270c309d7b..23fcdabc3e 100644
--- a/include/mach/socfpga/generic.h
+++ b/include/mach/socfpga/generic.h
@@ -17,8 +17,7 @@ struct arria10_pinmux_cfg;
 
 void arria10_init(struct arria10_mainpll_cfg *mainpll,
 		  struct arria10_perpll_cfg *perpll, uint32_t *pinmux);
-void arria10_finish_io(struct arria10_mainpll_cfg *mainpll,
-		       struct arria10_perpll_cfg *perpll, uint32_t *pinmux);
+void arria10_finish_io(uint32_t *pinmux);
 
 void socfpga_lowlevel_init(struct socfpga_cm_config *cm_config,
 			   struct socfpga_io_config *io_config);

-- 
2.43.2



