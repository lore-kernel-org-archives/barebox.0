Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fL0zu-000750-E7
 for barebox@lists.infradead.org; Tue, 22 May 2018 06:42:16 +0000
Date: Tue, 22 May 2018 08:41:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180522064157.m6hvepx4uvlil3zh@pengutronix.de>
References: <20180518204129.9522-1-vivien.didelot@savoirfairelinux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180518204129.9522-1-vivien.didelot@savoirfairelinux.com>
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
Subject: Re: [PATCH v2] net: use dev_warn() when no MAC address is set
To: Vivien Didelot <vivien.didelot@savoirfairelinux.com>
Cc: barebox@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>

On Fri, May 18, 2018 at 04:41:29PM -0400, Vivien Didelot wrote:
> When a SoC such as VF610 has no addresses programmed for both its
> interfaces, the "No MAC address set" warning can be confusing:
> 
>     booting 'net'
>     WARNING: net: warning: No MAC address set. Using random address a2:e8:be:79:72:01
>     WARNING: net: warning: No MAC address set. Using random address aa:d5:d7:10:c0:42
> 
> This patch uses dev_warn() instead and removes the redundant "warning":
> 
>     booting 'net'
>     WARNING: eth0: No MAC address set. Using random address a2:e8:be:79:72:01
>     WARNING: eth1: No MAC address set. Using random address 4e:be:c4:bc:ce:36
> 
> Signed-off-by: Vivien Didelot <vivien.didelot@savoirfairelinux.com>

Applied, thanks

Sascha

> ---
>  net/net.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/net.c b/net/net.c
> index 94954677c..d21855415 100644
> --- a/net/net.c
> +++ b/net/net.c
> @@ -330,7 +330,7 @@ static struct net_connection *net_new(struct eth_device *edev, IPaddr_t dest,
>  		char str[sizeof("xx:xx:xx:xx:xx:xx")];
>  		random_ether_addr(edev->ethaddr);
>  		ethaddr_to_string(edev->ethaddr, str);
> -		pr_warn("warning: No MAC address set. Using random address %s\n", str);
> +		dev_warn(&edev->dev, "No MAC address set. Using random address %s\n", str);
>  		eth_set_ethaddr(edev, edev->ethaddr);
>  	}
>  
> -- 
> 2.17.0
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
