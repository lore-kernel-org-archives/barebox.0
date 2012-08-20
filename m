Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo1.mail-out.ovh.net ([46.105.76.26]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T3TGa-0001JI-PS
 for barebox@lists.infradead.org; Mon, 20 Aug 2012 14:47:45 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 00B33FF9186
 for <barebox@lists.infradead.org>; Mon, 20 Aug 2012 16:54:42 +0200 (CEST)
Date: Mon, 20 Aug 2012 16:47:55 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120820144755.GZ6271@game.jcrosoft.org>
References: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
 <1345472428-17417-8-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1345472428-17417-8-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 07/13] omap3: allow enabling clocks for UART3, MMC1 and SPI
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 16:20 Mon 20 Aug     , Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  arch/arm/mach-omap/Kconfig       |    4 ++++
>  arch/arm/mach-omap/omap3_clock.c |   15 +++++++++++++++
>  2 files changed, 19 insertions(+)
> 
> diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
> index aa9ab8c..574e924 100644
> --- a/arch/arm/mach-omap/Kconfig
> +++ b/arch/arm/mach-omap/Kconfig
> @@ -61,6 +61,10 @@ config OMAP_CLOCK_UART3
>  	bool
>  config OMAP_CLOCK_I2C
>  	bool
> +config OMAP_CLOCK_MMC1
> +	bool
> +config OMAP_CLOCK_SPI
> +	bool
>  
>  # Blind enable all possible clocks.. think twice before you do this.
>  config OMAP_CLOCK_ALL
> diff --git a/arch/arm/mach-omap/omap3_clock.c b/arch/arm/mach-omap/omap3_clock.c
> index 646235e..1b0c65c 100644
> --- a/arch/arm/mach-omap/omap3_clock.c
> +++ b/arch/arm/mach-omap/omap3_clock.c
> @@ -679,11 +679,26 @@ static void per_clocks_enable(void)
>  	sr32(CM_REG(FCLKEN1_CORE), 13, 1, 0x1);
>  	sr32(CM_REG(ICLKEN1_CORE), 13, 1, 0x1);
>  #endif
> +#ifdef CONFIG_OMAP_CLOCK_UART3
> +	/* Enable UART3 clocks */
> +	sr32(CM_REG(FCLKEN_PER), 11, 1, 0x1);
> +	sr32(CM_REG(ICLKEN_PER), 11, 1, 0x1);
> +#endif
>  #ifdef CONFIG_OMAP_CLOCK_I2C
>  	/* Turn on all 3 I2C clocks */
>  	sr32(CM_REG(FCLKEN1_CORE), 15, 3, 0x7);
>  	sr32(CM_REG(ICLKEN1_CORE), 15, 3, 0x7);	/* I2C1,2,3 = on */
>  #endif
> +#ifdef CONFIG_OMAP_CLOCK_MMC1
no ifdef anymore

please use if (IS_ENABLE())

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
