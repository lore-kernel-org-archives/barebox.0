Delivery-date: Sat, 25 Sep 2021 20:34:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mUCV8-0001zK-5w
	for lore@lore.pengutronix.de; Sat, 25 Sep 2021 20:34:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mUCV6-0001Nb-Rw
	for lore@pengutronix.de; Sat, 25 Sep 2021 20:34:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+bNraVrSNOh9YVAo5LxdyzcYtPK7mfdCena+7CWaKT0=; b=2envaeGbWXfFgd
	j3kIDv34+MEcI/yC7CmE/21TK0lIOG0nuk8kgfcRtDM0fqnpIunHLN6YiEKq2RuswQ1B/kVA6LrQ5
	OTatawh4yNrj0ysQ7KLzZdDjseRfEPvP+FXBaqVUOtzO+9W07uMuBatq9/TAJllyNskvuHoB+k0vP
	lPTPb8oUCwo15Zjf5T9Xxlzuqnes2TW/I/aGQfUONhQ87sO56rkFNQxVphgVPdxSkUezE/Wf/Hcyi
	IXcSpXhqlaFT4q+xhKjSa88eEfFLyU58TfkMTMSNrfpl+PiQ69cTBbwG2rwQB+7Jd3pKQYneYx7JW
	Mzy2OZZ1ODtG2KK0eBOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUCTE-00H2oh-U5; Sat, 25 Sep 2021 18:32:21 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUCT8-00H2oM-Tc
 for barebox@lists.infradead.org; Sat, 25 Sep 2021 18:32:16 +0000
Received: by mail-lf1-x131.google.com with SMTP id e15so55630002lfr.10
 for <barebox@lists.infradead.org>; Sat, 25 Sep 2021 11:32:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JI0ItuqKegR9dBhUl+es+QffnZGI4ToosYIaA/O+c50=;
 b=I+NLBdbGPeePbVjcstEtiNGow8Ki81gIXQ8mtJVWJXto+xb713pnuud83EkLd6cI7R
 AIqaHIjVeAvUan4AQUsuHbCF7ZxOykw5ZCrihDm3/tyNAEcmv8rpWCmeqICVNmBtEBsm
 uo57mWac1XRM1E3nolE0gZ1SyC6tbLTwVvJPeOBfQXNarPqozZxXXZEWwMIOjAsBrwNZ
 VFkLbWKr9Jm2YELdm1/jbA+gmoBoxBaw+XSC+6OR1qfRsJ+N7n7zNKUXmtFxqOhaNkiN
 w6oJ/p0qOTqglRFCzGxlHdcQc7yga/RVAlQIHILhfnLdXqnyQ0qFzHsegIaBDE5MeyTz
 npeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JI0ItuqKegR9dBhUl+es+QffnZGI4ToosYIaA/O+c50=;
 b=iAkWKIyY4OkpTXGLuebk1fyN8BiOGzNwoHm5/cilkNuUfICR7kzAtwDX5s+s6buXe8
 6yDR53zncmkBgB6N+5dzzM1QH3ahThldjqmEVXspS6syQUXMqC32pWQlvpFHOdsgTRq5
 pji1zagvjtoi/RteSyBp33CyZrEAzO8ftfoRLU+lAY4Fuiqi/F1n7Ybc1poh3E/YGeMt
 elEsvlcDo1SMpklb71sv4Ar08+AScjbp0pyxVfVaSKZBZQz9vgMkNO2jdxMY/SJ1OAKR
 yxPvAN6ef0VlTIv8MMRlziy50DJjKq9SGwaJ0y+7jnIWhJ66tsLeqYFklKmj1q9TNymQ
 3h9g==
X-Gm-Message-State: AOAM533jiXki8gY6OI2HFps3BYFKfIS9PiTML7j3IFuhBbHY8wvvzzzh
 SRba4ywGbwK9lhHblkcqE/g=
X-Google-Smtp-Source: ABdhPJzL5z+ndRNDPfwTOxkLtCdndec9VYqYvOSU3pjvliFHH1rosKn0Q9ZfR8UCsCBzBU1fVCp6Ug==
X-Received: by 2002:ac2:5cac:: with SMTP id e12mr15256567lfq.624.1632594732502; 
 Sat, 25 Sep 2021 11:32:12 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id w18sm1090685lfl.168.2021.09.25.11.32.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 25 Sep 2021 11:32:12 -0700 (PDT)
