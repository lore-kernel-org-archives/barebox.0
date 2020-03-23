Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGK4e-0001k8-Hf
 for barebox@lists.infradead.org; Mon, 23 Mar 2020 10:12:49 +0000
Date: Mon, 23 Mar 2020 11:12:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200323101246.GQ3335@pengutronix.de>
References: <20200316110008.2909-1-cleger@kalray.eu>
 <20200316110008.2909-2-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200316110008.2909-2-cleger@kalray.eu>
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
Subject: Re: [PATCH 1/2] of: base: parse all available memory nodes
To: Clement Leger <cleger@kalray.eu>
Cc: barebox@lists.infradead.org

On Mon, Mar 16, 2020 at 12:00:07PM +0100, Clement Leger wrote:
> Currently, barebox only parse one memory node which is either the
> "/memory" node or the first node with device_type == "memory".
> However, the use of multiple memory nodes with device_type = "memory"
> property is allowed by the device tree specification and already
> correctly parsed by Linux kernel.
> In order to fix that, add of_probe_memory function which loop over all
> available memory nodes. In order to try to keep existing legacy search
> based on "memory" node name, try to find this node and add it. If the
> memory node contains the device_type property, then it will only be
> added once.
> 
> Signed-off-by: Clement Leger <cleger@kalray.eu>
> ---
>  drivers/of/base.c | 31 +++++++++++++++++++++++++------
>  1 file changed, 25 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 9ede05227..b1a96ee8f 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2061,9 +2061,32 @@ const struct of_device_id of_default_bus_match_table[] = {
>  	}
>  };
>  
> +static void of_probe_memory(void)
> +{
> +	struct device_node *memory = root_node, *legacy_memory;
> +
> +	/* Parse node based on name (for legacy dt) */
> +	legacy_memory = of_find_node_by_path("/memory");
> +	if (legacy_memory)
> +		of_add_memory(legacy_memory, false);
> +
> +	/* Then, parse all available node with "memory" device_type */
> +	while (1) {
> +		memory = of_find_node_by_type(memory, "memory");
> +		if (!memory)
> +			break;
> +
> +		/* Skip potentially already added legacy memory node */
> +		if (memory == legacy_memory)
> +			continue;
> +
> +		of_add_memory(memory, false);
> +	}

AFAIK the device_type = "memory" property was mandatory in the early
days as well, there shouldn't be any /memory nodes without this
property. Given that, is the add-legacy-node-first still necessary?

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
