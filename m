Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cngjT-0000tx-CZ
 for barebox@lists.infradead.org; Tue, 14 Mar 2017 07:19:01 +0000
Date: Tue, 14 Mar 2017 08:18:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170314071837.55ehyx2b4hqzlrw5@pengutronix.de>
References: <1489136300-8428-1-git-send-email-yegorslists@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1489136300-8428-1-git-send-email-yegorslists@googlemail.com>
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
Subject: Re: [PATCH] arm: baltos: enable mPCIe slot and configure external
 GPIO controller
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org

On Fri, Mar 10, 2017 at 09:58:20AM +0100, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> Baltos devices provide a mPCIe slot, whose power is turned off by
> default. This patch activates mPCIe slot in barebox, so that for example
> GSM modem can be already available in user space.
> 
> Also configure external GPIO controller via setting its output pins to
> low.
> 
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
>  arch/arm/boards/vscom-baltos/board.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/vscom-baltos/board.c b/arch/arm/boards/vscom-baltos/board.c
> index fea992d..39f40a6 100644
> --- a/arch/arm/boards/vscom-baltos/board.c
> +++ b/arch/arm/boards/vscom-baltos/board.c
> @@ -41,6 +41,7 @@
>  #include <linux/err.h>
>  #include <mach/bbu.h>
>  #include <libfile.h>
> +#include <gpio.h>
>  
>  static struct omap_barebox_part baltos_barebox_part = {
>  	.nand_offset = SZ_512K,
> @@ -109,6 +110,17 @@ static int baltos_read_eeprom(void)
>  	sprintf(var_buf, "%d", hw_param.SystemId);
>  	globalvar_add_simple("board.id", var_buf);
>  
> +	/* enable mPCIe slot */
> +	gpio_direction_output(100, 1);
> +
> +	/* configure output signals of the external GPIO controller */
> +	if (hw_param.SystemId == 210 || hw_param.SystemId == 211) {
> +		gpio_direction_output(132, 0);
> +		gpio_direction_output(133, 0);
> +		gpio_direction_output(134, 0);
> +		gpio_direction_output(135, 0);
> +	}
> +
>  	return 0;
>  }
>  environment_initcall(baltos_read_eeprom);
> -- 
> 2.1.4
> 
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
