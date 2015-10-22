Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zp9zL-0004BW-4v
 for barebox@lists.infradead.org; Thu, 22 Oct 2015 07:08:40 +0000
Date: Thu, 22 Oct 2015 09:08:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151022070817.GI14476@pengutronix.de>
References: <1445456225.13196.122.camel@rtred1test09.kymetacorp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1445456225.13196.122.camel@rtred1test09.kymetacorp.com>
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
Subject: Re: [PATCH 1/2 v2] net: eth: Refactor OF tree fixup of one node into
 new function
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

On Wed, Oct 21, 2015 at 07:37:00PM +0000, Trent Piepho wrote:
> Code that fixes up one node with a new MAC address is refactored into
> a new function that eth_of_fixup() calls in a loop.
> 
> Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
> ---
>  net/eth.c | 62 ++++++++++++++++++++++++++++++++++----------------------------
>  1 file changed, 34 insertions(+), 28 deletions(-)

Applied, thanks. Also applied 2/2.

Sascha

> 
> diff --git a/net/eth.c b/net/eth.c
> index b22e556..befa8d8 100644
> --- a/net/eth.c
> +++ b/net/eth.c
> @@ -289,42 +289,48 @@ static int eth_param_set_ethaddr(struct param_d *param, void *priv)
>  }
>  
>  #ifdef CONFIG_OFTREE
> -static int eth_of_fixup(struct device_node *root, void *unused)
> +static void eth_of_fixup_node(struct device_node *root,
> +			      const char *node_path, int ethid,
> +			      const u8 ethaddr[6])
>  {
> -	struct eth_device *edev;
>  	struct device_node *node;
>  	int ret;
>  
> +	if (!is_valid_ether_addr(ethaddr)) {
> +		pr_debug("%s: no valid mac address, cannot fixup\n",
> +			 __func__);
> +		return;
> +	}
> +
> +	if (node_path) {
> +		node = of_find_node_by_path_from(root, node_path);
> +	} else {
> +		char eth[12];
> +		sprintf(eth, "ethernet%d", ethid);
> +		node = of_find_node_by_alias(root, eth);
> +	}
> +
> +	if (!node) {
> +		pr_debug("%s: no node to fixup\n", __func__);
> +		return;
> +	}
> +
> +	ret = of_set_property(node, "mac-address", ethaddr, 6, 1);
> +	if (ret)
> +		pr_err("Setting mac-address property of %s failed with: %s\n",
> +		       node->full_name, strerror(-ret));
> +}
> +
> +static int eth_of_fixup(struct device_node *root, void *unused)
> +{
> +	struct eth_device *edev;
> +
>  	/*
>  	 * Add the mac-address property for each network device we
>  	 * find a nodepath for and which has a valid mac address.
>  	 */
> -	list_for_each_entry(edev, &netdev_list, list) {
> -		if (!is_valid_ether_addr(edev->ethaddr)) {
> -			dev_dbg(&edev->dev,
> -				"%s: no valid mac address, cannot fixup\n",
> -				__func__);
> -			continue;
> -		}
> -
> -		if (edev->nodepath) {
> -			node = of_find_node_by_path_from(root, edev->nodepath);
> -		} else {
> -			char eth[12];
> -			sprintf(eth, "ethernet%d", edev->dev.id);
> -			node = of_find_node_by_alias(root, eth);
> -		}
> -
> -		if (!node) {
> -			dev_dbg(&edev->dev, "%s: no node to fixup\n", __func__);
> -			continue;
> -		}
> -
> -		ret = of_set_property(node, "mac-address", edev->ethaddr, 6, 1);
> -		if (ret)
> -			pr_err("Setting mac-address property of %s failed with: %s\n",
> -					node->full_name, strerror(-ret));
> -	}
> +	list_for_each_entry(edev, &netdev_list, list)
> +		eth_of_fixup_node(root, edev->nodepath, edev->dev.id, edev->ethaddr);
>  
>  	return 0;
>  }
> -- 
> 1.8.3.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
