Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SIPJf-0003JG-Ff
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 19:04:25 +0000
Received: from eb-e6520 (unknown [82.233.81.124])
 by smtp3-g21.free.fr (Postfix) with ESMTP id 56E3FA6283
 for <barebox@lists.infradead.org>; Thu, 12 Apr 2012 21:04:16 +0200 (CEST)
Date: Thu, 12 Apr 2012 21:04:15 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120412210415.3a0313e2@eb-e6520>
In-Reply-To: <1334247624-24896-2-git-send-email-shc_work@mail.ru>
References: <1334247624-24896-1-git-send-email-shc_work@mail.ru>
 <1334247624-24896-2-git-send-email-shc_work@mail.ru>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/7] i.MX53: Move specific i.MX53 silicon definitions to
 imx53-regs.h
To: barebox@lists.infradead.org

Le Thu, 12 Apr 2012 20:20:19 +0400,
Alexander Shiyan <shc_work@mail.ru> a =E9crit :

> =

> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/mach-imx/imx53.c                   |    6 +++---
>  arch/arm/mach-imx/include/mach/imx-regs.h   |    5 -----
>  arch/arm/mach-imx/include/mach/imx53-regs.h |    5 +++++
>  3 files changed, 8 insertions(+), 8 deletions(-)
> =

> diff --git a/arch/arm/mach-imx/imx53.c b/arch/arm/mach-imx/imx53.c
> index 8742c46..951e4c6 100644
> --- a/arch/arm/mach-imx/imx53.c
> +++ b/arch/arm/mach-imx/imx53.c
> @@ -55,15 +55,15 @@ static int query_silicon_revision(void)
>  	rev =3D readl(rom + SI_REV);
>  	switch (rev) {
>  	case 0x10:
> -		mx53_silicon_revision =3D IMX_CHIP_REV_1_0;
> +		mx53_silicon_revision =3D MX53_CHIP_REV_1_0;
>  		mx53_rev_string =3D "1.0";
>  		break;
>  	case 0x20:
> -		mx53_silicon_revision =3D IMX_CHIP_REV_2_0;
> +		mx53_silicon_revision =3D MX53_CHIP_REV_2_0;
>  		mx53_rev_string =3D "2.0";
>  		break;
>  	case 0x21:
> -		mx53_silicon_revision =3D IMX_CHIP_REV_2_1;
> +		mx53_silicon_revision =3D MX53_CHIP_REV_2_1;
>  		mx53_rev_string =3D "2.1";
>  		break;
>  	default:
> diff --git a/arch/arm/mach-imx/include/mach/imx-regs.h b/arch/arm/mach-im=
x/include/mach/imx-regs.h
> index 789397e..a272dda 100644
> --- a/arch/arm/mach-imx/include/mach/imx-regs.h
> +++ b/arch/arm/mach-imx/include/mach/imx-regs.h
> @@ -105,9 +105,4 @@
>  =

>  #define GPIO_GIUS      (1<<16)
>  =

> -/* silicon revisions  */
> -#define IMX_CHIP_REV_1_0	0x10
> -#define IMX_CHIP_REV_2_0	0x20
> -#define IMX_CHIP_REV_2_1	0x21
> -
>  #endif				/* _IMX_REGS_H */
> diff --git a/arch/arm/mach-imx/include/mach/imx53-regs.h b/arch/arm/mach-=
imx/include/mach/imx53-regs.h
> index 8fefc54..065bf08 100644
> --- a/arch/arm/mach-imx/include/mach/imx53-regs.h
> +++ b/arch/arm/mach-imx/include/mach/imx53-regs.h
> @@ -135,5 +135,10 @@
>  #define MX53_CS2_96MB_BASE_ADDR		0xF6000000
>  #define MX53_CS3_BASE_ADDR		0xF6000000
>  =

> +/* silicon revisions specific to i.MX53 */
> +#define MX53_CHIP_REV_1_0	0x10
> +#define MX53_CHIP_REV_2_0	0x20
> +#define MX53_CHIP_REV_2_1	0x21
> +
>  #endif /* __MACH_IMX53_REGS_H */
>  =


The goal was to move chip revision to imx-regs.h and remove them from
other files (as MX25/35/51/53 seems to share the same pattern for chip
revision)

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
