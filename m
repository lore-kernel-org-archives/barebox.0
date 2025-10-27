Delivery-date: Mon, 27 Oct 2025 15:28:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDOD3-00CMZ5-23
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 15:28:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDOD3-0008Vq-2L
	for lore@pengutronix.de; Mon, 27 Oct 2025 15:28:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vXU6mn4Ub1LwxrlLH8QkFsa5EHTgKXxkvuLs89WygHM=; b=erZkObuyL5w9fbV7Lfw/U3BUf7
	vdkWDF4NvmPiMWtNnWtGM97+/K1iI6Vxxwu1htlEX4D4Tj1OOxQghXlC35GtZrwEtneGOFVH9p1Dw
	ceigis+wPeYvJtBTk+z41Z8w1noRKP3733ZqPoa0SBenqAyJbtcC4cbiDfmEUSFGwHW1cqGrMJzsR
	YsbOyGbQPOniW9UoJbzeXgODmlUYiW0Ku9D/Yqt9VAyDKc8xyUCxxUwOvcV/MqHHcb9qwVKx/EH93
	UnQfePHCR264/bQbAHodfDspOkGlwX+xsZMmObVM5ZyWv2A7FspUsWqOIXyW40AyVvhoUI3Ajz8YK
	6olPp1HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDOCX-0000000E8mk-0Q2Q;
	Mon, 27 Oct 2025 14:28:01 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDOCU-0000000E8mC-0Lsl
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 14:27:59 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-b6cf1a9527fso2409167a12.1
        for <barebox@lists.infradead.org>; Mon, 27 Oct 2025 07:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761575276; x=1762180076; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vXU6mn4Ub1LwxrlLH8QkFsa5EHTgKXxkvuLs89WygHM=;
        b=XN6PHAcGtGOWx6WDIgT1eH0Ei7ZVC5EN7EFTJhOEOjlcbqPecYesG0fLQziIDQ0s2m
         bSAfy1ysebYItP3M9OR8BPbJdpwPBjmyD/+IofLRX5tHg/DfFaE7AgANs/tChrVMUVkb
         OgrTGrJc4RKNolwEQg1kXTufXmTUU6Vu2eVxpotD0EWnB2W6EN742sx0227J9AklDGO2
         e3eqQuuO/Cf6FeGTYba3zonxQJy+g1KRVYUNN7i39h3p9v9ss6LnBxBbvyWfF+4kZXbC
         xzvME5Nx2vrhg2+SihuJVMQx/jKc5orCqHFDX3kDk1FcvY/nZtZtNU6wMWKzoNIR2JYf
         oZ/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761575276; x=1762180076;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vXU6mn4Ub1LwxrlLH8QkFsa5EHTgKXxkvuLs89WygHM=;
        b=QjlpTGmuvzkX6bGps2qcq70UsHMFonkStDwHMV0Hoy6FBmudSn017YBqwiLlpyEdrn
         fvf5veV2YLqWEg0qLovcuYUNHs1bbDXnD0k3FPLXwYdSN/cxi+d6M6Z8oU/HI4/QsUAB
         icI+Cfz5gcgVo4IDSmp+99XUIEwHIA4Xkp4P7+BY7lhrlcVUAaRUnG/d5jHSnJUsIaFY
         2mY8DBFPjiFk6UEV5c+7pLTjKdYPnpUWxxa/BvSGTHHkp19IkprK8pJG5SkTjJGLUlxv
         W+a7PtMpqZ2l7dwOwBRsqqSXK/WTOF0CPU1zCHQAiyUfu+qoEpOegAxYdDuptGLSO6b1
         roew==
X-Gm-Message-State: AOJu0YyGi8gozRlKaTvMc4I/ZHgV0Ku/sJeXedpzv8wr+5EooLeUrCYl
	tqEWybUeKa1ej0iXMrmNYahLPnJJIg3HlOzELLT8Rg+8YNI15n9AWTOreNKPH5VxL/ldhQKCELq
	fKw5cbqbWxC7DcwdVxaGuJbrViqgZCjc=
X-Gm-Gg: ASbGnctYtZoJY4nD0Di2HxqrbtDFjU9skYi1WvCU85D3j/5o07CBxA5M0/QCQ46BG98
	aH4vHv4g5TRPlwApw2tHr3LqH22S6fhcVkqgjJx1csBtxh+CcIsUiryCKxSzWT6uwup9xs6onTS
	6ll63q6VpenktvKq++ThEDymNFFgZNSQIvueLAChG0YSUysYK3Hw1C53K30+5ri2+2rDSfx4IcE
	SLZnHqgRpQdmqUCa17PUqos5ObnCVrzH7azs5MQvnGQvybU9mVTI5VZ2i4QCA==
