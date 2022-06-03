Delivery-date: Fri, 03 Jun 2022 13:27:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx5Ss-001kV2-IC
	for lore@lore.pengutronix.de; Fri, 03 Jun 2022 13:27:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx5Sq-0003tn-Ds
	for lore@pengutronix.de; Fri, 03 Jun 2022 13:27:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+w6rO1OtuMqAHUFGohW/KV6sbOs/RkA/siJdMhWEtU0=; b=OkieNpUWVTFNHg
	DJAXIHFx9gJMNdaiMggQou0aJuLgwZ/GgtbibdziQLOkR+jcZ3AdGb/F4NkSH/9BvwJaroD2lq7hZ
	v/c2VbS4XYJsmWP9HJrcdTQTHdSiw3cFF+rkWEKOF5iDgx0+B5RoVfqOWheB/EjRq+A2TgpX7UwjL
	0m3GtZvTSYkjBfR7HcblZbfu4aYenKb+JssElVnbVynMZPPXKVKfIBJ39xtfybMkbx9PhWP+Hqvs9
	fYv2LixEbHV5XwFVYPbbxVmbGVVKAIGErQ6aIdY2PO/YsTLWg3fFDtcGowUAbIkRk68hW3Ah9yYVE
	M0I+F2MBpCSKXvPuhPEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx5RH-007BT2-HF; Fri, 03 Jun 2022 11:25:59 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx5R8-007BPY-Ix
	for barebox@lists.infradead.org; Fri, 03 Jun 2022 11:25:52 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 1so8094803ljp.8
        for <barebox@lists.infradead.org>; Fri, 03 Jun 2022 04:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PU3J483Npo2UJH9v5YkTNjeN1rNgzGrVwmF5HHemkuA=;
        b=O6VXWsvYrIhgJFl3+JPQ78K5xeVYqQpBi9uZNnCjjLIITP2tXIG4KGk8rFrpzmvIbV
         ynO/PYmRBvuC6SOuVzcEZB5Oq359VIlu/ocCgnv2MlvXUCNVNQdbvCjoMtzxqygpUmnI
         Rj43Tk0vQNDNZANlRI3OEytSpRhH/H4IuQUM3d/Eglb1zvpiLEbRkF7p1SG4O7te7Ua0
         rHJDxBvoEdUNs2OP25HrD8L5vVL1b+aCCryulkvydkBcWs8rmelfb0/UKtTcIEWfKX+2
         wC+Fo90Gffmgqk+otQt3qdD9LYHTCRF+LFmFJ62SrTum82oJPnv6tDbGTegkoyUH7L0M
         NHrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PU3J483Npo2UJH9v5YkTNjeN1rNgzGrVwmF5HHemkuA=;
        b=ByJOleCnF1A8Fkb1xCwh/Yr4ZjaL/rTtwVqfoxG9OI2tvXRhOaMTcUIZHwd4kg2Ie1
         gykqfczD+X1DSGXbEafOF9JjK2GUFVisRWtP0ZjdawT6mU5dUrlxEbHRVAkUsMTbz8Zn
         GPCQhX+MXE37y/5FHZV2wv1ahjmtzEA7Dtc0czkhthhcU68cPrGELFUzcQ6/NFsVvE1c
         pZao1ViWlGL0gFoOMOEDaA7SZT+xzvxGfEHAsSmnHk/NClQT0cb+91n+GkU2Phs88BxX
         sHfG8wiRLiArHIyaVwt7bIR2ziIJD+WcO8ZLiTTOhQBoyPLnFDer5/KPRvsmRTgN3DJw
         xDhw==
X-Gm-Message-State: AOAM532f5GuwYdMfTdn9yWxLEcr/HQQoabV3Jn+oI2EjLjSnzEmX75sm
	oBGvDjjvItfRbmkVOZdh4FCRG35YwD4=
X-Google-Smtp-Source: ABdhPJzdApC4Gty/pkDjq5r+7giUtKqnUIRc+omEyXCtRL8JPI9aoMRfDbRkYee9tfqUsSDni8MQBQ==
X-Received: by 2002:a2e:a163:0:b0:255:6d80:dc8a with SMTP id u3-20020a2ea163000000b002556d80dc8amr7047126ljl.59.1654255545401;
        Fri, 03 Jun 2022 04:25:45 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id q17-20020ac246f1000000b004790105d0cfsm1546121lfo.16.2022.06.03.04.25.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 04:25:44 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri,  3 Jun 2022 14:25:34 +0300
Message-Id: <20220603112540.51644-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220603112540.51644-1-eagle.alexander923@gmail.com>
References: <20220603112540.51644-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220603_042550_669868_4C7F3185 
X-CRM114-Status: GOOD (  10.56  )
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
Subject: [RFC 2/8] ARM: OMAP: Move EMIF4 definitions to appropriate header
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/boards/afi-gf/lowlevel.c             |  1 +
 arch/arm/mach-omap/am33xx_generic.c           |  1 +
 .../mach-omap/include/mach/am33xx-silicon.h   | 21 -------------------
 arch/arm/mach-omap/include/mach/emif4.h       | 21 +++++++++++++++++++
 4 files changed, 23 insertions(+), 21 deletions(-)

