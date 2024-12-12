Delivery-date: Thu, 12 Dec 2024 07:44:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLcvf-0075OC-2K
	for lore@lore.pengutronix.de;
	Thu, 12 Dec 2024 07:44:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLcvf-0005hq-KA
	for lore@pengutronix.de; Thu, 12 Dec 2024 07:44:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2tsCN2sAnMQxonrWlO7sUsP2wsd/loAQPELzt1Nrcpk=; b=WRa5d/Ouc5KSzx7uo8rooMvyGR
	JTuApaLXOtSc0OqEzwWaTbHOgjnWe9/Cm/aDKMP4tNt42vPqngWgl4IyDyr0qS0mQXwsqsDDcquX8
	D1zgCmc+elTvqHwurSWEiF5iVmRErtN19MCZva5Ne+J8s/Vr3Sc97JbwWt8qohABwAWojiFHUIz87
	NxB76vnjPfDcMUrtbB2F0lQs1HOeKPfdApUG9v6tDwwvGCjrkbEcStB/V7vbMmt3bK82RQxntsvh5
	VugsRIipqVH+xTUSOCv2ivVYH/IodDKKP9M7LB1Zx8DwOBiQmmPKB0O2w8L+u15To1zqsf/vLvm/2
	ive4OtFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLcuv-0000000H4a0-45ij;
	Thu, 12 Dec 2024 06:43:21 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLcut-0000000H4ZW-2Mi8
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 06:43:20 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-53e3778bffdso296580e87.0
        for <barebox@lists.infradead.org>; Wed, 11 Dec 2024 22:43:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733985797; x=1734590597; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2tsCN2sAnMQxonrWlO7sUsP2wsd/loAQPELzt1Nrcpk=;
        b=LVRay6OJIk7vCa4G85t8NtZhxVpoc1usZ6lC8KoWkzbDDCwwBj6xuJvcHvTFvrukHC
         fieiCF3LSA4T75Ona2VQV6CWBuISBZewz6LOPkqmAT/1+eWJEmBUq6pZ8KQlaJgLcSDI
         fMxuYjQl1nFjKLnZYpzo6eX55PVUjSfhpFtZgEfObTjd6YXlgoR4RCxdS6ROKklFFyRq
         lLmN+/fn89ty4yenAiMRjytwJFuor7AUbpuynzx1weB3DqGSV4ZpoX3fEMQObZfC1joc
         hbBmFyoJDDE3WQWfqZrBFTHdUUi+vdUqH2H8rlRA7x+4w/nDPR3OHcQH0ZuL3qM8yvEy
         vryw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733985797; x=1734590597;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2tsCN2sAnMQxonrWlO7sUsP2wsd/loAQPELzt1Nrcpk=;
        b=tGc0STzau9y6TCP/oOz08mtxu92FhyHOr0Q7lE0XEt2ZgUubkvyfPJxFoQ6zR1m6ya
         NwHMBCPuTwXetM6OPVAsyjPbMCFeSggGbJ6kY/Agrl84nuFf0NG+5O80vpF1h05b739g
         k+pnS47Pg5Q5vvgElR8D5vqPoX3mH+ROBgE9twqHUaCrAD7xbNxCIEzBE0qhRZY5PyES
         Nv9AyoH7l0ezvboeNSMTwaCYnbljLn/B5Jr5I5qDKlz7kO/jZErBsJH2bFOcEsuWas/N
         ADwR/+8TX4VXgCgqD0mtSLH2IiKZ7pG0K28tgt2AlLi/3vUWYxXSFxo6wyL2xZdlFw+J
         bvvg==
X-Gm-Message-State: AOJu0YxPuoRm+OzjRMiRxuD4z+dCoPXEiwUzRnZguFkazddLe/z+zVXK
	m8HuwXLYDu4X2cEgHPKhdhskGUGfyCYNIHZKhLIvz3JgmlRgX9ci2knW1A==
X-Gm-Gg: ASbGncuDxjocJCwGXft0m/THSzQDJMQ1ArWBOWwLaHDvjipLaYtU2yOebyIM3wy5zVc
	KWVIlUaa469SoLZ9fBsl6cpjOxmqjBAxMVJzsbPfqfH6QZq+Bc1+RY7iW8GfDAZz94IAbBk5y/f
	N1EjazoKZxIDKqZ2dzkYw7eYzlxkFpdeT0yTmTXnt4q3qOlWTEU++6IBqTb+lE8OvXRUxiuAtm2
	V/pNZ42DkUyJlb2lB1WKexWXC8uK73EXxMXKs7RIlHe6rdTH9eEy05mosKAtQUsMQFgd3ct1hO3
	apEb
X-Google-Smtp-Source: AGHT+IG0la+p4cB4KwL+hzl+M7IDh0vZvo9vYMeGWzTcACBRDnZcmPjVy9wCKt3syhqRyITm95ghrQ==
X-Received: by 2002:a05:6512:2814:b0:53e:24fa:ce2 with SMTP id 2adb3069b0e04-54032d5848fmr52695e87.38.1733985796723;
        Wed, 11 Dec 2024 22:43:16 -0800 (PST)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e3aa285a6sm1678182e87.193.2024.12.11.22.43.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 22:43:14 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 12 Dec 2024 09:43:03 +0300
Message-Id: <20241212064303.8765-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_224319_623150_D274E9AE 
X-CRM114-Status: GOOD (  11.49  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] ARM: dts: rk356x: Use RNG node from upstream DTSI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since the RNG node was added to the upstream DTSI, let's reuse it.
This change disables HWRNG on RK3566, as done in the kernel[1].

[1]: https://lore.kernel.org/all/302bdae2f4defeefe88ea4018a0be11f@manjaro.org/

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/dts/rk356x.dtsi         | 8 --------
 drivers/hw_random/rockchip-rng.c | 2 +-
 2 files changed, 1 insertion(+), 9 deletions(-)

diff --git a/arch/arm/dts/rk356x.dtsi b/arch/arm/dts/rk356x.dtsi
index fbabf2a6a6..995a9d5d92 100644
--- a/arch/arm/dts/rk356x.dtsi
+++ b/arch/arm/dts/rk356x.dtsi
@@ -44,14 +44,6 @@ cpu_id: id@a {
 			reg = <0x0a 0x10>;
 		};
 	};
-
-	rng: rng@fe388000 {
-		compatible = "rockchip,rk3568-rng", "rockchip,cryptov2-rng";
-		reg = <0x0 0xfe388000 0x0 0x2000>;
-		clocks = <&cru CLK_TRNG_NS>, <&cru HCLK_TRNG_NS>;
-		clock-names = "trng_clk", "trng_hclk";
-		resets = <&cru SRST_TRNG_NS>;
-	};
 };
 
 &pmugrf {
diff --git a/drivers/hw_random/rockchip-rng.c b/drivers/hw_random/rockchip-rng.c
index 990e5fc111..62a21db0e2 100644
--- a/drivers/hw_random/rockchip-rng.c
+++ b/drivers/hw_random/rockchip-rng.c
@@ -194,7 +194,7 @@ static const struct of_device_id rk_rng_dt_match[] = {
 		.data = (void *)&rk_rng_v1_soc_data,
 	},
 	{
-		.compatible = "rockchip,cryptov2-rng",
+		.compatible = "rockchip,rk3568-rng",
 		.data = (void *)&rk_rng_v2_soc_data,
 	},
 	{ },
-- 
2.39.1



