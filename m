Delivery-date: Mon, 27 Sep 2021 22:10:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mUwxM-0004zG-O0
	for lore@lore.pengutronix.de; Mon, 27 Sep 2021 22:10:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mUwxL-0006UE-BU
	for lore@pengutronix.de; Mon, 27 Sep 2021 22:10:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w75tHZRiQPmJ9veJFoE1iL/436DRxOiOwCTTcbSI0+U=; b=gch9q8njxoe9kq
	G4T595IoNcOatdmM1SukIaijvHo1BmKjKwOx6Pav/Md8QYHzdkxnoMU+U66xcvBEy4qWu1z7OtfS6
	M5G6ubEVzrack8gpJsmzMk6+/WlbNNSqfODwffKOAZF0wasfK0W3fUOXKYcmxlpsemfLY6QObG4zG
	VHRprNq4T71mUaitsP2T5+kvcadONYS/mS0tVi+TOMKgszn1J3YOSM5jsdVaJDXets5ESpxnMb8qd
	kOIFAZVz+lqO+Tklwp59/ZBvYjlRZ0pgH1nY0QzTTuFpGQG81aikWdufGs8YJRLMhGm0eB3Np7W0p
	SPkdyM8cwBIuZxprLBTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUww5-0047V4-Dy; Mon, 27 Sep 2021 20:09:13 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUwvy-0047Tq-FO
 for barebox@lists.infradead.org; Mon, 27 Sep 2021 20:09:08 +0000
Received: by mail-lf1-x134.google.com with SMTP id y26so43207089lfa.11
 for <barebox@lists.infradead.org>; Mon, 27 Sep 2021 13:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cartesi-io.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Zy+PFcP7ypy4QhwnLkXndKNAu96H4KyrqtQh8xaHgpE=;
 b=4FpYSmc8p7Jo5bVbUdfF5fJefcq8HVZPSBjQGC9aLoMzV/8t4PJvnf83Z8bziWQbEy
 mn/t6mrjX/u9lqBGMDyJe0SsISgaLxgU58qB6eHz1IdHzJ3AsJTBwTkIKqapVVzznOwE
 FA4BiuJWnRechemhxLiPp9DbbIgZ5761GGusHjcteP4UwpFyfYoGRoH5QQtxOJW1O6GV
 DMyEgEW1voH86R/Ex90wKLEl75+qxUy1ysKHgRPIfK2SIB+r0UUcqyQp/QxW2EWFn9ff
 OjCZtTHG0qUW7StlZHBtu/Cw0UCmCduxCDtT09sPupRkdxlQzQUocMFbhBN+YnVRxiZf
 tlAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Zy+PFcP7ypy4QhwnLkXndKNAu96H4KyrqtQh8xaHgpE=;
 b=qXUhv1f1yAkVo4lQ6ZhdI3rgQ6V+WPDVm1T671F8TNTRAxhy/CkPPcOA4yfGS4VwVs
 hE2NCzyl4fC/oF6byuogmwykVlNzDdq4WCS6hik99OeGdpz5XPJUiXq8eljshjqkx2eK
 9wJPdz6bU3fYKwhWTlD2flgfRXQQNHjkNoOU7+EqgT++0omIqeFH3r+/R5uM5KcOR9SD
 zmRMLSkFBaY0SvBonZ/K7raOZP7Bz3uKuI0LrolZ3v5ZpWcMLdha6yYq+CIEiMzvm83D
 QYwTH29YExsBB9iOr9l8zDx7lgl+qIFq1qk5csXPSr9pjrIC3/FdRn2QK0nBgiGhahRB
 z82w==
X-Gm-Message-State: AOAM5328Ywctipug3qN/rZibBql8qtbXOj1iaphj/8aB9AjyDBrehjd7
 exiVB47vLEVLQTVAhu5P8s8+5um9DoX2zws7tzexag==
X-Google-Smtp-Source: ABdhPJw9NPiyhxdjTRNP8u13fk12rOquUwOEX6R+EfinaN67LzsvbwcyJJ1gSsgSGirOKzuhmnL7BIKuYPB3rTmSNm8=
X-Received: by 2002:a05:6512:13a9:: with SMTP id
 p41mr1683717lfa.648.1632773343781; 
 Mon, 27 Sep 2021 13:09:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210923204236.30975-1-marcelo.politzer@cartesi.io>
 <CA+cd6D7Yjd9JJYspMu+o8eyAYLO05tUtOjsbZ=PjejRfTYmsoQ@mail.gmail.com>
 <20210925213210.42370aba96c3b406f0f06f4f@gmail.com>
