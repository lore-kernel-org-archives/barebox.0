Delivery-date: Thu, 20 Mar 2025 10:15:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvBzh-001pbY-26
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 10:15:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvBzg-0007ug-HD
	for lore@pengutronix.de; Thu, 20 Mar 2025 10:15:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AGzSSiohCPNkaWseTDDDRFb+gQco+1JRolEB+0j/6Ns=; b=S5v0r6ezH5UOLTnMl5H3j+V2Sc
	8SslO6x2iip0JSVYYes2gHwtOIQFrcTtD69AZUsQ7JTgXzagI0aI5YUYPGWDW0JCz/AtoAFgRWCUO
	Pz+JrRqWRZS/bXb1SWXUI/N54/OXL/uUFyFa/fVr/UfgNR9UXXOLMq1VvZew3wheA+xjQg3y0ctW1
	qSkOflRTn7fcVsiV9fmD/6uqvXIUbBjdUN8eDC3xDOR1+A/7Dmt3Ww8DpsnRwRsthVlHzGyEuatxy
	b/9/5tgLiUR978mv80kYZqQKt0VkL6yfjYZ/H/sSESlLceJya3wx5yKsjmDyaJkIaJygQHQcQ3Mq8
	TGouDuRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvBz2-0000000BepH-27wO;
	Thu, 20 Mar 2025 09:14:36 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvByz-0000000Beo8-39EG
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 09:14:34 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-30761be8fcfso6669531fa.0
        for <barebox@lists.infradead.org>; Thu, 20 Mar 2025 02:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742462071; x=1743066871; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AGzSSiohCPNkaWseTDDDRFb+gQco+1JRolEB+0j/6Ns=;
        b=I3vkzdcHbNamc4b9u5bR9lRJ8ztjrXQNalmh7kzEphCz+QdDJawfTkUOhZqEWNCA61
         pofsJZlovbZU4Q7Hul7IIA2rsbsJvmcUMuIHkOC50ldSV2jPXVcbc3ITPn1zreh9/xSk
         0zNGMv+5UBHZ0bOpRSsoXCgSvEJBM/lXJuoqrMpGQDYFQ1YXznaiC2bDrfOJOY1vLzx9
         wVbkWgUn6Zww0OabWmrPowq/LdMVN2IlEgDJ7QTIl0N6Xfulklgf9Q56luqq7yRqkgJa
         lmf4/VtjSHpPEOzRVS3l/DW2kiNV4eoKxeSDJ65qWX0z/csvfLZDn52LFbt+NF+0x49D
         xDuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742462071; x=1743066871;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AGzSSiohCPNkaWseTDDDRFb+gQco+1JRolEB+0j/6Ns=;
        b=Xujcbl+IqMWPcSzI46cvSD12B6BcGIa9JXxImueJvq2TBENMipfgk9SNxJcvcx9Fil
         wZ99XsfAbwhptktJod/SNi5XBCKONRC+9Tkqb+1af0kEoAwjCKJI6abINe/RfjgaNUJ8
         sN3+/Z3OpFwdSieqFHAj/JJ0VgZCjcj1N4bnCviJJhf0uoU3S3G/X6azdOZZueyrR6PL
         2fBwmXcPSn5spGgK50AJx1yXv0uNgwSxv+fwH2WXI/ztwHAGFTo4qAdfy6opZR7qQ6zh
         aTH4L85zPpjSRDg5u7kEKFKil9Qi7r1txtS8io9LI9kvbKN+Sh52Tmg3BnHUIb6aQVUF
         bdAQ==
X-Gm-Message-State: AOJu0Yxwkcmk2FmFwZ5fphAQST+Lw9kUzPElrEIOFiYJd4z8XjPoBX/r
	Ej4gfOkbxgSmIQf8f/gjRhd1sFVBJGQ8aISdgC2Mk+tvH3v/+38sbEYS1g==
