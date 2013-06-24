Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrCcv-00039g-Pb
 for barebox@lists.infradead.org; Mon, 24 Jun 2013 19:40:39 +0000
Date: Mon, 24 Jun 2013 21:40:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130624194014.GU32299@pengutronix.de>
References: <1371827718-7928-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1372070961-10132-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1372070961-10132-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH v2 1/2] OF: base: add sanity checks to
 of_new/delete_property
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 24, 2013 at 12:49:20PM +0200, Sebastian Hesselbarth wrote:
> This adds some sanity checks to of_new_property and of_delete_property.
> Also, value pointer is always allocated even with zero length to allow
> empty properties to be distinguished from non-existing properties.
> Finally, data passed to of_new_property is only copied if non-NULL.
> 
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

Applied both.

Thanks
 Sascha

> ---
> Note: Patch 3 of the former patch set has been dropped in favour of zero
> length allocation here.
> 
> Changelog:
> v1->v2:
> - remove unneccesary NULL checks after xzalloc (Suggested by Sascha Hauer)
> - allocate zero length value pointer (Suggested by Sascha Hauer)
> 
> Cc: barebox@lists.infradead.org
> ---
>  drivers/of/base.c |   15 +++++++++++----
>  1 files changed, 11 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 1b351ee..e65cf85 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1527,13 +1527,17 @@ struct property *of_new_property(struct device_node *node, const char *name,
>  	struct property *prop;
>  
>  	prop = xzalloc(sizeof(*prop));
> -
>  	prop->name = strdup(name);
> +	if (!prop->name) {
> +		free(prop);
> +		return NULL;
> +	}
> +
>  	prop->length = len;
> -	if (len) {
> -		prop->value = xzalloc(len);
> +	prop->value = xzalloc(len);
> +
> +	if (data)
>  		memcpy(prop->value, data, len);
> -	}
>  
>  	list_add_tail(&prop->list, &node->properties);
>  
> @@ -1542,6 +1546,9 @@ struct property *of_new_property(struct device_node *node, const char *name,
>  
>  void of_delete_property(struct property *pp)
>  {
> +	if (!pp)
> +		return;
> +
>  	list_del(&pp->list);
>  
>  	free(pp->name);
> -- 
> 1.7.2.5
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
