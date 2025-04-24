Delivery-date: Thu, 24 Apr 2025 19:50:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u80in-004xmP-1H
	for lore@lore.pengutronix.de;
	Thu, 24 Apr 2025 19:50:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u80im-0007vW-Q6
	for lore@pengutronix.de; Thu, 24 Apr 2025 19:50:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VkSYC77kPY17H1ZVIbF3UQiBfZjzDdfJQhTQdjPHOFQ=; b=BkRWPjHZk6bgvEg49llPp3qRyu
	8wKyg4n1H4YlStYXjnuuJnV1/0HGjORxgNRVIm1dz7673diHh+5/3TkQNj6M0YEbol4TFnqbrv6Nd
	5D6RH7401b2Y4nqJQ9J2VmUN6z+zyhcG/AIH1DELZAEAf5S9/u2hoa5cBYIoWBbjzNFmJbz6WJ0Xf
	IxBVwbNcOqpBYR1nTCsbJEgm5RvRVv4gL6lbWtS8bYOCSytIex3f7LadbdGVBKL8ylpAXvLNjVI7j
	WuxpCJWM7dF894CQgTsxzE7Rkm+sacfRkgW1oGgojzorQk9SW2OBG0iHxPRvODwFCU9IaGY9ZuCfv
	6WjsgEHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u80hw-0000000Ewp8-3Ebp;
	Thu, 24 Apr 2025 17:49:56 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u80hu-0000000Ewoe-06GA
	for barebox@lists.infradead.org;
	Thu, 24 Apr 2025 17:49:55 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-224191d92e4so15609885ad.3
        for <barebox@lists.infradead.org>; Thu, 24 Apr 2025 10:49:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745516993; x=1746121793; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VkSYC77kPY17H1ZVIbF3UQiBfZjzDdfJQhTQdjPHOFQ=;
        b=iJtVtslmfJd1uD1TP3Y1vdOlnfzXz0mOoaJSygHhDfIxEtgTrpFibb6IRqIuwA9kDk
         YfGFr/sg1PAgdNNHJjhN47aKKM5Nl9LnrYJigZqLcPm5wkOHeKNi4gZFH/tfKNve6Cwr
         vaQ2TJlTQUdgjYaL0vBoXyYFx9S8Te7NYxFB8Xr+EcuwkBjySF52XgogvBSTladlF4YM
         hIKXPo3JpJtq83MmT5isiK571eKhJLJcLqdpSSkBRYORBIXwZlzZ6HRcSL3EhvVbPca6
         SYo4HtTpIt6PAE5dN+ZjM2/Gd8A2o3ZhJfYvDT2I8FCgjN7iT3fHOQdp8rePFmzYfZjq
         z86A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745516993; x=1746121793;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VkSYC77kPY17H1ZVIbF3UQiBfZjzDdfJQhTQdjPHOFQ=;
        b=Xg4vzHEj4LWAwhzZV0cSXbv4iU018BdlYnXDaAXUYuv6Ty2QsiC44/RopnSqJQP4Rd
         Oxsmd+bFHSk+xU9x5Y9HPrtZ/8Bf2d2Eu3gxoDJHohLRzP+fZOHgORS8icVBmSCMOD0m
         NuB9bwLcQWakMsEjAu6FQZvw2t/AhaTrGuJDrbO7mpZxQkakEUPh0ROsJ9TNg4fPgehf
         Ds52YfyJld9ut4GK6vldjxm0++6ZtVYeyB8wRQP7XYm1JZLsUFpAQgp47R48iXvLmTJF
         CZLcm5SSeQEa9P22AyaKIAFQLG+/14APkheaJtPG4SNGnCB4EadlUsWzlgyXzMRPhDIc
         5p4w==
X-Forwarded-Encrypted: i=1; AJvYcCW6immyeFB5F2WlRHtpt4y7Yysvw3zCHbyi9NygJo3ut+UTS/YAh/Hc1exFGnFDzM7Lypc+WgAU@lists.infradead.org
X-Gm-Message-State: AOJu0YzP/4qv8XTUDQh8pRkGRCoREjNq8Wbfm/c40UWD8MpX8SWtLkME
	GE5U9sL+RRwjn1OtV27HSbIakLAn8KLUrAVlO74R17LFW7th/IYtA6+CpSyfpDsz/bSK1EC3gLZ
	hkyVaIa5sv5RV0vpVN4yCHBUE8e1nE72p
