Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gKIYl-0000CI-AJ
 for barebox@lists.infradead.org; Wed, 07 Nov 2018 07:47:32 +0000
Date: Wed, 7 Nov 2018 08:47:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181107074718.s2dsi6phmz4egcov@pengutronix.de>
References: <20181106161407.20974-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181106161407.20974-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] commands: mem: truncate mem device size to fit the
 loff_t file size
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 06, 2018 at 05:14:07PM +0100, Lucas Stach wrote:
> On 64bit arches the file covering the whole address space is larger than
> what can be represented in the loff_t type (s64) used for the file size.
> Thus the size of this device is interpreted as negative in a lot of
> places. Fix this by truncating the size to fit the file size type.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  commands/mem.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/mem.c b/commands/mem.c
> index eb91ade05a88..cdd7a492d0d5 100644
> --- a/commands/mem.c
> +++ b/commands/mem.c
> @@ -96,7 +96,8 @@ static int mem_probe(struct device_d *dev)
>  	dev->priv = cdev;
>  
>  	cdev->name = (char*)dev->resource[0].name;
> -	cdev->size = (unsigned long)resource_size(&dev->resource[0]);
> +	cdev->size = min(resource_size(&dev->resource[0]),
> +			 (unsigned long long)S64_MAX);
>  	cdev->ops = &memops;
>  	cdev->dev = dev;
>  
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
