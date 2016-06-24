Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bGNEf-0004gu-Oc
 for barebox@lists.infradead.org; Fri, 24 Jun 2016 09:17:14 +0000
Received: by mail-lf0-x244.google.com with SMTP id l188so21013741lfe.0
 for <barebox@lists.infradead.org>; Fri, 24 Jun 2016 02:16:53 -0700 (PDT)
Date: Fri, 24 Jun 2016 12:18:36 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160624121836.4e135381362094aca7cc03e2@gmail.com>
In-Reply-To: <1466746535-17382-5-git-send-email-andrew.smirnov@gmail.com>
References: <1466746535-17382-1-git-send-email-andrew.smirnov@gmail.com>
 <1466746535-17382-5-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 4/4] video/edid: Move int_sqrt() out
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, 23 Jun 2016 22:35:35 -0700
Andrey Smirnov <andrew.smirnov@gmail.com> wrote:

I suppose that this patch has to be applied __before__ '[PATCH v2 3/4] GUI:=
 Add fbtest command'.

> Move int_sqrt() out of drivers/video/edid.c so that it is availible to
> other parts of Barebox.
> =

> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/video/edid.c | 29 -----------------------------
>  include/int_sqrt.h   | 22 ++++++++++++++++++++++
>  lib/Makefile         |  1 +
>  lib/int_sqrt.c       | 46 ++++++++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 69 insertions(+), 29 deletions(-)
>  create mode 100644 include/int_sqrt.h
>  create mode 100644 lib/int_sqrt.c
> =

> diff --git a/drivers/video/edid.c b/drivers/video/edid.c
> index e5c32a0..92b59a5 100644
> --- a/drivers/video/edid.c
> +++ b/drivers/video/edid.c
> @@ -321,35 +321,6 @@ static u32 fb_get_hblank_by_hfreq(u32 hfreq, u32 xre=
s)
>  }
>  =

>  /**
> - * int_sqrt - rough approximation to sqrt
> - * @x: integer of which to calculate the sqrt
> - *
> - * A very rough approximation to the sqrt() function.
> - */
> -unsigned long int_sqrt(unsigned long x)
> -{
> -	unsigned long b, m, y =3D 0;
> -
> -	if (x <=3D 1)
> -		return x;
> -
> -	m =3D 1UL << (BITS_PER_LONG - 2);
> -	while (m !=3D 0) {
> -		b =3D y + m;
> -		y >>=3D 1;
> -
> -		if (x >=3D b) {
> -			x -=3D b;
> -			y +=3D m;
> -		}
> -		m >>=3D 2;
> -	}
> -
> -	return y;
> -}
> -EXPORT_SYMBOL(int_sqrt);
> -
> -/**
>   * fb_get_hfreq - estimate hsync
>   * @vfreq: vertical refresh rate
>   * @yres: vertical resolution
> diff --git a/include/int_sqrt.h b/include/int_sqrt.h
> new file mode 100644
> index 0000000..55fb4fb
> --- /dev/null
> +++ b/include/int_sqrt.h
> @@ -0,0 +1,22 @@
> +/*
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#ifndef __INT_SQRT__
> +#define __INT_SQRT__
> +
> +unsigned long int_sqrt(unsigned long x);
> +
> +#endif
> diff --git a/lib/Makefile b/lib/Makefile
> index 399d896..92404fd 100644
> --- a/lib/Makefile
> +++ b/lib/Makefile
> @@ -58,3 +58,4 @@ obj-$(CONFIG_BAREBOX_LOGO)     +=3D logo/
>  obj-y			+=3D reed_solomon/
>  obj-$(CONFIG_RATP)	+=3D ratp.o
>  obj-y			+=3D list_sort.o
> +obj-y			+=3D int_sqrt.o
> diff --git a/lib/int_sqrt.c b/lib/int_sqrt.c
> new file mode 100644
> index 0000000..30ccafb
> --- /dev/null
> +++ b/lib/int_sqrt.c
> @@ -0,0 +1,46 @@
> +/*
> + * See file CREDITS for list of people who contributed to this
> + * project.
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <common.h>
> +
> +/**
> + * int_sqrt - rough approximation to sqrt
> + * @x: integer of which to calculate the sqrt
> + *
> + * A very rough approximation to the sqrt() function.
> + */
> +unsigned long int_sqrt(unsigned long x)
> +{
> +	unsigned long b, m, y =3D 0;
> +
> +	if (x <=3D 1)
> +		return x;
> +
> +	m =3D 1UL << (BITS_PER_LONG - 2);
> +	while (m !=3D 0) {
> +		b =3D y + m;
> +		y >>=3D 1;
> +
> +		if (x >=3D b) {
> +			x -=3D b;
> +			y +=3D m;
> +		}
> +		m >>=3D 2;
> +	}
> +
> +	return y;
> +}
> +EXPORT_SYMBOL(int_sqrt);
> -- =

> 2.5.5
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
