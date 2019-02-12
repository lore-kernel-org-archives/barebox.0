Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtT9R-0002ZB-GQ
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 08:10:47 +0000
Date: Tue, 12 Feb 2019 09:10:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190212081043.viptqq7sge5zjtdg@pengutronix.de>
References: <1549898200-32688-1-git-send-email-t.remmet@phytec.de>
 <1549898200-32688-2-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1549898200-32688-2-git-send-email-t.remmet@phytec.de>
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
Subject: Re: [PATCH 1/7] drivers: bus: Add ti-sysc bus driver
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Feb 11, 2019 at 04:16:34PM +0100, Teresa Remmet wrote:
> Adds minimal support for the sysc interconnect target module found
> on many TI SoCs. With this device tree includes have been rearagned.
> We need the driver to probe the child devices of the bus.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  drivers/bus/Kconfig   |  7 +++++++
>  drivers/bus/Makefile  |  1 +
>  drivers/bus/ti-sysc.c | 45 +++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 53 insertions(+)
>  create mode 100644 drivers/bus/ti-sysc.c
> 
> diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
> index 202df59762e8..7d35a663fdb5 100644
> --- a/drivers/bus/Kconfig
> +++ b/drivers/bus/Kconfig
> @@ -6,6 +6,13 @@ config BUS_OMAP_GPMC
>  	depends on OMAP_GPMC
>  	bool "TI OMAP/AM33xx GPMC support"
>  
> +config TI_SYSC
> +	depends on ARCH_OMAP
> +	bool "TI sysc interconnect target module driver"
> +	help
> +          Generic driver for Texas Instruments interconnect target module
> +          found on many TI SoCs.

Can we default 'y' this option or select it from the SoCs that need it?

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
