Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cqaNg-0004yF-KP
 for barebox@lists.infradead.org; Wed, 22 Mar 2017 07:08:30 +0000
Date: Wed, 22 Mar 2017 08:08:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170322070806.6uwbggidlwfbylsd@pengutronix.de>
References: <20170320125540.8431-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170320125540.8431-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1 1/2] bootm: fit: support multiple configuration nodes
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>

On Mon, Mar 20, 2017 at 01:55:39PM +0100, Oleksij Rempel wrote:
> From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  common/image-fit.c | 39 +++++++++++++++++++++++++++++++++++++--
>  1 file changed, 37 insertions(+), 2 deletions(-)
> 
> diff --git a/common/image-fit.c b/common/image-fit.c
> index 6a01c614c..48c021347 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -489,6 +489,37 @@ static int fit_config_verify_signature(struct fit_handle *handle, struct device_
>  	return ret;
>  }
>  
> +static int fit_find_compatible_unit(struct device_node *conf_node,
> +				    const char **unit)
> +{
> +	struct device_node *child = NULL;
> +	struct device_node *barebox_root;
> +	const char *machine;
> +	int ret;
> +
> +	barebox_root = of_get_root_node();
> +	if (!barebox_root)
> +		return -ENOSYS;
> +
> +	ret = of_property_read_string(barebox_root, "compatible", &machine);
> +	if (ret)
> +		return -ENOENT;
> +
> +	for_each_child_of_node(conf_node, child) {
> +		if (of_device_is_compatible(child, machine)) {
> +			*unit = xasprintf("%s", child->name);

This is never freed. *unit is a const char * in the caller.

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
