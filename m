Delivery-date: Fri, 19 Nov 2021 09:38:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnzPU-0005PC-TL
	for lore@lore.pengutronix.de; Fri, 19 Nov 2021 09:38:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnzPU-0005lZ-03
	for lore@pengutronix.de; Fri, 19 Nov 2021 09:38:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0VCmBPILbOJ/SZy8SSvNFBCWJ3mCog48n2QTkS9ELgY=; b=rXMemBMlUP/qiI
	W30GfCzehNOQ9iHvClLzbVvF1vQMh1GlhvmJ9vkRNfZHVz8caq+zQ/OM0dXTEx0wPOa9cv8nXjFuH
	z9B6ed9/gaXNfw2FlisahFFY6pZGBwRGOxec0PPHKjjToYdh+rh7sdeDiVAgPbGC1lL8a9LR+gHsT
	qGqQCqKohmv386hFpuGl8Q+iKqfVJTW3WPJbbbGE6M9UsuChm+yK73MFoNUi3EYSMGoxnSvQvPJuD
	t+sNX2nVTr22X5LFN6PsaBPhmFlkTDzdkvUNZv9B4O8XD3Gk8+ETRcM+QDa/PX7p/l4NEMJ4Y5/W8
	0Z3PYBdG6NTzO4BuXjeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnzNr-009msr-Qp; Fri, 19 Nov 2021 08:36:35 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnzNm-009mrw-GB
 for barebox@lists.infradead.org; Fri, 19 Nov 2021 08:36:31 +0000
Received: by mail-lf1-x131.google.com with SMTP id c32so40025483lfv.4
 for <barebox@lists.infradead.org>; Fri, 19 Nov 2021 00:36:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=is//rJz0am0frbicVEW1hTN01HDxFkSrSdVYUBzHan8=;
 b=XKutuK8wyLzeJyyElJ1KRFpjGnDKVjovpg+3powspxD5B+o+r7j6LlAAUnK21cvnhU
 wBRTAzIbO2enqU2t36cAhseb+vg+RwywDC5IWgKr9FtcHSIkAdY8CewFlj4fTL2viKnC
 hUQf4uDPS7llZoFdx4ktK3z3HcgQMbgMaMAe++B9zeRFciQjfnWYw2vLOJzCehtDWQcF
 hEk8gwhfNv7NY2zRtonTy95S9R0mgnWSJRlKdHXYTMUD1tGDFkS0VSUAQMo+ZauswDbW
 lidFliYMX+A4B5/Gw6BDpZRyWPKWOkJ8oPftrE8+4UOMqrQqG0M5FNYVwbXXm577qB3c
 ycyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=is//rJz0am0frbicVEW1hTN01HDxFkSrSdVYUBzHan8=;
 b=Mlcvfo5PhD3I2rMkT15qZJ9QMluwKxnzBOGVaco1mrEjp98e44uxnnX4Smz2B2hJBM
 6MHUfKRwJf4XBw1cRHSO7OYn9r3WnZ0585s6STBgl0WeQpwE29vKW6BobRHedC8Gd1li
 KkP74Z4De9yNdcePtRbmyFqkERgH4SjNaPde/3dj+rji3tc6m0bNfoJNfPg45B0wxJ3a
 E481arCiM17WOdv8kTZ8A1RLoQjlax5Zq43UuRmQB+jwO56h2sMdMP2cF4TKjUnwGOec
 MMLfedEzfY6k0uWa3OvqNnWaRn89oWmIGBrjNBH0YarXGLTNLS9ect2k2CGahFpM6NWc
 Y3vw==
X-Gm-Message-State: AOAM532X/mi5N5Hco+3qVSZ2rpBKhEZE39HU+cM6IA/8saficwBDjM/3
 Gr11t91aLYPs9Ox371w09Olag3CyvdSaug==
X-Google-Smtp-Source: ABdhPJwLs+dThToE1OrHMKBJ0SGwAunXE+hRW6Rro1TgGkvQZV13L4ezOlQEsqWgTpd2FWJsS1rfnQ==
X-Received: by 2002:a05:6512:2082:: with SMTP id
 t2mr25850400lfr.186.1637310988035; 
 Fri, 19 Nov 2021 00:36:28 -0800 (PST)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id c23sm227742ljr.85.2021.11.19.00.36.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 19 Nov 2021 00:36:27 -0800 (PST)
Date: Fri, 19 Nov 2021 11:36:26 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-Id: <20211119113626.d550f1e237bbd974899a6db5@gmail.com>
In-Reply-To: <c166fe6f-7265-cc58-5d68-1f3dd2b424a3@pengutronix.de>
References: <20211105074657.3914257-1-a.fatoum@pengutronix.de>
 <20211108200117.7d0df0b548e029ff580855b2@gmail.com>
 <c166fe6f-7265-cc58-5d68-1f3dd2b424a3@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211119_003630_577173_059C307E 
X-CRM114-Status: GOOD (  23.35  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] spi: add STM32 SPI controller driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, 18 Nov 2021 13:32:18 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi Ahmad!

> On 08.11.21 18:01, Antony Pavlov wrote:
> > On Fri,  5 Nov 2021 08:46:57 +0100
> > Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> > =

> >> Tested on a STM32MP1 communicating with a ksz9563.
> > =

> > ...
> > =

> >> diff --git a/drivers/spi/stm32_spi.c b/drivers/spi/stm32_spi.c
> >> new file mode 100644
> >> index 000000000000..0cb04a968c8a
> >> --- /dev/null
> >> +++ b/drivers/spi/stm32_spi.c
> >> @@ -0,0 +1,590 @@
> >> +// SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
> >> +/*
> >> + * Copyright (C) 2019, STMicroelectronics - All Rights Reserved
> >> + *
> >> + * Driver for STMicroelectronics Serial peripheral interface (SPI)
> >> + */
> >> +
> > =

> > ...
> > =

> >> +/* STM32_SPI_CR2 bit fields */
> >> +#define SPI_CR2_TSIZE		GENMASK(15, 0)
> > =

> > So SPI_CR2_TSIZE is (64K - 1)
> > =

> > ...
> > =

> >> +
> >> +static int stm32_spi_transfer_one(struct stm32_spi_priv *priv,
> >> +				  struct spi_transfer *t)
> >> +{
> >> +	struct device_d *dev =3D priv->master.dev;
> >> +	u32 sr;
> >> +	u32 ifcr =3D 0;
> >> +	u32 mode;
> >> +	int xfer_status =3D 0;
> >> +
> >> +	if (t->len <=3D SPI_CR2_TSIZE)
> >> +		writel(t->len, priv->base + STM32_SPI_CR2);
> >> +	else
> >> +		return -EMSGSIZE;
> > =

> > So stm32_spi_transfer_one() can transfer no more than (64K - 1).
> > At the other hand imd tends to read more than  (64K - 1) from SPI flash=
, e.g.
> > =

> >   barebox:/ imd /dev/m25p0
> >   imd: error 90
> > =

> > Here is my solution for handling SPI flash by stm32 SPI driver (not tes=
ted on stm32):
> =

> Thanks for the input. I believe I have STM32 with a SPI flash, where
> I should be able to test this. I'll report back once I come around to it.
> =

> Can I have your Signed-off-by for this patch here?

Yes, please add my Signed-off-by for the patch.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

