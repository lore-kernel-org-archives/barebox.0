Delivery-date: Fri, 16 Jan 2026 20:43:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjX-0024RU-0a
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 20:43:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjS-0001cd-Rh
	for lore@pengutronix.de; Fri, 16 Jan 2026 20:43:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gBesHqYemKoSXFi/vr+jiaHa4ITKCDmHsF0zGN7HsEk=; b=s5TDcIdeJdBMXDQPSD0M0FmK5a
	LQKx5Bn6kyXB0hw7YpFlSV9ZAqWcsNuFwlHVYNDOdS2xa3k0rkbIlazXvw/jEKzkLxgpInFbvZv1/
	NcXVCSqGCFLb9x2MCu8F4ZryOWGhHZJ6OSAARBc3/ToE2P6GGubPKpH5C4jRxHFvNglGzE0vRwoH5
	jhlljHXEPRzbNSkXQSb6KvlSBXMRQKwMcUsuNOEOUKucibGM6vTSAO+CHyOUXugEsu4EkZ8a9fXoM
	GsmrOH+v0zS5RNu5SUlrMorKowEsFLkbrFVjzfL+9wi3sHlGMOd8pa1Q/y0OtOB1QZ09U9FZYB9Mn
	Je/iDBIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpik-0000000Ehrw-2YEy;
	Fri, 16 Jan 2026 19:42:58 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpig-0000000Ehlp-3TCn
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 19:42:56 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-b8765b80a52so382548966b.2
        for <barebox@lists.infradead.org>; Fri, 16 Jan 2026 11:42:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768592573; x=1769197373; darn=lists.infradead.org;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gBesHqYemKoSXFi/vr+jiaHa4ITKCDmHsF0zGN7HsEk=;
        b=k2dYfaPC4egumiqY8ssrMSUbsy88YL0sRSBaA4bx4aXgE/g8rjRohb7s5bBBouMstW
         Fmx/ooKIyUxSeNmf+F9lLNENxaWMuFydMKM256xncA2Ce5kQ3dtePwLkvtivA2/o6LUC
         FQnKKlEXPOcrfzaLia8DbWPbdqpFG6PufQsW/8xHCKrY32f7+i7GmvrYcxLYP0hiBcUR
         zLF0O8zSd6r0Ak+IVfmMdMKwrYAMOhznNTb2CsrDQXh9hxE4XdDiTfxoZX4nhbLAKXDe
         lbUeJ65cV7JOVX6gM4rBIXEh1IBMeUng4jHUL6Uu+DzLf4PF50SdZCpsUpAOaw44oM7R
         hqsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768592573; x=1769197373;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gBesHqYemKoSXFi/vr+jiaHa4ITKCDmHsF0zGN7HsEk=;
        b=SWBYR6gxxJ3YfMeglHayQTet+khwyiH6F+SVjOimIvCcd1xOyAfYoKl9QvJ9bk5E51
         sb9svaAU+cEa4rTA0okNL0foNZZnajWDNAn/DsHV6j/5v1ydcmtR71/a27FQngmtsUBx
         cn5avDywfDt1dnRnXF4pj1yb7nDiel17VMVm7fI0Mzi9VDES4NlJQYg0IlfX1D+R9j6E
         Hq+Rs0RGc294h+2dyOL5hckKQeXjGR35hfv0k6mGpKC7ZhmEhH2AYhBGfmg2Qj57y6lZ
         D9FP88t93xE3HCnOchMd1ybDVjAwWP4ABO3ZvjWoXre/07yKzKxWv1mlwZ7RotR9cuOo
         tUtw==
X-Forwarded-Encrypted: i=1; AJvYcCX6vdhqkacLLhRM/JXLENxlMhGD5BBRV1sJKcDJN7XnkVHVcby0yIanBuqqkzaYuvGEnXzSkHHU@lists.infradead.org
X-Gm-Message-State: AOJu0YwHW5QKpTjHRSEErv+8ufQEosbbaCdZKnraNKmLp0PrlGtaVXzw
	8Dab4feHGA5mpSkenitHZhEO8/SRKwSc3IqLeEbhxdlMt9Zl0IbY4XKP