X-Gm-Gg: ASbGncsElkqjVXSLepmz8f7LrsSMgNm9dyIkRrRRHsyquO4NXmb61y/pymsAtKV+eSX
	zyMLluX8vXz4syRj4jx50Dl6CQYxldKWOT/iVZY5DbwYtVw06mjfl3VjVCEyOLF/bA1uQyGFdOc
	70++eiI8mtWhARYua2kClzZH2sOewQusty8HMLjrA4D4V2R+216ZYgQZltT2u4M9Tpc0G2w/L1J
	R+y61tkuSIgX5hGeNuEYlLlIo4kvjau6RLvjmVgyCjLU4q9fFwkt/7thf5i9ho9kmkVZs7sd11e
	ZaBFEvM1qbG3DqKF5IptAk24W21RZl/Nb+ytHDd7XF9sNd3uE+z212MeZas3FsTF1iY=
X-Google-Smtp-Source: AGHT+IHM3s8ecHodCd6wiDZDLAekJqrLdFvipxcv0LX/Zf35D5AJU67nK9ez/bmJtNfdmuycWLcGjg==
X-Received: by 2002:a05:651c:220f:b0:2ff:56a6:2992 with SMTP id 38308e7fff4ca-30d6a467c18mr30386611fa.37.1742462071240;
        Thu, 20 Mar 2025 02:14:31 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f0d1bb2sm25999691fa.4.2025.03.20.02.14.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Mar 2025 02:14:30 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 20 Mar 2025 12:14:14 +0300
Message-Id: <20250320091419.42095-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20250320091419.42095-1-eagle.alexander923@gmail.com>
References: <20250320091419.42095-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250320_021433_785458_D4ACC103 
X-CRM114-Status: UNSURE (   9.54  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/7] ARM: at91: xload: Replace magic values with definitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-at91/xload.c | 21 +++++++++++++++++----
 1 file changed, 17 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-at91/xload.c b/arch/arm/mach-at91/xload.c
index 4e7e80379f..fee2c715ec 100644
--- a/arch/arm/mach-at91/xload.c
+++ b/arch/arm/mach-at91/xload.c
@@ -40,12 +40,25 @@ static void at91_fat_start_image(struct pbl_bio *bio,
 
 static const struct xload_instance sama5d2_mci_instances[] = {
 	[0] = {
-		.base = SAMA5D2_BASE_SDHC0, .id = SAMA5D2_ID_SDMMC0, .periph = AT91_MUX_PERIPH_A,
-		.pins = { 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 13, 10, 11, 12, -1 }
+		.base = SAMA5D2_BASE_SDHC0,
+		.id = SAMA5D2_ID_SDMMC0,
+		.periph = AT91_MUX_PERIPH_A,
+		.pins = {
+			AT91_PIN_PA2, AT91_PIN_PA3, AT91_PIN_PA4, AT91_PIN_PA5,
+			AT91_PIN_PA6, AT91_PIN_PA7, AT91_PIN_PA8, AT91_PIN_PA9,
+			AT91_PIN_PA0, AT91_PIN_PA1, AT91_PIN_PA13, AT91_PIN_PA10,
+			AT91_PIN_PA11, AT91_PIN_PA12, -1
+		}
 	},
 	[1] = {
-		.base = SAMA5D2_BASE_SDHC1, .id = SAMA5D2_ID_SDMMC1, .periph = AT91_MUX_PERIPH_E,
-		.pins = { 18, 19, 20, 21, 22, 28, 30, -1 }
+		.base = SAMA5D2_BASE_SDHC1,
+		.id = SAMA5D2_ID_SDMMC1,
+		.periph = AT91_MUX_PERIPH_E,
+		.pins = {
+			AT91_PIN_PA18, AT91_PIN_PA19, AT91_PIN_PA20,
+			AT91_PIN_PA21, AT91_PIN_PA22, AT91_PIN_PA28,
+			AT91_PIN_PA30, -1
+		}
 	},
 };
 
-- 
2.39.1



