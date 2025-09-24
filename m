Delivery-date: Wed, 24 Sep 2025 17:03:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1R22-000bOT-2Q
	for lore@lore.pengutronix.de;
	Wed, 24 Sep 2025 17:03:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1R22-0006WQ-6K
	for lore@pengutronix.de; Wed, 24 Sep 2025 17:03:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=v20t+9GkFLMJqMRmFiznb6Nzl0PUAj5j4hRwVhC+WWU=; b=FNqnS4DfMqrCh1RnDbUbd2ESRt
	UCBaZ9jOddeu3L20OhdZP59dBWvyOn+Du75RIubLml0NZDkkbsa6vOqsJ2Qk130paxX9ifg7Lybkb
	Fopm5E7FtHZMunaE3NI9dXG5mkDWh4HlD3QriLzXJBRdtW/H97ViE9woLoe9Cg6lY9auf3RkpjUYn
	zFtOzgcw8u6M9RiZRntMN9LZgj9y57BpAOnUIO7/Ip0/yQBqwGxk0d60V0OPeigBdngKuBXzpo9dz
	oF+MHOqaBHpxYlYrIGBdF24YTusRixMZu1JJjyvvN6uN5y3iPCz0a+ipzoi4AHzUlx9L2PLOaaKOq
	R2ONOB1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1R1L-000000011Qt-47ra;
	Wed, 24 Sep 2025 15:03:03 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1R1I-000000011Nm-3DGw
	for barebox@lists.infradead.org;
	Wed, 24 Sep 2025 15:03:02 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-3652d7800a8so43715411fa.0
        for <barebox@lists.infradead.org>; Wed, 24 Sep 2025 08:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758726178; x=1759330978; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=v20t+9GkFLMJqMRmFiznb6Nzl0PUAj5j4hRwVhC+WWU=;
        b=awg2KDuaQzcirMbmIJOY3IcBErRLC0YLsQfXlbE/yOTI+291KA4P0A/iOqYNLwo/fu
         /yGTlLQLJMOPpXN4dE95luDa4m6fDReLLdQopcR4hyFOtgr/5wbFuNoX/UUGZTIHI3+F
         JhsWXJ5d1nikdSqAXmM+qqy7qD0BDmXcdJ1jEp0AgPi2fNXmPKiG0RCD29hsyI7z5K2h
         0zOqobaiRyWR3uZH6TumWQl/sKAR8rWCd5odpUIfi1yNvrWLfyK9LnBsHCnOKYiajJFl
         cpHUir4Dkrc7UUEDpo67SyAXT2GwmRYIxlepeD8TJPKJA2WSNTSPpZlG/MD8eYZnTpeH
         eCVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758726178; x=1759330978;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v20t+9GkFLMJqMRmFiznb6Nzl0PUAj5j4hRwVhC+WWU=;
        b=MqSYhpvfcaz+DynrEmUZq5Ki5DRZ8xqH9nfosG0/K/POuiPFMK+qvYuR0lIx77q9kT
         Da1Wq28v66d2y4TeAIXU3q2TD1Ajz4AaPSMaOiWyhAODY5a9RiLkHKdW2Os4eICmUikS
         1ahM0Y3KGvavSjlARkEUJJjO+gb6ZeiRchFOEBJqT6jl1j3h3oUbnFCZveWPi80/q+GR
         WBFOxftnMGdQxHdkCPAsATkqKU+ZIafr2Am3zrB2N6tWUMGJ/p9iyVKudiICXeQGizTP
         Qa9vTYyc5FrHmPeyCndFZ5NB0n+FGkzlJcrv2uV82aFLSacLswhXTvKbfFnzYeF00W5V
         nK0Q==
X-Gm-Message-State: AOJu0YyQ+YMuSrYjqBxTzWAS/zKKMLRKkjL9NinVLQfIDpHtT08TK62C
	/Xn3rjzZAYN8b7zZIfamBse/c24UtrhTsTfX4n3fHynl2Z/TmKny3yVNFuli7w==
X-Gm-Gg: ASbGncvv7a343Q2M9MR0ZCTJDwbW63PZcbsSF3DN8Mu9h50haeNXLgzqssWTkUp0n6A
	jn0Vt678dsy1u+7eIB1Kctu9Ozl+hB5R1skV+RZ9HHAxsxD1YWf5MZoGSe+iopifjDDo8zbDMKV
	sovNjunuEw9QLHJFMz5noKKtg1/NzH1ivNmSQ6KZaP+1EmFzJpFcvtGIj7yd5dxEp1erZ8iVOBB
	CeyDQAOQE5wWoq6AI8bTEfvGWge6QydmW2f029xWqcZfWO4ljpxbc+RebOG+Zq+aI2gbsc3Ojr8
	E61Glzn0h9Gi6p8TLXu9fuXQgTRgtFCcAst+KtxJ0J23YdILMLAJGnHtCU2//71IIzgscLda2hl
	9xu5re3/Cx+7wad0EADWnbLTm1BOhJZqcCpfSAdrpwZCzzGmgCPzd15qOAw==
X-Google-Smtp-Source: AGHT+IHQUZyWlHzb8iOG40aHlOKOhLsC9Zw0UitsEC4Jg3U8R6uXKhco8nH3Ke21PxPazR/l/J1iWQ==
X-Received: by 2002:a2e:be1c:0:b0:336:9c43:3362 with SMTP id 38308e7fff4ca-36d14ad9cf4mr20922621fa.4.1758726177668;
        Wed, 24 Sep 2025 08:02:57 -0700 (PDT)
Received: from localhost.localdomain ([95.161.221.172])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-361a28b6c1esm45668561fa.26.2025.09.24.08.02.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 08:02:56 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 24 Sep 2025 18:02:46 +0300
Message-Id: <20250924150246.381179-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_080300_812553_FCF8F7D2 
X-CRM114-Status: GOOD (  11.28  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] clk: rockchip: Drop empty init callback for rk3588 PLL type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Unlike PLLs in previous geneation of SoCs, PLLs in RK3588 type don't
require any platform-specific initialization. Drop callback
rockchip_rk3588_pll_init() that does nothing in fact to clean the
driver up.
This change is taken from the mainline Linux kernel.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/clk/rockchip/clk-pll.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index 64f9e0dc5e..904d70d5d4 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -1021,16 +1021,6 @@ static int rockchip_rk3588_pll_is_enabled(struct clk_hw *hw)
 	return !(pllcon & RK3588_PLLCON1_PWRDOWN);
 }
 
-static int rockchip_rk3588_pll_init(struct clk_hw *hw)
-{
-	struct rockchip_clk_pll *pll = to_rockchip_clk_pll(hw);
-
-	if (!(pll->flags & ROCKCHIP_PLL_SYNC_RATE))
-		return 0;
-
-	return 0;
-}
-
 static const struct clk_ops rockchip_rk3588_pll_clk_norate_ops = {
 	.recalc_rate = rockchip_rk3588_pll_recalc_rate,
 	.enable = rockchip_rk3588_pll_enable,
@@ -1045,7 +1035,6 @@ static const struct clk_ops rockchip_rk3588_pll_clk_ops = {
 	.enable = rockchip_rk3588_pll_enable,
 	.disable = rockchip_rk3588_pll_disable,
 	.is_enabled = rockchip_rk3588_pll_is_enabled,
-	.init = rockchip_rk3588_pll_init,
 };
 
 /*
-- 
2.38.2



