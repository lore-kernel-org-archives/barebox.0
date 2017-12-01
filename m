Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKjFA-0006it-63
 for barebox@lists.infradead.ORG; Fri, 01 Dec 2017 11:12:35 +0000
Date: Fri, 1 Dec 2017 12:12:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171201111210.3t2xzyrpfrzvkp72@pengutronix.de>
References: <20171129045506.17149-1-andrew.smirnov@gmail.com>
 <20171129045506.17149-3-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171129045506.17149-3-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 3/5] net: phy: Port MDIO bus miltiplexer framework from
 Linux kernel
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Nov 28, 2017 at 08:55:04PM -0800, Andrey Smirnov wrote:
> Port mdio-mux.c from Linux kernel to Barebox, to support adding
> dirvers that rely on that infrastructure/API.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/net/phy/Kconfig    |   8 +++
>  drivers/net/phy/Makefile   |   2 +
>  drivers/net/phy/mdio-mux.c | 145 +++++++++++++++++++++++++++++++++++++++++++++
>  include/linux/mdio-mux.h   |  30 ++++++++++
>  4 files changed, 185 insertions(+)
>  create mode 100644 drivers/net/phy/mdio-mux.c
>  create mode 100644 include/linux/mdio-mux.h
> 
> diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
> index ea2e06265..f423d9ba3 100644
> --- a/drivers/net/phy/Kconfig
> +++ b/drivers/net/phy/Kconfig
> @@ -66,6 +66,14 @@ config MDIO_GPIO
>  	---help---
>  	  Supports GPIO lib-based MDIO busses.
>  
> +config MDIO_BUS_MUX
> +       	bool

Indentation gone wrong here.

> +	help
> +	  This module provides a driver framework for MDIO bus
> +	  multiplexers which connect one of several child MDIO busses
> +	  to a parent bus.  Switching between child busses is done by
> +	  device specific drivers.
> +

...

> +	for_each_available_child_of_node(mux_node, child_bus_node) {
> +		int v;
> +
> +		r = of_property_read_u32(child_bus_node, "reg", &v);
> +		if (r) {
> +			dev_err(dev,
> +				"Error: Failed to find reg for child %pOF\n",
> +				child_bus_node);
> +			continue;
> +		}
> +
> +		/*
> +		  FIXME:
> +		 */

What do you have to fix here?

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
