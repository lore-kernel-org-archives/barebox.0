Delivery-date: Mon, 06 Oct 2025 13:51:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5jkO-004sXD-2h
	for lore@lore.pengutronix.de;
	Mon, 06 Oct 2025 13:51:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v5jkO-0003bo-6V
	for lore@pengutronix.de; Mon, 06 Oct 2025 13:51:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wPqwfVTH+VdsNvEeJTtQ5yIiQYDiNuMosIo859UFp1Q=; b=trZl/rKh7aQi64DjYuF2D4VyPV
	tgEa5pJqIzsv2Y/dB7z4LT47cPA3kVarZ1Gvrv6AJ2l97bPAiC+hHvlVb1Ib8DMUqepkKMx6p0Ddq
	PN57KW9GGYSIN7xlZo4tJQhMVFrEMRhSZExS1UIOJ/T2mKrhShhTE882b8a/sxo/uSYNcwzHa+TQ2
	Yxpcsa9V9MPxtZNKImUXEOkRqGEIXuA/j7RETbz8TnfdJZvGf6FZQXSh2m76tc4lHvEbrhiVldZpN
	sA4bouz2I8QEFgtqFpV06xUt/tnv0alv6smoGDnmFofhk1YASJmmRDwwyOABDCslE3B4/Nhq0aJVq
	9nXjj2+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5jjt-0000000HWSq-0vI9;
	Mon, 06 Oct 2025 11:50:49 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5jjq-0000000HWSI-3wy3
	for barebox@lists.infradead.org;
	Mon, 06 Oct 2025 11:50:48 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-3324fdfd54cso5584834a91.0
        for <barebox@lists.infradead.org>; Mon, 06 Oct 2025 04:50:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759751446; x=1760356246; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wPqwfVTH+VdsNvEeJTtQ5yIiQYDiNuMosIo859UFp1Q=;
        b=bbFyCk/I0AF9ylcTnwnwd4rhm8tVXIummGBiy5p5FO5xDRStnOMtY3H3o2O6b5QqYW
         elNl5XHNV+nS5LMLQO9Wol6tgyMNZhLygzf9MCNTkxAb9fsqi5b0/+GNCrHHDPntVIty
         VIbnDLaJbfOx8VJyq/PEUeoomPo1p84cXFWz3RCYmSzkxG6XYhCPz0z63Dbl8W/tMH+U
         4uafaJDvoauSDdK7wMJ30dphZV5gQEoDu01jkKmTjpocY1wtUQyZbX6vrDIhZ1dLKWCC
         p6X46YWnlCg7ZqFxttW9Myluf+5V2GRduBPBvoCp/q/a6f5mfx6YBWkaHqyRGbylkr40
         1pbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759751446; x=1760356246;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wPqwfVTH+VdsNvEeJTtQ5yIiQYDiNuMosIo859UFp1Q=;
        b=RTB+HZtzwZGJWK84J8uODAJSWHpmO0fDbWVQcZt3iNjcBMKt62X4tKcukZwnWUakLw
         cGZW31t5RLhbVABFqPg5K0LY5IFu7YNjZ7owfDoSqXbvutv1Yoxu5z+NNMPCDkV2gOUj
         9kh3TifjGlDOgx4NcKMOqgSh+b7ZnkY75crIaG6kjnVM59qHqykRdtMHRlIXx2OPSLlg
         mEMp/0YbAVJW3BvieO579jktUU7XR7acnitKOjrmHDZ6w8/7KN4N+3+IDfSt2IZyVuLg
         Hg6Aym3MirKVsGsRQqneOwUpbCT61jkBy9eD/JXcavXAHl1N0q7HM1pKpLil18C9y6r0
         9IgA==
X-Gm-Message-State: AOJu0YxXxp5godU2YFtPT9hXjzmgttv+WWdthrxCHety63NSpSVSEhJU
	4lGEGK8rthxGKhyIUju1P8wjuGamDS2T8kgY4C5/p85cONM+Cos4kV9Q1WV3SCKrdsqkTJsHsBF
	lD9WmS+I0EzXp39evX9OCm5VlGUSV1bzFp6GG
X-Gm-Gg: ASbGncvprD23T9fQ4vyiAlohQs7wXl2yUJSRheYDta3mLcZodaklKuKw7qo7K7WactD
	hM8/GYxTH3mKndchHSQFo2q5gL0I5hhEI0PKduSpr64kDyddT58++vLnknaWF3fZZ3xLKaiGzmx
	V6np5yhO4IknTcAn7hNlk9c3+ekISb5VnN+CjmBaYbRVSbw50tV/eOt3rZtRnVdl+CkSZDDaikH
	irRCBrtk8z6VddkKCnVbjf0NbIsZ9qF
X-Google-Smtp-Source: AGHT+IHtRQCHyZv1pF8Bn4iM3fS3/je/XZVtuwpHy+KQ5IZtpRYBqcdHBAfSZ3FZvq/Sdi1WzxEMCA3D4eo5IUnN3CQ=
X-Received: by 2002:a17:902:e788:b0:269:b2e5:ee48 with SMTP id
 d9443c01a7336-28e9a6fd807mr140589525ad.52.1759751445800; Mon, 06 Oct 2025
 04:50:45 -0700 (PDT)
