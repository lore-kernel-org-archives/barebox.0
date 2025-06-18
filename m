Delivery-date: Wed, 18 Jun 2025 08:38:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRmRI-008WfW-0r
	for lore@lore.pengutronix.de;
	Wed, 18 Jun 2025 08:38:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRmRH-00038I-FT
	for lore@pengutronix.de; Wed, 18 Jun 2025 08:38:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fXldkuEmuoV7z/Eg26/YrylCj7iwqXKAGRHlOg5KFxc=; b=S6RiczhIiy3flYppWp3z2lNX8x
	xiGncaScQCl97B/7jKUYMqsLNMYLPCNA9emXXlkKvHKb1lGeMTIbHEoYRPChzkHsS2cTx2YYmvJh+
	k/aE7DkEvt0DLNxNG6OuYuTxIZ3EjRqyrIEfJHvgDJzT8DWtaKU7LwaVqLr8IDI7wHoxtg3EeJoyi
	H9bBL2guQbhLoVMax829RBVsEaTDpgyIhcNvKwwMzBVilWSY0f4O5mloYKZ9NYDDhzvu7pzTnwjwz
	KbWmm3m7OHf62sj7Yogwzlv2ADFiEea0Phi0cN112kic0a6f4ma0I2BAZiLhVZoUyl1DAmqbcy9pa
	I50UgUkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRmQk-00000009BvS-2pAg;
	Wed, 18 Jun 2025 06:37:54 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRmPD-00000009Bji-41l8
	for barebox@lists.infradead.org;
	Wed, 18 Jun 2025 06:36:20 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-32b78b5aa39so8644051fa.1
        for <barebox@lists.infradead.org>; Tue, 17 Jun 2025 23:36:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750228578; x=1750833378; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fXldkuEmuoV7z/Eg26/YrylCj7iwqXKAGRHlOg5KFxc=;
        b=U4NFLyI1ehX2htixbOgLxF81SE6vxgtncmJw6bSXuwil/dTOSrgVrRw3X6Zpb7NUYr
         A0Dfdns5/x7s/Uy3qBsSzCK1y1/NBQ4H+QCunfnWtD1t7cxV9rJleFo4svkSj90CTm0F
         /6MV5eOUXDbHcAId23Mv65FuMK2UQtmpft8rydDoLK7kq1dD8Swa3sixzhmdmERg5gls
         z3LSpHLD4CdBF3S7DIb4dAhCL9lF7qBCRhB1kg6OJXXBZ9a8KUVgggkgPuggfAwIsLvo
         37bmtsx57+sxDtcgCaN19Ulrtms1SgN1GkLkgaviMQ3DcRQDfTzAiExu2g3nXuxYH4iB
         MMxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750228578; x=1750833378;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fXldkuEmuoV7z/Eg26/YrylCj7iwqXKAGRHlOg5KFxc=;
        b=lvIV64BHKRJJQRSqhjQyk+j3TdnCs0zfp8Ra8ET2MmDNZixEeTKGnHzG7+UT0oYMTg
         Avi7AkjDJKGGXH+fNVcA9QBZfkbjiVSkcG31mkuBlwHw75jL2NiOGF6Y5slLMfYYEE24
         uqM1s5h1DB6b3LZpCrkq21oghUtPrbirRUVaah6SBiF/gLxtmbavL9ZQyvWIXKem/1T9
         EuJHwjtFTTkQaX3lybqOfISgaYdKN1bNYH9GZ8W+8rmGn+w4bR8gLMbKiKsamXTC9Hjw
         azY7hmP4UkeWtvxm5VzjUWruV3arlNngae0bt0J2ug/K8zjVd2N7RNZltoHHLHOQ1xjw
         GzIg==
X-Gm-Message-State: AOJu0YzgpCaQT2uOjNWV8DhPN3Yo9+jacqqCLYZ/ovUS005gesDYIs4g
	6VTUmEE65r6dQ1ugZnlTe1pbHVd9nieF+ulzOqlwQIpuaGUhNIoU4oYJ3w7e2g==
X-Gm-Gg: ASbGncuogxj3HhXM6yDh6AWVlnQPfGQqsGrX362ywbicR9v499Bx+qPjB2nhLzEYwoF
	dHS0LipSwU1JMbdf7okKJMpuxoZh/XV7A+q/+G8BeVg7Q185rtA1UqLbzftkZwdWTeYDcl8prq4
	Wg6O8eo4chZLwp83W9xiFtyfe8XYC0NSz3TN16G0XBdadCsXqMv9uetZD2+wvRthrmyMNcU8iTj
	KfhSPJmmgwn8IxlrmD5sWniTqafcejHMFmO9qb5aAkyNTPHwbvWYpMFEi9B9X1QcBsVef//Udbz
	AMJ/uC4aWDm5pXoAG+5VYHQaeoujXgXYG/gwMj6XUxd8e4uRRG2ReWyLI6FNFHbD0YSjXZKvuSR
	hr4ThbRZXdw==
