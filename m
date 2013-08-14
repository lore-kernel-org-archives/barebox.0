Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9aRU-0007tI-HY
 for barebox@lists.infradead.org; Wed, 14 Aug 2013 12:44:50 +0000
Date: Wed, 14 Aug 2013 14:44:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130814124425.GZ26614@pengutronix.de>
References: <1376476736-15172-1-git-send-email-david@protonic.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1376476736-15172-1-git-send-email-david@protonic.nl>
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
Subject: Re: [PATCH] of: base.c: Use correct device-tree in of_add_initrd()
To: David Jander <david@protonic.nl>
Cc: barebox@lists.infradead.org

Hi David,

On Wed, Aug 14, 2013 at 12:38:56PM +0200, David Jander wrote:
> Otherwise only the internal DT is modified, not necessarily the one passed
> to the kernel.
> 
> Signed-off-by: David Jander <david@protonic.nl>

Thanks. Applied to master and stable/v2013.08

Sascha

> ---
>  drivers/of/base.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 34a06c2..ce474be 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1732,7 +1732,7 @@ int of_add_initrd(struct device_node *root, resource_size_t start,
>  	struct device_node *chosen;
>  	__be32 buf[2];
>  
> -	chosen = of_find_node_by_path("/chosen");
> +	chosen = of_find_node_by_path_from(root, "/chosen");
>  	if (!chosen)
>  		return -EINVAL;
>  
> -- 
> 1.8.1.2
> 
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