diff --git a/arch/arm/boards/afi-gf/lowlevel.c b/arch/arm/boards/afi-gf/lowlevel.c
index 88ffcfae5b..d28cc8fad3 100644
--- a/arch/arm/boards/afi-gf/lowlevel.c
+++ b/arch/arm/boards/afi-gf/lowlevel.c
@@ -10,6 +10,7 @@
 #include <mach/am33xx-generic.h>
 #include <mach/am33xx-silicon.h>
 #include <mach/am33xx-clock.h>
+#include <mach/emif4.h>
 #include <mach/sdrc.h>
 #include <mach/sys_info.h>
 #include <mach/syslib.h>
diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index 896968f2f3..bdfa0e9e26 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -23,6 +23,7 @@
 #include <asm/barebox-arm.h>
 #include <mach/am33xx-silicon.h>
 #include <mach/am33xx-clock.h>
+#include <mach/emif4.h>
 #include <mach/generic.h>
 #include <mach/sys_info.h>
 #include <mach/am33xx-generic.h>
diff --git a/arch/arm/mach-omap/include/mach/am33xx-silicon.h b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
index d090b0f29c..671706ff49 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-silicon.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
@@ -94,27 +94,6 @@
 #define AM33XX_DMM_LISA_MAP__3		(AM33XX_DMM_BASE + 0x4C)
 #define AM33XX_DMM_PAT_BASE_ADDR	(AM33XX_DMM_BASE + 0x460)
 
-#define EMIF4_MOD_ID_REV		0x0
-#define EMIF4_SDRAM_STATUS		0x04
-#define EMIF4_SDRAM_CONFIG		0x08
-#define EMIF4_SDRAM_CONFIG2		0x0C
-#define EMIF4_SDRAM_REF_CTRL		0x10
-#define EMIF4_SDRAM_REF_CTRL_SHADOW	0x14
-#define EMIF4_SDRAM_TIM_1		0x18
-#define EMIF4_SDRAM_TIM_1_SHADOW	0x1C
-#define EMIF4_SDRAM_TIM_2		0x20
-#define EMIF4_SDRAM_TIM_2_SHADOW	0x24
-#define EMIF4_SDRAM_TIM_3		0x28
-#define EMIF4_SDRAM_TIM_3_SHADOW	0x2C
-#define EMIF0_SDRAM_MGMT_CTRL		0x38
-#define EMIF0_SDRAM_MGMT_CTRL_SHD	0x3C
-#define EMIF4_OCP_CONFIG		0x54
-#define EMIF4_ZQ_CONFIG			0xC8
-#define EMIF4_DDR_PHY_CTRL_1		0xE4
-#define EMIF4_DDR_PHY_CTRL_1_SHADOW	0xE8
-#define EMIF4_DDR_PHY_CTRL_2		0xEC
-#define EMIF4_IODFT_TLGC		0x60
-
 #define AM33XX_VTP0_CTRL_REG		0x44E10E0C
 #define AM33XX_VTP1_CTRL_REG		0x48140E10
 
diff --git a/arch/arm/mach-omap/include/mach/emif4.h b/arch/arm/mach-omap/include/mach/emif4.h
index 1f9c2938a1..559443c9a6 100644
--- a/arch/arm/mach-omap/include/mach/emif4.h
+++ b/arch/arm/mach-omap/include/mach/emif4.h
@@ -24,6 +24,27 @@
 #ifndef _EMIF_H_
 #define _EMIF_H_
 
+#define EMIF4_MOD_ID_REV					0x0
+#define EMIF4_STATUS						0x04
+#define EMIF4_SDRAM_CONFIG					0x08
+#define EMIF4_SDRAM_CONFIG2					0x0c
+#define EMIF4_SDRAM_REF_CTRL					0x10
+#define EMIF4_SDRAM_REF_CTRL_SHADOW				0x14
+#define EMIF4_SDRAM_TIM_1					0x18
+#define EMIF4_SDRAM_TIM_1_SHADOW				0x1c
+#define EMIF4_SDRAM_TIM_2					0x20
+#define EMIF4_SDRAM_TIM_2_SHADOW				0x24
+#define EMIF4_SDRAM_TIM_3					0x28
+#define EMIF4_SDRAM_TIM_3_SHADOW				0x2c
+#define EMIF4_POWER_MANAGEMENT_CTRL				0x38
+#define EMIF4_POWER_MANAGEMENT_CTRL_SHADOW			0x3c
+#define EMIF4_OCP_CONFIG					0x54
+#define EMIF4_ZQ_CONFIG						0xc8
+#define EMIF4_DDR_PHY_CTRL_1					0xe4
+#define EMIF4_DDR_PHY_CTRL_1_SHADOW				0xe8
+#define EMIF4_DDR_PHY_CTRL_2					0xec
+#define EMIF4_IODFT_TLGC					0x60
+
 /*
  * Configuration values
  */
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

