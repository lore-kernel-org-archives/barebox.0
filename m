Delivery-date: Fri, 05 Jun 2026 15:08:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVUHZ-002cqx-1s
	for lore@lore.pengutronix.de;
	Fri, 05 Jun 2026 15:08:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVUHY-0005RR-O5
	for lore@pengutronix.de; Fri, 05 Jun 2026 15:08:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cnCnB0EHOnYiDQukMnuTFh8RyFWtwGKVnCBay1zLwGU=; b=zGYLBZ9EkBdu1T4JMA8FTfQMYt
	lE4bAd3F8Kzg7lswWFoi9s61eVDC4+cV5/WXvLGZhnZ9r1mCCKgZyTYY6xBd5M/PankcPuMrQJPep
	ERqE5R8U8bkQhaBdhGHA4OiExc4LPFPdjRroH9a0bMQWchUBwe/diIDuBQ4gsX2uBs17m4xN3tj81
	hGX7PUmKgxvHVMQFsOcc73Cj/mCR8Tzh5bRHJe9+OcKPdFtoVyZe24gwmWa7Pfo7unHyFCuxPcMAU
	gaBSwAAjwYknxirdD+HQ4SjMcVlbC5NtYEqo52jYgJFVcplH3QhdeTp/VmeElS7BQc/D2MBxtNjZ+
	qS4CUVUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVUG9-00000000eof-0Xky;
	Fri, 05 Jun 2026 13:06:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVUG5-00000000emf-1hTB
	for barebox@lists.infradead.org;
	Fri, 05 Jun 2026 13:06:47 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wVUG3-0004ul-PP; Fri, 05 Jun 2026 15:06:43 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri, 05 Jun 2026 15:06:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260605-socfpga-agilex5-clk-v2-2-780562ec169f@pengutronix.de>
References: <20260605-socfpga-agilex5-clk-v2-0-780562ec169f@pengutronix.de>
In-Reply-To: <20260605-socfpga-agilex5-clk-v2-0-780562ec169f@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260605_060645_493415_3315239F 
X-CRM114-Status: GOOD (  10.22  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/4] clk: socfpga: remove clk-phase setting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There are no device trees that have the clk-phase property and the Linux
driver doesn't have the code. Remove the unused clk-phase setting.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/clk/socfpga/clk-gate-a10.c | 55 --------------------------------------
 1 file changed, 55 deletions(-)

diff --git a/drivers/clk/socfpga/clk-gate-a10.c b/drivers/clk/socfpga/clk-gate-a10.c
index e6bcc91b0490..b43e19d2ca3f 100644
--- a/drivers/clk/socfpga/clk-gate-a10.c
+++ b/drivers/clk/socfpga/clk-gate-a10.c
@@ -36,59 +36,11 @@ static unsigned long socfpga_gate_clk_recalc_rate(struct clk_hw *hw,
 	return parent_rate / div;
 }
 
-static int socfpga_clk_prepare(struct clk_hw *hw)
-{
-	struct socfpga_gate_clk *socfpgaclk = to_socfpga_gate_clk(hw);
-	int i;
-	u32 hs_timing;
-	u32 clk_phase[2];
-
-	if (socfpgaclk->clk_phase[0] || socfpgaclk->clk_phase[1]) {
-		for (i = 0; i < ARRAY_SIZE(clk_phase); i++) {
-			switch (socfpgaclk->clk_phase[i]) {
-			case 0:
-				clk_phase[i] = 0;
-				break;
-			case 45:
-				clk_phase[i] = 1;
-				break;
-			case 90:
-				clk_phase[i] = 2;
-				break;
-			case 135:
-				clk_phase[i] = 3;
-				break;
-			case 180:
-				clk_phase[i] = 4;
-				break;
-			case 225:
-				clk_phase[i] = 5;
-				break;
-			case 270:
-				clk_phase[i] = 6;
-				break;
-			case 315:
-				clk_phase[i] = 7;
-				break;
-			default:
-				clk_phase[i] = 0;
-				break;
-			}
-		}
-
-		hs_timing = SYSMGR_SDMMC_CTRL_SET(clk_phase[0], clk_phase[1]);
-		writel(hs_timing, ARRIA10_SYSMGR_SDMMC);
-	}
-	return 0;
-}
-
 static int clk_socfpga_enable(struct clk_hw *hw)
 {
 	struct socfpga_gate_clk *socfpga_clk = to_socfpga_gate_clk(hw);
 	u32 val;
 
-	socfpga_clk_prepare(hw);
-
 	val = readl(socfpga_clk->reg);
 	val |= 1 << socfpga_clk->bit_idx;
 	writel(val, socfpga_clk->reg);
@@ -115,7 +67,6 @@ static struct clk *__socfpga_gate_init(struct device_node *node,
 {
 	u32 clk_gate[2];
 	u32 div_reg[3];
-	u32 clk_phase[2];
 	u32 fixed_div;
 	struct clk_hw *hw_clk;
 	struct socfpga_gate_clk *socfpga_clk;
@@ -153,12 +104,6 @@ static struct clk *__socfpga_gate_init(struct device_node *node,
 		socfpga_clk->div_reg = NULL;
 	}
 
-	rc = of_property_read_u32_array(node, "clk-phase", clk_phase, 2);
-	if (!rc) {
-		socfpga_clk->clk_phase[0] = clk_phase[0];
-		socfpga_clk->clk_phase[1] = clk_phase[1];
-	}
-
 	of_property_read_string(node, "clock-output-names", &clk_name);
 
 	init.name = clk_name;

-- 
2.47.3



