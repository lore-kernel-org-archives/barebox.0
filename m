Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWcFV-0008Ba-PM
 for barebox@lists.infradead.org; Mon, 18 Nov 2019 08:19:07 +0000
Date: Mon, 18 Nov 2019 09:19:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191118081904.vgmgik3c4katqdwy@pengutronix.de>
References: <20191115162014.16111-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115162014.16111-1-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH] net: disable all other devices when enabling the new one
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 15, 2019 at 05:20:14PM +0100, Michael Grzeschik wrote:
> Some network devices need proper reinitialization before they can be
> used. This is especially the case when using devices that share the same
> driver.
> 
> Therefor the current approach, starting the open routine of an ether
> device just once with the first call of send, runs those devices into
> some unreliable behaviour.
> 
> This patch disables all devices that are not being used so they get
> reinitialized with the next usage.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  net/eth.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/net/eth.c b/net/eth.c
> index 53d24baa16..0c26324d3f 100644
> --- a/net/eth.c
> +++ b/net/eth.c
> @@ -217,6 +217,7 @@ static int eth_carrier_check(struct eth_device *edev, int force)
>   */
>  static int eth_check_open(struct eth_device *edev)
>  {
> +	struct eth_device *tmpedev;
>  	int ret;
>  
>  	if (edev->active)
> @@ -226,6 +227,9 @@ static int eth_check_open(struct eth_device *edev)
>  	if (ret)
>  		return ret;
>  
> +	for_each_netdev(tmpedev)
> +		tmpedev->active = 0;

This is wrong. barebox can handle multiple open network devices just
fine. The bug is in the cpsw driver like described in my response to
your cpsw patch.

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
