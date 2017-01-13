Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cRwQQ-0004xH-8N
 for barebox@lists.infradead.org; Fri, 13 Jan 2017 07:37:27 +0000
Date: Fri, 13 Jan 2017 08:37:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170113073700.j3djezdqqkncucyh@pengutronix.de>
References: <20170112122005.805-1-abbotti@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170112122005.805-1-abbotti@mev.co.uk>
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
Subject: Re: [PATCH] of_path: only handle no driver for device if it is on a
 bus
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org

On Thu, Jan 12, 2017 at 12:20:05PM +0000, Ian Abbott wrote:
> This fixes a regression in __of_find_path() for flash devices created by
> the cadence-quadspi driver, which do not have 'dev->driver' set.  Such
> devices do not have 'dev->bus' set either, so we can use that to qualify
> the existing test.
> 
> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
> ---
>  drivers/of/of_path.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
> index 946b9c7aa..e0b2dc124 100644
> --- a/drivers/of/of_path.c
> +++ b/drivers/of/of_path.c
> @@ -66,7 +66,7 @@ static int __of_find_path(struct device_node *node, const char *part, char **out
>  			return -ENODEV;
>  	}
>  
> -	if (!dev->driver)
> +	if (dev->bus && !dev->driver)
>  		return -ENODEV;

I am not entirely happy with this patch. Let's hope it won't fall on our
feet later. Applied for now, let's see.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
