Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZbkz-0004YJ-Im
 for barebox@lists.infradead.org; Wed, 30 May 2012 05:47:43 +0000
Date: Wed, 30 May 2012 07:47:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120530054738.GF30400@pengutronix.de>
References: <CAONxwYMkcS4Vt04tKHkWijVxYBnt097wyMXr-LK-m5Hyj_Sk_w@mail.gmail.com>
 <20120524145837.42085b83@eb-e6520>
 <CAONxwYOdiRnDiRRFikckrj+6pOKA5DgW-hxwRCRgVGQ93p3QUQ@mail.gmail.com>
 <20120524153119.6d724afc@eb-e6520>
 <CAONxwYNisYJ+hvHTnxjHs-oPVGDFrhajVxMMrZXFJ8GN7aTg9A@mail.gmail.com>
 <20120525120858.77dd6e7a@eb-e6520>
 <CAONxwYPWmxz1uraADOW2mV6x-qzjSLpZ=3BuFx3AaVKdvxTOrQ@mail.gmail.com>
 <20120529092958.GP30400@pengutronix.de>
 <CAONxwYOVJ3kroiK2yMBKFh=dhEgturFVixzKzGg7JQG7VCRMAw@mail.gmail.com>
 <CAONxwYO8Y9uYCr7VeGq9YbybRAGOZFZEQiKOTRfzm-=fH-0ihg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAONxwYO8Y9uYCr7VeGq9YbybRAGOZFZEQiKOTRfzm-=fH-0ihg@mail.gmail.com>
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
Subject: Re: Booting mx25 based device from SD and NOR
To: Roberto Nibali <rnibali@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 29, 2012 at 12:14:52PM +0200, Roberto Nibali wrote:
> ADDENDUM:
> =

> =

> diff --git a/arch/arm/boards/fq-sid1-mx25-noah/Makefile
> b/arch/arm/boards/fq-sid1-mx25-noah/Makefile
> new file mode 100644
> index 0000000..1e9cd54
> --- /dev/null
> +++ b/arch/arm/boards/fq-sid1-mx25-noah/Makefile
> @@ -0,0 +1,26 @@
> +#
> +# (C) Copyright 2007 Juergen Beisert <jbe@pengutronix.de>

You should replace this with your own copyright. I think J=FCrgen can live
with not having a copyright on trivial files ;)

> diff --git a/arch/arm/boards/fq-sid1-mx25-noah/env/config

Have you considered using one of the environment templates? You
shouldn't duplicate them.

> b/arch/arm/boards/fq-sid1-mx25-noah/env/config
> new file mode 100644
> index 0000000..240056d
> --- /dev/null
> +++ b/arch/arm/boards/fq-sid1-mx25-noah/env/config
> @@ -0,0 +1,25 @@
> +#!/bin/sh
> +
> +autoboot_timeout=3D5
> +
> +# can be either 'nfs', 'tftp', 'nor', or 'mmc'
> +kernel=3Dtftp
> +root=3Dmmc
> +
> +version=3D/v2.1.8-rc
> +tftp_uimage=3D$version/uImage
> +tftp_jffs2=3D$version/console-image.jffs2
> +bootargs=3D"console=3Dttymxc0,115200"
> +nfsroot=3D"/home/develop/SID1/nfsroot"
> +nor_parts=3D"512k(barebox)ro,512k(bareboxenv),3072k(kernel),-(root)"
> +nor_rootpart=3D"/dev/mtdblock3"
> +mmc_kernel=3D"/dev/mmcblk0p1"
> +mmc_rootpart=3D"/dev/mmcblk0p2"
> +getip=3Ddhcp
> +
> +# or set your networking parameters here
> +#eth0.ipaddr=3D192.168.1.80
> +#eth0.netmask=3D255.255.255.0
> +#eth0.gateway=3Da.b.c.d
> +eth0.serverip=3D192.168.1.23
> +eth0.ethaddr=3D00:50:c2:8c:e6:0e

*never* *ever* add MAC addresses to the default environment.

> +
> diff --git a/arch/arm/boards/fq-sid1-mx25-noah/flash_header.c
> b/arch/arm/boards/fq-sid1-mx25-noah/flash_header.c
> new file mode 100644
> index 0000000..982fc52
> --- /dev/null
> +++ b/arch/arm/boards/fq-sid1-mx25-noah/flash_header.c
> @@ -0,0 +1,88 @@
> +#include <common.h>
> +#include <mach/imx-flash-header.h>
> +#include <mach/imx-regs.h>
> +#include <asm/barebox-arm-head.h>
> +
> +extern void exception_vectors(void);
> +
> +void __naked __flash_header_start go(void)
> +{
> + barebox_arm_head();
> +}
> +
> + DEST_BASE =3D IMX_CS0_BASE
> +   #else
> + DEST_BASE =3D TEXT_BASE
> +   #endif
> +   FLASH_HEADER_BASE =3D (DEST_BASE + FLASH_HEADER_OFFSET)
> + */
> +
> +struct imx_dcd_entry __dcd_entry_section dcd_entry[] =3D {
> + /* NOR flash, CS0_CSCRU, CS0_CSCRL, CS0_CSCRA */
> + { .ptr_type =3D 4, .addr =3D 0xB8002000, .val =3D 0x0000D003, },
> + { .ptr_type =3D 4, .addr =3D 0xB8002004, .val =3D 0x00330D01, },
> + { .ptr_type =3D 4, .addr =3D 0xB8002008, .val =3D 0x00220800, },
> + /* DDR2 init */
> + { .ptr_type =3D 4, .addr =3D 0xb8001004, .val =3D 0x0076e83a, }, /* ini=
tial
> value for ESDCFG0 */

Your mailer wraps lines.

> +#endif
> +#ifdef CONFIG_DRIVER_VIDEO_IMX
> + //imx25_add_fb(&noah_fb_data);

Please remove dead code before posting this for inclusion

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
