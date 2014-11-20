Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XrS3V-0001EF-3k
 for barebox@lists.infradead.org; Thu, 20 Nov 2014 13:45:53 +0000
Date: Thu, 20 Nov 2014 14:45:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141120134531.GM30369@pengutronix.de>
References: <1416404048-8469-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1416404048-8469-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH] dt: factor out common code
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 19, 2014 at 02:34:08PM +0100, Jan Luebbe wrote:
> Currently, dt_struct is always checked with the same code after
> dt_struct_advance(). Move the check after the switch statement.
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>

Applied, thanks

Sascha

> ---
>  drivers/of/fdt.c | 33 +++++++++++----------------------
>  1 file changed, 11 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index cfe183350978..d465f9879751 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -120,18 +120,14 @@ struct device_node *of_unflatten_dtb(void *infdt)
>  				goto err;
>  			}
>  
> -			dt_struct = dt_struct_advance(&f, dt_struct,
> -					sizeof(struct fdt_node_header) + len + 1);
> -			if (!dt_struct) {
> -				ret = -ESPIPE;
> -				goto err;
> -			}
> -
>  			if (!node)
>  				node = root;
>  			else
>  				node = of_new_node(node, pathp);
>  
> +			dt_struct = dt_struct_advance(&f, dt_struct,
> +					sizeof(struct fdt_node_header) + len + 1);
> +
>  			break;
>  
>  		case FDT_END_NODE:
> @@ -144,10 +140,6 @@ struct device_node *of_unflatten_dtb(void *infdt)
>  			node = node->parent;
>  
>  			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE);
> -			if (!dt_struct) {
> -				ret = -ESPIPE;
> -				goto err;
> -			}
>  
>  			break;
>  
> @@ -162,25 +154,17 @@ struct device_node *of_unflatten_dtb(void *infdt)
>  				goto err;
>  			}
>  
> -			dt_struct = dt_struct_advance(&f, dt_struct,
> -					sizeof(struct fdt_property) + len);
> -			if (!dt_struct) {
> -				ret = -ESPIPE;
> -				goto err;
> -			}
> -
>  			p = of_new_property(node, name, nodep, len);
>  			if (!strcmp(name, "phandle") && len == 4)
>  				node->phandle = be32_to_cpup(p->value);
>  
> +			dt_struct = dt_struct_advance(&f, dt_struct,
> +					sizeof(struct fdt_property) + len);
> +
>  			break;
>  
>  		case FDT_NOP:
>  			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE);
> -			if (!dt_struct) {
> -				ret = -ESPIPE;
> -				goto err;
> -			}
>  
>  			break;
>  
> @@ -192,6 +176,11 @@ struct device_node *of_unflatten_dtb(void *infdt)
>  			ret = -EINVAL;
>  			goto err;
>  		}
> +
> +		if (!dt_struct) {
> +			ret = -ESPIPE;
> +			goto err;
> +		}
>  	}
>  err:
>  	of_delete_node(root);
> -- 
> 2.1.1
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
