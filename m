Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7X1d-0001er-3Z
 for barebox@lists.infradead.org; Mon, 17 Aug 2020 04:45:38 +0000
Date: Mon, 17 Aug 2020 06:45:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200817044535.GC19745@pengutronix.de>
References: <20200812085552.12688-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200812085552.12688-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH fixup v1] of: base: register DT root as device
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Aug 12, 2020 at 10:55:52AM +0200, Oleksij Rempel wrote:
> A usual board file contains at least one of_machine_is_compatible().
> Some of the have a rather long list with complicated version logic.
> 
> To avoid own implementation for driver management, register the root node
> of device tree as platform device. So, the main platform bus can attach
> proper board driver. After this patch a typical board.c file can reuse
> existing driver infrastructure.
> 
> After this patch, you will be able to see all registered board drivers
> with drvinfo as fallow:
> ...
> board-embest-riot
> board-protonic-imx6
>     dt-root.of
> ...
> 
> With devinfo, you'll be able to get some board specific information,
> if this is implemented:
> barebox@Protonic PRTI6Q board:/ devinfo dt-root.of
> Driver: board-protonic-imx6
> Bus: platform
> Parameters:
>   boardid: 0 (type: uint32)
>   boardrev: 1 (type: uint32)
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/of/base.c     | 2 ++
>  drivers/of/platform.c | 5 +++++
>  2 files changed, 7 insertions(+)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 4c633bcd49..6f6cdc9379 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2149,6 +2149,8 @@ int of_probe(void)
>  	if (firmware)
>  		of_platform_populate(firmware, NULL, NULL);
>  
> +	of_platform_device_create(root_node, NULL);

I am with Ahmad here: The bulk of of_platform_device_create() is unused
when called with the root node...

> +
>  	of_clk_init(root_node, NULL);
>  	of_platform_populate(root_node, of_default_bus_match_table, NULL);
>  
> diff --git a/drivers/of/platform.c b/drivers/of/platform.c
> index ca84cede23..767beebe06 100644
> --- a/drivers/of/platform.c
> +++ b/drivers/of/platform.c
> @@ -50,6 +50,11 @@ static void of_device_make_bus_id(struct device_d *dev)
>  	const __be32 *reg;
>  	u64 addr;
>  
> +	if (!node->parent) {
> +		dev_set_name(dev, "dt-root.of");
> +		return;
> +	}

...and one of the few things that it actually does needs patching.
Please open code creating and registering the device for the root node.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
