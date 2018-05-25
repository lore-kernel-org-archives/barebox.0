Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fM6tX-0006n5-K7
 for barebox@lists.infradead.org; Fri, 25 May 2018 07:12:13 +0000
Date: Fri, 25 May 2018 09:11:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180525071156.txqmmif6qbqn4hnm@pengutronix.de>
References: <264898e761473a90c2be407c7c0e9ae656bb39bf.camel@allegion.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <264898e761473a90c2be407c7c0e9ae656bb39bf.camel@allegion.com>
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
Subject: Re: [PATCH] commands/of_property: add option to apply changes as fixup
To: "Baeuerle, Florian" <Florian.Baeuerle@allegion.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

HI Florian,

looks good generally. Some small comments below.

On Thu, May 24, 2018 at 02:48:47PM +0000, Baeuerle, Florian wrote:
> +static int of_fixup_property_set(struct device_node *root, void *context)
> +{
> +	const struct of_fixup_property_data *fixup = context;
> +	int ret = do_of_property_set_now(root, fixup->path, fixup->propname,
> +			fixup->data, fixup->len);
> +
> +	free(fixup->path);
> +	free(fixup->propname);
> +	free(fixup->data);

Don't free here. A fixup can be called multiple times.

> +
> +	return ret;
> +}
> +
> +static int of_fixup_property_delete(struct device_node *root, void *context)
> +{
> +	const struct of_fixup_property_data *fixup = context;
> +	int ret = do_of_property_delete_now(root, fixup->path, fixup->propname);
> +
> +	free(fixup->path);
> +	free(fixup->propname);

ditto.

> +
> +	return ret;
> +}
> +
> +static int do_of_property_set_fixup(const char *path, const char *propname,
> +		void *data, int len)
> +{
> +	struct of_fixup_property_data *fixup;
> +	int ret = -ENOMEM;
> +
> +	fixup = xzalloc(sizeof(*fixup));
> +	if (!fixup)
> +		goto out_fixup;

The 'x' versions of the alloc functions always return successfully, no
need to check.

> +static int do_of_property_set_now(struct device_node *root, const char *path,
> +		const char *propname, void *data, int len)
> +{
> +	struct device_node *node = of_find_node_by_path_or_alias(root, path);
> +	struct property *pp = NULL;

No need to initialize.

> +
> +	if (!node) {
> +		printf("Cannot find nodepath %s\n", path);
> +		return -ENOENT;
> +	}
> +
> +	pp = of_find_property(node, propname, NULL);
> +
> +	if (pp) {
> +		free(pp->value);
> +		pp->value_const = NULL;
> +
> +		/* limit property data to the actual size */
> +		if (len)
> +			pp->value = xrealloc(data, len);
> +		else
> +			pp->value = NULL;
> +
> +		pp->length = len;
> +	} else {
> +		pp = of_new_property(node, propname, data, len);
> +		if (!pp) {
> +			printf("Cannot create property %s\n", propname);
> +			return -ENOMEM;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static int do_of_property_delete_now(struct device_node *root, const char *path,
> +		const char *propname)
> +{
> +	struct device_node *node = of_find_node_by_path_or_alias(root, path);
> +	struct property *pp = NULL;

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