MIME-Version: 1.0
References: <20250929135857.965181-1-eagle.alexander923@gmail.com>
 <20250929135857.965181-2-eagle.alexander923@gmail.com> <aN01SY3mFJVfdf2X@pengutronix.de>
In-Reply-To: <aN01SY3mFJVfdf2X@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 6 Oct 2025 14:50:33 +0300
X-Gm-Features: AS18NWAIvGxbV6j8_cnYgkS-Dlb749X-cDZy5FjDQS7sFoIyJtVBXK_ok9sTv8g
Message-ID: <CAP1tNvTEEzkikAqKrqUECrYNCH2Nn16raHEZb7_Rm0B3EPfRMg@mail.gmail.com>
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_045046_981612_9E3B5B51 
X-CRM114-Status: GOOD (  17.79  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: Set CPLL frequency for RK3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Michael.

Here is my frequency dump with a working eMMC chip.
Can you compare with your CLK values?

barebox@Diasom DS-RK3588-BTB-EVB:/ clk_dump -v cclk_emmc
xin24m (rate 24000000, enable_count: 15, enabled)
    pll_gpll (rate 1188000000, enable_count: 1, enabled)
        gpll (rate 1188000000, enable_count: 13, always enabled)
        `---- possible parents: xin24m pll_gpll xin32k
            cclk_emmc (rate 51652174, enable_count: 1, enabled)
            `---- possible parents: gpll cpll xin24m
barebox@Diasom DS-RK3588-BTB-EVB:/ clk_dump -v hclk_emmc
xin24m (rate 24000000, enable_count: 15, enabled)
    pll_gpll (rate 1188000000, enable_count: 1, enabled)
        gpll (rate 1188000000, enable_count: 13, always enabled)
        `---- possible parents: xin24m pll_gpll xin32k
            clk_200m_src (rate 198000000, enable_count: 12, enabled)
            `---- possible parents: gpll cpll
                hclk_nvm_root (rate 198000000, enable_count: 1, enabled)
                `---- possible parents: clk_200m_src clk_100m_src
clk_50m_src xin24m
                    hclk_nvm (rate 198000000, enable_count: 2, enabled)
                        hclk_emmc (rate 198000000, enable_count: 1, enabled=
)
barebox@Diasom DS-RK3588-BTB-EVB:/ clk_dump -v aclk_emmc
xin24m (rate 24000000, enable_count: 15, enabled)
    pll_cpll (rate 1500000000, enable_count: 1, enabled)
        cpll (rate 1500000000, enable_count: 18, always enabled)
        `---- possible parents: xin24m pll_cpll xin32k
            aclk_nvm_root (rate 300000000, enable_count: 2, enabled)
            `---- possible parents: gpll cpll
                aclk_emmc (rate 300000000, enable_count: 1, enabled)
barebox@Diasom DS-RK3588-BTB-EVB:/ clk_dump -v bclk_emmc
xin24m (rate 24000000, enable_count: 15, enabled)
    pll_cpll (rate 1500000000, enable_count: 1, enabled)
        cpll (rate 1500000000, enable_count: 18, always enabled)
        `---- possible parents: xin24m pll_cpll xin32k
            bclk_emmc (rate 187500000, enable_count: 1, enabled)
            `---- possible parents: gpll cpll
barebox@Diasom DS-RK3588-BTB-EVB:/ clk_dump -v tmclk_emmc
xin24m (rate 24000000, enable_count: 15, enabled)
    tmclk_emmc (rate 24000000, enable_count: 1, enabled)

=D1=81=D1=80, 1 =D0=BE=D0=BA=D1=82. 2025=E2=80=AF=D0=B3. =D0=B2 17:06, Mich=
ael Tretter <m.tretter@pengutronix.de>:
>
> Hi Alexander,
>
> On Mon, 29 Sep 2025 16:58:57 +0300, Alexander Shiyan wrote:
> > Explicitly configure CPLL frequency to 1500 MHz to ensure system
> > stability and reliable operation.
> > The change aligns with Rockchip's recommended practices for clock
> > configuration in embedded systems using RK3588 SoCs.
>
> This change breaks eMMC operation in barebox on ROCK 5T boards. I get
> the following alert during barebox boot:
>
>         ALERT: rk3568-dwcmshc-sdhci fe2e0000.mmc@fe2e0000.of: DMA wait ti=
med out. Resetting, but recovery unlikely
>         WARNING: mmc0: Card's startup fails with -110
>
> I fumbled a bit with the clocks, especially the aclk_emmc, but no
> improvement so far.
>
> Michael
>
> > Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> > ---
> >  arch/arm/dts/rk3588.dtsi | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/arch/arm/dts/rk3588.dtsi b/arch/arm/dts/rk3588.dtsi
> > index 416700cf0e..42d692a9bd 100644
> > --- a/arch/arm/dts/rk3588.dtsi
> > +++ b/arch/arm/dts/rk3588.dtsi
> > @@ -1,6 +1,9 @@
> >  // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> >
> >  / {
> > +     assigned-clocks =3D <&cru PLL_CPLL>;
> > +     assigned-clock-rates =3D <1500000000>;
> > +
> >       dmc: memory-controller {
> >               compatible =3D "rockchip,rk3588-dmc";
> >               rockchip,pmu =3D <&pmu1grf>;