X-Gm-Gg: AY/fxX4zgd+njgmn5eV43vB9Yr05iaWHiXkh5pTdrOziCh6M+QiFExzsWcMVdqAhsXf
	1Hq5tBeabTR8UnznhjSafLUUizQk0k9ZEVXYBBCgpO4I8y60cUBfG9UTkLO61M/z1gHqWdsv+Ss
	94ib8mDiuURyJWikopQe1h+XkezUjca8EIOxsUHfaresA0lrqT3fI/hKUF8ERTCDnL0aECqe6cR
	8Hpx1hNL8wXhdEzU6luvj9pVlog0R9hWJNvmdXxq77KWLd2DQNaCkicykkUlJKhuWLHY/YkVRgA
	lK3fviN0lL9GUuc0MWSeERPfQjD2Zug45vqRmHQWWa4bnvEpMs372kSR56JmXSkE15m9XVRX+2O
	QnNX4SYlg4o9UKyFGEB67EZUrKPmYV+LnGbfOfJHZiM28VG5vJnns2QQ50DsHNloOhFfRHGnu36
	rlDsRO/SPIuwkB60Itaf3BIbQE6C1bb12VCFEDbhDaTfrbhsKNMY2WUYXYIxUjReUAglUYrxREY
	Apay5YgtmqeNc1scgmuQzzhVfIwbO5Yq8BRALkf8G/GNHTiQ9C5cE/U5Hu3ay7ASinpCue9lOBn
	tm2QDQrk5cGiYbzLXXmrQGDLP1JjCI8Og4p9SZy/Kw==
X-Received: by 2002:a17:907:930a:b0:b80:3846:d46 with SMTP id a640c23a62f3a-b8792d5a7a8mr415245366b.20.1768592572637;
        Fri, 16 Jan 2026 11:42:52 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-f96f-90ee-b1eb-797e.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:f96f:90ee:b1eb:797e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959c9fb0sm328166266b.43.2026.01.16.11.42.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 11:42:52 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 16 Jan 2026 20:40:44 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-barebox-kickpi-v1-10-d11fbccd527a@gmail.com>
References: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
In-Reply-To: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Sohaib Mohamed <sohaib.amhmd@gmail.com>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768592564; l=727;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=YEiPsfv2L0nLCLe/bO4FAaeuAdS+a/2qHoiaSlax/pg=;
 b=QVaqP5RG3QwCFbAAMblDpaZDRdtgF+VjzoN0EBDqPAt3Ro523pPCIilhjbar5NAzALQJLw3XQ
 HruoDuAVIv8AFiK8l9z049t38cUIfC2MiemZOzkXM1NXdnoQVWVS/Ty
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_114254_906816_31020786 
X-CRM114-Status: UNSURE (   8.65  )
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
Subject: [PATCH 10/14] rockchip-rng: Add RK3562 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add compatible string for RK3562 RNG support.

Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
 drivers/hw_random/rockchip-rng.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/hw_random/rockchip-rng.c b/drivers/hw_random/rockchip-rng.c
index 8856a3883e..f1f4c4cb12 100644
--- a/drivers/hw_random/rockchip-rng.c
+++ b/drivers/hw_random/rockchip-rng.c
@@ -193,6 +193,10 @@ static const struct of_device_id rk_rng_dt_match[] = {
 		.compatible = "rockchip,cryptov1-rng",
 		.data = &rk_rng_v1_soc_data,
 	},
+	{
+		.compatible = "rockchip,rk3562-rng",
+		.data = &rk_rng_v2_soc_data,
+	},
 	{
 		.compatible = "rockchip,rk3568-rng",
 		.data = &rk_rng_v2_soc_data,

-- 
2.43.0



