Delivery-date: Fri, 03 Jun 2022 13:27:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx5So-001kUD-IX
	for lore@lore.pengutronix.de; Fri, 03 Jun 2022 13:27:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx5Sm-0003sT-UB
	for lore@pengutronix.de; Fri, 03 Jun 2022 13:27:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t0LOSGcVtia+olyjBDnr8CgUM7OxZVpH+6/wZkDLyPw=; b=hDDWxW3l6ZWx1l
	zYC1hm6fWnh9dL7UfTaFwuL7cX08S99V7Q8fB0vZGOUbx56hYZmez59XIe3QOwyBU3ULDLnmrrsCm
	e3GvrtgOMXr47ecJZHFJn1/jDjj56hKx50nTHtnFaes+5yNWd0D89ytrfkMImgfdy8/7xs/pgrnPP
	Fl6iwUk8F81ZqK7XwJCK1IXdpfUNRYrKEIFIBFmGEUmcCdqE6y1zo1ku7b/51DPTRIZHWcyIWFan4
	qREFjybabt6g5blpt8cmYDQ32rYgRMDvNHsx2kCHdkMJtGSvOMDsLFxmu4ECk32rSWS3+okDR4sIa
	FTrNZsEuVF0cY3Ubi7/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx5RM-007BV4-OK; Fri, 03 Jun 2022 11:26:04 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx5RC-007BQz-9r
	for barebox@lists.infradead.org; Fri, 03 Jun 2022 11:25:55 +0000
Received: by mail-lj1-x233.google.com with SMTP id t13so8100578ljd.6
        for <barebox@lists.infradead.org>; Fri, 03 Jun 2022 04:25:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=F2zbb8cJawX3qSshZ+FVG09ZUxrX+M2B9xYAWlQFvvE=;
        b=gQ7paDxRI7/A/pXpzpeW47B7vBu7oowSYOSR+Ml+jPYx2zIEiazHU6Mg5ggHqkhsK1
         URBYU1u3MHQwElOuVcCS/0DGv6jfDpT1Ui+BAm37SkbwT3eNlQivRSlf2MmGemGiv5Gt
         OwjL0c1fPX5Q1nYbpDHQcRrJi3SN6LzT5DqEXATznmsI0EUkVg7ZrahLAx7aBAsSoBZj
         D6D8Dq3e+Z4C4Z747+5G03JqKeDWDTRiQurcnD3TapXhLQh0srXYSeWe/ZIGbAAk2l0d
         qpLZwHxK8/OAv/0wMkOZY/aZJzwUpzkHSGLAJjajN+XUKOqPKgdyFF+dBc8Y+wV7A1AM
         OQhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=F2zbb8cJawX3qSshZ+FVG09ZUxrX+M2B9xYAWlQFvvE=;
        b=AKvK5W9Edx4vWrAEYud526AEjomsfH3iFxebm6lvFLP115NgZsuiUfoLF14xGS6HtA
         jjSOS5p4FIMWQtz+yLZHyL1E/ogckHkl91lE4ocSEDjVLx1XqBHlWDNE/lvxSHZ2n8Cv
         NiQuC9TxBS3zeLi9VTYNjNgDpRXFa8EtGRqECmoD40p5knOCXVN94XdLg+myHOJCO8tA
         x7AxaD5Dy1MHoNrtSMEyadjUso3BqSnZ1Ty0Hm5F+2lVbscgVNyZ7Tam+PXDRgPsj/ov
         7IdJ/+TyMKRn1Fq+YhV6gRpassoP/uyFeLRGQXuzVawgXnLMf6zTA/vJWurmAp8j4umB
         E3/g==
X-Gm-Message-State: AOAM531n/aVfFcer76YOiNsvn9P/fRqxpNIrJmW6FHq+Zw9Dx30xkua0
	BPZHvGpvc8v5ss7ectVqVfkxQoeSFio=
X-Google-Smtp-Source: ABdhPJyqaUMvKzGi3bzwf7bRfT8ZqI0G13AcOJBZoDflcC3cNmo2IB58osQSmW3hD3XBTP8uc+DUqQ==
X-Received: by 2002:a2e:3a18:0:b0:253:bfad:88b0 with SMTP id h24-20020a2e3a18000000b00253bfad88b0mr44715694lja.283.1654255550204;
        Fri, 03 Jun 2022 04:25:50 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id q17-20020ac246f1000000b004790105d0cfsm1546121lfo.16.2022.06.03.04.25.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 04:25:49 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri,  3 Jun 2022 14:25:37 +0300
Message-Id: <20220603112540.51644-5-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220603112540.51644-1-eagle.alexander923@gmail.com>
References: <20220603112540.51644-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220603_042554_403877_4ACD8C3F 
X-CRM114-Status: GOOD (  12.94  )
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
Subject: [RFC 5/8] ARM: OMAP: emif: Abstract am35xx_emif4 from any CPU-specific includes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/boards/wago-pfc-am35xx/lowlevel.c | 2 +-
 arch/arm/mach-omap/am35xx_emif4.c          | 4 +---
 arch/arm/mach-omap/include/mach/emif4.h    | 2 +-
 3 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/wago-pfc-am35xx/lowlevel.c b/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
index 7da8fd0331..63afd043a0 100644
--- a/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
+++ b/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
@@ -200,7 +200,7 @@ static noinline void pfc200_board_init(void)
 
 	/* Dont reconfigure SDRAM while running in SDRAM */
 	if (!in_sdram)
-		am35xx_emif4_init();
+		am35xx_emif4_init(IOMEM(OMAP3_SDRC_BASE));
 
 	barebox_arm_entry(0x80000000, SZ_256M, NULL);
 }
diff --git a/arch/arm/mach-omap/am35xx_emif4.c b/arch/arm/mach-omap/am35xx_emif4.c
index bd4fbd21e3..e61cf00c57 100644
--- a/arch/arm/mach-omap/am35xx_emif4.c
+++ b/arch/arm/mach-omap/am35xx_emif4.c
@@ -12,7 +12,6 @@
 #include <common.h>
 #include <io.h>
 #include <mach/emif4.h>
-#include <mach/omap3-silicon.h>
 
 /*
  * AM35xx configuration values
@@ -70,9 +69,8 @@
  *  - Init the emif4 module for DDR access
  *  - Early init routines, called from flash or SRAM.
  */
-void am35xx_emif4_init(void)
+void am35xx_emif4_init(const void __iomem *emif4)
 {
-	const void __iomem *emif4 = IOMEM(OMAP3_SDRC_BASE);
 	unsigned int regval;
 
 	/* Set the DDR PHY parameters in PHY ctrl registers */
diff --git a/arch/arm/mach-omap/include/mach/emif4.h b/arch/arm/mach-omap/include/mach/emif4.h
index 23d5c18fcf..10ecfe6c6b 100644
--- a/arch/arm/mach-omap/include/mach/emif4.h
+++ b/arch/arm/mach-omap/include/mach/emif4.h
@@ -45,6 +45,6 @@
 #define EMIF4_DDR_PHY_CTRL_2					0xec
 #define EMIF4_IODFT_TLGC					0x60
 
-void am35xx_emif4_init(void);
+void am35xx_emif4_init(const void __iomem *emif4);
 
 #endif /* endif _EMIF_H_ */
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

