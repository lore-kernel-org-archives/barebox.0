Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kVUwe-0002SK-1Z
 for barebox@lists.infradead.org; Thu, 22 Oct 2020 07:23:33 +0000
Date: Thu, 22 Oct 2020 09:23:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201022072329.GK26805@pengutronix.de>
References: <20201021115813.31645-1-m.felsch@pengutronix.de>
 <20201021115813.31645-8-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201021115813.31645-8-m.felsch@pengutronix.de>
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
Subject: Re: [PATCH v3 07/10] common: add initial barebox deep-probe support
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Marco,

Looks mostly good, only a few things, mostly nitpicks, left.

> +int of_device_ensure_probed_by_alias(const char *alias)
> +{
> +	struct device_node *dev_node;
> +
> +	dev_node = of_find_node_by_alias(NULL, alias);
> +	if (!dev_node)
> +		return -EINVAL;
> +
> +	return of_device_ensure_probed(dev_node);
> +}
> +EXPORT_SYMBOL_GPL(of_device_ensure_probed_by_alias);
> +
> +/**
> + * of_devices_ensure_probed_by_dev_id() - ensures that a devices are probed

s/a//

> + *
> + * @np: the start point device_node handle
> + * @ids: the matching 'struct of_device_id' ids
> + *
> + * The function start searching the device tree from @np and populates and
> + * probes devices which matches @ids.

s/matches/match/

> + *
> + * Return: %0 on success
> + *	   %-ENODEV if either the device wasn't found, can't be populated,
> + *	     the driver is missing or the driver probe returns an error
> + */
> +int of_devices_ensure_probed_by_dev_id(struct device_node *np,
> +				       const struct of_device_id *ids)
> +{
> +	struct device_node *child;
> +
> +	if (of_match_node(ids, np))
> +		return of_device_ensure_probed(np);
> +
> +	for_each_child_of_node(np, child) {
> +		int ret;
> +
> +		ret = of_devices_ensure_probed_by_dev_id(child, ids);
> +		if (!ret)
> +			return 0;
> +	}
> +
> +	return -ENODEV;
> +}
> +EXPORT_SYMBOL_GPL(of_devices_ensure_probed_by_dev_id);

I think you want to use for_each_matching_node() here which iterates
over the tree without recursion.

> +
> +/**
> + * of_devices_ensure_probed_by_property() - ensures that a devices are probed

s/a//

> + *
> + * @property_name: The property name to search for
> + *
> + * The function start searching the whole device tree and populates and probe

s/probe/probes/

> + * devices which matches @property_name.

s/matches/match/

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
