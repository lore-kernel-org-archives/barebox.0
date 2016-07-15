Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bNw4E-0006PS-5v
 for barebox@lists.infradead.org; Fri, 15 Jul 2016 05:53:43 +0000
Date: Fri, 15 Jul 2016 07:53:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160715055317.GF20657@pengutronix.de>
References: <1468476665-26409-1-git-send-email-andrew.smirnov@gmail.com>
 <1468476665-26409-2-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1468476665-26409-2-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 2/7] mfd: syscon: Don't call request_iomem_region()
To: Alexander Shiyan <shc_work@mail.ru>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

Alexander,

Applying 1/7 and this one should make clps711x work again, right?

Sascha

On Wed, Jul 13, 2016 at 11:11:00PM -0700, Andrey Smirnov wrote:
> On platforms that mix dedicated IP block register space with
> miscellaneous registers it is necessary to share register window between
> syscon and dedicated IP block driver. Calling request_iomem_region()
> implies exclusive ownership of the region, which, in the case above
> could not happen.
> 
> This change also makes this driver's behaviour to that of its Linux
> kernel counterpart.
> 
> Suggested-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/mfd/syscon.c | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
> index 9589a03..ac46122 100644
> --- a/drivers/mfd/syscon.c
> +++ b/drivers/mfd/syscon.c
> @@ -76,12 +76,6 @@ static int syscon_probe(struct device_d *dev)
>  		return PTR_ERR(res);
>  	}
>  
> -	res = request_iomem_region(dev_name(dev), res->start, res->end);
> -	if (IS_ERR(res)) {
> -		free(syscon);
> -		return PTR_ERR(res);
> -	}
> -
>  	syscon->base = (void __iomem *)res->start;
>  	dev->priv = syscon;
>  
> -- 
> 2.5.5
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
