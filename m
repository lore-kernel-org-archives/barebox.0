Delivery-date: Wed, 26 Jan 2022 11:14:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nCfKN-00DibV-Ly
	for lore@lore.pengutronix.de; Wed, 26 Jan 2022 11:14:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nCfKM-0002bw-9F
	for lore@pengutronix.de; Wed, 26 Jan 2022 11:14:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D0qh7GFnixQCKJq6Rcv4RHH1uAVpa1Z7/lpHUrGlb1g=; b=Ss2kGC+sGL9jeD
	EmeJM1Yp1l6ghjGUJTJlQwB+KwDvfagUSRx2PcewtrS/Qc27vczUDwH65CLySu4JyXcdRZaSQR1sM
	sWLoGW9hOujOFf4E4hZs/RSIFGJwi1Gdc1tHJb5qD1oObq29OJPEymgoIQzWsdDBpzj0Jidp5Ouu8
	flwomlcZyco+tkp7C8SRULkPsRDvgAbH4KOTSZZ9lIDL2Wmdi7aABqGJ2yrrmHgs5l9x7d6teZfxA
	+5y7VU3QRW0TnVba7gEmkzazyqxDou8hHe2mQkJksDAXQVTWWWyMRyHL0asS7rwMNtPmWCGU4w4d+
	efiHLeYsVzPWNZ89NS/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCfIw-00BAAj-TE; Wed, 26 Jan 2022 10:13:31 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCfIq-00BA9R-QZ
 for barebox@lists.infradead.org; Wed, 26 Jan 2022 10:13:26 +0000
Received: by mail-lf1-x135.google.com with SMTP id p27so62117705lfa.1
 for <barebox@lists.infradead.org>; Wed, 26 Jan 2022 02:13:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=k7AcHmW0hznHBybtp82n+E2FX+M/77lnyEs16omI6yQ=;
 b=qxx+gvYSF4MVtFH7ZF5yOjzY48wvtbNifXCS4wmG5/kRVl3gGOoJ/cmkSXvQQx8mEy
 s6RN74ZBQFIC7H1mmDaEqckNaErcCfIWVtZzTemG3l4AvQgt+P3dLvJOeIumPSM2B/9c
 En3bOy0tGGlh2tM/O23DZh5VYWWpyM1lv1MANjb/j2nY7OVVK4iZoDx3+KpSo/Od/Zuq
 ehFqS/o/XiS8OGrbBuJekaAbq1QS9sKGj2Xgdc9/rGMT4uXayxba1dQoVAgaR5BbI+Pd
 mQCgR+cbDaok58RZk5Zk/J+qXIslPZv75nwlDBqdLvFi2a79cIBMusMVcHeY7W/VQMig
 g4OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=k7AcHmW0hznHBybtp82n+E2FX+M/77lnyEs16omI6yQ=;
 b=IN6xYJDNwck6Ec1aDVu9hVaFFtbIiC9dZAT4YJsYQl65ugvFpow30V2zv43JozAlv3
 iU7MrpJdoGwNYHfgmpWwP1D356BM8DjSM+3TsHewxtoVzydoegdhaaYF3OcRCdU8Hfcx
 cXzVrniXxcTI97lTWaB6+et0KmStgUDXKHkeWmP5LLj8HQSphDn2JXle0F4qQXa8JEhM
 bTxFDmg8g7KAdsSCAU8vF/5NK7CaoUSl+bD/NHG9/sXnwlUW2IprTNHIISm2C95chb0V
 NFrGmQaiK71XBGyjcFJcQg1SkVQ5RrHRaeOJxntqMksF+XE/1chQ4mPds16nisuYMVm/
 n9BQ==
X-Gm-Message-State: AOAM532HR2efi0rY9E/3ggQDTnRIO9kzNe6nj+z+s60iawqHbSelr2/R
 6kZv8Yu6ah/snrt2pU884Lo4zMLsD4r3Bw==
X-Google-Smtp-Source: ABdhPJw5Gv2riHKSpQhJIfqgEzn9vgOx1p+9cX87JhQVjgG51b57oqY/UVGCqVlwpUXXQNBHj8CHhQ==
X-Received: by 2002:a05:6512:3b07:: with SMTP id
 f7mr7462085lfv.517.1643192002724; 
 Wed, 26 Jan 2022 02:13:22 -0800 (PST)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id s24sm1376630lfi.50.2022.01.26.02.13.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 26 Jan 2022 02:13:22 -0800 (PST)
