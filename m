Delivery-date: Wed, 20 Sep 2023 13:21:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qivGp-004ZWT-HL
	for lore@lore.pengutronix.de; Wed, 20 Sep 2023 13:21:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qivGm-0004Q5-SP
	for lore@pengutronix.de; Wed, 20 Sep 2023 13:21:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rQVydp9aIrneqP2b9MKPdeU73EqqWCQVsaBR7PH/YE4=; b=2BJff/cdp0yUtDMoePWpiYT7iL
	bNT5W/vvJZ7/Sh6rxD/nLr3ZDEHFvwLmnz/QyI8VBVhqb7qSfaZCS1lt5d9+/hPuEbE1F/9oHf67p
	6ijf6z2A8O75KuDEu0bOkkZsFwQGV2U4vzF3N+snpvj5xs6VE8JzkvOjOMsiXAYev+mjOMvV9eO7P
	woQc7VuD3wleWbXVnQgEl434GCaGoThChFO9g8NEjmIT40NUCzQ6T3aHlsfJ0BzRDuZDjG+hXsH4p
	bQ1LyjifbecQ4prHgsUpKplU46M9lSKc0xoJG9gJWihfwWorAzr+AIccGB7dbhjaQZ1tJdXjxtx/D
	2dCQmxvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qivFY-002r2q-2o;
	Wed, 20 Sep 2023 11:20:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qivFU-002r2K-38
	for barebox@lists.infradead.org;
	Wed, 20 Sep 2023 11:20:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qivFT-0004D9-Lp; Wed, 20 Sep 2023 13:20:03 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qivFT-007fsz-9J; Wed, 20 Sep 2023 13:20:03 +0200
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qivFT-00AAjB-77; Wed, 20 Sep 2023 13:20:03 +0200
Date: Wed, 20 Sep 2023 13:20:03 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230920112003.f7cys3myaduc2wsm@pengutronix.de>
References: <20230920103316.2758383-1-s.hauer@pengutronix.de>
 <20230920103316.2758383-3-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230920103316.2758383-3-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_042005_332562_12F34209 
X-CRM114-Status: GOOD (  27.94  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 02/11] regulator: merge struct regulator_internal fields
 into struct regulator_dev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 23-09-20, Sascha Hauer wrote:
> Each struct regulator_dev instance has a struct regulator_internal
> associated with it. The idea was that core internal fields are seen
> by the core only. In the end this is more confusing than helpful. We
> have a ri->rdev link, but no rdev->ri link so that we can't get a
> rdev from a ri pointer. We could add that link, but instead make the
> whole stuff a bit easier by just merging everything from struct
> regulator_internal to struct regulator_dev.

