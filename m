Delivery-date: Tue, 08 Mar 2022 13:22:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRYqz-004dO0-Kh
	for lore@lore.pengutronix.de; Tue, 08 Mar 2022 13:22:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRYqx-0002ZN-M2
	for lore@pengutronix.de; Tue, 08 Mar 2022 13:22:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9+0illInu2a+woEqd1y2g8jwC98juyuyDGKY7zQ+3Og=; b=AVpbaCsHYKXAKS
	7FoSUH9FnrxmaKF4W4C3bBdI4EewqufHRpOjoG6sKA6DnGp95grnS8VeFw+2KWdPY3jCWGaJo3y3n
	zE/klA6guXYYDel9Dlijj8ab7BMltADNjB7c/r3e+74I+0Kl/iQBQmbv+jelQuNalYEs470WXTo/R
	qKMJUIKbjKO3awNKTiHOoGP9odXDrNFLwkEvtus8C30+6VCFMyqKec3/sefHJBdEQEZ0Uj1L97W73
	jdtcWNg4CsAuCz1ngWV1TPD3btIQ3rSpeZlguUKY67rnYEg19JuxS/DCWrfqMpQqcOt00CB/Xdo1e
	HTVuNZCPgdumDu89x0vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRYpk-004KTs-6H; Tue, 08 Mar 2022 12:20:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRYpS-004KL2-Ja
 for barebox@lists.infradead.org; Tue, 08 Mar 2022 12:20:41 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nRYpR-00027c-5P; Tue, 08 Mar 2022 13:20:37 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nRYpQ-001YG2-F6; Tue, 08 Mar 2022 13:20:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  8 Mar 2022 13:20:28 +0100
Message-Id: <20220308122028.3857376-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220308122028.3857376-1-s.hauer@pengutronix.de>
References: <20220308122028.3857376-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_042038_782897_EDD02FAF 
X-CRM114-Status: GOOD (  12.13  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 7/7] ARM: i.MX: Remove duplicate PFD workaround
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The i.MX6Q and i.MX6D SoC variants need a workaround for broken PFDs.
That was added to the architecture code in f1f6d76 ("ARM: i.MX6: correct
work flow of PFDs from uboot-sources") and then added again in b534f79
("clk: imx6: Fix procedure to switch the parent of LDB_DI_CLK"). We only
need this once, so remove the workaround in the architecture code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c | 44 ----------------------------------------
 1 file changed, 44 deletions(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 7bd29446e9..bf8d1a0065 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -54,17 +54,9 @@ static void imx6_configure_aips(void __iomem *aips)
 
 static void imx6_init_lowlevel(void)
 {
-	bool is_imx6q = __imx6_cpu_type() == IMX6_CPUTYPE_IMX6Q;
-	bool is_imx6d = __imx6_cpu_type() == IMX6_CPUTYPE_IMX6D;
 	bool is_imx6ull = __imx6_cpu_type() == IMX6_CPUTYPE_IMX6ULL;
 	bool is_imx6sx = __imx6_cpu_type() == IMX6_CPUTYPE_IMX6SX;
 
-	uint32_t val_480;
-	uint32_t val_528;
-	uint32_t periph_sel_1;
-	uint32_t periph_sel_2;
-	uint32_t reg;
-
 	/*
 	 * Before reset the controller imx6_boot_save_loc() must be called to
 	 * detect serial-downloader fall back boots. For further information
@@ -77,42 +69,6 @@ static void imx6_init_lowlevel(void)
 	imx6_configure_aips(IOMEM(MX6_AIPS2_ON_BASE_ADDR));
 	if (is_imx6ull || is_imx6sx)
 		imx6_configure_aips(IOMEM(MX6_AIPS3_ON_BASE_ADDR));
-
-	/* Due to hardware limitation, on MX6Q we need to gate/ungate all PFDs
-	 * to make sure PFD is working right, otherwise, PFDs may
-	 * not output clock after reset, MX6DL and MX6SL have added 396M pfd
-	 * workaround in ROM code, as bus clock need it.
-	 * Don't reset PLL2 PFD0 / PLL2 PFD2 if is's used by periph_clk.
-	 */
-	if (is_imx6q || is_imx6d) {
-		val_480 = BM_ANADIG_PFD_480_PFD3_CLKGATE |
-			   BM_ANADIG_PFD_480_PFD2_CLKGATE |
-			   BM_ANADIG_PFD_480_PFD1_CLKGATE |
-			   BM_ANADIG_PFD_480_PFD0_CLKGATE;
-
-		val_528 = BM_ANADIG_PFD_528_PFD3_CLKGATE |
-			   BM_ANADIG_PFD_528_PFD1_CLKGATE;
-
-		reg = readl(MXC_CCM_CBCMR);
-		periph_sel_1 = (reg & MXC_CCM_CBCMR_PRE_PERIPH_CLK_SEL_MASK)
-			>> MXC_CCM_CBCMR_PRE_PERIPH_CLK_SEL_OFFSET;
-
-		periph_sel_2 = (reg & MXC_CCM_CBCMR_PRE_PERIPH2_CLK_SEL_MASK)
-			>> MXC_CCM_CBCMR_PRE_PERIPH2_CLK_SEL_OFFSET;
-
-		if ((periph_sel_1 != 0x2) && (periph_sel_2 != 0x2))
-			val_528 |= BM_ANADIG_PFD_528_PFD0_CLKGATE;
-
-		if ((periph_sel_1 != 0x1) && (periph_sel_2 != 0x1)
-		    && (periph_sel_1 != 0x3) && (periph_sel_2 != 0x3))
-			val_528 |= BM_ANADIG_PFD_528_PFD2_CLKGATE;
-
-		writel(val_480, MX6_ANATOP_BASE_ADDR + HW_ANADIG_PFD_480_SET);
-		writel(val_528, MX6_ANATOP_BASE_ADDR + HW_ANADIG_PFD_528_SET);
-
-		writel(val_480, MX6_ANATOP_BASE_ADDR + HW_ANADIG_PFD_480_CLR);
-		writel(val_528, MX6_ANATOP_BASE_ADDR + HW_ANADIG_PFD_528_CLR);
-	}
 }
 
 static bool imx6_has_ipu(void)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

