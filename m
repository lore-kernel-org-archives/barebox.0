Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RaOsq-0001PX-6U
 for barebox@lists.infradead.org; Tue, 13 Dec 2011 09:42:49 +0000
Date: Tue, 13 Dec 2011 10:42:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111213094241.GD27267@pengutronix.de>
References: <1323724779-370-1-git-send-email-eric@eukrea.com>
 <1323724779-370-3-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1323724779-370-3-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH 3/6] CPUIMX51: add ARM errata and enable L2 cache
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric,

On Mon, Dec 12, 2011 at 10:19:36PM +0100, Eric B=E9nard wrote:
> - add ARM errata ID #468414
> - enable L2 cache to get better performances
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  arch/arm/boards/eukrea_cpuimx51/lowlevel_init.S |   10 ++++++++++
>  1 files changed, 10 insertions(+), 0 deletions(-)
> =

> diff --git a/arch/arm/boards/eukrea_cpuimx51/lowlevel_init.S b/arch/arm/b=
oards/eukrea_cpuimx51/lowlevel_init.S
> index 0b3726f..ee3b0fc 100644
> --- a/arch/arm/boards/eukrea_cpuimx51/lowlevel_init.S
> +++ b/arch/arm/boards/eukrea_cpuimx51/lowlevel_init.S

At the moment arch/arm/boards/eukrea_cpuimx51/lowlevel_init.S and
./arch/arm/boards/freescale-mx51-pdk/lowlevel_init.S are exact copies.

What is being done first in board_init_lowlevel is

- workaround the errata
- configure aux control reg
- dis/enable L2 cache

This is basically the same as being done in mx53_init_lowlevel().
Can we instead add a mx5_init_lowlevel which contains the L2 cache
setting and is called from both mx51_init_lowlevel and mx53_lowlevel?

Sascha

> @@ -57,6 +57,11 @@
>  board_init_lowlevel:
>  	mov     r10, lr
>  =

> +	/* ARM errata ID #468414 */
> +	mrc 15, 0, r1, c1, c0, 1
> +	orr r1, r1, #(1 << 5)    /* enable L1NEON bit */
> +	mcr 15, 0, r1, c1, c0, 1
> +
>  	/* explicitly disable L2 cache */
>  	mrc 15, 0, r0, c1, c0, 1
>  	bic r0, r0, #0x2
> @@ -76,6 +81,11 @@ board_init_lowlevel:
>  =

>  	mcr 15, 1, r0, c9, c0, 2
>  =

> +	/* enable L2 cache */
> +	mrc 15, 0, r0, c1, c0, 1
> +	orr r0, r0, #2
> +	mcr 15, 0, r0, c1, c0, 1
> +
>  	ldr r0, =3DMX51_CCM_BASE_ADDR
>  =

>  	/* Gate of clocks to the peripherals first */
> -- =

> 1.7.6.4
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
