Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dUagh-0000kg-6f
 for barebox@lists.infradead.org; Mon, 10 Jul 2017 15:33:29 +0000
Date: Mon, 10 Jul 2017 17:33:03 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170710153303.GB12108@ravnborg.org>
References: <20170710152108.23601-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170710152108.23601-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] ARM: imx: phyCORE i.MX7 on phyBOARD-Zeta support
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

> \ No newline at end of file
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 6110924af642..49149e334d43 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -395,6 +395,10 @@ config MACH_ZII_VF610_DEV
>  	select ARCH_VF610
>  	select CLKDEV_LOOKUP
>  
> +config MACH_PHYTEC_PHYCORE_IMX7
> +	bool "Phytec phyCORE i.MX7"
> +	select ARCH_IMX7
> +

A little help text here introducing the board would be good like
done for most - but unfortunately not all - boards.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
