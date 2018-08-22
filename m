Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fsNRz-0005Ab-3Y
 for barebox@lists.infradead.org; Wed, 22 Aug 2018 07:21:08 +0000
Date: Wed, 22 Aug 2018 09:20:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180822072055.ahlctkofjyhra6mj@pengutronix.de>
References: <20180821062819.18087-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180821062819.18087-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] net: Do not route traffic to interfaces that are not up
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Aug 20, 2018 at 11:28:19PM -0700, Andrey Smirnov wrote:
> In the case when:
> 
>   - Board has multiple network interfaces
> 
>   - Two ore more of those interfaces are statically configured to be
>     on the same network
> 
>   - Only one of those interfaces is up and it is preceeded (as far as
>     for_each_netdev is concerned) by interface in the same network
>     that isn't
> 
> net_route() will choose "non-up" device as a route for traffic
> resulting in no network connectivity. Change the routing logic to also
> consider if interface is "up", so that only such interfaces would be
> considered for sending network traffic out.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---

Applied, thanks

Sascha

>  net/net.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/net.c b/net/net.c
> index d21855415..63f42fa5c 100644
> --- a/net/net.c
> +++ b/net/net.c
> @@ -149,7 +149,7 @@ struct eth_device *net_route(IPaddr_t dest)
>  	struct eth_device *edev;
>  
>  	for_each_netdev(edev) {
> -		if (!edev->ipaddr)
> +		if (!edev->ipaddr || !edev->ifup)
>  			continue;
>  
>  		if ((dest & edev->netmask) == (edev->ipaddr & edev->netmask)) {
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