Date: Sat, 25 Sep 2021 21:32:10 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Marcelo Politzer <marcelo.politzer@cartesi.io>
Cc: barebox@lists.infradead.org
Message-Id: <20210925213210.42370aba96c3b406f0f06f4f@gmail.com>
In-Reply-To: <CA+cd6D7Yjd9JJYspMu+o8eyAYLO05tUtOjsbZ=PjejRfTYmsoQ@mail.gmail.com>
References: <20210923204236.30975-1-marcelo.politzer@cartesi.io>
 <CA+cd6D7Yjd9JJYspMu+o8eyAYLO05tUtOjsbZ=PjejRfTYmsoQ@mail.gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210925_113215_010488_49FEAF72 
X-CRM114-Status: GOOD (  26.54  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Fwd: [PATCH] serial: implement riscv SBI console support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, 24 Sep 2021 10:13:38 -0300
Marcelo Politzer <marcelo.politzer@cartesi.io> wrote:

Hi, Marcelo!


> Implement a console over legacy SBI (version 0.1.0). There is a tiny ring=
buffer
> to simplify checking for presence and reading characters as separate step=
s.
> =

> Signed-off-by: Marcelo Politzer <marcelo.politzer@cartesi.io>
> ---
>  arch/riscv/cpu/core.c       | 13 ++++++++
>  arch/riscv/lib/sbi.c        | 11 +++++++
>  drivers/serial/Kconfig      |  8 +++++
>  drivers/serial/Makefile     |  1 +
>  drivers/serial/serial_sbi.c | 60 +++++++++++++++++++++++++++++++++++++
>  5 files changed, 93 insertions(+)
>  create mode 100644 drivers/serial/serial_sbi.c
> =

> diff --git a/arch/riscv/cpu/core.c b/arch/riscv/cpu/core.c
> index 80730c05b..9226037f3 100644
> --- a/arch/riscv/cpu/core.c
> +++ b/arch/riscv/cpu/core.c
> @@ -24,6 +24,7 @@
>  #include <magicvar.h>
>  #include <asm/system.h>
>  #include <io.h>
> +#include <asm/sbi.h>

There is no need to include <asm/sbi.h> here.

> =

>  static int riscv_request_stack(void)
>  {
> @@ -33,6 +34,7 @@ static int riscv_request_stack(void)
>  coredevice_initcall(riscv_request_stack);
> =

>  static struct device_d timer_dev;
> +static struct device_d serial_sbi_dev;
> =

>  static s64 hartid;
> =

> @@ -75,6 +77,17 @@ static int riscv_probe(struct device_d *parent)
>                         return ret;
>         }
> =

> +       if (IS_ENABLED(CONFIG_SERIAL_SBI) && !serial_sbi_dev.parent) {
> +               serial_sbi_dev.id =3D DEVICE_ID_SINGLE;
> +               serial_sbi_dev.device_node =3D 0;
> +               serial_sbi_dev.parent =3D parent;
> +               dev_set_name(&serial_sbi_dev, "riscv-serial-sbi");
> +
> +               ret =3D platform_device_register(&serial_sbi_dev);
> +               if (ret)
> +                       return ret;
> +       }
> +

Please, use tabs for indentation!


>         hartid =3D riscv_hartid();
>         if (hartid >=3D 0)
>                 globalvar_add_simple_uint64("hartid", &hartid, "%llu");
> diff --git a/arch/riscv/lib/sbi.c b/arch/riscv/lib/sbi.c
> index 45a04fb82..209069c98 100644
> --- a/arch/riscv/lib/sbi.c
> +++ b/arch/riscv/lib/sbi.c
> @@ -64,3 +64,14 @@ static int sbi_init(void)
> =

>  }
>  core_initcall(sbi_init);
> +
> +

No extra emptyline here.

