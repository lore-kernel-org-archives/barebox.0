Delivery-date: Fri, 07 Mar 2025 12:48:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqWBp-00Azsf-2T
	for lore@lore.pengutronix.de;
	Fri, 07 Mar 2025 12:48:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqWBo-0004eC-Kg
	for lore@pengutronix.de; Fri, 07 Mar 2025 12:48:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZyDIL7UuLv10UU5lkcIbbfrBqvqPXXsnNOHc2J6shog=; b=oYrSank01NajaME+DiXyTijktE
	s8XuF8BFOMl5EbMfiC/JrKKUJb/3a5PNGPcAyuvIbstSAy/6mbv+d0yF8tO8guHdEA9+8GoSGPgb9
	SqnzUFirRtOJSXVJdOklnJ/tqgyzGh7OpMvuOKIPvsKkGthRm+citIG90goMBaseYBXUd67YJL79q
	Kq6RY7j2H9rbWSf4TBDpiClAEdIK9MOonj9nBgUz5gZq1PulMJMz2ytslKwjM/SCSAEmy+n1rmTPI
	hcndduXO2TcWgGfUL7Tw5qoj0gjnWarLlomC6lAb1PX5sYqfaT6dmPC6Ykce7Q4iKpbt3CGyPOg/H
	aonZnOCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqWBK-0000000E5nu-2rW4;
	Fri, 07 Mar 2025 11:47:58 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqWBH-0000000E5nY-3grf
	for barebox@lists.infradead.org;
	Fri, 07 Mar 2025 11:47:56 +0000
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-3061513d353so18926911fa.2
        for <barebox@lists.infradead.org>; Fri, 07 Mar 2025 03:47:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741348073; x=1741952873; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZyDIL7UuLv10UU5lkcIbbfrBqvqPXXsnNOHc2J6shog=;
        b=etnBWRmTJ/1zvKdNd6sxyhyb+mlBomcJBDQq61auOrRhby/1gQug6TmbTTcg2gpZDJ
         3ITI7BjUxbIesYfaQPBkQpLxoO141o/0SBLktkeyowSj9HPlZ+2AzGgK/ASggd33BWET
         s4mCuKXoI3v2TBOW2H7QXWwHwiOinpo4UEWFtyh8XwQ3jy4em0EQAps8Q+M3FBZKtRWA
         qmfK8feTnt12kl/Bgh1nWZkd4AQXSLdox5Ev0wB6YkFSq6Dm1Gi6hkFT748n8k82VIXT
         nsdAij3uYJ7LWHqyL/RW0jqUi4ENV1kmenxqihkhn59rSbMrIhY52tWBUzNXm+HH7FzV
         e1IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741348073; x=1741952873;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZyDIL7UuLv10UU5lkcIbbfrBqvqPXXsnNOHc2J6shog=;
        b=Fzml/9g65riUNmdRLW8v5fP7kYdcSDWgYCvIsv5p7yLEtkgbvvNu/6UCa3zgD5DAg1
         Gicv73N+ah+bHAHWvPRpYiBybCcypJlW/d/ZrStKzj0nsgjtPBoW3esL2v3GbbWtempJ
         a8dChNcV/XmZnDJZD+MhzJhd6acWtQMJAMouLpDnSrZ2vJquES9S7hkIz53in/QmdX/x
         5O63vwwp+6J7I0KeeTceE9shN8MDyhA0PxPfZhMa+NWmBm6CbkQpKmer0DWwFO0r+zlk
         9twECD/8XDSzplbV9PvMwKDuT1kQDtveqDSrqkDaW2YfY+Z3M/rDGRTyODTXutUgVic2
         YciQ==
X-Gm-Message-State: AOJu0Yzwh7FEQUlSlfDwDemdqhkkDW9Wjl2EH7L4EZsm198r10nXlaDI
	QTLXcOkaNLz8tFQeQ4/vBmg24goPIbMdufPP3MrJRj+M0TdzPWb+fWCYtg==
X-Gm-Gg: ASbGncsivO6XVu3+ez2k/6A2wmC9SVu8ZmsxTXdgArVuvfnA1PnBQn9jaCntDqM9ZRy
	RYhtiVLY1mYr1rflaW5D3zRggkYMgFx67ugCc6R0+anQgn16h2XEO1E2HH05vNlropZYn+v56i3
	K2igpB91xAlskTNFET2+eecDPSKgKwiA8AfApSr8CO0uSVsMgBdqs1pjBkgOKqoJfSP1esqiQgg
	A1ToSoOvGhzjWcqJABsJr+lWM2H63kFBKXhIlWr0apwRc4LaG1RdTfY+gfM6U/f9n+vrbVBpzcB
	VD/yrZV5qiLuSmeRiuStTWs+i4RaSbPfVJq1m9YY0ryvem/i1YYnMXIsTGmWduVD+lJUBg==
X-Google-Smtp-Source: AGHT+IHC+As5E9u04d6+n2DQ+jUU6vHMfQA4QPMtEHw/fKu9C3DqpkBlKg1Cpi6KJeSPCo2C9L5DdA==
X-Received: by 2002:a05:651c:1546:b0:308:efa4:d277 with SMTP id 38308e7fff4ca-30bf451a693mr11329991fa.15.1741348073220;
        Fri, 07 Mar 2025 03:47:53 -0800 (PST)
Received: from localhost.localdomain ([95.161.223.108])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30be98d08a4sm5190701fa.7.2025.03.07.03.47.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Mar 2025 03:47:51 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri,  7 Mar 2025 14:47:39 +0300
Message-Id: <20250307114739.3680956-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250307_034755_919260_146ADBA7 
X-CRM114-Status: UNSURE (   9.83  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: at91: Remove SAMA5D2 handling from sam9_smc driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

SAMA5D2 SOC does not use sam9_smc driver.
Let's remove handling of this SOC from driver code.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-at91/sam9_smc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
index ef58a0153a..257d7a07c3 100644
--- a/arch/arm/mach-at91/sam9_smc.c
+++ b/arch/arm/mach-at91/sam9_smc.c
@@ -14,8 +14,7 @@
 
 #define AT91_SAM9_SMC_CS_STRIDE		0x10
 #define AT91_SAMA5_SMC_CS_STRIDE	0x14
-#define AT91_SMC_CS_STRIDE	((at91_soc_initdata.type == AT91_SOC_SAMA5D2 \
-				 || at91_soc_initdata.type == AT91_SOC_SAMA5D3 \
+#define AT91_SMC_CS_STRIDE	((at91_soc_initdata.type == AT91_SOC_SAMA5D3 \
 				 || at91_soc_initdata.type == AT91_SOC_SAMA5D4) \
 				 ? AT91_SAMA5_SMC_CS_STRIDE : AT91_SAM9_SMC_CS_STRIDE)
 #define AT91_SMC_CS(id, n)	(smc_base_addr[id] + ((n) * AT91_SMC_CS_STRIDE))
@@ -28,7 +27,6 @@ static void sam9_smc_cs_write_mode(void __iomem *base,
 	void __iomem *mode_reg;
 
 	switch (at91_soc_initdata.type) {
-	case AT91_SOC_SAMA5D2:
 	case AT91_SOC_SAMA5D3:
 	case AT91_SOC_SAMA5D4:
 		mode_reg = base + AT91_SAMA5_SMC_MODE;
-- 
2.38.2



