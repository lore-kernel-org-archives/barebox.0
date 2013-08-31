Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VFi2L-0002lh-RU
 for barebox@lists.infradead.org; Sat, 31 Aug 2013 10:04:10 +0000
Date: Sat, 31 Aug 2013 12:03:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130831100348.GJ30088@pengutronix.de>
References: <1377865325-12249-1-git-send-email-j.weitzel@phytec.de>
 <1377866732-5063-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1377866732-5063-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCHi v2] i2c-omap: fix am33xx and omap3 fclk_rate
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Aug 30, 2013 at 02:45:32PM +0200, Jan Weitzel wrote:
> commit f64ed12b accidentally swap fclk_rate from am33xx and omap3.
> Revert this change.
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>

Applied, thanks

Sascha

> ---
> v2:
> Fix also omap3 fclk_rate
> Rename patch "i2c-omap: fix am33xx fclk_rate"
> 
>  drivers/i2c/busses/i2c-omap.c |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-omap.c b/drivers/i2c/busses/i2c-omap.c
> index b2a74c0..2eb5133 100644
> --- a/drivers/i2c/busses/i2c-omap.c
> +++ b/drivers/i2c/busses/i2c-omap.c
> @@ -246,7 +246,7 @@ struct omap_i2c_driver_data {
>  static struct omap_i2c_driver_data omap3_data = {
>  	.flags =	OMAP_I2C_FLAG_RESET_REGS_POSTIDLE |
>  			OMAP_I2C_FLAG_BUS_SHIFT_2,
> -	.fclk_rate =	48000,
> +	.fclk_rate =	96000,
>  	.regs =		(u8 *) reg_map,
>  };
>  
> @@ -259,7 +259,7 @@ static struct omap_i2c_driver_data omap4_data = {
>  static struct omap_i2c_driver_data am33xx_data = {
>  	.flags =	OMAP_I2C_FLAG_RESET_REGS_POSTIDLE |
>  			OMAP_I2C_FLAG_BUS_SHIFT_NONE,
> -	.fclk_rate =	96000,
> +	.fclk_rate =	48000,
>  	.regs =		(u8 *) omap4_reg_map,
>  };
>  
> -- 
> 1.7.0.4
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
