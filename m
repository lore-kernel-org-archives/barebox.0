Delivery-date: Wed, 26 Jan 2022 07:34:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nCbsz-00DZDN-Mo
	for lore@lore.pengutronix.de; Wed, 26 Jan 2022 07:34:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nCbsv-0006fZ-8C
	for lore@pengutronix.de; Wed, 26 Jan 2022 07:34:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C0nNjMPyO85ILlpvsr6DeysvRdF8nM0EboIQ/+WzwbY=; b=J5MFYXjXHOwqMS
	UT2U0pYacSK1ipVmD5OqDQ/PmMykvnUOWoiD/10SPesRqyOFMEDqhvWAQC6PQAXrpFiKa0z4FqKBx
	uFK5ZjzsBvrLlw7z82g4w0bJQegKE8RiFQ5W926V3kh5S7eoQy8+7uGi8aeG+Ko+KUrwNl+au3fG4
	p8pSf5mj58u3hg/o3XrAWLhn5xc950l+NUQd8mZKLY9o6W2a8/q+HuMNmAzYYnKNBxQNyqmy16OSE
	o08H6hl2hemzWE8QwqP0qFllWYG6yq/6k9LGB7rdrB35bB2EobQ4hhEzqC3/oVohDT/f4/bWmA0xU
	P16hoj9luHWveGYLXNJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCbrH-00AIGP-4M; Wed, 26 Jan 2022 06:32:43 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCbrB-00AIEk-UC
 for barebox@lists.infradead.org; Wed, 26 Jan 2022 06:32:39 +0000
Received: by mail-lf1-x12f.google.com with SMTP id x11so61165141lfa.2
 for <barebox@lists.infradead.org>; Tue, 25 Jan 2022 22:32:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sQ+xKXFqJvF9f/OaxmWLBqkhUnP/LlwLomYKOjp8p4c=;
 b=RqYsZB+Rulufb2OfzuGiiYBvrR6dVXnlBx5gTyThai6CuqiD1Llr3XVev5EwwQfaSo
 S0xomqc3taaJMtB/L695bywFCuEqn5bsEJxFZ+7jbVXi4KcospKVoM77wW6Yv+O2x/I1
 4VzXY3DbDSH1y92MKz5c42yGpTRY1LdCeSSh3KGHo1X4feHolSSwwx7/rJmiNup9SZuR
 2SU4Gdn/80wK7+78WFIc119hkehzE6fQ4PYUREng0wghSLXkYAyVIXU2w7Wk2GZG70/c
 V0j8t39MyQzloUWOUcTht+FMV45CE+oGO5R6iGdkCbzxKj+HLDmyJ/tyPEr4MPsy5oDm
 Ci4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sQ+xKXFqJvF9f/OaxmWLBqkhUnP/LlwLomYKOjp8p4c=;
 b=02FXBnSylrl9lnLjwpRazPiryk7GufGgKx2EERIFvc+qhBnxcWdD3BltRJQB5N2TFK
 dKbnXBNXs1JFR1BiQCn7a+M/MO8B8CVeYjmC8CUPYEdtWw5GmRSrItnrJD2jJ21M0Aeb
 ydKmlwUAKukB56zf1lNLYmlvKpt23HnylrUNpwCy2/IvLdMKvb1FFP6j9RfveyT9Xaof
 QbS2EsnUc4Czlz6GuXiTSDy1G6mErxf1YeColHmscXbvm8fNRygyU9zAkL8aWU/7k2OP
 ButvIl6665oynKvhs12i4HDbA7MEzPOVMtzwJMqUN8ZaTz2jSoWIByotiDwn8h9mMwX1
 6D/w==
X-Gm-Message-State: AOAM530ZCkJovkP9lW7pkRTMTdeOFmYp3OipevfgpLCyFkbIBQeWUqUH
 p5HjOHrUHboPP/DKjXaeHrYRI8NRUsU=
X-Google-Smtp-Source: ABdhPJzpHhcHbMFz+C507LRFZMunZ+DJNVqrKKH2gc73T1GzRbEiQWF8ADknylfa/Aeq4SexPo0UfA==
X-Received: by 2002:ac2:5f4f:: with SMTP id 15mr9926420lfz.321.1643178755375; 
 Tue, 25 Jan 2022 22:32:35 -0800 (PST)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id w10sm702278lfr.234.2022.01.25.22.32.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jan 2022 22:32:34 -0800 (PST)
Date: Wed, 26 Jan 2022 09:32:33 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-Id: <20220126093233.026701eddc2a1a7dceb76849@gmail.com>
In-Reply-To: <20210607104411.23071-7-s.hauer@pengutronix.de>
References: <20210607104411.23071-1-s.hauer@pengutronix.de>
 <20210607104411.23071-7-s.hauer@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_223238_018772_54A321A2 
X-CRM114-Status: GOOD (  17.71  )
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

