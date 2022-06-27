Delivery-date: Mon, 27 Jun 2022 12:35:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5m5a-00GGpV-OV
	for lore@lore.pengutronix.de; Mon, 27 Jun 2022 12:35:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5m5b-0002Xx-Ie
	for lore@pengutronix.de; Mon, 27 Jun 2022 12:35:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7QIQouqgPkxAAQp2bWFjsThQNEHn3Dh2Tyt6pXAOX0I=; b=L6PoGmNWip/b6FbnZ4fGPKMCkj
	j3MbmieJ7Ke/oS8FdbaQkY35C3+dMstQC7EVADoVV2RRFolFPqiysCizmfs/7FeGeOM9FecszmYC6
	4CT1SgHXzKY5QMZjcb/rDfRnEZ78J0ocykoDh7r5LpJq60fnaZhCJtGyUJ64KONYLni67nQQ7m522
	jkYA9zyrRpccMPVUS/41GGmnIogSpltcz/To0PEGU0P9CBo89TdBY1eXFDoHYaty7Z+YPgTsv0wEJ
	LIFq3wmSujkUCrrQUkKLpC2NOdjD62QWXXAqPdMdE4e4S9QgI1bGr3Ly5kNg35MGvbhf+V983bpmY
	T7ugN6tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5m4L-0008sf-U9; Mon, 27 Jun 2022 10:34:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5m4E-0008pq-56
	for barebox@lists.infradead.org; Mon, 27 Jun 2022 10:34:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1o5m4C-0002DK-Sx; Mon, 27 Jun 2022 12:34:04 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1o5m48-002zgi-Lc; Mon, 27 Jun 2022 12:34:04 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1o5m4B-001SBK-5V; Mon, 27 Jun 2022 12:34:03 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 27 Jun 2022 12:33:57 +0200
