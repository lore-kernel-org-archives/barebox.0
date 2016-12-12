Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cGJSo-0005Lg-6r
 for barebox@lists.infradead.org; Mon, 12 Dec 2016 05:47:51 +0000
Date: Mon, 12 Dec 2016 06:47:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161212054728.7huafvpweafhbnzg@pengutronix.de>
References: <20161208101551.32119-1-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20161208101551.32119-1-p.zabel@pengutronix.de>
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
Subject: Re: [PATCH] of: base: add chosen node if it does not exist when
 adding initrd
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Dec 08, 2016 at 11:15:51AM +0100, Philipp Zabel wrote:
> If the chosen node does not exist, of_add_initrd fails to pass the
> initrd to the kernel. Instead it should create the chosen node, just
> like of_fixup_bootargs does.
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  drivers/of/base.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 767d4e1..0c20fcd 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2019,9 +2019,9 @@ int of_add_initrd(struct device_node *root, resource_size_t start,
>  	struct device_node *chosen;
>  	__be32 buf[2];
>  
> -	chosen = of_find_node_by_path_from(root, "/chosen");
> +	chosen = of_create_node(root, "/chosen");
>  	if (!chosen)
> -		return -EINVAL;
> +		return -ENOMEM;
>  
>  	if (end) {
>  		of_write_number(buf, start, 2);
> -- 
> 2.10.2
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