X-Gm-Gg: ASbGncuMiSpLGKRYPfQArwOdFPe6Qau5DQACUi68BttZjRXa22rTRmZIgduWPeoXdM4
	CnOPXqjCXRAHlGZdIsjBzfDCd0WG/rLd8Df0QR9wTKzCISCQ7yZVBmxMCxSZb+IlXckkwPYRUqc
	1CcIi7iGefqnDaUQLX5b9hLws=
X-Google-Smtp-Source: AGHT+IFVUwJI6HnvQcJE5ehiRe5Ym3JKw2kVOThzi6EIrEtTfQY1uNuuZH8kByQthVWT7ZFcP1dKvWhFTs0I+V9y7zA=
X-Received: by 2002:a17:90b:55c7:b0:2fa:15ab:4de7 with SMTP id
 98e67ed59e1d1-309f5530eb6mr1089921a91.12.1745516992694; Thu, 24 Apr 2025
 10:49:52 -0700 (PDT)
MIME-Version: 1.0
References: <20250423140913.1530237-1-m.felsch@pengutronix.de>
 <20250423140913.1530237-4-m.felsch@pengutronix.de> <7b6f5626-6d7c-43f5-9faa-a19380237bfb@pengutronix.de>
In-Reply-To: <7b6f5626-6d7c-43f5-9faa-a19380237bfb@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 24 Apr 2025 20:49:40 +0300
X-Gm-Features: ATxdqUFDly2rLPtfQY_7fRTCoy8GaZllgM8f2CeZwO7MFKc6GXiEtfmgm-OYADM
Message-ID: <CAP1tNvR=GaOfm8c5xteys=UKFxZuFDrAic=JB4uXpyi8bEa3uw@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250424_104954_064627_15F53697 
X-CRM114-Status: GOOD (  21.01  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 4/4] ARM: riotboard: drop static barebox-environment handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello All!

What happens if the required GUID identifier is both in the SD card
and in the MMC?

Thanks!

=D1=87=D1=82, 24 =D0=B0=D0=BF=D1=80. 2025=E2=80=AF=D0=B3. =D0=B2 11:02, Ahm=
ad Fatoum <a.fatoum@pengutronix.de>:
>
> Hi Marco,
>
> On 23.04.25 16:09, Marco Felsch wrote:
> > Since commit 9f868f78bc54 ("environment: use barebox environment from
> > GPT partitions") barebox can try to find the barebox-environment based
> > on a GPT partition GUID.
> >
> > Make use of this mechanism and drop the barebox local of-partition. Thi=
s
> > allows the BSP integrators to provide a proper GPT or if no GPT was
> > provided we fallback to the autom. minimal GPT mechanism added recently=
.
> >
> > This also fixes environment handling if booted from a SD card since SD
> > card boots make use of eMMC barebox environment at the moment.
>
> You didn't fully address my suggestion[1] on v1. Why not keep around the =
existing
> environment as a fallback?
>
> https://lore.barebox.org/barebox/1ff0f545-effa-4b87-81b7-524919333777@pen=
gutronix.de/
>
> Thanks,
> Ahmad
>
> >
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> > v2:
> > - Adapt commit message
> >
> >  arch/arm/dts/imx6s-riotboard.dts | 10 ----------
> >  1 file changed, 10 deletions(-)
> >
> > diff --git a/arch/arm/dts/imx6s-riotboard.dts b/arch/arm/dts/imx6s-riot=
board.dts
> > index 57817c1197a7..cca34d6dba95 100644
> > --- a/arch/arm/dts/imx6s-riotboard.dts
> > +++ b/arch/arm/dts/imx6s-riotboard.dts
> > @@ -11,11 +11,6 @@
> >  / {
> >       chosen {
> >               stdout-path =3D &uart2;
> > -
> > -             environment {
> > -                     compatible =3D "barebox,environment";
> > -                     device-path =3D &environment_usdhc4;
> > -             };
> >       };
> >  };
> >
> > @@ -31,11 +26,6 @@ partition@0 {
> >               label =3D "barebox";
> >               reg =3D <0x0 0xe0000>;
> >       };
> > -
> > -     environment_usdhc4: partition@e0000 {
> > -             label =3D "barebox-environment";
> > -             reg =3D <0xe0000 0x20000>;
> > -     };
> >  };
> >
> >  &clks {
>
>
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  =
|
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|
>


