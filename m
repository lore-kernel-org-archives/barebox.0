Delivery-date: Fri, 03 Jun 2022 13:27:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx5St-001kVQ-Ez
	for lore@lore.pengutronix.de; Fri, 03 Jun 2022 13:27:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx5Sq-0003uJ-RA
	for lore@pengutronix.de; Fri, 03 Jun 2022 13:27:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EI3bK3px47IRloGCHpKL64Hy9O54X977PxpmjD1D3ww=; b=Gt+hW1b4KwKYyv
	1fG9Sl1oTneiraLzc4al1Ul2jLfDAq+q+xL1nmyhk02iYuake9Au8Hu/O8PjZltgUW4kdx1uPJVPB
	XaXrPjPC1jFBn9MB74+KgB3rkzawGYDDTm0okgKr4PegQnc001F6ECO60xQeSfsLj6FJp2basj3Mp
	an4HK2h5ZuSP6ErjF7i3W/CBgoz+SB8f/abwTBooeEt/we61BWn1dZDf+SaYW8A1KJU9EseTxAYhG
	eekz7lVJWY0XgXkXXG35terMQzR3b0ctvTAoJZqii6NVGJ22RH/bOfs0xpwNjIbKfJO9jxCsUthAH
	EQjxXHPkCRE3ZPuVHkzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx5RC-007BRD-4e; Fri, 03 Jun 2022 11:25:54 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx5R6-007BPV-Rw
	for barebox@lists.infradead.org; Fri, 03 Jun 2022 11:25:50 +0000
Received: by mail-lj1-x235.google.com with SMTP id g25so8066433ljm.2
        for <barebox@lists.infradead.org>; Fri, 03 Jun 2022 04:25:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rLBLEHiI3W197xU/QAK0zmTP7PTQTcuwbLltYnI54Mg=;
        b=OSW0LfKN3lht9r/Ut4bCS5wTY09DZQuaVvRsnYTKPwkeEnlY4Ubqe5kkdoCfnDBNEw
         EFv1s91OVazOTZei8KlySAbppNexlzI8DNS/KceB5GJc1btIq30G+MipLJZt7LazaVGN
         Rz0fH+FnRkOiwBKsV+FXCPwaC51kVVmN2ktYUS9AVgjtjANga3r5UtVjdOoYnd/IyBMb
         pzRqqwxSC6bszNs9yAUip3oyI3I+8odmjL6iQs5OpVXLRp5BEYbNnj2iUDDMIfXdxR/2
         ua3KMSbEaRGPg2/Kg7qCP7Isu23MAHQh1E8UCAZ3ID5MDA+DnUmBUqujMK6VTZt1ZWVs
         dL/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rLBLEHiI3W197xU/QAK0zmTP7PTQTcuwbLltYnI54Mg=;
        b=tmeX1yshtuIYIuqSlfBwFHc4LwJ5xsrhiPMvV6wtTkiAGB82QFVL0NRk7wk7Ywy5oS
         eSH4BPQZn9dfqwuN+SNfy4LQvzw0zWHOhnPKsIKdsXQ0ftdw+Q+1KDpxPex6BphIGdDd
         5ErUeMW+mVR4m9AW4XoiorNSmMJXULEAo4+BnPVAy5A5/6PPQGHuSenf/ALqf4trI6Vx
         YwLku6QKew8WfhIjwA8daXtHrebRt8KX3NYWs0+zkAuc1Q198BiR1ZcM83hJTUvQ+kBQ
         kT/ck59uTqpbmuO2G2tz2ItdZQ4+YeMN/JJ00I8u+n9pNEN+U3BArSkRJ+zlOrLf1vvJ
         kXtQ==
X-Gm-Message-State: AOAM531x3Wvp6AF8o/bwtLc91ndxRf4k539/XZy2nnreuJ34YAWRttZ6
	n3sdnAAV+SiHb6XQUMqc5u41mzL6i4g=
X-Google-Smtp-Source: ABdhPJyEtrn6PRQuzPYbISsuCywEKguhqZ0Nm0jreUHtKdIm9dT25vY9d7KubrFS7+LnxtfNFU/5WA==
X-Received: by 2002:a05:651c:1a11:b0:255:82f8:f622 with SMTP id by17-20020a05651c1a1100b0025582f8f622mr594999ljb.479.1654255543852;
        Fri, 03 Jun 2022 04:25:43 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id q17-20020ac246f1000000b004790105d0cfsm1546121lfo.16.2022.06.03.04.25.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 04:25:42 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri,  3 Jun 2022 14:25:33 +0300
