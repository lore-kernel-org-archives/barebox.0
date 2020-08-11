Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5VD2-0007kA-Jq
 for barebox@lists.infradead.org; Tue, 11 Aug 2020 14:25:01 +0000
References: <20200720063921.7547-1-o.rempel@pengutronix.de>
 <20200720063921.7547-3-o.rempel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <280a8e88-109f-331f-8579-74c070908ff2@pengutronix.de>
Date: Tue, 11 Aug 2020 16:24:58 +0200
MIME-Version: 1.0
In-Reply-To: <20200720063921.7547-3-o.rempel@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH v4 2/3] of: base: register DT root as device
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
Cc: david@protonic.nl

Hello Oleksij,

On 7/20/20 8:39 AM, Oleksij Rempel wrote:
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

this patch breaks boot on the Linux Automation MC-1.
of_platform_device_create() uses of_device_make_bus_id() to generate
a name, but that function is a no-op for the root node.

This results in a platform device with dev->name == NULL, which
inside register_device() -> get_device_by_name_id() -> strcmp
leads to a NULL pointer dereference.

You should probably not use of_platform_device_create, but use
platform_device_register directly and set a suitable name
upfront in the struct device_d you initialize.

Cheers
Ahmad

> ...
> board-embest-riot
> board-protonic-imx6
>     machine.of
> ...
> 
> With devinfo, you'll be able to get some board specific information,
> if this is implemented:
> barebox@Protonic PRTI6Q board:/ devinfo machine.of
> Driver: board-protonic-imx6
> Bus: platform
> Parameters:
>   boardid: 0 (type: uint32)
>   boardrev: 1 (type: uint32)
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/of/base.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 4754fcb98f..b76e424da0 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2141,6 +2141,7 @@ static void of_probe_memory(void)
>  int of_probe(void)
>  {
>  	struct device_node *firmware;
> +	struct device_d *dev;
>  
>  	if(!root_node)
>  		return -ENODEV;
> @@ -2157,6 +2158,10 @@ int of_probe(void)
>  	if (firmware)
>  		of_platform_populate(firmware, NULL, NULL);
>  
> +	dev = of_platform_device_create(root_node, NULL);
> +	if (dev)
> +		dev_set_name(dev, "%s.of", "machine");
> +
>  	of_clk_init(root_node, NULL);
>  	of_platform_populate(root_node, of_default_bus_match_table, NULL);
>  
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
