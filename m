Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TT6Jg-0006gd-RD
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 07:32:57 +0000
Date: Tue, 30 Oct 2012 08:32:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121030073244.GE1641@pengutronix.de>
References: <20121029134033.GH28904@game.jcrosoft.org>
 <1351518424-29523-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1351518424-29523-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/8] arm: at91: add gpio_is_valid support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 29, 2012 at 02:46:57PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/mach-at91/include/mach/gpio.h |   11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm/mach-at91/include/mach/gpio.h b/arch/arm/mach-at91/include/mach/gpio.h
> index 3533bf9..fa695a6 100644
> --- a/arch/arm/mach-at91/include/mach/gpio.h
> +++ b/arch/arm/mach-at91/include/mach/gpio.h
> @@ -22,6 +22,17 @@
>  
>  /* these pin numbers double as IRQ numbers, like AT91xxx_ID_* values */
>  
> +#define ARCH_NR_GPIOS 256
> +
> +static inline int gpio_is_valid(int gpio)
> +{
> +	if (gpio < 1)
> +		return 0;
> +	if (gpio < ARCH_NR_GPIOS)
> +		return 1;
> +	return 0;
> +}

Why is this patch in this series? It is unused and wrong. 0 is a valid
gpio.

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
