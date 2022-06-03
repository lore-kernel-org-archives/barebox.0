Delivery-date: Fri, 03 Jun 2022 13:27:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx5Ss-001kUs-5U
	for lore@lore.pengutronix.de; Fri, 03 Jun 2022 13:27:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx5Sq-0003th-9d
	for lore@pengutronix.de; Fri, 03 Jun 2022 13:27:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BMLfElhFn70Xc+aiEKvmahQ8LFysp0ZryrM4XOXdhPw=; b=MjmYekAdAHcgon
	C2jq9Tw70dNyt/6rfCL7iq0Cc2qYFKG/AjTIApsnW52oYjeuZRNrk18Qpa5mIrvT4md+BJVk849DH
	r75/YKMANLLeChdFuYl4UPeKYV8NMfeltrQ4czXVrujMkPKvLIrXF5pX5/eXxS6JBVRkqGVMUrq9c
	ZHw8kEiEoOZAj5xh4mjzGFqyxA4dxMdi1akFw+OZUXLr7lR0xlQyATETrWHrxrHiUvKcDRxbTVacN
	50w5JXoxYUxDfDg0tEdccV8rJkswS3GBJBVD6sw7SmmgIH/ekbP4hYn0ZER14dW7uXDDJuegKAK6j
	X9SVMn7kHLbm9Mo5fsLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx5RR-007BWB-TQ; Fri, 03 Jun 2022 11:26:10 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx5RD-007BRY-0B
	for barebox@lists.infradead.org; Fri, 03 Jun 2022 11:25:56 +0000
Received: by mail-lf1-x134.google.com with SMTP id a2so12145827lfc.2
        for <barebox@lists.infradead.org>; Fri, 03 Jun 2022 04:25:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lE0ryfu6jVtpPMvyiuw/PoI2+jt5wtYFHpR9RmA0hBo=;
        b=fCbP1b095//0z92hQ13PExheee7LhzegZVJaKBGhqYLyR41G42Fdxj713S7X0xKrH1
         gPpA7ev1RpFLKvDmOys2mJtuxuWjmzxfMJ5DFBqx/8hJH3QLndL+iaeiplcMofoH7gL2
         eJQ442UvqZ6BBXoR1te1NTdFW/6AHeWQvgtDHap2v8p0arOfvnWx+frfc6DMf12vFv/t
         qkcKxnj3DOoyNp4N70J7rb1BXQXqKylkONnoWxJjBr9yHZWdS0+c8OyIc5qUuDFhr0Qe
         Xg/StvsJr2uqPl3kj2+YzNZP/Erf5PIKqpgfrOtBS+upMB4zV2CMGosJwUaczaFu9NAY
         SVmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lE0ryfu6jVtpPMvyiuw/PoI2+jt5wtYFHpR9RmA0hBo=;
        b=DzJVs1OrvT2zzZmWTOqbLYH49g+kYdMYf9+yXlArKcGHenv+RLC8Gxp8oYzgTpdRaw
         BHdwrjrJxWppX6y7bY5w6kmmcDiFoS8QcGDUbR8ULGcB55lTPCj6mnsTHnsFKETjZojh
         qNTOiytJV9cW7CKbDTTHMIzdxuPqkbR5N0qJlx+IazkEbd99y1raNisTV9MCP3PKVPMd
         VfBVUXLzgIJvrNfVQS5HPax6qimKbLFxBZdtL3cHWvepi8Tz6ZxAfuxn+ALO82CGXPdA
         1KuWPXgTmDyy8IX+2uuQh1+F2RfFDSQLZCfitFMxPtw064/zEVuMRVylg4aWwScbpqWs
         w70g==
X-Gm-Message-State: AOAM5320ixuZjhvCTOrH9eniqpT6X9ku+sprQCKifYxhz+f4QbO2jr22
	odniZF5XxddI18VQJUWAZdEbX09ShXE=
X-Google-Smtp-Source: ABdhPJxCMS7+LM0M9tUSc1UVkYaUjYiGvlPT1MWqB99N+dPgWQO3SeFnglRoT8QARfpPMU5AZqPGQw==
X-Received: by 2002:a05:6512:238c:b0:479:8c3:e11b with SMTP id c12-20020a056512238c00b0047908c3e11bmr6314802lfv.456.1654255551704;
        Fri, 03 Jun 2022 04:25:51 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id q17-20020ac246f1000000b004790105d0cfsm1546121lfo.16.2022.06.03.04.25.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 04:25:50 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri,  3 Jun 2022 14:25:38 +0300
Message-Id: <20220603112540.51644-6-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220603112540.51644-1-eagle.alexander923@gmail.com>
References: <20220603112540.51644-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220603_042555_076960_64C2AC6A 
X-CRM114-Status: UNSURE (   9.06  )
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
Subject: [RFC 6/8] ARM: OMAP: emif: Rename am35xx_emif4 unit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

EMIF can be used for other CPU variants.
Let's rename it to be more generic.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-omap/Makefile                    | 2 +-
 arch/arm/mach-omap/{am35xx_emif4.c => emif4.c} | 0
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename arch/arm/mach-omap/{am35xx_emif4.c => emif4.c} (100%)

diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index e81284ec3b..2c7f577856 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -22,7 +22,7 @@ pbl-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
 obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
 pbl-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
 obj-pbl-$(CONFIG_ARCH_AM33XX) += am33xx_generic.o am33xx_clock.o am33xx_mux.o am3xxx.o
-obj-pbl-$(CONFIG_ARCH_AM35XX) += am3xxx.o am35xx_emif4.o
+obj-pbl-$(CONFIG_ARCH_AM35XX) += am3xxx.o emif4.o
 obj-$(CONFIG_ARCH_AM33XX) += am33xx_scrm.o
 obj-$(CONFIG_ARCH_OMAP3) += omap3_clock.o
 pbl-$(CONFIG_ARCH_OMAP3) += omap3_clock.o
diff --git a/arch/arm/mach-omap/am35xx_emif4.c b/arch/arm/mach-omap/emif4.c
similarity index 100%
rename from arch/arm/mach-omap/am35xx_emif4.c
rename to arch/arm/mach-omap/emif4.c
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

