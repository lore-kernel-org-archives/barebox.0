Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WWTTk-0007Ck-W7
 for barebox@lists.infradead.org; Sat, 05 Apr 2014 16:30:01 +0000
Date: Sat, 5 Apr 2014 18:29:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140405162939.GD27055@pengutronix.de>
References: <1396618800-27692-1-git-send-email-wjatscheslaw.stoljarski@kiwigrid.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1396618800-27692-1-git-send-email-wjatscheslaw.stoljarski@kiwigrid.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] imx53: add imx53_add_cspi
To: "Wjatscheslaw Stoljarski (Slawa)" <wjatscheslaw.stoljarski@kiwigrid.com>
Cc: barebox@lists.infradead.org

Hi Wjatscheslaw,

On Fri, Apr 04, 2014 at 03:40:00PM +0200, Wjatscheslaw Stoljarski (Slawa) wrote:
> From: "Wjatscheslaw Stoljarski" <wjatscheslaw.stoljarski@kiwigrid.com>
> 
> 
> Signed-off-by: Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>

Applied, thanks, although new boards should probe from devicetree and
not use the platform registration code.

Sascha

> ---
>  arch/arm/mach-imx/include/mach/devices-imx53.h |    5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/include/mach/devices-imx53.h b/arch/arm/mach-imx/include/mach/devices-imx53.h
> index d4e9a4a..88be4fd 100644
> --- a/arch/arm/mach-imx/include/mach/devices-imx53.h
> +++ b/arch/arm/mach-imx/include/mach/devices-imx53.h
> @@ -2,6 +2,11 @@
>  #include <mach/devices.h>
>  #include <mach/imx53-regs.h>
>  
> +static inline struct device_d *imx53_add_cspi(struct spi_imx_master *pdata)
> +{
> +	return imx_add_spi_imx35((void *)MX53_CSPI_BASE_ADDR, 0, pdata);
> +}
> +
>  static inline struct device_d *imx53_add_spi0(struct spi_imx_master *pdata)
>  {
>  	return imx_add_spi_imx51((void *)MX53_ECSPI1_BASE_ADDR, 0, pdata);
> -- 
> 1.7.9.5
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
