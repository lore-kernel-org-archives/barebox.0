Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TK6uF-0007fl-2f
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 12:21:33 +0000
Date: Fri, 5 Oct 2012 14:21:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121005122125.GQ1322@pengutronix.de>
References: <20121005110435.GR26553@game.jcrosoft.org>
 <1349435923-29233-1-git-send-email-plagnioj@jcrosoft.com>
 <1349435923-29233-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349435923-29233-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 2/4] gpio: provide generic gpio header
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 05, 2012 at 01:18:41PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  include/asm-generic/gpio.h |   10 ++++++++++
>  1 file changed, 10 insertions(+)
>  create mode 100644 include/asm-generic/gpio.h
> 
> diff --git a/include/asm-generic/gpio.h b/include/asm-generic/gpio.h
> new file mode 100644
> index 0000000..1997888
> --- /dev/null
> +++ b/include/asm-generic/gpio.h
> @@ -0,0 +1,10 @@
> +#ifndef __ASM_GENERIC_GPIO_H
> +#define __ASM_GENERIC_GPIO_H
> +
> +void gpio_set_value(unsigned gpio, int value);
> +int gpio_get_value(unsigned gpio);
> +int gpio_direction_output(unsigned gpio, int value);
> +int gpio_direction_input(unsigned gpio);
> +
> +#endif /* __ASM_GENERIC_GPIO_H */
> +

No newline at end of file please.

Since you are adding a generic file, which is good, could you also
cleanup the potential users?

./arch/arm/mach-at91/include/mach/gpio.h
./arch/arm/mach-mxs/include/mach/gpio.h
./arch/arm/mach-imx/include/mach/gpio.h
./arch/arm/mach-pxa/include/plat/gpio.h
./arch/arm/mach-pxa/include/mach/gpio.h
./arch/arm/mach-samsung/include/mach/gpio.h
./arch/arm/mach-ep93xx/include/mach/gpio.h
./arch/arm/mach-omap/include/mach/gpio.h

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
