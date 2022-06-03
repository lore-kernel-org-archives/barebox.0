Delivery-date: Fri, 03 Jun 2022 13:27:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx5Sm-001kTk-JQ
	for lore@lore.pengutronix.de; Fri, 03 Jun 2022 13:27:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx5Sl-0003s4-8C
	for lore@pengutronix.de; Fri, 03 Jun 2022 13:27:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TMd/LaSrIdzO/g1t4gVEd1Zh+D3+NXQr28te7WQrjUA=; b=faPHZFcpWYBrvf
	TzaqmxojuIAiE5lyC0T8rsZBezsCPCcwzJuEKckdSCoGiE4Y19vBLxpvUgtxUl3uYUprEbL3IAN1J
	9zQ9/Src2YpZDIquecVcdN5bIk7EqDtJ2IwiSGCD9D7F02fhMADgNHHzxGBcpjt6XI2O+1bDaLVXS
	RfyZoytBBJWPBVeNGzYiAC7Fva/GAjs0qW9J+PGXnYrESCwjMAkRFHJSbDJ4hR0i41TknOns6ZQMj
	rYXX6zck6Y3hwa8Xs16TmeikalM4ZooHmbE4zfvu6Lr4cyeVk1mNv11GcFcOFp7TmUpdBi8hpPlzK
	byQ/P1it6XowVhmn8KAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx5RJ-007BUF-Ve; Fri, 03 Jun 2022 11:26:02 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx5RA-007BQY-AS
	for barebox@lists.infradead.org; Fri, 03 Jun 2022 11:25:53 +0000
Received: by mail-lj1-x236.google.com with SMTP id v9so8082227lja.12
        for <barebox@lists.infradead.org>; Fri, 03 Jun 2022 04:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=G5O2punHU4FqVyBd1cfkMdLryrT4WDnlO6wLq8bt8L0=;
        b=ZC97oDR1uyDVr8SFJL7onkOrP+4Q8WBM18RVspsjqUmqXLC4+yR+tpmXSGUE26eDKS
         NRZsqThXM0haF+2GXJwBbSyDslV3BmMuKHme+9nlmmVDXVseQi6J65e5Y94j9qmUtkKF
         jd5SFXqoNjVIlGZI+ekPa1LlddfxscljkQCpnkDg80DehFoNFefzatDVU9wPGDMZfUlN
         LgXDaTlhhTrfJRI/krxG4NIlcBzzvnzGAuPBlGu+4In/J7iBLWOoPBlmmZ2+V13lPbnO
         tg4FwBbjxDTspCDn1Vyj3KpGQOdGmXgRTITb9Qtc0hi57bk7mpDBqBbznQBnDWu7Ze63
         mzpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=G5O2punHU4FqVyBd1cfkMdLryrT4WDnlO6wLq8bt8L0=;
        b=TBDPL5Us+zDF1iKz3udt10sbczBh28CPwmTKt1983tuAn9pVokqLeJIfijCyh473+B
         fp5I2dAqM7g1FiQtSyQjpx1Qis+1E7COW/f6QGurWMfc2j+KpCeXvVN4HJ0K3M8Nvq+d
         f2I3TSy313m2ASkxqfFsxaK5PClSL+429Q9GPxNn/IfFW8oWT2LdmReWYucAnQK9bLO2
         1YtsvX63rxaKuIMjzqXmUnMgeBBlrnmrQf+gITgNZdFQH8APyEM8hL0yi5+DMtRo5six
         /dw/IuQudEMSuJnBhI8r8TVP3bkCTjglut6uopl22jIMGtGaUQ/zrZfcdloL7wRCz8AQ
         +/Sw==
X-Gm-Message-State: AOAM530IKxknvx7vXWLXYgARkAe+uU3UGYIvZGztXrFSP9OEjD+ZbHM7
	hZPAVqY/aXOqx6/S70ewBuuyC8QkgoQ=
X-Google-Smtp-Source: ABdhPJzZ9X9lHRYlmAXDpMPUylkYDqBSQdz3eNqCdHPXgG5QGC3SPHLQcA4AiQutntO0smHXX0YhFA==
X-Received: by 2002:a2e:818a:0:b0:255:8239:3b1b with SMTP id e10-20020a2e818a000000b0025582393b1bmr799468ljg.470.1654255549033;
        Fri, 03 Jun 2022 04:25:49 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id q17-20020ac246f1000000b004790105d0cfsm1546121lfo.16.2022.06.03.04.25.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 04:25:47 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri,  3 Jun 2022 14:25:36 +0300
