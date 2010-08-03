Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OgO14-0000ih-86
	for barebox@lists.infradead.org; Tue, 03 Aug 2010 20:23:15 +0000
Date: Tue, 3 Aug 2010 22:23:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100803202311.GO14113@pengutronix.de>
References: <20100803125142.GA9556@game.jcrosoft.org>
	<1280840019-11421-1-git-send-email-plagnioj@jcrosoft.com>
	<1280840019-11421-2-git-send-email-plagnioj@jcrosoft.com>
	<1280840019-11421-3-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1280840019-11421-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 3/3] at91: implement clock framework
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean-Christophe,

That was fast ;)

On Tue, Aug 03, 2010 at 02:53:39PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> this implementation is based on linux one
> it will calculate all the clock dynamically instead of statictly
> this will use also the new clock framework

I think it's a good idea to leave a pointer to the Linux version this
code is from. This will help us find relevant changes for barebox in the
Linux history.

> 
> +
> +static struct clk *periph_clocks[] = {
> +	&pioA_clk,
> +	&pioB_clk,
> +	&pioC_clk,
> +	&adc_clk,
> +	&usart0_clk,
> +	&usart1_clk,
> +	&usart2_clk,
> +	&mmc_clk,
> +	&udc_clk,
> +	&twi_clk,
> +	&spi0_clk,
> +	&spi1_clk,
> +	&ssc_clk,
> +	&tc0_clk,
> +	&tc1_clk,
> +	&tc2_clk,
> +	&ohci_clk,
> +	&macb_clk,
> +	&isi_clk,
> +	&usart3_clk,
> +	&usart4_clk,
> +	&usart5_clk,
> +	&tc3_clk,
> +	&tc4_clk,
> +	&tc5_clk,
> +	// irq0 .. irq2
> +};
> +
> +/*
> + * The two programmable clocks.
> + * You must configure pin multiplexing to bring these signals out.
> + */
> +static struct clk pck0 = {
> +	.name		= "pck0",
> +	.pmc_mask	= AT91_PMC_PCK0,
> +	.type		= CLK_TYPE_PROGRAMMABLE,
> +	.id		= 0,
> +};
> +static struct clk pck1 = {
> +	.name		= "pck1",
> +	.pmc_mask	= AT91_PMC_PCK1,
> +	.type		= CLK_TYPE_PROGRAMMABLE,
> +	.id		= 1,
> +};
> +
> +static void __init at91sam9260_register_clocks(void)
> +{
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(periph_clocks); i++)
> +		clk_register(periph_clocks[i]);
> +
> +	clk_register(&pck0);
> +	clk_register(&pck1);

Any special reason these are not registered in the array above other
that they are not peripheral clocks?
I just saw that it's the same in Linux, so probably this is the reason.

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
