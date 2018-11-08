Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gKf96-0002nl-Uk
 for barebox@lists.infradead.org; Thu, 08 Nov 2018 07:54:35 +0000
Date: Thu, 8 Nov 2018 08:54:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181108075417.y2x3sijgyymvoiph@pengutronix.de>
References: <20181107202215.2312-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181107202215.2312-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] net: only use ethaddrs registered with device node on
 that device
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 07, 2018 at 09:22:15PM +0100, Lucas Stach wrote:
> If an ethaddr is registered with a device node the ethid is set
> to 0 via the struct initialization. Now if a device without a node
> (for eaxample a USB network adapter) with ethid 0 looks up the
> ethaddr it will wrongly get that address assigned, as the ethid
> matches.
> 
> Avoid this by setting the ethid to something that no device will
> ever use when the addr is registered via a device node.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  net/eth.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/net/eth.c b/net/eth.c
> index 9dc44119528e..badd18343349 100644
> --- a/net/eth.c
> +++ b/net/eth.c
> @@ -150,6 +150,7 @@ void of_eth_register_ethaddr(struct device_node *node, const char *ethaddr)
>  
>  	addr = xzalloc(sizeof(*addr));
>  	addr->node = node;
> +	addr->ethid = -1;
>  	memcpy(addr->ethaddr, ethaddr, ETH_ALEN);
>  	list_add_tail(&addr->list, &ethaddr_list);
>  }
> -- 
> 2.19.1
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