> +void sbi_console_putchar(int ch)
> +{
> +       sbi_ecall(SBI_EXT_0_1_CONSOLE_PUTCHAR, 0, ch, 0, 0, 0, 0, 0);
> +}
> +
> +int sbi_console_getchar(void)
> +{
> +       return sbi_ecall(SBI_EXT_0_1_CONSOLE_GETCHAR, 0, 0, 0, 0, 0,
> 0, 0).error;
> +}
> diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
> index b9750d177..5e30ea388 100644
> --- a/drivers/serial/Kconfig
> +++ b/drivers/serial/Kconfig
> @@ -173,4 +173,12 @@ config SERIAL_SIFIVE
>           contains a SiFive UART IP block.  This type of UART is present =
on
>           SiFive FU540 SoCs, among others.
> =

> +config SERIAL_SBI
> +       tristate "RISCV Serial support over SBI's HTIF"
> +       depends on OFDEVICE
> +       depends on RISCV_SBI
> +       help
> +         Select this option if you are building barebox for a RISCV plat=
form
> +         that implements a serial over SBI.
> +
>  endmenu
> diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
> index 5120b1737..b1de436ed 100644
> --- a/drivers/serial/Makefile
> +++ b/drivers/serial/Makefile
> @@ -24,3 +24,4 @@ obj-$(CONFIG_DRIVER_SERIAL_DIGIC)             +=3D
> serial_digic.o
>  obj-$(CONFIG_DRIVER_SERIAL_LPUART)             +=3D serial_lpuart.o
>  obj-$(CONFIG_VIRTIO_CONSOLE)                   +=3D virtio_console.o
>  obj-$(CONFIG_SERIAL_SIFIVE)                    +=3D serial_sifive.o
> +obj-$(CONFIG_SERIAL_SBI)                       +=3D serial_sbi.o
> diff --git a/drivers/serial/serial_sbi.c b/drivers/serial/serial_sbi.c
> new file mode 100644
> index 000000000..7217ce9cc
> --- /dev/null
> +++ b/drivers/serial/serial_sbi.c
> @@ -0,0 +1,60 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2021 Marcelo Politzer <marcelo.politzer@cartesi.io>
> + */
> +
> +#include <common.h>
> +#include <driver.h>
> +#include <malloc.h>
> +#include <io.h>
> +#include <of.h>

Please drop <io.h> and <of.h> inclusion here. These header files are unused.

> +#include <asm/sbi.h>
> +
> +struct sbi_serial_priv {
> +       struct console_device cdev;
> +       uint8_t b[2], head, tail;
> +};
> +
> +static int sbi_serial_getc(struct console_device *cdev)
> +{
> +       struct sbi_serial_priv *priv =3D cdev->dev->priv;
> +       if (priv->head =3D=3D priv->tail)
> +               return -1;
> +       return priv->b[priv->head++ & 0x1];
> +}
> +
> +static void sbi_serial_putc(struct console_device *cdev, const char ch)
> +{
> +       sbi_console_putchar(ch);
> +}
> +
> +static int sbi_serial_tstc(struct console_device *cdev)
> +{
> +       struct sbi_serial_priv *priv =3D cdev->dev->priv;
> +       int c =3D sbi_console_getchar();
> +
> +       if (c !=3D -1)
> +               priv->b[priv->tail++ & 0x1] =3D c;
> +       return priv->head !=3D priv->tail;
> +}
> +
> +static int sbi_serial_probe(struct device_d *dev)
> +{
> +       struct sbi_serial_priv *priv;
> +
> +       priv =3D dev->priv =3D xzalloc(sizeof(*priv));
> +       priv->cdev.dev    =3D dev;
> +       priv->cdev.putc   =3D sbi_serial_putc;
> +       priv->cdev.getc   =3D sbi_serial_getc;
> +       priv->cdev.tstc   =3D sbi_serial_tstc;
> +       priv->cdev.flush  =3D 0;
> +       priv->cdev.setbrg =3D 0;
> +
> +       return console_register(&priv->cdev);
> +}
> +
> +static struct driver_d serial_sbi_driver =3D {
> +       .name   =3D "riscv-serial-sbi",
> +       .probe  =3D sbi_serial_probe,
> +};
> +postcore_platform_driver(serial_sbi_driver);
> --
> 2.32.0
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

