Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJ2Xt-000249-NU
 for barebox@lists.infradead.org; Sat, 14 Apr 2012 12:57:44 +0000
Date: Sat, 14 Apr 2012 14:57:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120414125729.GV3852@pengutronix.de>
References: <1334325273-1701-1-git-send-email-s.hauer@pengutronix.de>
 <1334325273-1701-7-git-send-email-s.hauer@pengutronix.de>
 <20120414105306.GD2074@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120414105306.GD2074@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 6/7] ARM: initial Freescale i.MX6q Armadillo2 support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Apr 14, 2012 at 12:53:06PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > index 0000000..4b8c52b
> > --- /dev/null
> > +++ b/arch/arm/boards/freescale-mx6-arm2/env/config
> > @@ -0,0 +1,47 @@
> > +#!/bin/sh
> > +
> > +machine=armadillo2
> > +serverip=
> > +user=
> why not set a vendor id and client id to identify the user at dhcp level

Because I don't use this.

> > +
> > +disk_parts="1M(barebox)ro,1M(bareboxenv),4M(kernel),-(root)"
> it will be good to put already a partition for oftree
> 
> 
> btw you use 512k in the c for the env

Why should I store the oftree in a seperate partition?

> > +	.header.length		= cpu_to_be16(32),
> > +	.header.version		= IVT_VERSION,
> > +
> > +	.entry			= APP_DEST + 0x1000,
> > +	.dcd_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2, dcd),
> > +	.boot_data_ptr		= APP_DEST + 0x400 + offsetof(struct imx_flash_header_v2, boot_data),
> > +	.self			= APP_DEST + 0x400,
> > +
> > +	.boot_data.start	= APP_DEST,
> > +	.boot_data.size		= 0x40000,
> why not use barebox_size?

Good catch, will do.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