On Mon,  7 Jun 2021 12:44:05 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

Hi Sascha!

> To ease porting and comparing of Linux code.
> =

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/mci/arasan-sdhci.c       | 12 ++++++------
>  drivers/mci/atmel-sdhci-common.c | 14 +++++++-------
>  drivers/mci/dove-sdhci.c         | 10 +++++-----
>  drivers/mci/sdhci.h              | 17 ++++++++++++-----
>  4 files changed, 30 insertions(+), 23 deletions(-)
> =

> diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
> index e22db4cfa3..e02f222345 100644
> --- a/drivers/mci/arasan-sdhci.c
> +++ b/drivers/mci/arasan-sdhci.c

...

> @@ -200,21 +200,21 @@ static void arasan_sdhci_set_ios(struct mci_host *m=
ci, struct mci_ios *ios)
>  	}
>  =

>  	val =3D sdhci_read8(&host->sdhci, SDHCI_HOST_CONTROL) &
> -			~(SDHCI_DATA_WIDTH_4BIT | SDHCI_DATA_WIDTH_8BIT);
> +			~(SDHCI_CTRL_8BITBUS | SDHCI_CTRL_8BITBUS);
>  =

>  	switch (ios->bus_width) {
>  	case MMC_BUS_WIDTH_8:
> -		val |=3D SDHCI_DATA_WIDTH_8BIT;
> +		val |=3D SDHCI_CTRL_8BITBUS;
>  		break;
>  	case MMC_BUS_WIDTH_4:
                     ^^^^^^^^
> -		val |=3D SDHCI_DATA_WIDTH_4BIT;
                                  ^^^^^^^^^^^
> +		val |=3D SDHCI_CTRL_8BITBUS;
                                  ^^^^^^^
Is this correct?

>  		break;
>  	}
>  =

>  	if (ios->clock > 26000000)
> -		val |=3D SDHCI_HIGHSPEED_EN;
> +		val |=3D SDHCI_CTRL_HISPD;
>  	else
> -		val &=3D ~SDHCI_HIGHSPEED_EN;
> +		val &=3D ~SDHCI_CTRL_HISPD;
>  =

>  	sdhci_write8(&host->sdhci, SDHCI_HOST_CONTROL, val);
>  }
> diff --git a/drivers/mci/atmel-sdhci-common.c b/drivers/mci/atmel-sdhci-c=
ommon.c
> index b391775b00..d2b777a93c 100644
> --- a/drivers/mci/atmel-sdhci-common.c
> +++ b/drivers/mci/atmel-sdhci-common.c

...

> @@ -297,15 +297,15 @@ static int at91_sdhci_set_bus_width(struct at91_sdh=
ci *host, unsigned bus_width)
>  =

>  	switch(bus_width) {
>  	case MMC_BUS_WIDTH_8:
> -		reg |=3D SDHCI_DATA_WIDTH_8BIT;
> +		reg |=3D SDHCI_CTRL_8BITBUS;
>  		break;
>  	case MMC_BUS_WIDTH_4:
                     ^^^^^^^

> -		reg &=3D ~SDHCI_DATA_WIDTH_8BIT;
> -		reg |=3D SDHCI_DATA_WIDTH_4BIT;
                                  ^^^^^^^^^^^
> +		reg &=3D ~SDHCI_CTRL_8BITBUS;
> +		reg |=3D SDHCI_CTRL_8BITBUS;
                                  ^^^^^^^^

just the same question here

>  		break;
>  	default:
> -		reg &=3D ~SDHCI_DATA_WIDTH_8BIT;
> -		reg &=3D ~SDHCI_DATA_WIDTH_4BIT;
> +		reg &=3D ~SDHCI_CTRL_8BITBUS;
> +		reg &=3D ~SDHCI_CTRL_8BITBUS;

and here

>  	}
>  =

>  	sdhci_write8(sdhci, SDHCI_HOST_CONTROL, reg);
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
>  	switch (ios->bus_width) {
>  	case MMC_BUS_WIDTH_8:
> -		val |=3D SDHCI_DATA_WIDTH_8BIT;
> +		val |=3D SDHCI_CTRL_8BITBUS;
>  		break;
>  	case MMC_BUS_WIDTH_4:
> -		val |=3D SDHCI_DATA_WIDTH_4BIT;
> +		val |=3D SDHCI_CTRL_8BITBUS;

and here

>  		break;
>  	}
>  =

>  	if (ios->clock > 26000000)
> -		val |=3D SDHCI_HIGHSPEED_EN;
> +		val |=3D SDHCI_CTRL_HISPD;
>  	else
> -		val &=3D ~SDHCI_HIGHSPEED_EN;
> +		val &=3D ~SDHCI_CTRL_HISPD;
>  =

>  	sdhci_write8(&host->sdhci, SDHCI_HOST_CONTROL, val);
>  =


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

