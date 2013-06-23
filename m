Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uqoxh-0007wK-NT
 for barebox@lists.infradead.org; Sun, 23 Jun 2013 18:24:31 +0000
Date: Sun, 23 Jun 2013 20:24:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130623182404.GI32299@pengutronix.de>
References: <1371827718-7928-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1371827718-7928-2-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1371827718-7928-2-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 1/3] OF: base: add sanity checks to of_new/delete_property
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jun 21, 2013 at 05:15:16PM +0200, Sebastian Hesselbarth wrote:
> This adds some sanity checks to of_new_property and of_delete_property.
> Also, data passed to of_new_property is only copied if non-NULL.
> 
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> ---
> Cc: barebox@lists.infradead.org
> ---
>  drivers/of/base.c |   18 +++++++++++++++++-
>  1 files changed, 17 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 1b351ee..bcfd73a 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1527,21 +1527,37 @@ struct property *of_new_property(struct device_node *node, const char *name,
>  	struct property *prop;
>  
>  	prop = xzalloc(sizeof(*prop));
> +	if (!prop)
> +		return NULL;

xzalloc always returns valid memory. It's return-mem-or-panic.

>  
>  	prop->name = strdup(name);
> +	if (!prop->name)
> +		goto bail_out;
> +
>  	prop->length = len;
>  	if (len) {
>  		prop->value = xzalloc(len);
> -		memcpy(prop->value, data, len);
> +		if (!prop->value)
> +			goto bail_out;

ditto.

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
