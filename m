Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tr749-0005GA-Jt
 for barebox@lists.infradead.org; Fri, 04 Jan 2013 13:12:06 +0000
Date: Fri, 4 Jan 2013 14:12:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130104131203.GD1906@pengutronix.de>
References: <20121229100404.GA22953@game.jcrosoft.org>
 <1356775697-1849-1-git-send-email-plagnioj@jcrosoft.com>
 <1356775697-1849-6-git-send-email-plagnioj@jcrosoft.com>
 <1357126891.3863.2.camel@coredoba.hi.pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1357126891.3863.2.camel@coredoba.hi.pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 6/7] at91: add bootstrap version
To: Jan =?iso-8859-15?Q?L=FCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jan 02, 2013 at 12:41:31PM +0100, Jan L=FCbbe wrote:
> On Sat, 2012-12-29 at 11:08 +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > diff --git a/arch/arm/mach-at91/bootstrap.c b/arch/arm/mach-at91/bootst=
rap.c
> > new file mode 100644
> > index 0000000..2ec16f1
> > --- /dev/null
> > +++ b/arch/arm/mach-at91/bootstrap.c
> > @@ -0,0 +1,86 @@
> > +/*
> > + * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcroso=
ft.com>
> > + *
> > + * Under GPLv2
> > + */
> > +
> > +#include <common.h>
> > +#include <bootstrap.h>
> > +#include <mach/bootstrap.h>
> > +#include <sizes.h>
> > +#include <malloc.h>
> > +
> > +#if defined(CONFIG_MCI_ATMEL)
> > +#define is_mmc() 1
> > +#else
> > +#define is_mmc() 0
> > +#endif
> > +
> > +#ifdef CONFIG_NAND_ATMEL
> > +#define is_nand() 1
> > +#else
> > +#define is_nand() 0
> > +#endif
> > +
> > +#ifdef CONFIG_MTD_M25P80
> > +#define is_m25p80() 1
> > +#else
> > +#define is_m25p80() 0
> > +#endif
> > +
> > +#ifdef CONFIG_MTD_DATAFLASH
> > +#define is_dataflash() 1
> > +#else
> > +#define is_dataflash() 0
> > +#endif
> > +
> > +static void boot_seq(bool is_barebox)
> > +{
> > +	char *name =3D is_barebox ? "barebox" : "unknown";
> > +	int (*func)(void) =3D NULL;
> > +
> > +	if (is_m25p80()) {
> > +		func =3D bootstrap_board_read_m25p80();
> > +		printf("Boot %s from m25p80\n", name);
> > +		bootstrap_boot(func, is_barebox);
> > +		bootstrap_err("... failled\n");

btw:

s/failled/failed/

> > +		free(func);
> > +	}
> > +	if (is_dataflash()) {
> > +		printf("Boot %s from dataflash\n", name);
> > +		func =3D bootstrap_board_read_dataflash();
> > +		bootstrap_boot(func, is_barebox);
> > +		bootstrap_err("... failled\n");

ditto

> > +		free(func);
> > +	}
> > +	if (is_nand()) {
> > +		printf("Boot %s from nand\n", name);
> > +		func =3D bootstrap_read_devfs("nand0", true, SZ_128K, SZ_256K, SZ_1M=
);
> > +		bootstrap_boot(func, is_barebox);
> > +		bootstrap_err("... failled\n");

ditto

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
