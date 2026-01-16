Delivery-date: Fri, 16 Jan 2026 20:43:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjW-0024R6-0m
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 20:43:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjS-0001cW-Lj
	for lore@pengutronix.de; Fri, 16 Jan 2026 20:43:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2NeP7B4sF7C4BtlmUpJ42JxGFA5nNXGebLBGSy+YRxE=; b=QLygPTzmKUwjvdgUtXm1j7M/A/
	7ldgoUEqWVP0Sx64UKGgFdcVCdCd5ru+MmAwrh86UGA9RWF+e/fsKmRC94HtMBMhD5V4FbyBQSWCA
	giYv06WNZJ3dJsm8A4Kz9Sz2o/V4Cj7uTLzOqXoXXURyafLkpRXAVxTJQQhMXuvj/ORU/GcRyCWVH
	RT3VBFuGYKOi0lR9bpqQJ2jTHLgTvJQt6wg1eQxMVM9bRgVxwu7PVvahtR5LKDIF1vsxP3XrFlXAQ
	Zao3B0D3/jKLnPR9ReK+Kp6Cd+7Cy7nR0YibqS2iC1pkdyxC+tcvlbaC8oTEEnTxaoRgupnhlL6jP
	orZ/kMsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpim-0000000Ehw1-396F;
	Fri, 16 Jan 2026 19:43:00 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpii-0000000Ehns-0ksU
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 19:42:57 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-b8715a4d9fdso313566566b.0
        for <barebox@lists.infradead.org>; Fri, 16 Jan 2026 11:42:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768592574; x=1769197374; darn=lists.infradead.org;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2NeP7B4sF7C4BtlmUpJ42JxGFA5nNXGebLBGSy+YRxE=;
        b=KBikBqEg0HTs2EmnoJ5xSJ2AJGiwV9Ees8Obn2Y8ftgqRprs2+NjBwIHdYj67qoWe2
         r2rtwFvYoHiA3TSmJFtNCGuQRg/X/0m6OmdWVrRaqt4wkwsoefmpcHVdvAhMJn68tfJG
         U7jXfMM6EhKGOI/fRo/PO0lNOleSFaA1EoF4ZOhnT1rcHV05R751Cep6P0cLTnOXeIj8
         KHIpLmfEqhAlnyKAKP9J8/88m0IfF+b+cQKB39BNbJipumLVB+EHDRjePM7PRi64r+uY
         foSsvgoqknODQQuMO1RU6iGL8F45w1L+JAzqmo8cdaTXuH7TWe9oFVSdDXLCbPboglSP
         0PCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768592574; x=1769197374;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2NeP7B4sF7C4BtlmUpJ42JxGFA5nNXGebLBGSy+YRxE=;
        b=uL4C8TXVl3ZfBb+B63e00VPo3+vXH2+zM+nHg2426LdDxIUPSmCmb+SojfviLgKzxX
         x7Ib8S7yrGVVjuhRruGYBYNEEOjz3tqJtvrIjET4JW+MsNk56nF983QbMzolXAwveNSf
         ytls4U4OYP3+oHlihaHOqpJgnV6VabLwUXUawCWeoLg4VqqUKyt4NV9Z+xIK0iBusHA5
         Hpk63bMJCOE4xkvHqQoLJqwU3HDT7VHvBpblrlBbiSvkIJnfKKN3wGPlCkL5jQ1sBI1x
         olpD7fTw2ozrcJ8StC7FE5t+UH7L+YdMcDp9BZTlBVQ0aWtnOQmNHnELz3sohbr9xg1s
         Q39w==
X-Forwarded-Encrypted: i=1; AJvYcCVXHEH8mdcpsd9df31YIVZndhw/KMsOA6IfLyeaVgd22lUJvw9zN1x/yEVrhmGolPbg8/p7uAMg@lists.infradead.org
X-Gm-Message-State: AOJu0Yw77oY/zh/6AG89rNBuoznpw7yZsJaJ/040bBSEqZ/YEx4F5hU6
	u+Gh9hau8kJbYgCWjLCVF+/bnbaxIWJgsI8PZoeHCCX+btGwJ+JA3bJZ
