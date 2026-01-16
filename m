Delivery-date: Fri, 16 Jan 2026 20:43:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjT-0024Pz-2E
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 20:43:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjP-0001Zc-9w
	for lore@pengutronix.de; Fri, 16 Jan 2026 20:43:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yzqm76AM4BpcRl1nshmsyad1zItQGXhRRWYRjE8Ax7M=; b=hoz3c9uWpPgIM7MvFVYtp1RmBV
	z01xq6HNQUQ2E7SEE5YfYXDQ2eFKESmL+DiNEizvjpYK6bH+fFwiwmtflu1R3U9y7RBoCVnnxOI5O
	BvwPIZzjbLkuCu/zONF1CB37h3056EQDkZm/yyFmT88gLKmk2PgRED2x1rPM+tYsmA0EkNjW4BVet
	M9rXkoax2S1wL4Z6XpNcnAtGsXZBQD4XD53T5qpunNk/+bhdyC6tFTy5eDlaGzX4EOVFXcvv68UN6
	Ygr+Qmxo6AkwS6cXngK48lAbJbpLcyKOrcDgDmLQjw472DBv5crOFQfnoEAz00RePSEUTa4fkLu20
	mBWijuzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpij-0000000Ehqj-2y8r;
	Fri, 16 Jan 2026 19:42:57 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpie-0000000Ehk3-33QB
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 19:42:54 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-b8010b8f078so397519366b.0
        for <barebox@lists.infradead.org>; Fri, 16 Jan 2026 11:42:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768592571; x=1769197371; darn=lists.infradead.org;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yzqm76AM4BpcRl1nshmsyad1zItQGXhRRWYRjE8Ax7M=;
        b=gBrtw0VpBbzFD5lK0X8tmUfa/YPZo+8vRtB9gWxe1TVRHNvhuNBf4eiRQGb9aBaRnG
         6VjLLusYGza4ksZ1PS+wZ3o8TheP+zIYSxcMaLPxCxkbmYWAtt1HtfRGZaMWitJbYD3w
         +B4+hZ0Jsj5goQ2r3sjvqc3YNzzSnniKRVFnyQbF226L/63OBgaoTZZXc+Si6dGc3FzU
         1jyzSnDFju4Zc6zk9xp16WBEBEY8p2eKDDeUbgnJi1hb1qNWcD85BD3Z/I4ExGRUNqM7
         7/thXOL4SJ/B0eoQxgIOIECwocH88txNq3woLhO4lgzf+ddoOq8kdZq2dZo8Q7SxeHp+
         aR2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768592571; x=1769197371;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yzqm76AM4BpcRl1nshmsyad1zItQGXhRRWYRjE8Ax7M=;
        b=hZqobcwAnnOqEC0sgiiozHVcIlud78OOdIxiqRykt7rpMeuA1vLe3Oxg8oyPP/FBtO
         WZCo3gV0vVXaVEBY35Jupz4cHiKy7VDxh+GjdkULoC0J4fxtj/0zZTSaOJ8dBPA6HfmA
         YbrDW9WelUxoc92e+xfgmlv5sFLDqyEVJwymyf9R7fgH0Tt8xSyWrTKoX3tBTprhPaia
         uASU70LsqvIU9snyg9sJ6P0M3mg+j1RaVBLqca+qPd1fPLehlen2DfyoyAa6/VtBpFLr
         gkzU00yNU6Uj59nOOBiN7/I9qlbAo1xGVLsAlzDXciafRZraHxSrumoldKrz9j65zlMf
         G9LA==
X-Forwarded-Encrypted: i=1; AJvYcCUAKc/jVfStKLusdtFeXNPFXHPrUhb2kun4NU0Ewj5G91tHQkf5Lit3hcn85ua2Hm2+EB8EMDsP@lists.infradead.org
X-Gm-Message-State: AOJu0YxW5IpEaZRdFEogQEhP+xjM+oDK4HQ/iWhaYyUFTCU2QATpcj//
	4Ys4m3QaQDpQC2bKNhrZa8ixWx3YxOcICwHhX2QaDvpbj692oTuoS+7D9lwCFQ==