X-Google-Smtp-Source: AGHT+IFd5mr52sLZNSgfd6vfEL43wY3I08A592TuKiy7Q9MYa66TdRhvE72azkR88MzPvb4wh37YNw==
X-Received: by 2002:a05:651c:2205:b0:306:10d6:28b0 with SMTP id 38308e7fff4ca-32b4a2d7b63mr47627321fa.1.1750228577790;
        Tue, 17 Jun 2025 23:36:17 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32b3c7decb8sm19038121fa.49.2025.06.17.23.36.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 23:36:17 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 18 Jun 2025 09:35:51 +0300
Message-Id: <20250618063552.23777-4-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20250618063552.23777-1-eagle.alexander923@gmail.com>
References: <20250618063552.23777-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_233619_996677_3FADBB4D 
X-CRM114-Status: GOOD (  10.91  )
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
Subject: [PATCH] ARM: at91: setup: refactor SoC subtype detection with switch statements
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This patch replaces the series of independent if-statements in
dbgu_soc_detect() with a structured switch-case approach for
better code organization and readability.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-at91/setup.c | 24 +++++++++++-------------
 1 file changed, 11 insertions(+), 13 deletions(-)

diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
index 708c946192..e8d45c30dd 100644
--- a/arch/arm/mach-at91/setup.c
+++ b/arch/arm/mach-at91/setup.c
@@ -102,7 +102,8 @@ static void __init dbgu_soc_detect(u32 dbgu_base)
 
 	at91_soc_initdata.cidr = cidr;
 
-	if (at91_soc_initdata.type == AT91_SOC_SAM9G45) {
+	switch (at91_soc_initdata.type) {
+	case AT91_SOC_SAM9G45:
 		switch (at91_soc_initdata.exid) {
 		case ARCH_EXID_AT91SAM9M10:
 			at91_soc_initdata.subtype = AT91_SOC_SAM9M10;
@@ -114,9 +115,8 @@ static void __init dbgu_soc_detect(u32 dbgu_base)
 			at91_soc_initdata.subtype = AT91_SOC_SAM9M11;
 			break;
 		}
-	}
-
-	if (at91_soc_initdata.type == AT91_SOC_SAM9X5) {
+		break;
+	case AT91_SOC_SAM9X5:
 		switch (at91_soc_initdata.exid) {
 		case ARCH_EXID_AT91SAM9G15:
 			at91_soc_initdata.subtype = AT91_SOC_SAM9G15;
@@ -134,9 +134,8 @@ static void __init dbgu_soc_detect(u32 dbgu_base)
 			at91_soc_initdata.subtype = AT91_SOC_SAM9X25;
 			break;
 		}
-	}
-
-	if (at91_soc_initdata.type == AT91_SOC_SAM9N12) {
+		break;
+	case AT91_SOC_SAM9N12:
 		switch (at91_soc_initdata.exid) {
 		case ARCH_EXID_AT91SAM9N12:
 			at91_soc_initdata.subtype = AT91_SOC_SAM9N12;
@@ -148,9 +147,8 @@ static void __init dbgu_soc_detect(u32 dbgu_base)
 			at91_soc_initdata.subtype = AT91_SOC_SAM9CN12;
 			break;
 		}
-	}
-
-	if (at91_soc_initdata.type == AT91_SOC_SAMA5D3) {
+		break;
+	case AT91_SOC_SAMA5D3:
 		switch (at91_soc_initdata.exid) {
 		case ARCH_EXID_SAMA5D31:
 			at91_soc_initdata.subtype = AT91_SOC_SAMA5D31;
@@ -168,9 +166,8 @@ static void __init dbgu_soc_detect(u32 dbgu_base)
 			at91_soc_initdata.subtype = AT91_SOC_SAMA5D36;
 			break;
 		}
-	}
-
-	if (at91_soc_initdata.type == AT91_SOC_SAMA5D4) {
+		break;
+	case AT91_SOC_SAMA5D4:
 		switch (at91_soc_initdata.exid) {
 		case ARCH_EXID_SAMA5D41:
 			at91_soc_initdata.subtype = AT91_SOC_SAMA5D41;
@@ -185,6 +182,7 @@ static void __init dbgu_soc_detect(u32 dbgu_base)
 			at91_soc_initdata.subtype = AT91_SOC_SAMA5D44;
 			break;
 		}
+		break;
 	}
 }
 
-- 
2.39.1



