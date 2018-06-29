Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYqc4-0000k7-Tq
 for barebox@lists.infradead.org; Fri, 29 Jun 2018 10:26:50 +0000
Received: by mail-lf0-x242.google.com with SMTP id y200-v6so844288lfd.7
 for <barebox@lists.infradead.org>; Fri, 29 Jun 2018 03:26:37 -0700 (PDT)
Date: Fri, 29 Jun 2018 13:27:10 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20180629132710.88b512ddb6c8331d3655afa3@gmail.com>
In-Reply-To: <20180629072908.4z66au6jdyyehmwf@pengutronix.de>
References: <20180628073953.15384-1-antonynpavlov@gmail.com>
 <20180628073953.15384-4-antonynpavlov@gmail.com>
 <20180629072908.4z66au6jdyyehmwf@pengutronix.de>
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
Subject: Re: [PATCH v2 03/12] Add initial RISC-V architecture support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, 29 Jun 2018 09:29:08 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Thu, Jun 28, 2018 at 10:39:44AM +0300, Antony Pavlov wrote:
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> > +++ b/arch/riscv/lib/barebox.lds.S
> > @@ -0,0 +1,89 @@
> > +/*
> > + * Copyright (C) 2016 Antony Pavlov <antonynpavlov@gmail.com>
> > + *
> > + * This file is part of barebox.
> > + * See file CREDITS for list of people who contributed to this project.
> > + *
> > + * This program is free software; you can redistribute it and/or modify
> > + * it under the terms of the GNU General Public License version 2
> > + * as published by the Free Software Foundation.
> > + *
> > + * This program is distributed in the hope that it will be useful,
> > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > + * GNU General Public License for more details.
> > + *
> > + */
> > +
> > +#include <asm-generic/barebox.lds.h>
> > +
> > +OUTPUT_ARCH(riscv)
> > +ENTRY(_start)
> > +SECTIONS
> > +{
> > +	. =3D TEXT_BASE;
> > +
> > +	. =3D ALIGN(8);
> > +	.text      :
> > +	{
> > +		_stext =3D .;
> > +		_start =3D .;
> > +		KEEP(*(.text_entry*))
> > +		_text =3D .;
> > +		__bare_init_start =3D .;
> > +		*(.text_bare_init*)
> > +		__bare_init_end =3D .;
> > +		*(.text*)
> > +	}
> > +	BAREBOX_BARE_INIT_SIZE
> =

> Do you need these __bare_init* stuff? If not I would prefer to remove
> it.


Hmmm. You are right! I have not realized PBL for RISC-V yet so it's better
to drop all these bare_inits.


> > +
> > +	PRE_IMAGE
> =

> Same here.
> =

> > +static int of_riscv_init(void)
> > +{
> > +	struct device_node *root;
> > +
> > +	root =3D of_get_root_node();
> > +	if (root)
> > +		return 0;
> > +
> > +	root =3D of_unflatten_dtb(__dtb_start);
> > +	if (!IS_ERR(root)) {
> > +		pr_debug("using internal DTB\n");
> > +		of_set_root_node(root);
> > +		if (IS_ENABLED(CONFIG_OFDEVICE))
> > +			of_probe();
> > +	}
> =

> Can we just call of_unflatten_dtb()/of_set_root_node() from the board
> code and use obj-dtb-y to include the dtb?
> =

> That way a board can specify the dtb and not the config.

Good idea! MIPS code lacks this feature at the moment.

Can I use of_arm_init() as a reference?

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
