Delivery-date: Mon, 21 Oct 2024 10:30:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2noV-00705q-1K
	for lore@lore.pengutronix.de;
	Mon, 21 Oct 2024 10:30:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2noU-0006UC-Jj
	for lore@pengutronix.de; Mon, 21 Oct 2024 10:30:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z2qeetWY5RpKgTVnSkeBspwgMx/N1Fv5DjOGO5pX+K0=; b=mZwzLtgUAujvuA5HF0P1J9rhOL
	jHWgt/XR8OQHrobxx/FuC0eu/ozEhO2ZfbGgrwUl/jK0VZRRxuykTVIPSpotcGfyitICKmNxs6Xi7
	R9OdQMRXLRbNWu0R45x/TSAtLJmfq2iRgFcRTQmDxwwBf7rk9FVZd85SFxXSkYBKzowSDSnMf3mJ9
	Qt3kT/KUMnI7DSG1mqiPBrpKqPagAa1wJkCNACOEe7kx+DafSuN6GxXNNAqY6zN1BQTZvXMhvTXiN
	+Axqo5SrcuzY3L7oHJ92NgPXjrGejbSOo3MkUSOd6pTWhCOKwV+B0Ebj9x6X3Faf2IopRjgRkIwmb
	of2l1l7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2noH-00000006YIM-1cyS;
	Mon, 21 Oct 2024 08:30:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2mjH-00000006LpG-05LD
	for barebox@lists.infradead.org;
	Mon, 21 Oct 2024 07:21:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t2mj7-0005ns-Qg; Mon, 21 Oct 2024 09:21:17 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t2mj7-000ecO-1h;
	Mon, 21 Oct 2024 09:21:17 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t2mj7-00FGWz-1T;
	Mon, 21 Oct 2024 09:21:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 21 Oct 2024 09:21:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241021-arm-layerscape-tfa-v1-1-0980697b6f66@pengutronix.de>
References: <20241021-arm-layerscape-tfa-v1-0-0980697b6f66@pengutronix.de>
In-Reply-To: <20241021-arm-layerscape-tfa-v1-0-0980697b6f66@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729495277; l=3121;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=MH9jHxcZcpsj8P6u8C7C/OQo485fIY3LLvFG8LBXOoY=;
 b=7+XGvQxQa19ctK8XRYHd36CultLgDUoMkZO+rocZbMnHhPyHP9Zo60JH8XdDvYIf+9UH/be8c
 be0wu0ULzR1DuXB/zkhDFfro0c94026z3VvbX+jaUtGqebp8/f1bl/2
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_002127_093894_83242306 
X-CRM114-Status: UNSURE (   8.61  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/9] ARM: Layerscape: TQMLS1046a: Update DDR timings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Update DDR timings from TQ U-Boot.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqmls1046a/lowlevel.c | 54 +++++++++++++++++------------------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/arch/arm/boards/tqmls1046a/lowlevel.c b/arch/arm/boards/tqmls1046a/lowlevel.c
index 2551a18ec6..6d25b5cda8 100644
--- a/arch/arm/boards/tqmls1046a/lowlevel.c
+++ b/arch/arm/boards/tqmls1046a/lowlevel.c
@@ -38,43 +38,43 @@ static struct fsl_ddr_controller ddrc[] = {
 	.cs[3].config       = 0x00000000,
 	.cs[3].config_2     = 0x00000000,
 	.timing_cfg_3       = 0x020F1100,
-	.timing_cfg_0       = 0x77660008,
-	.timing_cfg_1       = 0xF1FCC265,
-	.timing_cfg_2       = 0x0059415E,
-	.ddr_sdram_cfg      = 0x65000000,
+	.timing_cfg_0       = 0xF7660008,
+	.timing_cfg_1       = 0xF1FC4178,
+	.timing_cfg_2       = 0x00590160,
+	.ddr_sdram_cfg      = 0x65000008,
 	.ddr_sdram_cfg_2    = 0x00401150,
-	.ddr_sdram_cfg_3    = 0x00000000,
-	.ddr_sdram_mode     = 0x03010625,
+	.ddr_sdram_cfg_3    = 0x40000000,
+	.ddr_sdram_mode     = 0x01030631,
 	.ddr_sdram_mode_2   = 0x00100200,
-	.ddr_sdram_mode_3   = 0x00010625,
-	.ddr_sdram_mode_4   = 0x00100200,
-	.ddr_sdram_mode_5   = 0x00010625,
-	.ddr_sdram_mode_6   = 0x00100200,
-	.ddr_sdram_mode_7   = 0x00010625,
-	.ddr_sdram_mode_8   = 0x00100200,
+	.ddr_sdram_mode_3   = 0x00000000,
+	.ddr_sdram_mode_4   = 0x00000000,
+	.ddr_sdram_mode_5   = 0x00000000,
+	.ddr_sdram_mode_6   = 0x00000000,
+	.ddr_sdram_mode_7   = 0x00000000,
+	.ddr_sdram_mode_8   = 0x00000000,
 	.ddr_sdram_mode_9   = 0x00000500,
-	.ddr_sdram_mode_10  = 0x04400000,
-	.ddr_sdram_mode_11  = 0x00000400,
-	.ddr_sdram_mode_12  = 0x04400000,
-	.ddr_sdram_mode_13  = 0x00000400,
-	.ddr_sdram_mode_14  = 0x04400000,
-	.ddr_sdram_mode_15  = 0x00000400,
-	.ddr_sdram_mode_16  = 0x04400000,
-	.ddr_sdram_interval = 0x0F3C0000,
+	.ddr_sdram_mode_10  = 0x08800000,
+	.ddr_sdram_mode_11  = 0x00000000,
+	.ddr_sdram_mode_12  = 0x00000000,
+	.ddr_sdram_mode_13  = 0x00000000,
+	.ddr_sdram_mode_14  = 0x00000000,
+	.ddr_sdram_mode_15  = 0x00000000,
+	.ddr_sdram_mode_16  = 0x00000000,
+	.ddr_sdram_interval = 0x0F3C079E,
 	.ddr_data_init      = 0xDEADBEEF,
-	.ddr_sdram_clk_cntl = 0x02000000,
+	.ddr_sdram_clk_cntl = 0x03000000,
 	.ddr_init_addr      = 0x00000000,
 	.ddr_init_ext_addr  = 0x00000000,
-	.timing_cfg_4       = 0x00224002,
-	.timing_cfg_5       = 0x04401400,
+	.timing_cfg_4       = 0x00220002,
+	.timing_cfg_5       = 0x00000000,
 	.timing_cfg_6       = 0x00000000,
 	.timing_cfg_7       = 0x25500000,
-	.timing_cfg_8       = 0x03335A00,
+	.timing_cfg_8       = 0x05447A00,
 	.timing_cfg_9       = 0x00000000,
 	.ddr_zq_cntl        = 0x8A090705,
-	.ddr_wrlvl_cntl     = 0x86550609,
-	.ddr_wrlvl_cntl_2   = 0x09080806,
-	.ddr_wrlvl_cntl_3   = 0x06040409,
+	.ddr_wrlvl_cntl     = 0x8605070A,
+	.ddr_wrlvl_cntl_2   = 0x0A080807,
+	.ddr_wrlvl_cntl_3   = 0x0706060A,
 	.ddr_sr_cntr        = 0x00000000,
 	.ddr_sdram_rcw_1    = 0x00000000,
 	.ddr_sdram_rcw_2    = 0x00000000,

-- 
2.39.5



