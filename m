Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x234.google.com ([2a00:1450:4010:c07::234])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dz1DU-0003So-FS
 for barebox@lists.infradead.org; Mon, 02 Oct 2017 13:57:08 +0000
Received: by mail-lf0-x234.google.com with SMTP id a18so6104206lfl.13
 for <barebox@lists.infradead.org>; Mon, 02 Oct 2017 06:56:43 -0700 (PDT)
Date: Mon, 2 Oct 2017 17:08:40 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20171002170840.5e394556156dfc0aba9a4d0a@gmail.com>
In-Reply-To: <a29251d2-b2a8-52f9-d510-74ee1890f048@rempel-privat.de>
References: <20170928231249.4158-1-antonynpavlov@gmail.com>
 <20170928231249.4158-2-antonynpavlov@gmail.com>
 <6767ad4e-80b7-2c69-49ff-ecfb64ab19e0@rempel-privat.de>
 <20170930145755.9a68a3fffe61c58eda5c7263@gmail.com>
 <a29251d2-b2a8-52f9-d510-74ee1890f048@rempel-privat.de>
Mime-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC v4 01/10] Add initial RISC-V architecture support
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Mon, 2 Oct 2017 09:43:02 +0200
Oleksij Rempel <linux@rempel-privat.de> wrote:

> Hi,
> =

> Am 30.09.2017 um 13:57 schrieb Antony Pavlov:
> > On Fri, 29 Sep 2017 14:07:09 +0200
> > Oleksij Rempel <linux@rempel-privat.de> wrote:
> > =

> >> Hi,
> >>
> >> hm... mostly looks identical with existing arch
> > =

> > What do you mean when you say "existing arch"?
> =

> it is a note for me. I just compared it with MIPS
> > ...
> > =

> >> Am 29.09.2017 um 01:12 schrieb Antony Pavlov:
> > ...
> >>> diff --git a/arch/riscv/boot/start.S b/arch/riscv/boot/start.S
> >>> new file mode 100644
> >>> index 000000000..2fd00f63d
> >>> --- /dev/null
> >>> +++ b/arch/riscv/boot/start.S
> >>> @@ -0,0 +1,74 @@
> >>> +/*
> >>> + * Startup Code for MIPS CPU
> =

> Beside here is a copy paste ^^^ artefact :)

Thanks! I have just fixed this.

> =

> >>> + * based on coreboot/src/arch/riscv/bootblock.S
> >>> + *
> >>> + * Copyright (C) 2016 Antony Pavlov <antonynpavlov@gmail.com>
> >>> + *

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
