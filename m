Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJlu6-0007vr-57
 for barebox@lists.infradead.org; Fri, 18 May 2018 20:23:08 +0000
Date: Fri, 18 May 2018 22:20:45 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180518202045.GA26895@ravnborg.org>
References: <20180518180636.24885-1-vivien.didelot@savoirfairelinux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180518180636.24885-1-vivien.didelot@savoirfairelinux.com>
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
Subject: Re: [PATCH] net: specify device name in warning
To: Vivien Didelot <vivien.didelot@savoirfairelinux.com>
Cc: barebox@lists.infradead.org

Hi Vivien

On Fri, May 18, 2018 at 02:06:36PM -0400, Vivien Didelot wrote:
> When a SoC such as VF610 has no addresses programmed for both its
> interfaces, the "No MAC address set" warning can be confusing:
> 
>     booting 'net'
>     WARNING: net: warning: No MAC address set. Using random address a2:e8:be:79:72:01
>     WARNING: net: warning: No MAC address set. Using random address aa:d5:d7:10:c0:42
> 
> This patch simply specifies the device name in the warning for clarity:
> 
>     booting 'net'
>     WARNING: net: warning: No MAC address set for eth0. Using random address 5e:92:6b:b8:6e:92
>     WARNING: net: warning: No MAC address set for eth1. Using random address 7e:bb:cd:7a:c1:e8
> 
> Signed-off-by: Vivien Didelot <vivien.didelot@savoirfairelinux.com>
> ---
>  net/net.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/net.c b/net/net.c
> index 94954677c..da7afb014 100644
> --- a/net/net.c
> +++ b/net/net.c
> @@ -330,7 +330,7 @@ static struct net_connection *net_new(struct eth_device *edev, IPaddr_t dest,
>  		char str[sizeof("xx:xx:xx:xx:xx:xx")];
>  		random_ether_addr(edev->ethaddr);
>  		ethaddr_to_string(edev->ethaddr, str);
> -		pr_warn("warning: No MAC address set. Using random address %s\n", str);
> +		pr_warn("warning: No MAC address set for %s. Using random address %s\n", edev->devname, str);
>  		eth_set_ethaddr(edev, edev->ethaddr);

You have a device - so a more consistent way seems to use dev_warn()

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
