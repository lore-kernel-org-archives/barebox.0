Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fo17n-0004n9-6h
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 06:42:16 +0000
Date: Fri, 10 Aug 2018 08:42:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180810064203.y3t2htbitjir4jlu@pengutronix.de>
References: <20180809224625.20993-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180809224625.20993-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] net: eth: Make use of ETH_ALEN
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Aug 09, 2018 at 03:46:25PM -0700, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  net/eth.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/net/eth.c b/net/eth.c
> index 5d45a0461..9dc441195 100644
> --- a/net/eth.c
> +++ b/net/eth.c
> @@ -40,7 +40,7 @@ LIST_HEAD(netdev_list);
>  
>  struct eth_ethaddr {
>  	struct list_head list;
> -	u8 ethaddr[6];
> +	u8 ethaddr[ETH_ALEN];
>  	int ethid;
>  	struct device_node *node;
>  };
> @@ -82,7 +82,7 @@ static int eth_get_registered_ethaddr(struct eth_device *edev, void *buf)
>  	list_for_each_entry(addr, &ethaddr_list, list) {
>  		if ((node && node == addr->node) ||
>  				addr->ethid == edev->dev.id) {
> -			memcpy(buf, addr->ethaddr, 6);
> +			memcpy(buf, addr->ethaddr, ETH_ALEN);
>  			return 0;
>  		}
>  	}
> @@ -118,7 +118,7 @@ void eth_register_ethaddr(int ethid, const char *ethaddr)
>  
>  	addr = xzalloc(sizeof(*addr));
>  	addr->ethid = ethid;
> -	memcpy(addr->ethaddr, ethaddr, 6);
> +	memcpy(addr->ethaddr, ethaddr, ETH_ALEN);
>  	list_add_tail(&addr->list, &ethaddr_list);
>  }
>  
> @@ -150,7 +150,7 @@ void of_eth_register_ethaddr(struct device_node *node, const char *ethaddr)
>  
>  	addr = xzalloc(sizeof(*addr));
>  	addr->node = node;
> -	memcpy(addr->ethaddr, ethaddr, 6);
> +	memcpy(addr->ethaddr, ethaddr, ETH_ALEN);
>  	list_add_tail(&addr->list, &ethaddr_list);
>  }
>  
> @@ -284,7 +284,7 @@ static int eth_param_set_ethaddr(struct param_d *param, void *priv)
>  #ifdef CONFIG_OFTREE
>  static void eth_of_fixup_node(struct device_node *root,
>  			      const char *node_path, int ethid,
> -			      const u8 ethaddr[6])
> +			      const u8 ethaddr[ETH_ALEN])
>  {
>  	struct device_node *node;
>  	int ret;
> @@ -308,7 +308,7 @@ static void eth_of_fixup_node(struct device_node *root,
>  		return;
>  	}
>  
> -	ret = of_set_property(node, "mac-address", ethaddr, 6, 1);
> +	ret = of_set_property(node, "mac-address", ethaddr, ETH_ALEN, 1);
>  	if (ret)
>  		pr_err("Setting mac-address property of %s failed with: %s\n",
>  		       node->full_name, strerror(-ret));
> @@ -355,7 +355,7 @@ static const char * const eth_mode_names[] = {
>  int eth_register(struct eth_device *edev)
>  {
>  	struct device_d *dev = &edev->dev;
> -	unsigned char ethaddr[6];
> +	unsigned char ethaddr[ETH_ALEN];
>  	int ret, found = 0;
>  
>  	if (!edev->get_ethaddr) {
> -- 
> 2.17.1
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