Date: Wed, 26 Jan 2022 13:13:21 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-Id: <20220126131321.f2e0e289b79bc83da781a382@gmail.com>
In-Reply-To: <20220126092317.GG23490@pengutronix.de>
References: <20210607104411.23071-1-s.hauer@pengutronix.de>
 <20210607104411.23071-7-s.hauer@pengutronix.de>
 <20220126093233.026701eddc2a1a7dceb76849@gmail.com>
 <20220126092317.GG23490@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_021324_907650_00263BD5 
X-CRM114-Status: GOOD (  24.09  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 06/12] mci: sdhci: Use Linux defines for
 SDHCI_HOST_CONTROL register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, 26 Jan 2022 10:23:17 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Wed, Jan 26, 2022 at 09:32:33AM +0300, Antony Pavlov wrote:
> > On Mon,  7 Jun 2021 12:44:05 +0200
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > =

> > Hi Sascha!
> > =

> > > To ease porting and comparing of Linux code.
> > > =

> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > >  drivers/mci/arasan-sdhci.c       | 12 ++++++------
> > >  drivers/mci/atmel-sdhci-common.c | 14 +++++++-------
> > >  drivers/mci/dove-sdhci.c         | 10 +++++-----
> > >  drivers/mci/sdhci.h              | 17 ++++++++++++-----
> > >  4 files changed, 30 insertions(+), 23 deletions(-)
> > > =

> > > diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
> > > index e22db4cfa3..e02f222345 100644
> > > --- a/drivers/mci/arasan-sdhci.c
> > > +++ b/drivers/mci/arasan-sdhci.c
> > =

> > ...
> > =

> > > @@ -200,21 +200,21 @@ static void arasan_sdhci_set_ios(struct mci_hos=
t *mci, struct mci_ios *ios)
> > >  	}
> > >  =

> > >  	val =3D sdhci_read8(&host->sdhci, SDHCI_HOST_CONTROL) &
> > > -			~(SDHCI_DATA_WIDTH_4BIT | SDHCI_DATA_WIDTH_8BIT);
> > > +			~(SDHCI_CTRL_8BITBUS | SDHCI_CTRL_8BITBUS);
> > >  =

> > >  	switch (ios->bus_width) {
> > >  	case MMC_BUS_WIDTH_8:
> > > -		val |=3D SDHCI_DATA_WIDTH_8BIT;
> > > +		val |=3D SDHCI_CTRL_8BITBUS;
> > >  		break;
> > >  	case MMC_BUS_WIDTH_4:
> >                      ^^^^^^^^
> > > -		val |=3D SDHCI_DATA_WIDTH_4BIT;
> >                                   ^^^^^^^^^^^
> > > +		val |=3D SDHCI_CTRL_8BITBUS;
> >                                   ^^^^^^^
> > Is this correct?
> =

> Nope, indeed not. Fortunately it's fixed in the same series in "[PATCH
> 08/12] mci: sdhci: arasan: Use sdhci_set_bus_width()". The other places
> need fixing though, patch is out.
> =

> Thanks for noting
> =


It looks like that there is one more line to fix. Please see

> diff --git a/drivers/mci/dove-sdhci.c b/drivers/mci/dove-sdhci.c
> index 9c10e67eb8..cafc9dc579 100644
> --- a/drivers/mci/dove-sdhci.c
> +++ b/drivers/mci/dove-sdhci.c
> @@ -224,20 +224,20 @@ static void dove_sdhci_mci_set_ios(struct mci_host =
*mci, struct mci_ios *ios)
>  =

>  	/* set bus width */
>  	val =3D sdhci_read8(&host->sdhci, SDHCI_HOST_CONTROL) &
> -		~(SDHCI_DATA_WIDTH_4BIT | SDHCI_DATA_WIDTH_8BIT);
> +		~(SDHCI_CTRL_8BITBUS | SDHCI_CTRL_8BITBUS);

"SDHCI_CTRL_4BITBUS | SDHCI_CTRL_8BITBUS" instead of "SDHCI_CTRL_8BITBUS | =
SDHCI_CTRL_8BITBUS",
I suppose.


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

