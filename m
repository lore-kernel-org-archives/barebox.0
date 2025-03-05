Delivery-date: Wed, 05 Mar 2025 09:30:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpk93-00A72W-2G
	for lore@lore.pengutronix.de;
	Wed, 05 Mar 2025 09:30:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpk92-0004Gn-HV
	for lore@pengutronix.de; Wed, 05 Mar 2025 09:30:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RSdMQdNOvltxwGqjUGciaF2CYzuTGinNnq4T0Ku0on8=; b=3nR1nGJhQqH/JtkKb0GQCh709c
	XibI40zj70uKuDWou6ZeLKTDLIIoZuoE7fLHFW04GEvkrkCjqzKFao9nS6Yd9NnV9zNihkFFIeXpj
	xzwG3XFS1hk9jZStRZlHW80cmoU6gs3bO0ba7Yv/TQ/8wKuLVw+zDOoIPEF59LOcBe90sLvh3Fg8a
	/NdGLmrZYdCZ4ZDDjtFJvHH+nCQ1SPJROBOd3ZgnYTgpnDfkUFUABV7llYb/3ApZq0tTapFevf1nC
	kGi8Zrf2udaTdZKklDwi5wrf0kxWF0+h67mjdyo95tOksHfX+M+P3fWrUmCqtUwaYFjFESUfBcgSF
	h4TwOh8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpk8Y-00000007NIh-0eU7;
	Wed, 05 Mar 2025 08:29:54 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpi8B-000000076o5-0W3D
	for barebox@lists.infradead.org;
	Wed, 05 Mar 2025 06:21:24 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-5494bc4d741so5709705e87.2
        for <barebox@lists.infradead.org>; Tue, 04 Mar 2025 22:21:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741155681; x=1741760481; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RSdMQdNOvltxwGqjUGciaF2CYzuTGinNnq4T0Ku0on8=;
        b=DgqpwcYRCxouupwfH4Rk2NLVpR6Xaak7XHFTvPxcWioXwcbvLJHNF3PHt/FbD2641O
         qhCq+rAyfiveSKQHtsf+YmEDnt3HYfWVooPHCI2SOkihPBcCDmZt//27nrgDtRsUO32K
         bckYs01CaEu7nUQ8fXMixX/+QcDlic75w2PBTViGDEwozp3MLXF4bCjSGSBBC2j5X7UG
         nEtZckQbOL7Sy7jiyHCHzYz0z1V5h7YEIb6NiAvYai8KDXUtyrCpvW47qOUGGtkf6BOR
         yWJqiM6QF3hljaF8eymjOSGBt3Yca4XV1xXuC32jF82vpyAJbGJ/nu7MXsLsOUui5++m
         hHmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741155681; x=1741760481;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RSdMQdNOvltxwGqjUGciaF2CYzuTGinNnq4T0Ku0on8=;
        b=EEIBazsKOogSaIufJqfDdARX+kRMBsbdjVQLjpN7qojriEPlluminH45lZugz9vRgP
         BR806iBMHWoI4+cFrxK0RaioB6a0JXaldHiQdIrs+BY03845d1vlv6w40QPihPK5QpcE
         JZJTjTBnbzNmCRlvnTGwPpNdQvk8mbsBiniOQWcl5NexMjvhB2x9lZv8PsfXsmpWSKOU
         kE5rTWCYP/w7oHzOrEJJ03PdepDagXlrtOR2R7BzNJhZfYDz+p2MXYi+PFkMNUKJH5lo
         oa6YXm8Mb2yOB/06hmY4Vm5/WJq9ttQYoS9uYyTqXWCf5E6zObUfayWqyIaX07V9gkSP
         XH5Q==
X-Gm-Message-State: AOJu0YyzGfBbzFbsgy0eYctVZRp1eIv6dSP9uyrwgrg0oh7pO/JehBT9
	t6xDAXxXj8x4JGGM/IBA4vPFxidypbjHcUcoMs0dcgNZqbadtcNIfatKJxD21Mo=
