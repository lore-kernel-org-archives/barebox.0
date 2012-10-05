Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TK72O-0001TU-EB
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 12:29:53 +0000
Date: Fri, 5 Oct 2012 14:29:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121005122929.GR1322@pengutronix.de>
References: <20121005110435.GR26553@game.jcrosoft.org>
 <1349435923-29233-1-git-send-email-plagnioj@jcrosoft.com>
 <1349435923-29233-3-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349435923-29233-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 3/4] gpio: add ARM Primcell pl061 support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 05, 2012 at 01:18:42PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> +
> +	ret = gpiochip_add(&chip->gc);
> +	if (ret) {
> +		dev_err(&dev->dev, "couldn't add gpiochip\n");

Print error value?

> +		goto free_mem;
> +	}
> +
> +	writeb(0, chip->base + GPIOIE); /* disable irqs */
> +
> +	for (i = 0; i < PL061_GPIO_NR; i++) {
> +		if (pdata) {
> +			if (pdata->directions & (1 << i))
> +				pl061_direction_output(&chip->gc, i,
> +						pdata->values & (1 << i));
> +			else
> +				pl061_direction_input(&chip->gc, i);

I don't think a gpio driver should alter the directions without being
asked. Just leave the directions untouched without platform_data.

> +
> +MODULE_AUTHOR("Baruch Siach <baruch@tkos.co.il>");
> +MODULE_DESCRIPTION("PL061 GPIO driver");
> +MODULE_LICENSE("GPL");
> diff --git a/include/linux/amba/pl061.h b/include/linux/amba/pl061.h
> new file mode 100644
> index 0000000..fb83c04
> --- /dev/null
> +++ b/include/linux/amba/pl061.h
> @@ -0,0 +1,16 @@
> +#include <linux/types.h>
> +
> +/* platform data for the PL061 GPIO driver */
> +
> +struct pl061_platform_data {
> +	/* number of the first GPIO */
> +	unsigned	gpio_base;
> +
> +	/* number of the first IRQ.
> +	 * If the IRQ functionality in not desired this must be set to 0.
> +	 */
> +	unsigned	irq_base;
> +
> +	u8		directions;	/* startup directions, 1: out, 0: in */
> +	u8		values;		/* startup values */
> +};

include file protection?

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
