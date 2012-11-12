Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TXoel-0004nD-2r
 for barebox@lists.infradead.org; Mon, 12 Nov 2012 07:42:07 +0000
Date: Mon, 12 Nov 2012 08:42:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121112074205.GM10369@pengutronix.de>
References: <1351954598-10541-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1351954598-10541-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1] eth: register device a pure device
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Nov 03, 2012 at 03:56:38PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> as we do not need to probe them and they have no driver or bus attached
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  net/eth.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/net/eth.c b/net/eth.c
> index 2cfdb96..0a1850f 100644
> --- a/net/eth.c
> +++ b/net/eth.c
> @@ -261,7 +261,7 @@ int eth_register(struct eth_device *edev)
>  	if (edev->parent)
>  		dev_add_child(edev->parent, &edev->dev);
>  
> -	platform_device_register(&edev->dev);
> +	register_device(&edev->dev);
>  
>  	dev_add_param(dev, "ipaddr", eth_set_ipaddr, NULL, 0);
>  	dev_add_param(dev, "ethaddr", eth_set_ethaddr, NULL, 0);
> -- 
> 1.7.10.4
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
