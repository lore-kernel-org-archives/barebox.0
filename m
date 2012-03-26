Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SCDUL-0003ek-TD
 for barebox@lists.infradead.org; Mon, 26 Mar 2012 17:13:51 +0000
Date: Mon, 26 Mar 2012 19:13:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120326171338.GU3852@pengutronix.de>
References: <OFBBAF4175.708F4DA0-ONC12579CD.00206A41-C12579CD.00218BB2@o0802.rafi.inhouse>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OFBBAF4175.708F4DA0-ONC12579CD.00206A41-C12579CD.00218BB2@o0802.rafi.inhouse>
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
Subject: Re: [PATCH] imx53: undefined reference to `imx_get_i2cclk'
To: guenter.gebhardt@rafi.de
Cc: barebox@lists.infradead.org

On Mon, Mar 26, 2012 at 08:06:22AM +0200, guenter.gebhardt@rafi.de wrote:
> Fix linker error when compiling for imx53 with I2C enabled.
> 

Which branch is this patch targeted to? I applied it to next and
reverted it afterwards because there already is a imx_get_i2cclk.
Also master has imx_get_i2cclk already.

Sascha

> Signed-off-by: Guenter Gebhardt <g.gebhardt@gg-sw-systems.de>
> --
> diff --git a/barebox/arch/arm/mach-imx/speed-imx53.c 
> b/barebox/arch/arm/mach-imx/speed-imx53.c
> index 0d6ac24..a168c65 100644
> --- a/barebox/arch/arm/mach-imx/speed-imx53.c
> +++ b/barebox/arch/arm/mach-imx/speed-imx53.c
> @@ -169,6 +169,11 @@ unsigned long imx_get_fecclk(void)
>         return imx_get_ipgclk();
>  }
>  
> +unsigned long imx_get_i2cclk(void)
> +{
> +       return imx_get_ipgclk();
> +}
> +
>  unsigned long imx_get_mmcclk(void)
>  {
>         u32 reg, prediv, podf, rate;
> --

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