X-Google-Smtp-Source: AGHT+IFrpHMkgVgTwThVbyyBFJEITogOoH7xwysI84vVaS+xv3+CKRAeAHO1jnttP/39WaIxgsaBJi193DGDdlaoR4c=
X-Received: by 2002:a17:902:cec3:b0:267:c1ae:8f04 with SMTP id
 d9443c01a7336-294caae6e49mr2971235ad.20.1761575276174; Mon, 27 Oct 2025
 07:27:56 -0700 (PDT)
MIME-Version: 1.0
References: <20251027141555.846950-1-s.hauer@pengutronix.de>
In-Reply-To: <20251027141555.846950-1-s.hauer@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 27 Oct 2025 17:27:43 +0300
X-Gm-Features: AWmQ_bm0xCzZy7JglYT5esuY_lll_2r1BPQlv3hELL-2amSMgYRJVHqewMtvYYo
Message-ID: <CAP1tNvTpPDwBKB-9mGbX89CRdQ-rdhUf_Wn7BYHK8UMg0dAQcw@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Michael Tretter <mtr@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_072758_144491_C1824D14 
X-CRM114-Status: GOOD (  22.19  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clk: rockchip rk3588: configure CPLL in driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

PLL_PPLL -> PLL_CPLL ?

=D0=BF=D0=BD, 27 =D0=BE=D0=BA=D1=82. 2025=E2=80=AF=D0=B3. =D0=B2 17:16, Sas=
cha Hauer <s.hauer@pengutronix.de>:
>
> The rk3588 CPLL should be configured to 1.5GHz and 09c87c85e0 ("ARM:
> dts: rockchip: Set CPLL frequency for RK3588") does this. It does it
> however after the assigned-clocks/assigned-clock-rates properties of the
> "rockchip,rk3588-cru" node have been evaluated which contain a setting
> of CLK_150M_SRC which is a child clock of the CPLL.  Configuring the
> CPLL after CLK_150M_SRC alters the setting of the just configured 150M
> clock again.
>
> We must make sure to configure the CPLL before its child clocks. For
> this we could overwrite the assigned-* properties in the
> "rockchip,rk3588-cru" node, but with that we would miss future updates
> to this property, so configure the CPLL in the driver code instead right
> before we call into of_clk_add_provider().
>
> Fixes: 09c87c85e0 ("ARM: dts: rockchip: Set CPLL frequency for RK3588")
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/dts/rk3588.dtsi          | 3 ---
>  drivers/clk/rockchip/clk-rk3588.c | 7 +++++++
>  2 files changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm/dts/rk3588.dtsi b/arch/arm/dts/rk3588.dtsi
> index 42d692a9bd..416700cf0e 100644
> --- a/arch/arm/dts/rk3588.dtsi
> +++ b/arch/arm/dts/rk3588.dtsi
> @@ -1,9 +1,6 @@
>  // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>
>  / {
> -       assigned-clocks =3D <&cru PLL_CPLL>;
> -       assigned-clock-rates =3D <1500000000>;
> -
>         dmc: memory-controller {
>                 compatible =3D "rockchip,rk3588-dmc";
>                 rockchip,pmu =3D <&pmu1grf>;
> diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk=
-rk3588.c
> index 5aecfb3b1b..fcf95131df 100644
> --- a/drivers/clk/rockchip/clk-rk3588.c
> +++ b/drivers/clk/rockchip/clk-rk3588.c
> @@ -2500,6 +2500,13 @@ static void __init rk3588_clk_init(struct device_n=
ode *np)
>
>         rockchip_register_restart_notifier(ctx, RK3588_GLB_SRST_FST);
>
> +       /*
> +        * CPLL must run at 1.5GHz. Do this here instead via assigned-clo=
cks
> +        * in the device tree so that we do not have to overwrite the pro=
perties
> +        * in the upstream device tree.
> +        */
> +       clk_set_rate(ctx->clk_data.clks[PLL_PPLL], 1500000000);
> +
>         rockchip_clk_of_add_provider(np, ctx);
>  }
>
> --
> 2.47.3
>