In-Reply-To: <20210925213210.42370aba96c3b406f0f06f4f@gmail.com>
From: Marcelo Politzer <marcelo.politzer@cartesi.io>
Date: Mon, 27 Sep 2021 17:08:08 -0300
Message-ID: <CA+cd6D7fUCi=df+bMF1yBKEhFXjTPe9sq5Lkj8iUXrPb5YzRvA@mail.gmail.com>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_130906_546102_9264944F 
X-CRM114-Status: GOOD (  33.64  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Fwd: [PATCH] serial: implement riscv SBI console support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Thank you for taking the time to review,

I've sent a v2 with your suggestions incorporated.

best,
Marcelo

On Sat, Sep 25, 2021 at 3:32 PM Antony Pavlov <antonynpavlov@gmail.com> wrote:
>
> On Fri, 24 Sep 2021 10:13:38 -0300
> Marcelo Politzer <marcelo.politzer@cartesi.io> wrote:
>
> Hi, Marcelo!
>
>
> > Implement a console over legacy SBI (version 0.1.0). There is a tiny ringbuffer
> > to simplify checking for presence and reading characters as separate steps.
> >
> > Signed-off-by: Marcelo Politzer <marcelo.politzer@cartesi.io>
> > ---
> >  arch/riscv/cpu/core.c       | 13 ++++++++
> >  arch/riscv/lib/sbi.c        | 11 +++++++
> >  drivers/serial/Kconfig      |  8 +++++
> >  drivers/serial/Makefile     |  1 +
> >  drivers/serial/serial_sbi.c | 60 +++++++++++++++++++++++++++++++++++++
> >  5 files changed, 93 insertions(+)
> >  create mode 100644 drivers/serial/serial_sbi.c
> >
> > diff --git a/arch/riscv/cpu/core.c b/arch/riscv/cpu/core.c
> > index 80730c05b..9226037f3 100644
> > --- a/arch/riscv/cpu/core.c
> > +++ b/arch/riscv/cpu/core.c
> > @@ -24,6 +24,7 @@
> >  #include <magicvar.h>
> >  #include <asm/system.h>
> >  #include <io.h>
> > +#include <asm/sbi.h>
>
> There is no need to include <asm/sbi.h> here.
>
> >
> >  static int riscv_request_stack(void)
> >  {
> > @@ -33,6 +34,7 @@ static int riscv_request_stack(void)
> >  coredevice_initcall(riscv_request_stack);
> >
> >  static struct device_d timer_dev;
> > +static struct device_d serial_sbi_dev;
> >
> >  static s64 hartid;
> >
> > @@ -75,6 +77,17 @@ static int riscv_probe(struct device_d *parent)
> >                         return ret;
> >         }
> >
> > +       if (IS_ENABLED(CONFIG_SERIAL_SBI) && !serial_sbi_dev.parent) {
> > +               serial_sbi_dev.id = DEVICE_ID_SINGLE;
> > +               serial_sbi_dev.device_node = 0;
> > +               serial_sbi_dev.parent = parent;
> > +               dev_set_name(&serial_sbi_dev, "riscv-serial-sbi");
> > +
> > +               ret = platform_device_register(&serial_sbi_dev);
> > +               if (ret)
> > +                       return ret;
> > +       }
> > +
>
> Please, use tabs for indentation!
>
>
> >         hartid = riscv_hartid();
> >         if (hartid >= 0)
> >                 globalvar_add_simple_uint64("hartid", &hartid, "%llu");
> > diff --git a/arch/riscv/lib/sbi.c b/arch/riscv/lib/sbi.c
> > index 45a04fb82..209069c98 100644
> > --- a/arch/riscv/lib/sbi.c
> > +++ b/arch/riscv/lib/sbi.c
> > @@ -64,3 +64,14 @@ static int sbi_init(void)
> >
> >  }
> >  core_initcall(sbi_init);
> > +
> > +
>
> No extra emptyline here.
>
> > +void sbi_console_putchar(int ch)
> > +{
> > +       sbi_ecall(SBI_EXT_0_1_CONSOLE_PUTCHAR, 0, ch, 0, 0, 0, 0, 0);
> > +}
> > +
> > +int sbi_console_getchar(void)
> > +{
> > +       return sbi_ecall(SBI_EXT_0_1_CONSOLE_GETCHAR, 0, 0, 0, 0, 0,
> > 0, 0).error;
> > +}
> > diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
> > index b9750d177..5e30ea388 100644
> > --- a/drivers/serial/Kconfig
> > +++ b/drivers/serial/Kconfig
> > @@ -173,4 +173,12 @@ config SERIAL_SIFIVE
> >           contains a SiFive UART IP block.  This type of UART is present on
> >           SiFive FU540 SoCs, among others.
> >
> > +config SERIAL_SBI
> > +       tristate "RISCV Serial support over SBI's HTIF"
> > +       depends on OFDEVICE
> > +       depends on RISCV_SBI
> > +       help
> > +         Select this option if you are building barebox for a RISCV platform
> > +         that implements a serial over SBI.
> > +
> >  endmenu
> > diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
> > index 5120b1737..b1de436ed 100644
> > --- a/drivers/serial/Makefile
> > +++ b/drivers/serial/Makefile
> > @@ -24,3 +24,4 @@ obj-$(CONFIG_DRIVER_SERIAL_DIGIC)             +=
> > serial_digic.o
> >  obj-$(CONFIG_DRIVER_SERIAL_LPUART)             += serial_lpuart.o
> >  obj-$(CONFIG_VIRTIO_CONSOLE)                   += virtio_console.o
> >  obj-$(CONFIG_SERIAL_SIFIVE)                    += serial_sifive.o
> > +obj-$(CONFIG_SERIAL_SBI)                       += serial_sbi.o
> > diff --git a/drivers/serial/serial_sbi.c b/drivers/serial/serial_sbi.c
> > new file mode 100644
> > index 000000000..7217ce9cc
> > --- /dev/null
> > +++ b/drivers/serial/serial_sbi.c
> > @@ -0,0 +1,60 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Copyright (C) 2021 Marcelo Politzer <marcelo.politzer@cartesi.io>
> > + */
> > +
> > +#include <common.h>
> > +#include <driver.h>
> > +#include <malloc.h>
> > +#include <io.h>
> > +#include <of.h>
>
> Please drop <io.h> and <of.h> inclusion here. These header files are unused.
>
> > +#include <asm/sbi.h>
> > +
> > +struct sbi_serial_priv {
> > +       struct console_device cdev;
> > +       uint8_t b[2], head, tail;
> > +};
> > +
> > +static int sbi_serial_getc(struct console_device *cdev)
> > +{
> > +       struct sbi_serial_priv *priv = cdev->dev->priv;
> > +       if (priv->head == priv->tail)
> > +               return -1;
> > +       return priv->b[priv->head++ & 0x1];
> > +}
> > +
> > +static void sbi_serial_putc(struct console_device *cdev, const char ch)
> > +{
> > +       sbi_console_putchar(ch);
> > +}
> > +
> > +static int sbi_serial_tstc(struct console_device *cdev)
> > +{
> > +       struct sbi_serial_priv *priv = cdev->dev->priv;
> > +       int c = sbi_console_getchar();
> > +
> > +       if (c != -1)
> > +               priv->b[priv->tail++ & 0x1] = c;
> > +       return priv->head != priv->tail;
> > +}
> > +
> > +static int sbi_serial_probe(struct device_d *dev)
> > +{
> > +       struct sbi_serial_priv *priv;
> > +
> > +       priv = dev->priv = xzalloc(sizeof(*priv));
> > +       priv->cdev.dev    = dev;
> > +       priv->cdev.putc   = sbi_serial_putc;
> > +       priv->cdev.getc   = sbi_serial_getc;
> > +       priv->cdev.tstc   = sbi_serial_tstc;
> > +       priv->cdev.flush  = 0;
> > +       priv->cdev.setbrg = 0;
> > +
> > +       return console_register(&priv->cdev);
> > +}
> > +
> > +static struct driver_d serial_sbi_driver = {
> > +       .name   = "riscv-serial-sbi",
> > +       .probe  = sbi_serial_probe,
> > +};
> > +postcore_platform_driver(serial_sbi_driver);
> > --
> > 2.32.0
> >
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
>
>
> --
> Best regards,
>   Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

