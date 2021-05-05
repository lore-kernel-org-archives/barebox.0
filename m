Delivery-date: Wed, 05 May 2021 17:11:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leJBV-0007xT-PB
	for lore@lore.pengutronix.de; Wed, 05 May 2021 17:11:33 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leJBU-0000HZ-Tp
	for lore@pengutronix.de; Wed, 05 May 2021 17:11:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=56Npc7hcS4MYKdJc70UB9HVxxXjvEJI6iB1GdmrMZjc=; b=X85TUqxvILt1M270+sIG7T214
	SS1uppOIpOg5BHAxos2X1G6TN6mTrwIb6xTZqmws/jFvi0oD0QrAMIGWYgh1oQWQ/au6gxCS0hXCL
	zgZdASaZhEKi871AuxMQLbETur73hbnvESZgBSux8T5g85yR5f6jdzrvgo+ai0L+THU6sA+ncQsPo
	v5+SeYBVABBqElPI5jrwe3Y8MDHl0JUargsCWGU48JXixCMDonTIXGSqZW6sCFrPFNEkMMEhlWI+S
	GJFhh57EgSgSmdq7OqUneBBVbphhXs6pR9L6QxSFTJc5S0JObIv9PFCDAx4sGdSQEJ9aPhoeajPMR
	F+Rxh7vOA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leJAK-001W84-MI; Wed, 05 May 2021 15:10:20 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leJAH-001W7h-Br
 for barebox@desiato.infradead.org; Wed, 05 May 2021 15:10:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=FMaQFWBCpUA/6h7XWypP0sbpyzt2+Jc0TpWl1RpC63U=; b=vA1WUpGd5VNmyOUCtRag5oNXHw
 3ewiFaE7StYUZcdx9IQWQjbXhMH+3aBHqe9TPYQ0mSwVyN64rl8C65E4kzQKio5zhBBDD0TENr5DH
 yZ2D0W8kGhVZ3zToi7gi9n5M9YW+vEt5IqlrU7bgutRirgjEGXpRd9tIzQuLD/x56egLYWzXIrpN3
 0kt8axRrMxwYPB+IkphAlkXsXm/j3xQKq2nTa91eVELxPtlJxV2P2m9LWZRlMut5Gi9BfvZjfoevX
 zIkN2xoGpRl+hQ7HLdt1cNozwH5tFpIxmvtrALxBgA8FGsM3zXr7t/ryLc2Tyry4a9PViAau8kfa0
 F0551q5g==;
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leJAE-004rMf-E8
 for barebox@lists.infradead.org; Wed, 05 May 2021 15:10:15 +0000
Received: by mail-lf1-x129.google.com with SMTP id z13so3087360lft.1
 for <barebox@lists.infradead.org>; Wed, 05 May 2021 08:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FMaQFWBCpUA/6h7XWypP0sbpyzt2+Jc0TpWl1RpC63U=;
 b=HKO32RRVvCu616o4Lnd4jv/MTASe4hRIRo9i1S1qoYn/gYone3pmHGpfYL66vAiZkC
 fzRfOiAEOZboZFEIEYuQrtnoeeqKnBY6+QZ3izsO+hNpmVckK2Wl7J58ZQLt3dJpsVe+
 iUourcJgISdHz8aSW4/pOabWEKuto5DYuvoEUsGpBb5ylLs4qg6WU6TWquHPCsvpbgTL
 ttc+7km3x68Rz2jAbYT8rc3o2b4V7yRqms2vaeEOaEbb+FIJ9mg6EeNVstWb1NCC7fcn
 aHJbz4jcVprkjvxdxcFA9cyCq4Zfi4qmg9ZOT3dr34/SVQH3byXLXhnIBLxAghITTSVd
 pQLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FMaQFWBCpUA/6h7XWypP0sbpyzt2+Jc0TpWl1RpC63U=;
 b=JRDx05xmkAcr9yDzCNaYqyICDziJRvdO19Qk8Ttg4hNOFF2URSisJmmHmcHGRxr2CX
 g75+bm8cgwt44kSvj1nOiJCacg0lkv7aRInITiO/BRPj9sj/0uedSNHYizqWubLHdq+m
 xD9etNdySin6Tt4EtPGp3Bz0TUeZL6h/vmauZa5f2HG1TF0l/JAZgv57cSw1A0eVrCY/
 WXu6OOP2f9fiD4nKZUDj/4qGYghopb1Mxs7u6wt7nsHag9x9Mlu4E0VfuTR3ocMMHfLK
 8I4cRheQWCsEcxggT/RXNQjdVJIuhnVqn+7qSHMgsIKBruw70ebrzawXhQXNtIN0HwOm
 29KQ==