Message-Id: <20220603112540.51644-4-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220603112540.51644-1-eagle.alexander923@gmail.com>
References: <20220603112540.51644-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220603_042552_410343_F66C7087 
X-CRM114-Status: UNSURE (   9.98  )
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
Subject: [RFC 4/8] ARM: OMAP: Move locally used definitions from emif4 header to am35xx_emif4
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-omap/am35xx_emif4.c       | 53 ++++++++++++++++++++++++-
 arch/arm/mach-omap/include/mach/emif4.h | 52 ------------------------
 2 files changed, 52 insertions(+), 53 deletions(-)

diff --git a/arch/arm/mach-omap/am35xx_emif4.c b/arch/arm/mach-omap/am35xx_emif4.c
index 8780dfb539..bd4fbd21e3 100644
--- a/arch/arm/mach-omap/am35xx_emif4.c
+++ b/arch/arm/mach-omap/am35xx_emif4.c
@@ -15,7 +15,58 @@
 #include <mach/omap3-silicon.h>
 
 /*
- * do_pac200_emif4_init -
+ * AM35xx configuration values
+ */
+#define EMIF4_TIM1_T_RP		(0x3 << 25)
+#define EMIF4_TIM1_T_RCD	(0x3 << 21)
+#define EMIF4_TIM1_T_WR		(0x3 << 17)
+#define EMIF4_TIM1_T_RAS	(0x7 << 12)
+#define EMIF4_TIM1_T_RC		(0xa << 6)
+#define EMIF4_TIM1_T_RRD	(0x2 << 3)
+#define EMIF4_TIM1_T_WTR	(0x2)
+
+#define EMIF4_TIM2_T_XP		(0x2 << 28)
+#define EMIF4_TIM2_T_ODT	(0x0 << 25)
+#define EMIF4_TIM2_T_XSNR	(0x1c << 16)
+#define EMIF4_TIM2_T_XSRD	(0xc8 << 6)
+#define EMIF4_TIM2_T_RTP	(0x1 << 3)
+#define EMIF4_TIM2_T_CKE	(0x2)
+
+#define EMIF4_TIM3_T_RFC	(0x15 << 4)
+#define EMIF4_TIM3_T_RAS_MAX	(0xf)
+
+#define EMIF4_PWR_IDLE_MODE	(0x2 << 30)
+#define EMIF4_PWR_DPD_DIS	(0x0 << 10)
+#define EMIF4_PWR_DPD_EN	(0x1 << 10)
+#define EMIF4_PWR_LP_MODE	(0x0 << 8)
+#define EMIF4_PWR_PM_TIM	(0x0)
+
+#define EMIF4_INITREF_DIS	(0x0 << 31)
+#define EMIF4_REFRESH_RATE	(0x257)
+
+#define EMIF4_CFG_SDRAM_TYP	(0x2 << 29)
+#define EMIF4_CFG_IBANK_POS	(0x0 << 27)
+#define EMIF4_CFG_DDR_TERM	(0x3 << 24)
+#define EMIF4_CFG_DDR2_DDQS	(0x1 << 23)
+#define EMIF4_CFG_DDR_DIS_DLL	(0x0 << 20)
+#define EMIF4_CFG_SDR_DRV	(0x0 << 18)
+#define EMIF4_CFG_NARROW_MD	(0x0 << 14)
+#define EMIF4_CFG_CL		(0x5 << 10)
+#define EMIF4_CFG_ROWSIZE	(0x0 << 7)
+#define EMIF4_CFG_IBANK		(0x3 << 4)
+#define EMIF4_CFG_EBANK		(0x0 << 3)
+#define EMIF4_CFG_PGSIZE	(0x2)
+
+/*
+ * EMIF4 PHY Control 1 register configuration
+ */
+#define EMIF4_DDR1_EXT_STRB_EN	(0x1 << 7)
+#define EMIF4_DDR1_EXT_STRB_DIS	(0x0 << 7)
+#define EMIF4_DDR1_PWRDN_DIS	(0x0 << 6)
+#define EMIF4_DDR1_PWRDN_EN	(0x1 << 6)
+#define EMIF4_DDR1_READ_LAT	(0x6 << 0)
+
+/*
  *  - Init the emif4 module for DDR access
  *  - Early init routines, called from flash or SRAM.
  */
