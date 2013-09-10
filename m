Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VJHLo-0002Ff-86
 for barebox@lists.infradead.org; Tue, 10 Sep 2013 06:23:01 +0000
Date: Tue, 10 Sep 2013 08:22:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130910062236.GX30088@pengutronix.de>
References: <1378756826-18061-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1378756826-18061-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH 1/2] mxs_spi: fix compile error
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric,

On Mon, Sep 09, 2013 at 10:00:25PM +0200, Eric B=E9nard wrote:
> this fix :
> drivers/spi/mxs_spi.c:29:22: fatal error: mach/mxs.h: No such file or dir=
ectory
> and
> drivers/spi/mxs_spi.c: In function 'mxs_spi_setup':
> drivers/spi/mxs_spi.c:102:2: error: too few arguments to function 'stmp_r=
eset_block'
> include/stmp-device.h:21:12: note: declared here
> =

> only compile tested ATM
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>

Applied both. Also I applied a patch which enables both drivers in the
imx28evk_defconfig. This should make sure this doesn't happen again
since I compile test all defconfigs.

Sascha

> ---
>  drivers/spi/mxs_spi.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> =

> diff --git a/drivers/spi/mxs_spi.c b/drivers/spi/mxs_spi.c
> index 4e539bf..a803652 100644
> --- a/drivers/spi/mxs_spi.c
> +++ b/drivers/spi/mxs_spi.c
> @@ -26,7 +26,6 @@
>  #include <asm/mmu.h>
>  #include <mach/generic.h>
>  #include <mach/imx-regs.h>
> -#include <mach/mxs.h>
>  #include <mach/clock.h>
>  #include <mach/ssp.h>
>  =

> @@ -100,7 +99,7 @@ static int mxs_spi_setup(struct spi_device *spi)
>  		return -EINVAL;
>  	}
>  =

> -	stmp_reset_block(mxs->regs + HW_SSP_CTRL0);
> +	stmp_reset_block(mxs->regs + HW_SSP_CTRL0, 0);
>  =

>  	val |=3D SSP_CTRL0_SSP_ASSERT_OUT(spi->chip_select);
>  	val |=3D SSP_CTRL0_BUS_WIDTH(0);
> -- =

> 1.8.3.1
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