X-Gm-Gg: ASbGncu7vdsc8SJOCr7eslQq9winkvQPti7DUSWh11zqq5aHFdmGF4jeuRN2d9rQl/s
	xKvs+HSMmjuTj8QJVOTqW6wvCdPPscfj/THU036eg/IkZ2/I7b4cuT69xMBdg7EReLxhfEQQgJi
	7ZF/BmviMQZ//MjFHiqJsQ7vJc4jzWG2l10wKXk8eNi0eNG6vSnZhnImMSIvR7uG3bWA4ahJU9f
	9erGIQh9QZTPPuuiGOPB9qOTQX2K+3p9vWTcgnqVpnZGfcD+onb7mxLnmnqh2ef2Vky8RMeY3QB
	Elwo+SIz6236vn8jBfQZ77feUFTWoBQqq2dMbbWRMcBiihyJepoabv7WZa1z1BWO1Pc=
X-Google-Smtp-Source: AGHT+IHBdCoLzFlkbQqYR1lorMzbF8ZigzzbmkGcZ/+orp+A6vlz3jM6IRYb5TVGWKIPt3Q294SDxw==
X-Received: by 2002:a05:6512:eaa:b0:545:1da8:39e7 with SMTP id 2adb3069b0e04-5497d337cfbmr784643e87.15.1741155680459;
        Tue, 04 Mar 2025 22:21:20 -0800 (PST)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54973942f2esm526279e87.58.2025.03.04.22.21.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 22:21:18 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed,  5 Mar 2025 09:21:00 +0300
Message-Id: <20250305062101.25588-3-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20250305062101.25588-1-eagle.alexander923@gmail.com>
References: <20250305062101.25588-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_222123_161341_AC574E58 
X-CRM114-Status: GOOD (  12.27  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/4] at91: ddramc: Trivial code cleanup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Trivial code cleanup, which includes:
- Adding/removing blank lines for better code readability.
- Wrapping the of_compatible driver property in DRV_OF_COMPAT().

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-at91/ddramc.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-at91/ddramc.c b/arch/arm/mach-at91/ddramc.c
index ca77889ecc..ffedd39d6b 100644
--- a/arch/arm/mach-at91/ddramc.c
+++ b/arch/arm/mach-at91/ddramc.c
@@ -22,6 +22,7 @@ static unsigned sama5_ramsize(void __iomem *base)
 void __noreturn sama5d2_barebox_entry(unsigned int r4, void *boarddata)
 {
 	__sama5d2_stashed_bootrom_r4 = r4;
+
 	barebox_arm_entry(SAMA5_DDRCS, sama5_ramsize(SAMA5D2_BASE_MPDDRC),
 			  boarddata);
 }
@@ -33,6 +34,7 @@ void __noreturn sama5d3_barebox_entry(unsigned int r4, void *boarddata)
 	barebox_arm_entry(SAMA5_DDRCS, sama5_ramsize(IOMEM(SAMA5D3_BASE_MPDDRC)),
 			  boarddata);
 }
+
 void __noreturn sama5d4_barebox_entry(unsigned int r4, void *boarddata)
 {
 	__sama5d4_stashed_bootrom_r4 = r4;
@@ -54,7 +56,7 @@ static int sama5_ddr_probe(struct device *dev)
 	return arm_add_mem_device("ram0", SAMA5_DDRCS, sama5_ramsize(base));
 }
 
-static struct of_device_id sama5_ddr_dt_ids[] = {
+static __maybe_unused struct of_device_id sama5_ddr_dt_ids[] = {
 	{ .compatible = "atmel,sama5d3-ddramc" },
 	{ /* sentinel */ }
 };
@@ -63,7 +65,6 @@ MODULE_DEVICE_TABLE(of, sama5_ddr_dt_ids);
 static struct driver sama5_ddr_driver = {
 	.name   = "sama5-ddramc",
 	.probe  = sama5_ddr_probe,
-	.of_compatible = sama5_ddr_dt_ids,
+	.of_compatible = DRV_OF_COMPAT(sama5_ddr_dt_ids),
 };
-
 mem_platform_driver(sama5_ddr_driver);
-- 
2.39.1



