Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dKgAf-0006Q6-Kx
 for barebox@lists.infradead.org; Tue, 13 Jun 2017 07:23:28 +0000
Date: Tue, 13 Jun 2017 09:23:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170613072303.2pkx6wwqp3sysara@pengutronix.de>
References: <20170612223749.13780-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170612223749.13780-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] ARM: mvebu: fix size mask for RAM window
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 13, 2017 at 12:37:49AM +0200, Uwe Kleine-K=F6nig wrote:
> The size field in the window control register occupies bits 31:16. So
> adapt ARMADA_370_XP_DDR_SIZE_MASK accordingly. This fixes detection of
> RAM chips smaller than 32 MiB and so probably doesn't affect any
> supported machine.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/mach-mvebu/common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> =

> diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/common.c
> index 06bfb7261544..fa971da11e75 100644
> --- a/arch/arm/mach-mvebu/common.c
> +++ b/arch/arm/mach-mvebu/common.c
> @@ -47,7 +47,7 @@
>  #define ARMADA_370_XP_SDRAM_BASE	(IOMEM(MVEBU_REMAP_INT_REG_BASE) + 0x20=
000)
>  #define ARMADA_370_XP_DDR_SIZE_CSn(n)	(0x184 + ((n) * 0x8))
>  #define ARMADA_370_XP_DDR_SIZE_ENABLED	BIT(0)
> -#define ARMADA_370_XP_DDR_SIZE_MASK	0xff000000
> +#define ARMADA_370_XP_DDR_SIZE_MASK	0xffff0000
>  =

>  /*
>   * Marvell MVEBU SoC id and revision can be read from any PCIe
> -- =

> 2.11.0
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