diff --git a/arch/arm/mach-omap/include/mach/emif4.h b/arch/arm/mach-omap/include/mach/emif4.h
index 06dabc5939..23d5c18fcf 100644
--- a/arch/arm/mach-omap/include/mach/emif4.h
+++ b/arch/arm/mach-omap/include/mach/emif4.h
@@ -45,58 +45,6 @@
 #define EMIF4_DDR_PHY_CTRL_2					0xec
 #define EMIF4_IODFT_TLGC					0x60
 
-/*
- * Configuration values
- */
-#define EMIF4_TIM1_T_RP		(0x3 << 25)
-#define EMIF4_TIM1_T_RCD	(0x3 << 21)
-#define EMIF4_TIM1_T_WR		(0x3 << 17)
-#define EMIF4_TIM1_T_RAS	(0x7 << 12) /* 8->7 */
-#define EMIF4_TIM1_T_RC		(0xA << 6)
-#define EMIF4_TIM1_T_RRD	(0x2 << 3)
-#define EMIF4_TIM1_T_WTR	(0x2)
-
-#define EMIF4_TIM2_T_XP		(0x2 << 28)
-#define EMIF4_TIM2_T_ODT	(0x0 << 25) /* 2? */
-#define EMIF4_TIM2_T_XSNR	(0x1C << 16)
-#define EMIF4_TIM2_T_XSRD	(0xC8 << 6)
-#define EMIF4_TIM2_T_RTP	(0x1 << 3)
-#define EMIF4_TIM2_T_CKE	(0x2)
-
-#define EMIF4_TIM3_T_RFC	(0x15 << 4) /* 25->15 */
-#define EMIF4_TIM3_T_RAS_MAX	(0xf)	    /* 7->f */
-
-#define EMIF4_PWR_IDLE_MODE	(0x2 << 30)
-#define EMIF4_PWR_DPD_DIS	(0x0 << 10)
-#define EMIF4_PWR_DPD_EN	(0x1 << 10)
-#define EMIF4_PWR_LP_MODE	(0x0 << 8)
-#define EMIF4_PWR_PM_TIM	(0x0)
-
-#define EMIF4_INITREF_DIS	(0x0 << 31)
-#define EMIF4_REFRESH_RATE	(0x257) /* 50f->257 */
-
-#define EMIF4_CFG_SDRAM_TYP	(0x2 << 29)
-#define EMIF4_CFG_IBANK_POS	(0x0 << 27)
-#define EMIF4_CFG_DDR_TERM	(0x3 << 24) /* --> 0x3 */
-#define EMIF4_CFG_DDR2_DDQS	(0x1 << 23)
-#define EMIF4_CFG_DDR_DIS_DLL	(0x0 << 20)
-#define EMIF4_CFG_SDR_DRV	(0x0 << 18)
-#define EMIF4_CFG_NARROW_MD	(0x0 << 14)
-#define EMIF4_CFG_CL		(0x5 << 10)
-#define EMIF4_CFG_ROWSIZE	(0x0 << 7) /* --> 0x4: a0..a12 */
-#define EMIF4_CFG_IBANK		(0x3 << 4)
-#define EMIF4_CFG_EBANK		(0x0 << 3)
-#define EMIF4_CFG_PGSIZE	(0x2)      /* 10 columns */
-
-/*
- * EMIF4 PHY Control 1 register configuration
- */
-#define EMIF4_DDR1_EXT_STRB_EN	(0x1 << 7)
-#define EMIF4_DDR1_EXT_STRB_DIS	(0x0 << 7)
-#define EMIF4_DDR1_PWRDN_DIS	(0x0 << 6)
-#define EMIF4_DDR1_PWRDN_EN	(0x1 << 6)
-#define EMIF4_DDR1_READ_LAT	(0x6 << 0)
-
 void am35xx_emif4_init(void);
 
 #endif /* endif _EMIF_H_ */
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