X-Gm-Message-State: AOAM532C7GyGnQo8WGVaTzi6uR6xG21ahWt6tMBxKDG6w5PXE/x0siwV
 kOeX3HUhGPMNt+Ufu1INJyQ=
X-Google-Smtp-Source: ABdhPJw/N1gA1QEEhc+wKYVni8IlwlfRGiMG1NbSyIC1AtSaK6zykApuQIoOSekGI8SZbRXoR6n7eQ==
X-Received: by 2002:a05:6512:142:: with SMTP id
 m2mr11540104lfo.313.1620227411760; 
 Wed, 05 May 2021 08:10:11 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id p8sm692651ljc.12.2021.05.05.08.10.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 May 2021 08:10:11 -0700 (PDT)
Date: Wed, 5 May 2021 18:10:10 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-Id: <20210505181010.a6c77ade3e304484ddd08a62@gmail.com>
In-Reply-To: <6afef336-25fc-9b4f-eb4c-8e99f7b118ac@pengutronix.de>
References: <20210505100900.88141-1-antonynpavlov@gmail.com>
 <20210505100900.88141-6-antonynpavlov@gmail.com>
 <6afef336-25fc-9b4f-eb4c-8e99f7b118ac@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_081014_496909_034BA334 
X-CRM114-Status: GOOD (  19.02  )
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
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/9] spi: add litex spiflash driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, 5 May 2021 12:39:14 +0200
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi Ahmad!

> Hello Antony,
> =

> On 05.05.21 12:08, Antony Pavlov wrote:
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  drivers/spi/Kconfig          |   3 +
> >  drivers/spi/Makefile         |   1 +
> >  drivers/spi/litex_spiflash.c | 242 +++++++++++++++++++++++++++++++++++
> >  3 files changed, 246 insertions(+)
> > =

> > diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
> > index 323d93efeb..714d30e909 100644
> > --- a/drivers/spi/Kconfig
> > +++ b/drivers/spi/Kconfig
> > @@ -74,6 +74,9 @@ config DRIVER_SPI_IMX_2_3
> >  	depends on ARCH_IMX50 || ARCH_IMX51 || ARCH_IMX53 || ARCH_IMX6 || ARC=
H_IMX7 || ARCH_IMX8MQ
> >  	default y
> >  =

> > +config DRIVER_SPI_LITEX_SPIFLASH
> > +	bool "Litex SPIFLASH bitbang master driver"
> =

> The SPI controller is called SPIFLASH?

Yes. Simple SPI flash controller is part of litex repo:
https://github.com/enjoy-digital/litex/blob/master/litex/soc/cores/spi_flas=
h.py

There is another LiteX SPI controller: https://github.com/litex-hub/litespi

...

> > --- /dev/null
> > +++ b/drivers/spi/litex_spiflash.c
> > @@ -0,0 +1,242 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +/*
> > + * Copyright (C) 2020 Antony Pavlov <antonynpavlov@gmail.com>
> > + *
> > + */
> > +
> > +#include <common.h>
> > +#include <init.h>
> > +#include <driver.h>
> > +#include <spi/spi.h>
> > +#include <io.h>
> > +#include <clock.h>
> =

> Unused now, I think.

Yes, clock.h is unused.

...

> > +
> > +#define spidelay(nsecs) udelay(nsecs/1000)
> =

> Unused.
> =

> > +
> > +#include "spi-bitbang-txrx.h"


No, spidelay() is used inside of spi-bitbang-txrx.h.
...

> > +
> > +	litex_spiflash_spi_enable(litex_spiflash_spi);
> > +
> > +	/* inactivate chip select signal */
> =

> Nitpick s/inactivate/deactivate/

Quora.com says that there is no big difference (see
https://www.quora.com/What-is-the-difference-between-deactivate-and-inactiv=
ate)
but 'git grep' on linux kernel sources says that deactivate is more popular.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

