Delivery-date: Fri, 07 May 2021 14:04:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lezD8-0004RS-Be
	for lore@lore.pengutronix.de; Fri, 07 May 2021 14:04:02 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lezD7-0003zT-DW
	for lore@pengutronix.de; Fri, 07 May 2021 14:04:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pumLH5iGCbWAGu/6G8X34lDhiipnSl3F4KQg9zM1R2Q=; b=c2SzMI0DgRlalf65F7mmIrEG/
	Qq2VggxKhlX+lf3sYNvayr7iDob2gW5MTQU1VtcdYNI+GO3a6mZFn2VQ6eIziguYRYQJbn+UtqO43
	QV8k7WlEMhK+b2/ojlhfENLfrbzj1gJ6Dvn0IuRXwtU504L8JqxdQGWtw//phPrGDTqvvonjI8L80
	9uFKMpPaIRhVbRDafWDkJu1+OgDYHixFN61y0SW58Lf+dKdtj6CzG64zzKr2mL1Fct34v3ya5RRHg
	R/5zCMryZc8neLqco7FKQ1EpQ2+ODtn5MiNw8AS6d5O80Il0bGYJR0rDjGpZWDqrybfF9MjVb+zc7
	920ocY3ow==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lezBn-0071Jc-OH; Fri, 07 May 2021 12:02:39 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lezBj-0071JI-99
 for barebox@desiato.infradead.org; Fri, 07 May 2021 12:02:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=KDvZe6WoMd8W5G0DD1NXFdau3tVLpzB3kaQemlX/2CI=; b=YxY1zl9Z7XKLx27sjP6UPqGXko
 NLj8iwUZ/6kC1EAJb08DG40f5KdORUs27VySmnr9Z8kXzrOfOppyF1r2BWzS6050+NUg2+qwpXBEu
 BvcFSJ2j9ubc8BDo+nl6eE4yoxa6rlSDzgPuzGe8rX15f1DubAW1Vwumf2Ujy/WVIEARjWNRiFzxP
 lUkrHGpmldhqMqcAJ4ZtwL+1ZmZZ3qIlUCC6TcyoFbbdfYVmxG1cQvNK5I/y1QH/VODz9Qp1FfDOc
 2S32/JrovJ+G3ryzyNpmuzUUiohNJbWCPIt0tONWbOp8yFISTqqG7m6WLysOx6pzkkZoQp+k7FHIU
 PAveDE3w==;
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lezBf-006po4-Db
 for barebox@lists.infradead.org; Fri, 07 May 2021 12:02:33 +0000
Received: by mail-lf1-x133.google.com with SMTP id t11so12354307lfl.11
 for <barebox@lists.infradead.org>; Fri, 07 May 2021 05:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KDvZe6WoMd8W5G0DD1NXFdau3tVLpzB3kaQemlX/2CI=;
 b=b6UAaxJiODfSoV6dMqvWd2xheCYRRrP5hcjfXc1ugrMwUlsNGQUyPZvzLLTGpP+TZA
 5JXwg22fnKcTGxao7fKidvprABvPw2DyrpAmkwuUOO/3oYNPW8qgs8ZX+CH3q07KE9Nn
 02LdKqT9K6K/y+LutY+fY6D25cqLA3IuWdXiHQ1v7sc/1wjZ34TvPR74n1VMke3iH4Hz
 IERTGtO1Ogw1xdfyWbPvgTaKsqbsoefuPV/BcL3yXVU5ikez548f26Xmap6oUpCXTgGY
 hdk+g1/mnP/NvxnIoN/sPOUMypq7mxlQhP8w5yO/llUkVZV4kEMYI3dsnDZoOJbOA/iN
 Vt9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KDvZe6WoMd8W5G0DD1NXFdau3tVLpzB3kaQemlX/2CI=;
 b=Luy04ZoZegyriJg1mrXkQSZ5KFOI1OzxVSxBzPOVgLan2RCUNKt+IkWRx4vXhFuWFE
 AvWRcNVSXF8Gme/5sxNbsA6oYY59lSViSyXGvjhfb9325SqNxIu5nMKpEJZOxz5AGLpP
 rXb9vfhC+tcnXpyxZo6jNsL0m9ZFhQnu7zc+EvQdoK5W4IusOTtb0WgWfW54Esb1NxML
 bYZjvlkRkSJlexcIux14HLozfokSs9pRSktXrIiKWK+IoOLmLzXCREvL7IFqKb8j38AW
 O59YJ0fD4vbkFoimrJOVrATpCk/hFeB0+HDlBUgCv1sJZtsTlhSLV6RXaXS8P8TKnnkz
 PHmg==
X-Gm-Message-State: AOAM533oGphjCO+0sMR251mkcJZIaZv4aPxJ27JGH85B8c2/ZM6T6aFO
 UpvDhjRbpp2TV00O2ce7UztBUZZRa8apcA==
X-Google-Smtp-Source: ABdhPJz7iPUJ15BH/Y4CcJ1CKbuaZoe8LMUM/SMcUB/wwo+rifBpkRtDNRkYOkkDymbiRT53DiGgbg==
X-Received: by 2002:a05:6512:3e16:: with SMTP id
 i22mr6462401lfv.250.1620388948690; 
 Fri, 07 May 2021 05:02:28 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id m5sm1838000ljc.120.2021.05.07.05.02.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 May 2021 05:02:28 -0700 (PDT)
