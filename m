Delivery-date: Fri, 03 Jun 2022 13:27:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx5Su-001kVz-F4
	for lore@lore.pengutronix.de; Fri, 03 Jun 2022 13:27:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx5Ss-0003vH-CR
	for lore@pengutronix.de; Fri, 03 Jun 2022 13:27:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wVjL5PuoEjEC06bf3PETnwxIBrR56SpG1XqVNUM4Ej0=; b=q5VU99Nv5HPcG9
	dXdziqb+/DUhN9Py7JW4E7iJBCX0Ms7gNKRX3fsyaudgPrSrYMyI8zeFBu3i2XCQlelTiJC2tNgld
	jsC0A1JpKrH5LXahu6qWmA5BoZRj6MVc1taav5hnGo8PqSZDBSF09mrd4bEeJCaAJKwxyfRBQUWdv
	rJrXQ8/8ZgK/MFDKgnX2d7nqTTYEN+vzkxRYsbvrJUlBmQ8WVeTe5fgFGCUkUChqEb3pX13vu8/Sr
	mz/q4bwa9mTzQ4jFIS4nxuvMAwFwaFhJoOFTJogspgVGdot0odC7FZJCj8oSsh0vQSSs0+kSPD8U6
	xNt4jwdFMcVpbNQWB1sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx5RE-007BRo-JF; Fri, 03 Jun 2022 11:25:56 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx5R7-007BPw-9o
	for barebox@lists.infradead.org; Fri, 03 Jun 2022 11:25:50 +0000
Received: by mail-lf1-x130.google.com with SMTP id s6so12095497lfo.13
        for <barebox@lists.infradead.org>; Fri, 03 Jun 2022 04:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=G82nsKK64ANgBAmzKxsgbsIb4X9JPlR935LpyM+w4Dc=;
        b=Jz/I/xlWSKA4DmvwlOmOvA1CoitF0MUfX8mFPJHP5PlSGkIXldYFIIb9mnc8Ww0/VO
         MzMA4UGdrTTqbxCL1rG2a9lciq5HGF/cedS+aZ/nnTrPZ9io2vkxpAHwRmQ1Ucv/Wva0
         q17a2QhxnZ+QETsKwckjrH27tAw5R/DqPb7v5uYxo28k97w4W5w/vkbrkCRbql6xIsYA
         2I4oJr6MHKronRnPgd3UtQhE8wzJKiF+BHowRAGHjMFOXxEt70WgOUqEOaHrILASfNAG
         TxvHth3j5XsELpTW/XbrlS4hvIpp9WvtFPApVUrj2B2lBMwCgbletMe0cIoBzaZ+f7Mv
         yQVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=G82nsKK64ANgBAmzKxsgbsIb4X9JPlR935LpyM+w4Dc=;
        b=tCWrc+m+kRYj7LTPfj6yJK4g0CmNDQyZpS8/p+UuVxshVfMiAlgEqh0dC3metRMuLX
         XQ5AoohFtKrxuEaQhylXsSN3LSZaL8qW+Le/uARUXQ0FIL8piflmjhzaeMkBAt22yxBw
         Uqw8VT9zm984qUST4xdP0YEp7XyBEhwnZFueJ9sfGRHeF2vEpbbIES+nfOb8qiB2onf1
         RsCZEMAx3qTFG14kdXA56RG5fAedFODME9sZBaJTM2fAXjo1HkOJ+CQzEAd2tD4E3VYb
         O4P20NB4B1qvxCV+En5Dy7rhtVBSAWb8Huke4Xdx8LV7tS1723QqGPSvUKN1GVxqJWvF
         elrw==
X-Gm-Message-State: AOAM530HbviPHtqnYcoTi59d+t9keIqlWDfGSj7nMB0dPgNCP2y/WUVv
	vFgdwHvwRwkUJGrRwt+EyiOL11mHy7o=
X-Google-Smtp-Source: ABdhPJz/keVLBC5lTliaVfV4dXlWAU8+/zWosq6yBKG8OCxCPGiKrRpm/eMQuZbcksb/nwa6VvscwA==
X-Received: by 2002:a05:6512:3989:b0:477:caeb:1a13 with SMTP id j9-20020a056512398900b00477caeb1a13mr6810352lfu.64.1654255546677;
        Fri, 03 Jun 2022 04:25:46 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id q17-20020ac246f1000000b004790105d0cfsm1546121lfo.16.2022.06.03.04.25.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 04:25:45 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri,  3 Jun 2022 14:25:35 +0300
