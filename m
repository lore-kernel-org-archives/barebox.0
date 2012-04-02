Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SEcsn-0008Rk-2v
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 08:45:02 +0000
Date: Mon, 2 Apr 2012 10:44:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120402084453.GV26642@pengutronix.de>
References: <1332782947-3407-1-git-send-email-esben.haabendal@gmail.com>
 <1332782947-3407-2-git-send-email-esben.haabendal@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1332782947-3407-2-git-send-email-esben.haabendal@gmail.com>
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
Subject: Re: [PATCH 1/4] mxs: Fix support for BITKEEPER() macro
To: esben.haabendal@gmail.com
Cc: barebox@lists.infradead.org, Esben Haabendal <esben.haabendal@prevas.dk>

Hi Esben,

On Mon, Mar 26, 2012 at 07:29:04PM +0200, esben.haabendal@gmail.com wrote:
> From: Esben Haabendal <esben.haabendal@gmail.com>
> 
> There was no check for BE, so any BITKEEPER(1) iomux configurations
> were not being applied.
> 
> Signed-off-by: Esben Haabendal <esben.haabendal@prevas.dk>
> ---
>  arch/arm/mach-mxs/iomux-imx.c |    6 ++++++
>  1 files changed, 6 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/mach-mxs/iomux-imx.c b/arch/arm/mach-mxs/iomux-imx.c
> index 3161a5d..6bcde03 100644
> --- a/arch/arm/mach-mxs/iomux-imx.c
> +++ b/arch/arm/mach-mxs/iomux-imx.c
> @@ -128,6 +128,12 @@ void imx_gpio_mode(uint32_t m)
>  				(GET_PULLUP(m) == 1 ? BIT_SET : BIT_CLR));
>  	}
>  
> +	if (BK_PRESENT(m)) {
> +		reg_offset = calc_pullup_reg(gpio_pin);
> +		writel(0x1 << (gpio_pin % 32), IMX_IOMUXC_BASE + reg_offset +
> +				(GET_BITKEEPER(m) == 1 ? BIT_SET : BIT_CLR));
> +	}

I just noticed this breaks i.MX23 support:

arch/arm/mach-mxs/iomux-imx.c: In function 'imx_gpio_mode':
arch/arm/mach-mxs/iomux-imx.c:131:2: warning: implicit declaration of function 'BK_PRESENT' [-Wimplicit-function-declaration]
arch/arm/mach-mxs/iomux-imx.c:133:3: warning: implicit declaration of function 'GET_BITKEEPER' [-Wimplicit-function-declaration]
arch/arm/mach-mxs/built-in.o: In function `imx_gpio_mode':
/home/sha/dude/barebox/barebox/arch/arm/mach-mxs/iomux-imx.c:131: undefined reference to `BK_PRESENT'
/home/sha/dude/barebox/barebox/arch/arm/mach-mxs/iomux-imx.c:133: undefined reference to `GET_BITKEEPER'
make: *** [barebox] Error 1


Care to send a fix for this? You can reproduce this using the
chumby_defconfig.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
