Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b7GLr-0001hq-Sz
 for barebox@lists.infradead.org; Mon, 30 May 2016 06:07:00 +0000
Date: Mon, 30 May 2016 08:06:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160530060637.GW31666@pengutronix.de>
References: <1464004122-15815-1-git-send-email-u.oelmann@pengutronix.de>
 <1464004122-15815-3-git-send-email-u.oelmann@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1464004122-15815-3-git-send-email-u.oelmann@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] images: add function to verify checksum in barebox
 header
To: Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, May 23, 2016 at 01:48:42PM +0200, Ulrich =D6lmann wrote:
> From: Jan Luebbe <jlu@pengutronix.de>
> =

> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> Signed-off-by: Ulrich =D6lmann <u.oelmann@pengutronix.de>
> ---
>  common/Kconfig         |  9 ++++++
>  common/Makefile        |  1 +
>  common/barebox-image.c | 85 ++++++++++++++++++++++++++++++++++++++++++++=
++++++
>  include/common.h       |  9 ++++++
>  4 files changed, 104 insertions(+)
>  create mode 100644 common/barebox-image.c
> =

> diff --git a/common/Kconfig b/common/Kconfig
> index 928db0a159e1..bebbb614509d 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -580,6 +580,15 @@ config IMD_TARGET
>  	depends on IMD
>  	depends on !SANDBOX
>  =

> +config VERIFY_EMBEDDED_CRC
> +	prompt "Verify the CRC checksum embedded into barebox images"
> +	bool
> +	select CRC32
> +	help
> +	  If you say Y here, the CRC checksum that is embedded into every
> +	  barebox image directly after the header can be verified to guarantee
> +	  the integrity of the image.

When a user reads this he probably expects the option to have an effect.
In fact this option only adds a currently unused function. You should
make it invisible.

> +
>  config KERNEL_INSTALL_TARGET
>  	bool
>  	depends on !SANDBOX
> diff --git a/common/Makefile b/common/Makefile
> index 99681e21215b..0106f0fe7bd9 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -48,6 +48,7 @@ obj-$(CONFIG_STATE)		+=3D state.o
>  obj-$(CONFIG_RATP)		+=3D ratp.o
>  obj-$(CONFIG_UIMAGE)		+=3D image.o uimage.o
>  obj-$(CONFIG_FITIMAGE)		+=3D image-fit.o
> +obj-$(CONFIG_VERIFY_EMBEDDED_CRC) +=3D barebox-image.o
>  obj-$(CONFIG_MENUTREE)		+=3D menutree.o
>  obj-$(CONFIG_EFI_GUID)		+=3D efi-guid.o
>  obj-$(CONFIG_EFI_DEVICEPATH)	+=3D efi-devicepath.o
> diff --git a/common/barebox-image.c b/common/barebox-image.c
> new file mode 100644
> index 000000000000..733d9ea2ecdf
> --- /dev/null
> +++ b/common/barebox-image.c
> @@ -0,0 +1,85 @@
> +/*
> + * Copyright (c) 2016 Pengutronix, Jan Luebbe <j.luebbe@pengutronix.de>
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +#include <common.h>
> +#include <io.h>
> +#include <filetype.h>
> +
> +static inline size_t get_barebox_head_size(const void *buf)
> +{
> +	if (is_barebox_arm_head(buf))
> +		return ARM_HEAD_SIZE;
> +	else if (is_barebox_mips_head(buf))
> +		return MIPS_HEAD_SIZE;
> +
> +	return 0;
> +}
> +
> +static inline size_t get_barebox_head_size_offset(const void *buf)
> +{
> +	if (is_barebox_arm_head(buf))
> +		return ARM_HEAD_SIZE_OFFSET;
> +	else if (is_barebox_mips_head(buf))
> +		return MIPS_HEAD_SIZE_OFFSET;
> +
> +	return 0;
> +}
> +
> +bool barebox_verify_image(void *buf, size_t bufsize)

Since this code is called from architecture specific code anyway it's
probably nicer to create [arm|mips]_barebox_verify functions. This would
allow you to have only one meaningful size check.

> +{
> +	unsigned int *psize;
> +	size_t head_size;
> +	uint32_t crc =3D 0;
> +	uint32_t *p;
> +
> +	if (bufsize < ARM_HEAD_SIZE) {
> +		pr_err("buffer is smaller than ARM_HEAD_SIZE\n");
> +		return false;
> +	}

I think the error messaging should be left to the caller. The caller can
provide more context to make the message more useful. For this it might
be useful to return int instead of bool from this function as it allows
to return error codes.

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
