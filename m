Delivery-date: Fri, 30 Jan 2026 06:18:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlgtT-006s2P-2Q
	for lore@lore.pengutronix.de;
	Fri, 30 Jan 2026 06:18:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlgtQ-0002Rk-9e
	for lore@pengutronix.de; Fri, 30 Jan 2026 06:18:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2NeP7B4sF7C4BtlmUpJ42JxGFA5nNXGebLBGSy+YRxE=; b=l+7dNWdWC4SPlzNIMHWIdxD10s
	zjAlwYccNTG7ajnYsVulrvUZOR062VJzBX1zVK/F/sC9IhFoizKG92Op2hj060SgLWGKEXJtMItIF
	a9GvVB6IQwHuNWbDuQJpYWkNvM769yBkifYB95icargK0l9Pa4SegWmpxaZrWk16r8bUzV1XKn0LE
	Tg4GnDeXGJiROARVGRXTtc6n/kM9UPBbjP20OMPjGynZ7WJ7yMGe9BfYO+7tSYVIPrOeLghD4tSCn
	eh819zcZt9mVi86QYcskgUTEjxDt5pNINN0v5VMldcCfbSVs5U/NgF6JrlHRdnPQBB4cbTZlCrEOs
	pigzsggA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlgsq-000000012HK-1qBQ;
	Fri, 30 Jan 2026 05:17:28 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlgsj-00000001271-3not
	for barebox@lists.infradead.org;
	Fri, 30 Jan 2026 05:17:23 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-47ff94b46afso14756825e9.1
        for <barebox@lists.infradead.org>; Thu, 29 Jan 2026 21:17:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769750240; x=1770355040; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2NeP7B4sF7C4BtlmUpJ42JxGFA5nNXGebLBGSy+YRxE=;
        b=kmKRQNryhj6leKic6fCAkRdgXDCWHrPzg+gKBAQWLYNmbCCCAwrdQVcHYS1xml7jlz
         bqtIlEqLVg73o6VEoyzRFZ5Ebi1OOOHKxy8+IxW57xZhjCKyHiqizqlniyrRApKgHSLo
         vRIFwBNs7BuFhgHBwdtiv8GVhiHIjoGN3Fb2pKrmn/1FYtxEtjZv/9PMr+giMNcB0Q5i
         3GbQ0Ijzqt9uCFurYmcz3mjG4LdZMVR4gpu/IfyWzYQ/VNLOGEJZ8Aja/rC6bHwK6fGj
         PLCYF/cQx+rpFmLkrHg0vocKazWYf4vo9fsDZSfaWUIU9dyn1OQivwYXJQ1kS/couxXe
         yC4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769750240; x=1770355040;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2NeP7B4sF7C4BtlmUpJ42JxGFA5nNXGebLBGSy+YRxE=;
        b=Ehoyx9o/O/SlQc9cgLrtcEy6R7KfvImEG1H3kk/7MsF+T8ytIb2LPyjXE6XQ/Md7jo
         4fmzDmPPlQcMymEJW/bupn5gN+DAZiRokgumfCBwhEFwNJOygDA32Zt7AJcPjI3Hzi+4
         WxBmEzH24Ev7JE105F29M85dTzP67NiZT1rpR9q7nY2yN+FCsrBEobdPzezBHTtiz8JZ
         qOiS3hZHcOI3t6tQttbatKYOTY1blVsX9ovzNMGs7iKhZskmdkvkoMGDd07s1dX+eX1v
         w+j5wKJ8ZbnGlk+KIxFfLM3tQRiB1zLI5qCxF+m6MP1leN/YU3uUJskPL2xGNFWg3lnG
         7N8g==
X-Forwarded-Encrypted: i=1; AJvYcCWG/shOn/2kHsycQ9an9kIlSq2S9NUOdu1iysz7EDT7K7KAJDB6DZPPKDoN4gS6NWhbmzS3WSAm@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7sMC9EdFKuy06XvI5drEEFhFTBTpz17P8bZamLu1oAnuciFWB
	MdhG4TOOq5VcEdINHOZtLiqGU7/D4OLSlG0grWZYVwxOyec6RDpGiJ9q
X-Gm-Gg: AZuq6aJJwKqjctaEH9dtFxMDJ6fQZovUNv4ddOq5PI0NRVFI7iwHUfU8CT9VkVb8hOD
	aOMMGzAi5Sa+gIaML/BMhNlOSQ7Ghve+YE7l6NSdXf/IrPaXjGbCCWF8wQlTKf4BDPB+kVjQ7CN
	T1ttipFnk9TKavgSi9LnH4y5bQ0JKPvSdx0XoF91ztsr6Hx7+jy2kzP6KHhiqQXmaHlXqxckaGM
	6Wn0EaBaKAJoO/mZf2wclWen/ev8ZDKbylS8m3Rnd1tN8b7SSb3l7B/Xq1uMUBGZkB+WogLQgMY
	R+Q307NnVigjYsTiHbwPJGIN7/8BWY6kzichHndj2Uoh772FV4tmcYuawFpuyQ7Sq90oC2qghzp
	vtLYFhaBMOAeQQ0MErqFuRVlx7r0lf5DJ8PyUW/sx/FUDgHpdcTe0YJzuzyUIC8AmJ8uOMb+xQf
	c7NajUGfVl/KPe2W5qb/+j2yibUGKC4eOIL/7Lq1A1k40QBcrS7EgnTtUlEAkb/mVNhCfEzFkly
	9cvOEDGQJr57AAhR+5kDQzHrXs0IeSBm6jX5pspZq9TKSxeqzUeV16TLLyrBIm68Nr9rq3XLWiO
	kH6khq56lcs2DIo5+cdrRvAB+OZCXQsRBsetkS+ryg==
X-Received: by 2002:a05:600c:4e91:b0:47f:1332:e5f with SMTP id 5b1f17b1804b1-480829b5cfamr71657835e9.12.1769750240219;
        Thu, 29 Jan 2026 21:17:20 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-ad12-b37c-7013-7685.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:ad12:b37c:7013:7685])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10e4762sm18943088f8f.6.2026.01.29.21.17.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 21:17:19 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 30 Jan 2026 06:17:05 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260130-barebox-kickpi-v2-13-d27cf94a39b6@gmail.com>
References: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
In-Reply-To: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769750228; l=884;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=IcVyFNpafhV8IQSQG4SrTWM1KvP8AtLtFeYS/yw6Mt0=;
 b=JYX9TnOvwplszaxV6V/MOVW1+zhYuTa/7Z9TMC8I2xtdde+59r2yxH2iYPkXl9kU/75z66aGN
 lawSa2Toq8zDImK87yfypJPwciwQVxlSH5A0Yr5NPFKWs4EtEbSPBED
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_211721_986434_947977B3 
X-CRM114-Status: UNSURE (   8.73  )
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
X-Spam-Status: No, score=-2.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 13/14] phy: rockchip: inno-dsidphy: Add RK3562 support
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



