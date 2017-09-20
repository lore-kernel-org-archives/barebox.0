Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1duYMy-0006p5-Bx
 for barebox@lists.infradead.org; Wed, 20 Sep 2017 06:20:26 +0000
Date: Wed, 20 Sep 2017 08:20:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170920062000.oyocn62ntr7vp244@pengutronix.de>
References: <20170915083922.25134-1-l.stach@pengutronix.de>
 <20170915083922.25134-12-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170915083922.25134-12-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 11/12] of: base: add funtion to copy a device tree node
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

In the subject:

s/funtion/function/

Sascha

On Fri, Sep 15, 2017 at 10:39:21AM +0200, Lucas Stach wrote:
> From: Michael Olbrich <m.olbrich@pengutronix.de>
> 
> Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/of/base.c | 16 ++++++++++++++++
>  include/of.h      |  8 ++++++++
>  2 files changed, 24 insertions(+)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index fb4d2c03946e..3ca13ae44e5c 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1988,6 +1988,22 @@ out:
>  	return dn;
>  }
>  
> +struct device_node *of_copy_node(struct device_node *parent, const struct device_node *other)
> +{
> +	struct device_node *np, *child;
> +	struct property *pp;
> +
> +	np = of_new_node(parent, other->name);
> +
> +	list_for_each_entry(pp, &other->properties, list)
> +		of_new_property(np, pp->name, pp->value, pp->length);
> +
> +	for_each_child_of_node(other, child)
> +		of_copy_node(np, child);
> +
> +	return np;
> +}
> +
>  void of_delete_node(struct device_node *node)
>  {
>  	struct device_node *n, *nt;
> diff --git a/include/of.h b/include/of.h
> index 9ba771a395b8..c21a1e95dda8 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -144,6 +144,8 @@ extern struct device_node *of_new_node(struct device_node *parent,
>  				const char *name);
>  extern struct device_node *of_create_node(struct device_node *root,
>  					const char *path);
> +extern struct device_node *of_copy_node(struct device_node *parent,
> +				const struct device_node *other);
>  extern void of_delete_node(struct device_node *node);
>  
>  extern int of_machine_is_compatible(const char *compat);
> @@ -576,6 +578,12 @@ static inline struct device_node *of_create_node(struct device_node *root,
>  	return NULL;
>  }
>  
> +static inline struct device_node *of_copy_node(struct device_node *parent,
> +					       const struct device_node *other)
> +{
> +	return NULL;
> +}
> +
>  static inline void of_delete_node(struct device_node *node)
>  {
>  }
> -- 
> 2.11.0
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