Date: Fri, 7 May 2021 15:02:26 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-Id: <20210507150226.83b72d0056e42883842ca398@gmail.com>
In-Reply-To: <c2ca4628-d34f-f9b6-4f9b-5348c57526a6@pengutronix.de>
References: <20210506220834.223350-1-antonynpavlov@gmail.com>
 <20210506220834.223350-6-antonynpavlov@gmail.com>
 <c2ca4628-d34f-f9b6-4f9b-5348c57526a6@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_050231_505613_F008DC13 
X-CRM114-Status: GOOD (  28.30  )
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
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 05/11] serial: add litex UART driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, 7 May 2021 13:45:57 +0200
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

> Hi,
> =

> On 07.05.21 00:08, Antony Pavlov wrote:
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  drivers/serial/Makefile       |  1 +
> >  drivers/serial/serial_litex.c | 96 +++++++++++++++++++++++++++++++++++
> >  2 files changed, 97 insertions(+)
> > =

> > diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
> > index 5120b17376..45055371ea 100644
> > --- a/drivers/serial/Makefile
> > +++ b/drivers/serial/Makefile
> > @@ -24,3 +24,4 @@ obj-$(CONFIG_DRIVER_SERIAL_DIGIC)		+=3D serial_digic.o
> >  obj-$(CONFIG_DRIVER_SERIAL_LPUART)		+=3D serial_lpuart.o
> >  obj-$(CONFIG_VIRTIO_CONSOLE)			+=3D virtio_console.o
> >  obj-$(CONFIG_SERIAL_SIFIVE)			+=3D serial_sifive.o
> > +obj-$(CONFIG_SOC_LITEX)				+=3D serial_litex.o
> > diff --git a/drivers/serial/serial_litex.c b/drivers/serial/serial_lite=
x.c
> > new file mode 100644
> > index 0000000000..8562a45ecc
> > --- /dev/null
> > +++ b/drivers/serial/serial_litex.c
> > @@ -0,0 +1,96 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2019 Antony Pavlov <antonynpavlov@gmail.com>
> > + *
> > + */
> > +
> > +#include <common.h>
> > +#include <init.h>
> > +#include <io.h>
> > +
> > +#define UART_RXTX	0x00
> > +#define UART_TXFULL	0x04
> > +#define UART_RXEMPTY	0x08
> > +#define UART_EV_PENDING	0x10
> > +#define  UART_EV_RX	(1 << 1)
> > +
> > +static inline uint32_t litex_serial_readb(struct console_device *cdev,
> > +						uint32_t offset)
> > +{
> > +	void __iomem *base =3D cdev->dev->priv;
> > +
> > +	return readb(base + offset);
> > +}
> > +
> > +static inline void litex_serial_writeb(struct console_device *cdev,
> > +					uint32_t value, uint32_t offset)
> > +{
> > +	void __iomem *base =3D cdev->dev->priv;
> > +
> > +	writeb(value, base + offset);
> > +}
> > +
> > +static void litex_serial_putc(struct console_device *cdev, char c)
> > +{
> > +	while (litex_serial_readb(cdev, UART_TXFULL))
> > +		;
> > +
> > +	litex_serial_writeb(cdev, c, UART_RXTX);
> > +}
> > +
> > +static int litex_serial_getc(struct console_device *cdev)
> > +{
> > +	int c;
> > +
> > +	while (litex_serial_readb(cdev, UART_RXEMPTY))
> > +		;
> > +
> > +	c =3D litex_serial_readb(cdev, UART_RXTX);
> > +
> > +	/* refresh UART_RXEMPTY by writing UART_EV_RX to UART_EV_PENDING */
> > +	litex_serial_writeb(cdev, UART_EV_RX, UART_EV_PENDING);
> > +
> > +	return c;
> > +}
> > +
> > +static int litex_serial_tstc(struct console_device *cdev)
> > +{
> > +	return !litex_serial_readb(cdev, UART_RXEMPTY);
> > +}
> > +
> > +static int litex_serial_probe(struct device_d *dev)
> > +{
> > +	struct resource *iores;
> > +	struct console_device *cdev;
> > +
> > +	cdev =3D xzalloc(sizeof(struct console_device));
> > +	iores =3D dev_request_mem_resource(dev, 0);
> > +	if (IS_ERR(iores))
> > +		return PTR_ERR(iores);
> > +
> > +	dev->priv =3D IOMEM(iores->start);
> > +	cdev->dev =3D dev;
> > +	cdev->tstc =3D &litex_serial_tstc;
> > +	cdev->putc =3D &litex_serial_putc;
> > +	cdev->getc =3D &litex_serial_getc;
> > +	cdev->setbrg =3D NULL;
> =

> Does the IP only output a fixed baudrate/configuration?

Yes, this IP works at fixed baudrate.

Baudrate is selected during FPGA bitstream compilation,
e.g. see https://github.com/litex-hub/linux-on-litex-vexriscv/commit/0b133c=
c3

At the moment there is a problem with this fixed speed port: loady command =
does not work.

> > +
> > +	console_register(cdev);
> > +
> > +	return 0;
> > +}
> > +
> > +static __maybe_unused struct of_device_id litex_serial_dt_ids[] =3D {
> > +	{
> > +		.compatible =3D "litex,uart",
> > +	}, {
> > +		/* sentinel */
> > +	}
> > +};
> > +
> > +static struct driver_d litex_serial_driver =3D {
> > +	.name  =3D "litex-uart",
> > +	.probe =3D litex_serial_probe,
> > +	.of_compatible =3D DRV_OF_COMPAT(litex_serial_dt_ids),
> > +};
> > +console_platform_driver(litex_serial_driver);
> > =

> =

> -- =

> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