Message-Id: <20220627103358.34487-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220627103358.34487-1-u.kleine-koenig@pengutronix.de>
References: <20220627103358.34487-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3473; h=from:subject; bh=/Mg9dMln4L9e0vGEMLDzEfHBdqVD02etqW/OdOdgSGA=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBiuYd9pI3va+zRB0UXxEqOCwtiM2ueWroyHEtIRX1L dUfCZ3SJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCYrmHfQAKCRDB/BR4rcrsCddaB/ 0Ur0H6Ihmn6R2TKE6MytyatKdP7jO3h9ERRTvdr0L88PH93XhpBjm7GD3M+w116DiFmzLAZJ9fjmRv keHqtmpzcsuFQpjJ/WpjWyzREksYCbwhqHNQ5mXGC8rJ5KjNheQqagxNj6fe1rQ4NvyMuDtSRgVYZu CW36zLfQSpMXyssstQ0H7WD6A2E0thqgfu8/AFcBJbufkwPJqIbn4TDM72fENsv2xk/JqpS8sFSsA6 FOfWJH0ACn9XfPaAwUK7h8Aqq9sFAG/sPcCTZz8pGF6UReMOqS6697SWqf15aQ/x7WmMPXVvkhurx+ mG0aKzvVQKFFqCyBY0WkxEcCiK7LkC
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220627_033406_272873_46F33829 
X-CRM114-Status: UNSURE (   8.58  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] clk: imx25: Add comments to clk list with offsets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This greatly simplifies to determine the offset of a given clk.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 drivers/clk/imx/clk-imx25.c | 38 ++++++++++++++++++-------------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/clk/imx/clk-imx25.c b/drivers/clk/imx/clk-imx25.c
index 8aa87a520000..612edb222789 100644
--- a/drivers/clk/imx/clk-imx25.c
+++ b/drivers/clk/imx/clk-imx25.c
@@ -37,25 +37,25 @@
 #define CCM_MCR		0x64
 
 enum mx25_clks {
-	dummy, osc, mpll, upll, mpll_cpu_3_4, cpu_sel, cpu, ahb, usb_div, ipg,
-	per0_sel, per1_sel, per2_sel, per3_sel, per4_sel, per5_sel, per6_sel,
-	per7_sel, per8_sel, per9_sel, per10_sel, per11_sel, per12_sel,
-	per13_sel, per14_sel, per15_sel, per0, per1, per2, per3, per4, per5,
-	per6, per7, per8, per9, per10, per11, per12, per13, per14, per15,
-	csi_ipg_per, epit_ipg_per, esai_ipg_per, esdhc1_ipg_per, esdhc2_ipg_per,
-	gpt_ipg_per, i2c_ipg_per, lcdc_ipg_per, nfc_ipg_per, owire_ipg_per,
-	pwm_ipg_per, sim1_ipg_per, sim2_ipg_per, ssi1_ipg_per, ssi2_ipg_per,
-	uart_ipg_per, ata_ahb, reserved1, csi_ahb, emi_ahb, esai_ahb, esdhc1_ahb,
-	esdhc2_ahb, fec_ahb, lcdc_ahb, rtic_ahb, sdma_ahb, slcdc_ahb, usbotg_ahb,
-	reserved2, reserved3, reserved4, reserved5, can1_ipg, can2_ipg, csi_ipg,
-	cspi1_ipg, cspi2_ipg, cspi3_ipg, dryice_ipg, ect_ipg, epit1_ipg, epit2_ipg,
-	reserved6, esdhc1_ipg, esdhc2_ipg, fec_ipg, reserved7, reserved8, reserved9,
-	gpt1_ipg, gpt2_ipg, gpt3_ipg, gpt4_ipg, reserved10, reserved11, reserved12,
-	iim_ipg, reserved13, reserved14, kpp_ipg, lcdc_ipg, reserved15, pwm1_ipg,
-	pwm2_ipg, pwm3_ipg, pwm4_ipg, rngb_ipg, reserved16, scc_ipg, sdma_ipg,
-	sim1_ipg, sim2_ipg, slcdc_ipg, spba_ipg, ssi1_ipg, ssi2_ipg, tsc_ipg,
-	uart1_ipg, uart2_ipg, uart3_ipg, uart4_ipg, uart5_ipg, reserved17,
-	wdt_ipg, clk_max
+	/*   0 */ dummy, osc, mpll, upll, mpll_cpu_3_4, cpu_sel, cpu, ahb, usb_div, ipg,
+	/*  10 */ per0_sel, per1_sel, per2_sel, per3_sel, per4_sel, per5_sel, per6_sel,
+	/*  17 */ per7_sel, per8_sel, per9_sel, per10_sel, per11_sel, per12_sel,
+	/*  23 */ per13_sel, per14_sel, per15_sel, per0, per1, per2, per3, per4, per5,
+	/*  32 */ per6, per7, per8, per9, per10, per11, per12, per13, per14, per15,
+	/*  42 */ csi_ipg_per, epit_ipg_per, esai_ipg_per, esdhc1_ipg_per, esdhc2_ipg_per,
+	/*  47 */ gpt_ipg_per, i2c_ipg_per, lcdc_ipg_per, nfc_ipg_per, owire_ipg_per,
+	/*  52 */ pwm_ipg_per, sim1_ipg_per, sim2_ipg_per, ssi1_ipg_per, ssi2_ipg_per,
+	/*  57 */ uart_ipg_per, ata_ahb, reserved1, csi_ahb, emi_ahb, esai_ahb, esdhc1_ahb,
+	/*  64 */ esdhc2_ahb, fec_ahb, lcdc_ahb, rtic_ahb, sdma_ahb, slcdc_ahb, usbotg_ahb,
+	/*  71 */ reserved2, reserved3, reserved4, reserved5, can1_ipg, can2_ipg, csi_ipg,
+	/*  78 */ cspi1_ipg, cspi2_ipg, cspi3_ipg, dryice_ipg, ect_ipg, epit1_ipg, epit2_ipg,
+	/*  85 */ reserved6, esdhc1_ipg, esdhc2_ipg, fec_ipg, reserved7, reserved8, reserved9,
+	/*  92 */ gpt1_ipg, gpt2_ipg, gpt3_ipg, gpt4_ipg, reserved10, reserved11, reserved12,
+	/*  99 */ iim_ipg, reserved13, reserved14, kpp_ipg, lcdc_ipg, reserved15, pwm1_ipg,
+	/* 106 */ pwm2_ipg, pwm3_ipg, pwm4_ipg, rngb_ipg, reserved16, scc_ipg, sdma_ipg,
+	/* 113 */ sim1_ipg, sim2_ipg, slcdc_ipg, spba_ipg, ssi1_ipg, ssi2_ipg, tsc_ipg,
+	/* 120 */ uart1_ipg, uart2_ipg, uart3_ipg, uart4_ipg, uart5_ipg, reserved17,
+	/* 126 */ wdt_ipg, clk_max
 };
 
 static struct clk *clks[clk_max];
-- 
2.36.1