X-Gm-Gg: AY/fxX6bJhFaK17hMIEhyGJlKQPZOVQPDSkxDKSLk6hO2BVNHbi10BuSs2jQr5DQctF
	k7EkRr10qhaOBUrzS8qYsRDzhlkhUDrhKGi1dztn+A0ALMiKk/P8skUvhF74s2DAZlzmkSpYnsS
	da7TTG8wTN5bvjGgsXYWkhndz3qB117j4MbXyTtnS2yFIYkBpG852Z7ZpRDzni4jqlrd5CDr7m6
	J05RyO/piaor5fBtIYdMzPHNaXCs8GNX1M6h7uA5eGTnOfJAh51DdbAkuSIHAYhv9hOIgSfrPZT
	cQ7lcYMAg4slYpW25TKQNP1ssEkZ1VT3c44j6bhhxSXtipvhnT5jIJLXJ4VD+gFTlY6nDKzYAAx
	Znyk9d8vuQXKM89H1FVT78qoNNmDRqEJR3xxjWaUzY5dwojcDPns0cj9Zkf1BWyU1R0p1CPnX6m
	HSLLRGHcxh056SwtkkuW6EpkiGZNqK58aCPXSgdV+R2uUp7YTLwH9pOsZIZ+PAnNSSJyLjtMUxP
	GWxcKXoYPXQk5YOGTV4CHI+Cg7jMwTYEuYdXuQ+eZ6L0PEBkHporEoqTw1EMkMdTy5n+Arj7R0s
	kdJy9F2BVHws/lxbsYbf+rM41eoo/symndoE61dj9w==
X-Received: by 2002:a17:907:3e8c:b0:b87:965:907a with SMTP id a640c23a62f3a-b8796af0fabmr309646666b.32.1768592571090;
        Fri, 16 Jan 2026 11:42:51 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-f96f-90ee-b1eb-797e.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:f96f:90ee:b1eb:797e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959c9fb0sm328166266b.43.2026.01.16.11.42.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 11:42:50 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 16 Jan 2026 20:40:42 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-barebox-kickpi-v1-8-d11fbccd527a@gmail.com>
References: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
In-Reply-To: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Sohaib Mohamed <sohaib.amhmd@gmail.com>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768592564; l=1257;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=WskhJIAbrX+kmHNRkv/HERBUF0Toh90TRf4JNlrnw40=;
 b=0VrNOfVJ93AQ0rhfWgAe6EHNJwD3cHzKw0dMPfAio+Vj6KeoWy2AOjVZjAenio3s/HlJEKhed
 anWKa6+dH6rDkpxKkvrPCcv0x8vz3voRS/e+jp0NDs3CNX2hB/17UXP
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_114252_836009_9D40593D 
X-CRM114-Status: UNSURE (   8.44  )
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
Subject: [PATCH 08/14] aiodev: rockchip_saradc: Add RK3562 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The RK3562 has a SARADC v2 with 8 channels and 12 bit resolution.
compile-tested Only.

Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
 drivers/aiodev/rockchip_saradc.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/aiodev/rockchip_saradc.c b/drivers/aiodev/rockchip_saradc.c
index f1efab5233..d4cb1f4fbe 100644
--- a/drivers/aiodev/rockchip_saradc.c
+++ b/drivers/aiodev/rockchip_saradc.c
@@ -256,6 +256,12 @@ static int rockchip_saradc_probe(struct device *dev)
 	return ret;
 }
 
+static const struct rockchip_saradc_cfg rk3562_saradc_cfg = {
+	.num_bits = 12,
+	.num_channels = 8,
+	.read = rockchip_saradc_read_v2,
+};
+
 static const struct rockchip_saradc_cfg rk3568_saradc_cfg = {
 	.num_bits = 10,
 	.num_channels = 8,
@@ -276,6 +282,7 @@ static const struct rockchip_saradc_cfg rk3588_saradc_cfg = {
 };
 
 static const struct of_device_id of_rockchip_saradc_match[] = {
+	{ .compatible = "rockchip,rk3562-saradc", .data = &rk3562_saradc_cfg },
 	{ .compatible = "rockchip,rk3568-saradc", .data = &rk3568_saradc_cfg },
 	{ .compatible = "rockchip,rk3576-saradc", .data = &rk3576_saradc_cfg },
 	{ .compatible = "rockchip,rk3588-saradc", .data = &rk3588_saradc_cfg },

-- 
2.43.0