Message-Id: <20220603112540.51644-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220603_042548_963001_E17183F7 
X-CRM114-Status: GOOD (  13.28  )
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
Subject: [RFC 1/8] ARM: OMAP: Rearranging EMIF4 definitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently we have three different definitions for EMIF management:
- Offsets
- Offsets relative to the base address
- Offsets in the structure

The patch represents the first attempt to unify this.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/boards/afi-gf/lowlevel.c             | 39 +++++++++---------
 arch/arm/mach-omap/am33xx_generic.c           | 41 +++++++++----------
 .../mach-omap/include/mach/am33xx-silicon.h   | 10 +----
 3 files changed, 42 insertions(+), 48 deletions(-)

diff --git a/arch/arm/boards/afi-gf/lowlevel.c b/arch/arm/boards/afi-gf/lowlevel.c
index de40f6c5af..88ffcfae5b 100644
--- a/arch/arm/boards/afi-gf/lowlevel.c
+++ b/arch/arm/boards/afi-gf/lowlevel.c
@@ -130,34 +130,35 @@ static void board_config_vtp(void)
 
 static void board_config_emif_ddr(void)
 {
+	const void __iomem *emif4 = IOMEM(AM33XX_EMIF4_BASE);
 	u32 i;
 
 	/*Program EMIF0 CFG Registers*/
-	__raw_writel(EMIF_READ_LATENCY, AM33XX_EMIF4_0_REG(DDR_PHY_CTRL_1));
-	__raw_writel(EMIF_READ_LATENCY, AM33XX_EMIF4_0_REG(DDR_PHY_CTRL_1_SHADOW));
-	__raw_writel(EMIF_READ_LATENCY, AM33XX_EMIF4_0_REG(DDR_PHY_CTRL_2));
-	__raw_writel(EMIF_TIM1, AM33XX_EMIF4_0_REG(SDRAM_TIM_1));
-	__raw_writel(EMIF_TIM1, AM33XX_EMIF4_0_REG(SDRAM_TIM_1_SHADOW));
-	__raw_writel(EMIF_TIM2, AM33XX_EMIF4_0_REG(SDRAM_TIM_2));
-	__raw_writel(EMIF_TIM2, AM33XX_EMIF4_0_REG(SDRAM_TIM_2_SHADOW));
-	__raw_writel(EMIF_TIM3, AM33XX_EMIF4_0_REG(SDRAM_TIM_3));
-	__raw_writel(EMIF_TIM3, AM33XX_EMIF4_0_REG(SDRAM_TIM_3_SHADOW));
-
-	__raw_writel(EMIF_SDCFG, AM33XX_EMIF4_0_REG(SDRAM_CONFIG));
-	__raw_writel(EMIF_SDCFG, AM33XX_EMIF4_0_REG(SDRAM_CONFIG2));
-
-	__raw_writel(0x00004650, AM33XX_EMIF4_0_REG(SDRAM_REF_CTRL));
-	__raw_writel(0x00004650, AM33XX_EMIF4_0_REG(SDRAM_REF_CTRL_SHADOW));
+	__raw_writel(EMIF_READ_LATENCY, emif4 + EMIF4_DDR_PHY_CTRL_1);
+	__raw_writel(EMIF_READ_LATENCY, emif4 + EMIF4_DDR_PHY_CTRL_1_SHADOW);
+	__raw_writel(EMIF_READ_LATENCY, emif4 + EMIF4_DDR_PHY_CTRL_2);
+	__raw_writel(EMIF_TIM1, emif4 + EMIF4_SDRAM_TIM_1);
+	__raw_writel(EMIF_TIM1, emif4 + EMIF4_SDRAM_TIM_1_SHADOW);
+	__raw_writel(EMIF_TIM2, emif4 + EMIF4_SDRAM_TIM_2);
+	__raw_writel(EMIF_TIM2, emif4 + EMIF4_SDRAM_TIM_2_SHADOW);
+	__raw_writel(EMIF_TIM3, emif4 + EMIF4_SDRAM_TIM_3);
+	__raw_writel(EMIF_TIM3, emif4 + EMIF4_SDRAM_TIM_3_SHADOW);
+
+	__raw_writel(EMIF_SDCFG, emif4 + EMIF4_SDRAM_CONFIG);
+	__raw_writel(EMIF_SDCFG, emif4 + EMIF4_SDRAM_CONFIG2);
+
+	__raw_writel(0x00004650, emif4 + EMIF4_SDRAM_REF_CTRL);
+	__raw_writel(0x00004650, emif4 + EMIF4_SDRAM_REF_CTRL_SHADOW);
 
 	for (i = 0; i < 5000; i++) {
 
 	}
 
-	__raw_writel(EMIF_SDREF, AM33XX_EMIF4_0_REG(SDRAM_REF_CTRL));
-	__raw_writel(EMIF_SDREF, AM33XX_EMIF4_0_REG(SDRAM_REF_CTRL_SHADOW));
+	__raw_writel(EMIF_SDREF, emif4 + EMIF4_SDRAM_REF_CTRL);
+	__raw_writel(EMIF_SDREF, emif4 + EMIF4_SDRAM_REF_CTRL_SHADOW);
 
-	__raw_writel(EMIF_SDCFG, AM33XX_EMIF4_0_REG(SDRAM_CONFIG));
-	__raw_writel(EMIF_SDCFG, AM33XX_EMIF4_0_REG(SDRAM_CONFIG2));
+	__raw_writel(EMIF_SDCFG, emif4 + EMIF4_SDRAM_CONFIG);
+	__raw_writel(EMIF_SDCFG, emif4 + EMIF4_SDRAM_CONFIG2);
 }
 
 static void board_config_ddr(void)
diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index 3c5cdf065c..896968f2f3 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -307,18 +307,20 @@ void am33xx_ddr_phydata_cmd_macro(const struct am33xx_cmd_control *cmd_ctrl)
 
 void am33xx_config_sdram(const struct am33xx_emif_regs *regs)
 {
-	writel(regs->emif_read_latency, AM33XX_EMIF4_0_REG(DDR_PHY_CTRL_1));
-	writel(regs->emif_read_latency, AM33XX_EMIF4_0_REG(DDR_PHY_CTRL_1_SHADOW));
-	writel(regs->emif_read_latency, AM33XX_EMIF4_0_REG(DDR_PHY_CTRL_2));
-	writel(regs->emif_tim1, AM33XX_EMIF4_0_REG(SDRAM_TIM_1));
-	writel(regs->emif_tim1, AM33XX_EMIF4_0_REG(SDRAM_TIM_1_SHADOW));
-	writel(regs->emif_tim2, AM33XX_EMIF4_0_REG(SDRAM_TIM_2));
-	writel(regs->emif_tim2, AM33XX_EMIF4_0_REG(SDRAM_TIM_2_SHADOW));
-	writel(regs->emif_tim3, AM33XX_EMIF4_0_REG(SDRAM_TIM_3));
-	writel(regs->emif_tim3, AM33XX_EMIF4_0_REG(SDRAM_TIM_3_SHADOW));
+	const void __iomem *emif4 = IOMEM(AM33XX_EMIF4_BASE);
+
+	writel(regs->emif_read_latency, emif4 + EMIF4_DDR_PHY_CTRL_1);
+	writel(regs->emif_read_latency, emif4 + EMIF4_DDR_PHY_CTRL_1_SHADOW);
+	writel(regs->emif_read_latency, emif4 + EMIF4_DDR_PHY_CTRL_2);
+	writel(regs->emif_tim1, emif4 + EMIF4_SDRAM_TIM_1);
+	writel(regs->emif_tim1, emif4 + EMIF4_SDRAM_TIM_1_SHADOW);
+	writel(regs->emif_tim2, emif4 + EMIF4_SDRAM_TIM_2);
+	writel(regs->emif_tim2, emif4 + EMIF4_SDRAM_TIM_2_SHADOW);
+	writel(regs->emif_tim3, emif4 + EMIF4_SDRAM_TIM_3);
+	writel(regs->emif_tim3, emif4 + EMIF4_SDRAM_TIM_3_SHADOW);
 
 	if (regs->ocp_config)
-		writel(regs->ocp_config, AM33XX_EMIF4_0_REG(OCP_CONFIG));
+		writel(regs->ocp_config, emif4 + EMIF4_OCP_CONFIG);
 
 	if (regs->zq_config) {
 		/*
@@ -326,20 +328,17 @@ void am33xx_config_sdram(const struct am33xx_emif_regs *regs)
 		 * about 570us for a delay, which will be long enough
 		 * to configure things.
 		 */
-		writel(0x2800, AM33XX_EMIF4_0_REG(SDRAM_REF_CTRL));
-		writel(regs->zq_config, AM33XX_EMIF4_0_REG(ZQ_CONFIG));
+		writel(0x2800, emif4 + EMIF4_SDRAM_REF_CTRL);
+		writel(regs->zq_config, emif4 + EMIF4_ZQ_CONFIG);
 		writel(regs->sdram_config, CM_EMIF_SDRAM_CONFIG);
-		writel(regs->sdram_config, AM33XX_EMIF4_0_REG(SDRAM_CONFIG));
-		writel(regs->sdram_ref_ctrl,
-				AM33XX_EMIF4_0_REG(SDRAM_REF_CTRL));
-		writel(regs->sdram_ref_ctrl,
-			AM33XX_EMIF4_0_REG(SDRAM_REF_CTRL_SHADOW));
-
+		writel(regs->sdram_config, emif4 + EMIF4_SDRAM_CONFIG);
+		writel(regs->sdram_ref_ctrl, emif4 + EMIF4_SDRAM_REF_CTRL);
+		writel(regs->sdram_ref_ctrl, emif4 + EMIF4_SDRAM_REF_CTRL_SHADOW);
 	}
 
-	writel(regs->sdram_ref_ctrl, AM33XX_EMIF4_0_REG(SDRAM_REF_CTRL));
-	writel(regs->sdram_ref_ctrl, AM33XX_EMIF4_0_REG(SDRAM_REF_CTRL_SHADOW));
-	writel(regs->sdram_config, AM33XX_EMIF4_0_REG(SDRAM_CONFIG));
+	writel(regs->sdram_ref_ctrl, emif4 + EMIF4_SDRAM_REF_CTRL);
+	writel(regs->sdram_ref_ctrl, emif4 + EMIF4_SDRAM_REF_CTRL_SHADOW);
+	writel(regs->sdram_config, emif4 + EMIF4_SDRAM_CONFIG);
 }
 
 /**
diff --git a/arch/arm/mach-omap/include/mach/am33xx-silicon.h b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
index 0467dac03b..d090b0f29c 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-silicon.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
@@ -37,9 +37,6 @@
 #define AM33XX_GPIO2_BASE		(AM33XX_L4_PER_BASE + 0x1AC000 + 0x100)
 #define AM33XX_GPIO3_BASE		(AM33XX_L4_PER_BASE + 0x1AE000 + 0x100)
 
-/* EMFI Registers */
-#define AM33XX_EMFI0_BASE		0x4C000000
-
 #define AM33XX_DRAM_ADDR_SPACE_START	0x80000000
 #define AM33XX_DRAM_ADDR_SPACE_END	0xC0000000
 
@@ -83,8 +80,8 @@
 #define AM33XX_WDT_BASE			0x44E35000
 
 /* EMIF Base address */
-#define AM33XX_EMIF4_0_CFG_BASE		0x4C000000
-#define AM33XX_EMIF4_1_CFG_BASE		0x4D000000
+#define AM33XX_EMIF4_BASE		0x4c000000
+
 #define AM33XX_DMM_BASE			0x4E000000
 
 #define AM335X_CPSW_BASE		0x4A100000
@@ -97,9 +94,6 @@
 #define AM33XX_DMM_LISA_MAP__3		(AM33XX_DMM_BASE + 0x4C)
 #define AM33XX_DMM_PAT_BASE_ADDR	(AM33XX_DMM_BASE + 0x460)
 
-#define AM33XX_EMIF4_0_REG(REGNAME)	(AM33XX_EMIF4_0_CFG_BASE + EMIF4_##REGNAME)
-#define AM33XX_EMIF4_1_REG(REGNAME)	(AM33XX_EMIF4_1_CFG_BASE + EMIF4_##REGNAME)
-
 #define EMIF4_MOD_ID_REV		0x0
 #define EMIF4_SDRAM_STATUS		0x04
 #define EMIF4_SDRAM_CONFIG		0x08
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