X-Gm-Gg: AY/fxX5+8QO0pNqRhm4sqXH3w31TOnFE+i+OqelrJOYyDymegA4BTNsU53WfnfC7FS/
	sWlR+CpyrKN6a8i9PeE2l+FfAazYKFpNKJ3fbu2JOgKGNYuVyRzTZsz3Hva5++YbLfkbYsLprDj
	TYPvOotSE/aNNpsrZbAAOeih7EwZShHpDyw3anaTr/fAB++sMxgKRKXH5aH5nCLL399Q8tiXV9j
	CDB8BfPL32sCmRWuow4agc4XYthV3Cbof0HJJfN94EOTo3TFGnPRw1EnmQmORfq2sB/0C64gPkc
	AxlYxvNc4G5L6v12SolbKm/dk13p5xSrn7OW9zoYuSmPiJdpc/ZKfko4h7LX3PZY4ypUULvCcx4
	25Q6aAJT79h1ZF0iRxKKdWMOZyL9UaSntlmeQuQGiSg02XdVdWcNb0x+IgLCNA5fRQjU+BuTzZY
	UsV0OkVhMKZZkyPdLoqEZjRcovHEVY2q+lCWqtSxPMbKRFPNCMh2TgFN98OSiisOqCCxNJjS1Gw
	VWcZHueFQAEJPRx8EoWTjLpawEJFIQ11DboaFjmmfw8UokFLoPkjlvvqsNcRevCVBib6nQLvgAx
	M2kZwokrzSljpIiOIGYAsKnnYBq9yybYtlgOMpP2cQ==
X-Received: by 2002:a17:907:e10d:b0:b87:a0df:2f98 with SMTP id a640c23a62f3a-b87a0df4c96mr172004966b.63.1768592574460;
        Fri, 16 Jan 2026 11:42:54 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-f96f-90ee-b1eb-797e.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:f96f:90ee:b1eb:797e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959c9fb0sm328166266b.43.2026.01.16.11.42.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 11:42:54 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 16 Jan 2026 20:40:47 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-barebox-kickpi-v1-13-d11fbccd527a@gmail.com>
References: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
In-Reply-To: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Sohaib Mohamed <sohaib.amhmd@gmail.com>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768592564; l=884;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=IcVyFNpafhV8IQSQG4SrTWM1KvP8AtLtFeYS/yw6Mt0=;
 b=NkE1h8Aa1M3W/+mH14WNj3QLPpmLJucJgRNNsDGz6ZORqYIBtVQi4o7d8WD5pWysyFvAxfmWO
 txUdjx9ynaHA+Mfotp5hJ2uDro5yRh9tNTjpLQRc5GTBQU2u9b5n92U
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_114256_271640_0B468868 
X-CRM114-Status: UNSURE (   7.90  )
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
X-Spam-Status: No, score=-2.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 13/14] phy: rockchip: inno-dsidphy: Add RK3562 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add RK3562 DSI D-PHY support with max 2.5GHz data rate configuration.

Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
index 5a929dc972..161c9d7c0d 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
@@ -741,6 +741,9 @@ static const struct of_device_id inno_dsidphy_of_match[] = {
 	}, {
 		.compatible = "rockchip,rk3368-dsi-dphy",
 		.data = &max_1ghz_video_phy_plat_data,
+	}, {
+		.compatible = "rockchip,rk3562-dsi-dphy",
+		.data = &max_2_5ghz_video_phy_plat_data,
 	}, {
 		.compatible = "rockchip,rk3568-dsi-dphy",
 		.data = &max_2_5ghz_video_phy_plat_data,

-- 
2.43.0