Message-Id: <20220603112540.51644-3-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220603112540.51644-1-eagle.alexander923@gmail.com>
References: <20220603112540.51644-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220603_042549_376461_393CD867 
X-CRM114-Status: GOOD (  11.68  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [RFC 3/8] ARM: OMAP: Adopt am35xx_emif4_init() to use fixed offset definitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-omap/am35xx_emif4.c       | 40 ++++++++++++-------------
 arch/arm/mach-omap/include/mach/emif4.h | 24 ---------------
 2 files changed, 20 insertions(+), 44 deletions(-)

diff --git a/arch/arm/mach-omap/am35xx_emif4.c b/arch/arm/mach-omap/am35xx_emif4.c
index 678a338fd6..8780dfb539 100644
--- a/arch/arm/mach-omap/am35xx_emif4.c
+++ b/arch/arm/mach-omap/am35xx_emif4.c
@@ -21,58 +21,58 @@
  */
 void am35xx_emif4_init(void)
 {
+	const void __iomem *emif4 = IOMEM(OMAP3_SDRC_BASE);
 	unsigned int regval;
-	struct emif4 *emif4_base = IOMEM(OMAP3_SDRC_BASE);
 
 	/* Set the DDR PHY parameters in PHY ctrl registers */
 	regval = (EMIF4_DDR1_READ_LAT | EMIF4_DDR1_PWRDN_DIS |
 		EMIF4_DDR1_EXT_STRB_DIS);
-	writel(regval, &emif4_base->ddr_phyctrl1);
-	writel(regval, &emif4_base->ddr_phyctrl1_shdw);
-	writel(0, &emif4_base->ddr_phyctrl2);
+	writel(regval, emif4 + EMIF4_DDR_PHY_CTRL_1);
+	writel(regval, emif4 + EMIF4_DDR_PHY_CTRL_1_SHADOW);
+	writel(0, emif4 + EMIF4_DDR_PHY_CTRL_2);
 
 	/* Reset the DDR PHY and wait till completed */
-	regval = readl(&emif4_base->sdram_iodft_tlgc);
+	regval = readl(emif4 + EMIF4_IODFT_TLGC);
 	regval |= (1 << 10);
-	writel(regval, &emif4_base->sdram_iodft_tlgc);
+	writel(regval, emif4 + EMIF4_IODFT_TLGC);
 
 	/* Wait till that bit clears*/
-	while (readl(&emif4_base->sdram_iodft_tlgc) & (1 << 10));
+	while (readl(emif4 + EMIF4_IODFT_TLGC) & (1 << 10));
 
 	/* Re-verify the DDR PHY status*/
-	while ((readl(&emif4_base->sdram_sts) & (1 << 2)) == 0x0);
+	while ((readl(emif4 + EMIF4_STATUS) & (1 << 2)) == 0x0);
 
 	regval |= (1 << 0);
-	writel(regval, &emif4_base->sdram_iodft_tlgc);
+	writel(regval, emif4 + EMIF4_IODFT_TLGC);
 
 	/* Set SDR timing registers */
 	regval = (EMIF4_TIM1_T_WTR | EMIF4_TIM1_T_RRD |
 		EMIF4_TIM1_T_RC | EMIF4_TIM1_T_RAS |
 		EMIF4_TIM1_T_WR | EMIF4_TIM1_T_RCD |
 		EMIF4_TIM1_T_RP);
-	writel(regval, &emif4_base->sdram_time1);
-	writel(regval, &emif4_base->sdram_time1_shdw);
+	writel(regval, emif4 + EMIF4_SDRAM_TIM_1);
+	writel(regval, emif4 + EMIF4_SDRAM_TIM_1_SHADOW);
 
 	regval = (EMIF4_TIM2_T_CKE | EMIF4_TIM2_T_RTP |
 		EMIF4_TIM2_T_XSRD | EMIF4_TIM2_T_XSNR |
 		EMIF4_TIM2_T_ODT | EMIF4_TIM2_T_XP);
-	writel(regval, &emif4_base->sdram_time2);
-	writel(regval, &emif4_base->sdram_time2_shdw);
+	writel(regval, emif4 + EMIF4_SDRAM_TIM_2);
+	writel(regval, emif4 + EMIF4_SDRAM_TIM_2_SHADOW);
 
 	regval = (EMIF4_TIM3_T_RAS_MAX | EMIF4_TIM3_T_RFC);
-	writel(regval, &emif4_base->sdram_time3);
-	writel(regval, &emif4_base->sdram_time3_shdw);
+	writel(regval, emif4 + EMIF4_SDRAM_TIM_3);
+	writel(regval, emif4 + EMIF4_SDRAM_TIM_3_SHADOW);
 
 	/* Set the PWR control register */
 	regval = (EMIF4_PWR_PM_TIM | EMIF4_PWR_LP_MODE |
 		EMIF4_PWR_DPD_DIS | EMIF4_PWR_IDLE_MODE);
-	writel(regval, &emif4_base->sdram_pwr_mgmt);
-	writel(regval, &emif4_base->sdram_pwr_mgmt_shdw);
+	writel(regval, emif4 + EMIF4_POWER_MANAGEMENT_CTRL);
+	writel(regval, emif4 + EMIF4_POWER_MANAGEMENT_CTRL_SHADOW);
 
 	/* Set the DDR refresh rate control register */
 	regval = (EMIF4_REFRESH_RATE | EMIF4_INITREF_DIS);
-	writel(regval, &emif4_base->sdram_refresh_ctrl);
-	writel(regval, &emif4_base->sdram_refresh_ctrl_shdw);
+	writel(regval, emif4 + EMIF4_SDRAM_REF_CTRL);
+	writel(regval, emif4 + EMIF4_SDRAM_REF_CTRL_SHADOW);
 
 	/* set the SDRAM configuration register */
 	regval = (EMIF4_CFG_PGSIZE | EMIF4_CFG_EBANK |
@@ -81,5 +81,5 @@ void am35xx_emif4_init(void)
 		EMIF4_CFG_SDR_DRV | EMIF4_CFG_DDR_DIS_DLL |
 		EMIF4_CFG_DDR2_DDQS | EMIF4_CFG_DDR_TERM |
 		EMIF4_CFG_IBANK_POS | EMIF4_CFG_SDRAM_TYP);
-	writel(regval, &emif4_base->sdram_config);
+	writel(regval, emif4 + EMIF4_SDRAM_CONFIG);
 }
diff --git a/arch/arm/mach-omap/include/mach/emif4.h b/arch/arm/mach-omap/include/mach/emif4.h
index 559443c9a6..06dabc5939 100644
--- a/arch/arm/mach-omap/include/mach/emif4.h
+++ b/arch/arm/mach-omap/include/mach/emif4.h
@@ -97,30 +97,6 @@
 #define EMIF4_DDR1_PWRDN_EN	(0x1 << 6)
 #define EMIF4_DDR1_READ_LAT	(0x6 << 0)
 
-struct emif4 {
-	unsigned int emif_mod_id_rev;
-	unsigned int sdram_sts;
-	unsigned int sdram_config;
-	unsigned int res1;
-	unsigned int sdram_refresh_ctrl;
-	unsigned int sdram_refresh_ctrl_shdw;
-	unsigned int sdram_time1;
-	unsigned int sdram_time1_shdw;
-	unsigned int sdram_time2;
-	unsigned int sdram_time2_shdw;
-	unsigned int sdram_time3;
-	unsigned int sdram_time3_shdw;
-	unsigned char res2[8];
-	unsigned int sdram_pwr_mgmt;
-	unsigned int sdram_pwr_mgmt_shdw;
-	unsigned char res3[32];
-	unsigned int sdram_iodft_tlgc;
-	unsigned char res4[128];
-	unsigned int ddr_phyctrl1;
-	unsigned int ddr_phyctrl1_shdw;
-	unsigned int ddr_phyctrl2;
-};
-
 void am35xx_emif4_init(void);
 
 #endif /* endif _EMIF_H_ */
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

