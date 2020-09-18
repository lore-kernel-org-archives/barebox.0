Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kJDEq-0002pg-U4
 for barebox@lists.infradead.org; Fri, 18 Sep 2020 10:03:33 +0000
Date: Fri, 18 Sep 2020 12:03:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200918100331.GV4498@pengutronix.de>
References: <20200917201708.12168-1-u.kleine-koenig@pengutronix.de>
 <20200917201708.12168-4-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200917201708.12168-4-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 4/4] arm/boards: Add IMD_USED_OF for a few boards
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 17, 2020 at 10:17:08PM +0200, Uwe Kleine-K=F6nig wrote:
> Not all boards can make use of the helper macros introduced in the previo=
us
> commits, for these add an explicit call to IMD_USED_OF to add meta data
> to the barebox image.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/boards/embest-riotboard/lowlevel.c     | 1 +
>  arch/arm/boards/technexion-wandboard/lowlevel.c | 2 ++
>  arch/arm/boards/zii-imx51-rdu1/lowlevel.c       | 3 +++
>  3 files changed, 6 insertions(+)
> =

> diff --git a/arch/arm/boards/embest-riotboard/lowlevel.c b/arch/arm/board=
s/embest-riotboard/lowlevel.c
> index 07f669fc0309..b0f5339b0a70 100644
> --- a/arch/arm/boards/embest-riotboard/lowlevel.c
> +++ b/arch/arm/boards/embest-riotboard/lowlevel.c
> @@ -23,6 +23,7 @@ ENTRY_FUNCTION(start_imx6s_riotboard, r0, r1, r2)
>  		putc_ll('a');
>  	}
>  =

> +	IMD_USED_OF(imx6s_riotboard);
>  	fdt =3D __dtb_imx6s_riotboard_start + get_runtime_offset();
>  	barebox_arm_entry(0x10000000, SZ_1G, fdt);
>  }
> diff --git a/arch/arm/boards/technexion-wandboard/lowlevel.c b/arch/arm/b=
oards/technexion-wandboard/lowlevel.c
> index 33babbbb2feb..5c1b5d6ed292 100644
> --- a/arch/arm/boards/technexion-wandboard/lowlevel.c
> +++ b/arch/arm/boards/technexion-wandboard/lowlevel.c
> @@ -334,9 +334,11 @@ static noinline void wandboard_start(void)
>  	switch (cpu_type) {
>  	case IMX6_CPUTYPE_IMX6S:
>  	case IMX6_CPUTYPE_IMX6DL:
> +		IMD_USED_OF(imx6dl_wandboard);
>  		dtb =3D __dtb_z_imx6dl_wandboard_start;
>  		break;
>  	case IMX6_CPUTYPE_IMX6Q:
> +		IMD_USED_OF(imx6q_wandboard);
>  		dtb =3D __dtb_z_imx6q_wandboard_start;
>  		break;
>  	default:

This doesn't work like you might expect. IMD_USED_OF uses imd_used().
This fake function only has the effect that
__barebox_imd_OF_imx6q_wandboard appears to be used and thus doesn't get
discarded by the linker. By putting imd_used() multiple times into code
which ends up in the same binary you'll get all tags in the binary, no
matter where in the code you put IMD_USED_OF.

Having two tags is fine, because you really have a binary that is
compatible to both wand,imx6dl-wandboard and wand,imx6q-wandboard, but
please put them side by side into the ENTRY_FUNCTION.

Have you compile tested this patch? It seems an #include
<image-metadata.h> is missing at least in this file.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
