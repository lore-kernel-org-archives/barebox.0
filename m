Delivery-date: Wed, 20 Sep 2023 13:16:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qivBw-004ZFX-RB
	for lore@lore.pengutronix.de; Wed, 20 Sep 2023 13:16:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qivBu-0003kV-MO
	for lore@pengutronix.de; Wed, 20 Sep 2023 13:16:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RWBZd1AjK2dCWmXohJLXR9T1jnDQPZw6UBtzOyWMDN8=; b=o283B0VZ+K8pjCEgIdm4oQ/mFK
	3VnHl5I2Be12Z1XVJsnVkBUGxYLT0esbLzVtnFj6J1yEkZzbT88GzdQX8Z5ipQWS+Q4NOZkkrJy9R
	n/jO9n+xMZCg0K/FLBQkgbuVbYS6rklCQtqW86kPb9sgZfWAD/O5/XMQCttm3BakwdYkjaGOSd4zs
	o0brL4QWURL8wPZgqPetQRVwLJQLv8M0kiDH8oBgaDVujD9vyoDGe/GjfmMwAzv/UdbmGTC1G/8Bj
	s0MtcpAr9BQXJ/Z5v1vENYVwFo5w+iGcGK6vTPat8uA4zt5WksEiWiAUmCsjsLqplVdRop3ChS5Pj
	JdoYtdSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qivAs-002qds-2A;
	Wed, 20 Sep 2023 11:15:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qivAp-002qdQ-1n
	for barebox@lists.infradead.org;
	Wed, 20 Sep 2023 11:15:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qivAo-0003Yk-Dk; Wed, 20 Sep 2023 13:15:14 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qivAn-007fsS-Np; Wed, 20 Sep 2023 13:15:13 +0200
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qivAn-00AAhi-KU; Wed, 20 Sep 2023 13:15:13 +0200
Date: Wed, 20 Sep 2023 13:15:13 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230920111513.mk2i2j3qecd47uds@pengutronix.de>
References: <20230920103316.2758383-1-s.hauer@pengutronix.de>
 <20230920103316.2758383-2-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230920103316.2758383-2-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_041515_619006_4A76060A 
X-CRM114-Status: GOOD (  18.44  )
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
Subject: Re: [PATCH 01/11] regulator: rename variable rd to rdev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 23-09-20, Sascha Hauer wrote:
> the struct regulator_dev * variable is mostly named 'rdev', but
> sometimes 'rd' is used. Rename to 'rdev' consistently.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  drivers/regulator/core.c | 32 ++++++++++++++++----------------
>  1 file changed, 16 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
> index 97e76b0db9..e9b5b82dbe 100644
> --- a/drivers/regulator/core.c
> +++ b/drivers/regulator/core.c
> @@ -166,13 +166,13 @@ static int regulator_resolve_supply(struct regulator_dev *rdev)
>  	return 0;
>  }
>  
> -static struct regulator_internal * __regulator_register(struct regulator_dev *rd, const char *name)
> +static struct regulator_internal * __regulator_register(struct regulator_dev *rdev, const char *name)
>  {
>  	struct regulator_internal *ri;
>  	int ret;
>  
>  	ri = xzalloc(sizeof(*ri));
> -	ri->rdev = rd;
> +	ri->rdev = rdev;
>  
>  	INIT_LIST_HEAD(&ri->consumer_list);
>  
> @@ -181,7 +181,7 @@ static struct regulator_internal * __regulator_register(struct regulator_dev *rd
>  	if (name)
>  		ri->name = xstrdup(name);
>  
> -	if (rd->boot_on || rd->always_on) {
> +	if (rdev->boot_on || rdev->always_on) {
>  		ret = regulator_resolve_supply(ri->rdev);
>  		if (ret < 0)
>  			goto err;
> @@ -204,38 +204,38 @@ static struct regulator_internal * __regulator_register(struct regulator_dev *rd
>  #ifdef CONFIG_OFDEVICE
>  /*
>   * of_regulator_register - register a regulator corresponding to a device_node
> - * @rd:		the regulator device providing the ops
> + * rdev:		the regulator device providing the ops
>   * @node:       the device_node this regulator corresponds to
>   *
>   * Return: 0 for success or a negative error code
>   */
> -int of_regulator_register(struct regulator_dev *rd, struct device_node *node)
> +int of_regulator_register(struct regulator_dev *rdev, struct device_node *node)
>  {
>  	struct regulator_internal *ri;
>  	const char *name;
>  
> -	if (!rd || !node)
> +	if (!rdev || !node)
>  		return -EINVAL;
>  
> -	rd->boot_on = of_property_read_bool(node, "regulator-boot-on");
> -	rd->always_on = of_property_read_bool(node, "regulator-always-on");
> +	rdev->boot_on = of_property_read_bool(node, "regulator-boot-on");
> +	rdev->always_on = of_property_read_bool(node, "regulator-always-on");
>  
>  	name = of_get_property(node, "regulator-name", NULL);
>  	if (!name)
>  		name = node->name;
>  
> -	ri = __regulator_register(rd, name);
> +	ri = __regulator_register(rdev, name);
>  	if (IS_ERR(ri))
>  		return PTR_ERR(ri);
>  
>  	ri->node = node;
> -	node->dev = rd->dev;
> +	node->dev = rdev->dev;
>  
> -	if (rd->desc->off_on_delay)
> -		ri->enable_time_us = rd->desc->off_on_delay;
> +	if (rdev->desc->off_on_delay)
> +		ri->enable_time_us = rdev->desc->off_on_delay;
>  
> -	if (rd->desc->fixed_uV && rd->desc->n_voltages == 1)
> -		ri->min_uv = ri->max_uv = rd->desc->fixed_uV;
> +	if (rdev->desc->fixed_uV && rdev->desc->n_voltages == 1)
> +		ri->min_uv = ri->max_uv = rdev->desc->fixed_uV;
>  
>  	of_property_read_u32(node, "regulator-enable-ramp-delay",
>  			&ri->enable_time_us);
> @@ -333,11 +333,11 @@ static struct regulator_internal *of_regulator_get(struct device *dev,
>  }
>  #endif
>  
> -int dev_regulator_register(struct regulator_dev *rd, const char * name, const char* supply)
> +int dev_regulator_register(struct regulator_dev *rdev, const char * name, const char* supply)
>  {
>  	struct regulator_internal *ri;
>  
> -	ri = __regulator_register(rd, name);
> +	ri = __regulator_register(rdev, name);
>  
>  	ri->supply = supply;
>  
> -- 
> 2.39.2
> 
> 
> 


