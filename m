Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SSvxT-00032Y-2D
 for barebox@lists.infradead.org; Fri, 11 May 2012 19:57:00 +0000
Date: Fri, 11 May 2012 21:56:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120511195657.GS27341@pengutronix.de>
References: <1336574357-27556-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1336574357-27556-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] fix typo addreee -> address
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, May 09, 2012 at 04:39:17PM +0200, Uwe Kleine-K=F6nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S        |    2 +-
>  arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S |    2 +-
>  arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S |    2 +-
>  arch/arm/boards/imx21ads/lowlevel_init.S               |    2 +-
>  arch/arm/boards/pcm037/lowlevel_init.S                 |    2 +-
>  arch/arm/boards/phycard-i.MX27/lowlevel_init.S         |    2 +-
>  6 files changed, 6 insertions(+), 6 deletions(-)
> =

> diff --git a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S b/arch/arm/b=
oards/eukrea_cpuimx27/lowlevel_init.S
> index 5295a8a..e318546 100644
> --- a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
> +++ b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
> @@ -124,7 +124,7 @@ board_init_lowlevel:
>  copy_loop:
>  	ldmia	r0!, {r3-r9}		/* copy from source address [r0]    */
>  	stmia	r1!, {r3-r9}		/* copy to   target address [r1]    */
> -	cmp	r0, r2			/* until source end addreee [r2]    */
> +	cmp	r0, r2			/* until source end address [r2]    */
>  	ble	copy_loop
>  =

>  	ldr	pc, =3D1f			/* Jump to SDRAM                    */
> diff --git a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S b/arc=
h/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
> index 73bb147..7b75233 100644
> --- a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
> +++ b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
> @@ -117,7 +117,7 @@ board_init_lowlevel:
>  copy_loop:
>  	ldmia	r0!, {r3-r9}		/* copy from source address [r0]    */
>  	stmia	r1!, {r3-r9}		/* copy to   target address [r1]    */
> -	cmp	r0, r2			/* until source end addreee [r2]    */
> +	cmp	r0, r2			/* until source end address [r2]    */
>  	ble	copy_loop
>  =

>  	ldr	pc, =3D1f			/* Jump to SDRAM                    */
> diff --git a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S b/arc=
h/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
> index 413e04a..30dbcc0 100644
> --- a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
> +++ b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
> @@ -173,7 +173,7 @@ board_init_lowlevel:
>  copy_loop:
>  	ldmia	r0!, {r3-r9}			/* copy from source address [r0] */
>  	stmia	r1!, {r3-r9}			/* copy to   target address [r1] */
> -	cmp	r0, r2				/* until source end addreee [r2] */
> +	cmp	r0, r2				/* until source end address [r2] */
>  	ble	copy_loop
>  =

>  	ldr	pc, =3D1f				/* Jump to SDRAM */
> diff --git a/arch/arm/boards/imx21ads/lowlevel_init.S b/arch/arm/boards/i=
mx21ads/lowlevel_init.S
> index 607da27..7926e28 100644
> --- a/arch/arm/boards/imx21ads/lowlevel_init.S
> +++ b/arch/arm/boards/imx21ads/lowlevel_init.S
> @@ -138,7 +138,7 @@ board_init_lowlevel:
>  copy_loop:
>  	ldmia	r0!, {r3-r9}		/* copy from source address [r0]    */
>  	stmia	r1!, {r3-r9}		/* copy to   target address [r1]    */
> -	cmp	r0, r2			/* until source end addreee [r2]    */
> +	cmp	r0, r2			/* until source end address [r2]    */
>  	ble	copy_loop
>  =

>  	ldr	pc, =3D1f			/* Jump to SDRAM                    */
> diff --git a/arch/arm/boards/pcm037/lowlevel_init.S b/arch/arm/boards/pcm=
037/lowlevel_init.S
> index 8988db2..cc4674d 100644
> --- a/arch/arm/boards/pcm037/lowlevel_init.S
> +++ b/arch/arm/boards/pcm037/lowlevel_init.S
> @@ -151,7 +151,7 @@ clear_iomux:
>  copy_loop:
>  	ldmia	r0!, {r3-r9}		/* copy from source address [r0]    */
>  	stmia	r1!, {r3-r9}		/* copy to   target address [r1]    */
> -	cmp	r0, r2			/* until source end addreee [r2]    */
> +	cmp	r0, r2			/* until source end address [r2]    */
>  	ble	copy_loop
>  =

>  	ldr	pc, =3D1f			/* Jump to SDRAM                    */
> diff --git a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S b/arch/arm/bo=
ards/phycard-i.MX27/lowlevel_init.S
> index 9349581..3ef2c54 100644
> --- a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
> +++ b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
> @@ -111,7 +111,7 @@ board_init_lowlevel:
>  copy_loop:
>  	ldmia	r0!, {r3-r9}		/* copy from source address [r0]    */
>  	stmia	r1!, {r3-r9}		/* copy to   target address [r1]    */
> -	cmp	r0, r2			/* until source end addreee [r2]    */
> +	cmp	r0, r2			/* until source end address [r2]    */
>  	ble	copy_loop
>  =

>  	ldr	pc, =3D1f			/* Jump to SDRAM                    */
> -- =

> 1.7.10
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