This also aligns it with Linux :)

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  drivers/regulator/core.c | 214 ++++++++++++++++++---------------------
>  include/regulator.h      |   9 ++
>  2 files changed, 106 insertions(+), 117 deletions(-)
> 
> diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
> index e9b5b82dbe..41a3378ac8 100644
> --- a/drivers/regulator/core.c
> +++ b/drivers/regulator/core.c
> @@ -13,21 +13,8 @@
>  
>  static LIST_HEAD(regulator_list);
>  
> -struct regulator_internal {
> -	struct list_head list;
> -	struct device_node *node;
> -	struct regulator_dev *rdev;
> -	int enable_count;
> -	int enable_time_us;
> -	int min_uv;
> -	int max_uv;
> -	char *name;
> -	const char *supply;
> -	struct list_head consumer_list;
> -};
> -
>  struct regulator {
> -	struct regulator_internal *ri;
> +	struct regulator_dev *rdev;
>  	struct list_head list;
>  	struct device *dev;
>  };
> @@ -41,13 +28,12 @@ static int regulator_map_voltage(struct regulator_dev *rdev, int min_uV,
>  	return -ENOSYS;
>  }
>  
> -static int regulator_enable_internal(struct regulator_internal *ri)
> +static int regulator_enable_internal(struct regulator_dev *rdev)
>  {
> -	struct regulator_dev *rdev = ri->rdev;
>  	int ret;
>  
> -	if (ri->enable_count) {
> -		ri->enable_count++;
> +	if (rdev->enable_count) {
> +		rdev->enable_count++;
>  		return 0;
>  	}
>  
> @@ -59,30 +45,29 @@ static int regulator_enable_internal(struct regulator_internal *ri)
>  	if (ret)
>  		return ret;
>  
> -	ret = rdev->desc->ops->enable(ri->rdev);
> +	ret = rdev->desc->ops->enable(rdev);
>  	if (ret) {
>  		regulator_disable(rdev->supply);
>  		return ret;
>  	}
>  
> -	if (ri->enable_time_us)
> -		udelay(ri->enable_time_us);
> +	if (rdev->enable_time_us)
> +		udelay(rdev->enable_time_us);
>  
> -	ri->enable_count++;
> +	rdev->enable_count++;
>  
>  	return 0;
>  }
>  
> -static int regulator_disable_internal(struct regulator_internal *ri)
> +static int regulator_disable_internal(struct regulator_dev *rdev)
>  {
> -	struct regulator_dev *rdev = ri->rdev;
>  	int ret;
>  
> -	if (!ri->enable_count)
> +	if (!rdev->enable_count)
>  		return -EINVAL;
>  
> -	if (ri->enable_count > 1) {
> -		ri->enable_count--;
> +	if (rdev->enable_count > 1) {
> +		rdev->enable_count--;
>  		return 0;
>  	}
>  
> @@ -97,15 +82,14 @@ static int regulator_disable_internal(struct regulator_internal *ri)
>  	if (ret)
>  		return ret;
>  
> -	ri->enable_count--;
> +	rdev->enable_count--;
>  
> -	return regulator_disable(ri->rdev->supply);
> +	return regulator_disable(rdev->supply);
>  }
>  
> -static int regulator_set_voltage_internal(struct regulator_internal *ri,
> +static int regulator_set_voltage_internal(struct regulator_dev *rdev,
>  					  int min_uV, int max_uV)
>  {
> -	struct regulator_dev *rdev = ri->rdev;
>  	const struct regulator_ops *ops = rdev->desc->ops;
>  	unsigned int selector;
>  	int best_val = 0;
> @@ -166,38 +150,33 @@ static int regulator_resolve_supply(struct regulator_dev *rdev)
>  	return 0;
>  }
>  
> -static struct regulator_internal * __regulator_register(struct regulator_dev *rdev, const char *name)
> +static int __regulator_register(struct regulator_dev *rdev, const char *name)
>  {
> -	struct regulator_internal *ri;
>  	int ret;
>  
> -	ri = xzalloc(sizeof(*ri));
> -	ri->rdev = rdev;
> +	INIT_LIST_HEAD(&rdev->consumer_list);
>  
> -	INIT_LIST_HEAD(&ri->consumer_list);
> -
> -	list_add_tail(&ri->list, &regulator_list);
> +	list_add_tail(&rdev->list, &regulator_list);
>  
>  	if (name)
> -		ri->name = xstrdup(name);
> +		rdev->name = xstrdup(name);
>  
>  	if (rdev->boot_on || rdev->always_on) {
> -		ret = regulator_resolve_supply(ri->rdev);
> +		ret = regulator_resolve_supply(rdev);
>  		if (ret < 0)
>  			goto err;
>  
> -		ret = regulator_enable_internal(ri);
> +		ret = regulator_enable_internal(rdev);
>  		if (ret && ret != -ENOSYS)
>  			goto err;
>  	}
>  
> -	return ri;
> +	return 0;
>  err:
> -	list_del(&ri->list);
> -	free(ri->name);
> -	free(ri);
> +	list_del(&rdev->list);
> +	free((char *)rdev->name);
>  
> -	return ERR_PTR(ret);
> +	return ret;
>  }
>  
>  
> @@ -211,8 +190,8 @@ static struct regulator_internal * __regulator_register(struct regulator_dev *rd
>   */
>  int of_regulator_register(struct regulator_dev *rdev, struct device_node *node)
>  {
> -	struct regulator_internal *ri;
>  	const char *name;
> +	int ret;
>  
>  	if (!rdev || !node)
>  		return -EINVAL;
> @@ -224,34 +203,34 @@ int of_regulator_register(struct regulator_dev *rdev, struct device_node *node)
>  	if (!name)
>  		name = node->name;
>  
> -	ri = __regulator_register(rdev, name);
> -	if (IS_ERR(ri))
> -		return PTR_ERR(ri);
> +	ret = __regulator_register(rdev, name);
> +	if (ret)
> +		return ret;
>  
> -	ri->node = node;
> +	rdev->node = node;
>  	node->dev = rdev->dev;
>  
>  	if (rdev->desc->off_on_delay)
> -		ri->enable_time_us = rdev->desc->off_on_delay;
> +		rdev->enable_time_us = rdev->desc->off_on_delay;
>  
>  	if (rdev->desc->fixed_uV && rdev->desc->n_voltages == 1)
> -		ri->min_uv = ri->max_uv = rdev->desc->fixed_uV;
> +		rdev->min_uv = rdev->max_uv = rdev->desc->fixed_uV;
>  
>  	of_property_read_u32(node, "regulator-enable-ramp-delay",
> -			&ri->enable_time_us);
> +			&rdev->enable_time_us);
>  	of_property_read_u32(node, "regulator-min-microvolt",
> -			&ri->min_uv);
> +			&rdev->min_uv);
>  	of_property_read_u32(node, "regulator-max-microvolt",
> -			&ri->max_uv);
> +			&rdev->max_uv);
>  
>  	return 0;
>  }
>  
> -static struct regulator_internal *of_regulator_get(struct device *dev,
> +static struct regulator_dev *of_regulator_get(struct device *dev,
>  						   const char *supply)
>  {
>  	char *propname;
> -	struct regulator_internal *ri;
> +	struct regulator_dev *rdev;
>  	struct device_node *node, *node_parent;
>  	int ret;
>  
> @@ -270,7 +249,7 @@ static struct regulator_internal *of_regulator_get(struct device *dev,
>  	if (!of_get_property(dev->of_node, propname, NULL)) {
>  		dev_dbg(dev, "No %s-supply node found, using dummy regulator\n",
>  				supply);
> -		ri = NULL;
> +		rdev = NULL;
>  		goto out;
>  	}
>  
> @@ -281,7 +260,7 @@ static struct regulator_internal *of_regulator_get(struct device *dev,
>  	node = of_parse_phandle(dev->of_node, propname, 0);
>  	if (!node) {
>  		dev_dbg(dev, "No %s node found\n", propname);
> -		ri = ERR_PTR(-EINVAL);
> +		rdev = ERR_PTR(-EINVAL);
>  		goto out;
>  	}
>  
> @@ -298,16 +277,16 @@ static struct regulator_internal *of_regulator_get(struct device *dev,
>  		    of_get_property(node_parent, "barebox,allow-dummy-supply", NULL)) {
>  			dev_dbg(dev, "Allow use of dummy regulator for " \
>  				"%s-supply\n", supply);
> -			ri = NULL;
> +			rdev = NULL;
>  			goto out;
>  		}
>  
> -		ri = ERR_PTR(ret);
> +		rdev = ERR_PTR(ret);
>  		goto out;
>  	}
>  
> -	list_for_each_entry(ri, &regulator_list, list) {
> -		if (ri->node == node) {
> +	list_for_each_entry(rdev, &regulator_list, list) {
> +		if (rdev->node == node) {
>  			dev_dbg(dev, "Using %s regulator from %pOF\n",
>  					propname, node);
>  			goto out;
> @@ -319,14 +298,14 @@ static struct regulator_internal *of_regulator_get(struct device *dev,
>  	 * added in future initcalls, so, instead of reporting a
>  	 * complete failure report probe deferral
>  	 */
> -	ri = ERR_PTR(-EPROBE_DEFER);
> +	rdev = ERR_PTR(-EPROBE_DEFER);
>  out:
>  	free(propname);
>  
> -	return ri;
> +	return rdev;
>  }
>  #else
> -static struct regulator_internal *of_regulator_get(struct device *dev,
> +static struct regulator_dev *of_regulator_get(struct device *dev,
>  						   const char *supply)
>  {
>  	return NULL;
> @@ -335,38 +314,40 @@ static struct regulator_internal *of_regulator_get(struct device *dev,
>  
>  int dev_regulator_register(struct regulator_dev *rdev, const char * name, const char* supply)
>  {
> -	struct regulator_internal *ri;
> +	int ret;
>  
> -	ri = __regulator_register(rdev, name);
> +	ret = __regulator_register(rdev, name);
> +	if (ret)
> +		return ret;
>  
> -	ri->supply = supply;
> +	rdev->supply_name = supply;
>  
>  	return 0;
>  }
>  
> -static struct regulator_internal *dev_regulator_get(struct device *dev,
> -						    const char *supply)
> +static struct regulator_dev *dev_regulator_get(struct device *dev,
> +					       const char *supply)
>  {
> -	struct regulator_internal *ri;
> -	struct regulator_internal *ret = NULL;
> +	struct regulator_dev *rdev;
> +	struct regulator_dev *ret = NULL;
>  	int match, best = 0;
>  	const char *dev_id = dev ? dev_name(dev) : NULL;
>  
> -	list_for_each_entry(ri, &regulator_list, list) {
> +	list_for_each_entry(rdev, &regulator_list, list) {
>  		match = 0;
> -		if (ri->name) {
> -			if (!dev_id || strcmp(ri->name, dev_id))
> +		if (rdev->name) {
> +			if (!dev_id || strcmp(rdev->name, dev_id))
>  				continue;
>  			match += 2;
>  		}
> -		if (ri->supply) {
> -			if (!supply || strcmp(ri->supply, supply))
> +		if (rdev->supply_name) {
> +			if (!supply || strcmp(rdev->supply_name, supply))
>  				continue;
>  			match += 1;
>  		}
>  
>  		if (match > best) {
> -			ret = ri;
> +			ret = rdev;
>  			if (match != 3)
>  				best = match;
>  			else
> @@ -389,62 +370,63 @@ static struct regulator_internal *dev_regulator_get(struct device *dev,
>   */
>  struct regulator *regulator_get(struct device *dev, const char *supply)
>  {
> -	struct regulator_internal *ri = NULL;
> +	struct regulator_dev *rdev = NULL;
>  	struct regulator *r;
>  	int ret;
>  
>  	if (dev->of_node && supply) {
> -		ri = of_regulator_get(dev, supply);
> -		if (IS_ERR(ri))
> -			return ERR_CAST(ri);
> +		rdev = of_regulator_get(dev, supply);
> +		if (IS_ERR(rdev))
> +			return ERR_CAST(rdev);
>  	}
>  
> -	if (!ri) {
> -		ri = dev_regulator_get(dev, supply);
> -		if (IS_ERR(ri))
> -			return ERR_CAST(ri);
> +	if (!rdev) {
> +		rdev = dev_regulator_get(dev, supply);
> +		if (IS_ERR(rdev))
> +			return ERR_CAST(rdev);
>  	}
>  
> -	if (!ri)
> +	if (!rdev)
>  		return NULL;
>  
> -	ret = regulator_resolve_supply(ri->rdev);
> +	ret = regulator_resolve_supply(rdev);
>  	if (ret < 0)
>  		return ERR_PTR(ret);
>  
>  	r = xzalloc(sizeof(*r));
> -	r->ri = ri;
> +	r->rdev = rdev;
>  	r->dev = dev;
>  
> -	list_add_tail(&r->list, &ri->consumer_list);
> +	list_add_tail(&r->list, &rdev->consumer_list);
>  
>  	return r;
>  }
>  
> -static struct regulator_internal *regulator_by_name(const char *name)
> +static struct regulator_dev *regulator_by_name(const char *name)
>  {
> -	struct regulator_internal *ri;
> +	struct regulator_dev *rdev;
>  
> -	list_for_each_entry(ri, &regulator_list, list)
> -		if (ri->name && !strcmp(ri->name, name))
> -			return ri;
> +	list_for_each_entry(rdev, &regulator_list, list) {
> +		if (rdev->name && !strcmp(rdev->name, name))
> +			return rdev;
> +	}
>  
>  	return NULL;
>  }
>  
>  struct regulator *regulator_get_name(const char *name)
>  {
> -	struct regulator_internal *ri;
> +	struct regulator_dev *rdev;
>  	struct regulator *r;
>  
> -	ri = regulator_by_name(name);
> -	if (!ri)
> +	rdev = regulator_by_name(name);
> +	if (!rdev)
>  		return ERR_PTR(-ENODEV);
>  
>  	r = xzalloc(sizeof(*r));
> -	r->ri = ri;
> +	r->rdev = rdev;
>  
> -	list_add_tail(&r->list, &ri->consumer_list);
> +	list_add_tail(&r->list, &rdev->consumer_list);
>  
>  	return r;
>  }
> @@ -463,7 +445,7 @@ int regulator_enable(struct regulator *r)
>  	if (!r)
>  		return 0;
>  
> -	return regulator_enable_internal(r->ri);
> +	return regulator_enable_internal(r->rdev);
>  }
>  
>  /*
> @@ -480,7 +462,7 @@ int regulator_disable(struct regulator *r)
>  	if (!r)
>  		return 0;
>  
> -	return regulator_disable_internal(r->ri);
> +	return regulator_disable_internal(r->rdev);
>  }
>  
>  int regulator_set_voltage(struct regulator *r, int min_uV, int max_uV)
> @@ -488,7 +470,7 @@ int regulator_set_voltage(struct regulator *r, int min_uV, int max_uV)
>  	if (!r)
>  		return 0;
>  
> -	return regulator_set_voltage_internal(r->ri, min_uV, max_uV);
> +	return regulator_set_voltage_internal(r->rdev, min_uV, max_uV);
>  }
>  
>  /**
> @@ -632,15 +614,13 @@ EXPORT_SYMBOL_GPL(regulator_bulk_free);
>  
>  int regulator_get_voltage(struct regulator *regulator)
>  {
> -	struct regulator_internal *ri;
>  	struct regulator_dev *rdev;
>  	int sel, ret;
>  
>  	if (!regulator)
>  		return -EINVAL;
>  
> -	ri = regulator->ri;
> -	rdev = ri->rdev;
> +	rdev = regulator->rdev;
>  
>  	if (rdev->desc->ops->get_voltage_sel) {
>  		sel = rdev->desc->ops->get_voltage_sel(rdev);
> @@ -653,8 +633,8 @@ int regulator_get_voltage(struct regulator *regulator)
>  		ret = rdev->desc->ops->list_voltage(rdev, 0);
>  	} else if (rdev->desc->fixed_uV && (rdev->desc->n_voltages == 1)) {
>  		ret = rdev->desc->fixed_uV;
> -	} else if (ri->min_uv && ri->min_uv == ri->max_uv) {
> -		ret = ri->min_uv;
> +	} else if (rdev->min_uv && rdev->min_uv == rdev->max_uv) {
> +		ret = rdev->min_uv;
>  	} else if (rdev->supply) {
>  		ret = regulator_get_voltage(rdev->supply);
>  	} else {
> @@ -665,16 +645,16 @@ int regulator_get_voltage(struct regulator *regulator)
>  }
>  EXPORT_SYMBOL_GPL(regulator_get_voltage);
>  
> -static void regulator_print_one(struct regulator_internal *ri)
> +static void regulator_print_one(struct regulator_dev *rdev)
>  {
>  	struct regulator *r;
>  
> -	printf("%-20s %6d %10d %10d\n", ri->name, ri->enable_count, ri->min_uv, ri->max_uv);
> +	printf("%-20s %6d %10d %10d\n", rdev->name, rdev->enable_count, rdev->min_uv, rdev->max_uv);
>  
> -	if (!list_empty(&ri->consumer_list)) {
> +	if (!list_empty(&rdev->consumer_list)) {
>  		printf(" consumers:\n");
>  
> -		list_for_each_entry(r, &ri->consumer_list, list)
> +		list_for_each_entry(r, &rdev->consumer_list, list)
>  			printf("   %s\n", r->dev ? dev_name(r->dev) : "none");
>  	}
>  }
> @@ -684,9 +664,9 @@ static void regulator_print_one(struct regulator_internal *ri)
>   */
>  void regulators_print(void)
>  {
> -	struct regulator_internal *ri;
> +	struct regulator_dev *rdev;
>  
>  	printf("%-20s %6s %10s %10s\n", "name", "enable", "min_uv", "max_uv");
> -	list_for_each_entry(ri, &regulator_list, list)
> -		regulator_print_one(ri);
> +	list_for_each_entry(rdev, &regulator_list, list)
> +		regulator_print_one(rdev);
>  }
> diff --git a/include/regulator.h b/include/regulator.h
> index b0a500434c..5eb236e602 100644
> --- a/include/regulator.h
> +++ b/include/regulator.h
> @@ -85,6 +85,15 @@ struct regulator_desc {
>  };
>  
>  struct regulator_dev {
> +	const char *name;
> +	struct list_head list;
> +	struct device_node *node;
> +	int enable_count;
> +	int enable_time_us;
> +	int min_uv;
> +	int max_uv;
> +	const char *supply_name;
> +	struct list_head consumer_list;
>  	const struct regulator_desc *desc;
>  	struct regmap *regmap;
>  	bool boot_on;
> -- 
> 2.39.2
> 
> 
> 


