Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SEcOV-0001yp-Np
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 08:13:44 +0000
Date: Mon, 2 Apr 2012 10:13:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120402081338.GJ3852@pengutronix.de>
References: <1332061170-5151-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1332061170-5151-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 3/3] i.MX51: Fix NANDF_RDY_INT pin definition
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Mar 18, 2012 at 12:59:30PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-imx/include/mach/iomux-mx51.h |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/include/mach/iomux-mx51.h b/arch/arm/mach-imx/include/mach/iomux-mx51.h
> index 908d1b2..872072e 100644
> --- a/arch/arm/mach-imx/include/mach/iomux-mx51.h
> +++ b/arch/arm/mach-imx/include/mach/iomux-mx51.h
> @@ -151,7 +151,7 @@
>  #define MX51_PAD_NANDF_CS7__NANDF_CS7			IOMUX_PAD(0x534, 0x14C, 0, 0x0, 0, NO_PAD_CTRL)
>  #define MX51_PAD_NANDF_CS7__FEC_TX_EN			IOMUX_PAD(0x534, 0x14C, 1, 0x0, 0, MX51_FEC_PAD_CTRL)
>  
> -#define MX51_PAD_NANDF_RDY_INT__NANDF_RDY_INT		IOMUX_PAD(0x538, 0x150, 0, 0x0, 0, NO_PAD_CTRL)
> +#define MX51_PAD_NANDF_RDY_INT__NANDF_RDY_INT		IOMUX_PAD(0x538, 0x150, 0, 0x938, 0, NO_PAD_CTRL)
>  #define MX51_PAD_NANDF_RDY_INT__FEC_TX_CLK		IOMUX_PAD(0x538, 0x150, 1, 0x974, 0, MX51_FEC_PAD_CTRL)
>  
>  #define MX51_PAD_NANDF_D15__NANDF_D15			IOMUX_PAD(0x53C, 0x154, 0, 0x0, 0, NO_PAD_CTRL)
> -- 
> 1.7.3.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
