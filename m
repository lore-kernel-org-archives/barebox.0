Delivery-date: Wed, 31 May 2023 18:32:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4OkH-004UfZ-6n
	for lore@lore.pengutronix.de; Wed, 31 May 2023 18:32:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4OkE-0007RY-QL
	for lore@pengutronix.de; Wed, 31 May 2023 18:32:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C70/4zuGawv3tKJ3xLhGLUjbKk28QmzYNLslaRJcv3c=; b=WiExMnQSw/GZzq/yxe51aEsExU
	bw1RhtFbkIrww+2omVIR8iwURTQCxc3G8ZJKCQle6ZdwE8VPJ6bUKMV0qgniYL5QaQLsNczCLT8qs
	lBoczaepeaG76B8M98orqESxpsKN2HxeeNTlrw7fvzBzHaVQT0idgIsnIF7DCrHOhgVQL2+FHhio0
	P1VpED9R+zYXCsCPRUbnPlnQyZsUIafIku7O+1WOR0IAQRFp6W4xopkePdmcCZJ6q/MZb3znMfV2/
	vMOtMbJ6p3aouFEpeDsP8mFQhXzh6jcjYTt6GTVkGf+Xr6U29wlF1vC/IhaLe2QLdYtJprmfxWNEA
	7vSE2Sqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Oiz-000Te7-2k;
	Wed, 31 May 2023 16:31:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Oix-000Tcy-0I
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 16:31:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4Oiu-0007I7-LI; Wed, 31 May 2023 18:30:56 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4Oiu-0002eg-Dn; Wed, 31 May 2023 18:30:56 +0200
Date: Wed, 31 May 2023 18:30:56 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230531163056.tcjwizntvsrbekm6@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-5-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230531145927.1399282-5-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_093059_126429_FA2E492D 
X-CRM114-Status: GOOD (  25.73  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 04/18] of: partition: support of_partition_ensure_probed
 on parent device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On 23-05-31, Ahmad Fatoum wrote:
> barebox-state code uses of_partition_ensure_probed to resolve the
> backend property. We want to allow backend to point directly at a
> storage device instead of a partition. We can't determine whether a DT
> device is a storage device though before it's probed, so let's have
> of_partition_ensure_probed support either case.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/partition.c | 26 ++++++++++++++++++++++----
>  drivers/of/platform.c  |  2 +-
>  2 files changed, 23 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/of/partition.c b/drivers/of/partition.c
> index 40c47f554ad2..a70e503cec9e 100644
> --- a/drivers/of/partition.c
> +++ b/drivers/of/partition.c
> @@ -110,14 +110,32 @@ int of_parse_partitions(struct cdev *cdev, struct device_node *node)
>  	return 0;
>  }
>  
> +/**
> + * of_partition_ensure_probed - ensure a parition is probed
> + * @np: pointer to a partition or to a partitionable device
> + *      Unfortunately, there is no completely reliable way
> + *      to differentiate partitions from devices prior to
> + *      probing, because partitions may also have compatibles.
> + *      We only handle nvmem-cells, so anything besides that
> + *      is assumed to be a device that should be probed directly.
> + *
> + * Returns zero on success or a negative error code otherwise
> + */
>  int of_partition_ensure_probed(struct device_node *np)
>  {
> -	np = of_get_parent(np);
> +	struct device_node *parent = of_get_parent(np);
>  
> -	if (of_device_is_compatible(np, "fixed-partitions"))
> -		np = of_get_parent(np);
> +	if (parent && of_device_is_compatible(parent, "fixed-partitions"))

When is the parent not present? This should only be the case when 'np'
points to the root_node. So in case of !parent I would return -EINVAL
early.

> +		return of_device_ensure_probed(of_get_parent(np));
							     ^
							   parent?

Not related to this patch but the logic would become easier if would
have devices for each mtd-part, like the kernel does. In such case we
could avoid these special handlings and just use
of_device_ensure_probed() at least for the mtd-parts, nvmem-cells still
need a special handling.

Regards,
  Marco

> -	return np ? of_device_ensure_probed(np) : -EINVAL;
> +	if (of_get_compatible_child(np, "fixed-partitions"))
> +		return of_device_ensure_probed(np);
> +
> +	if (!of_property_present(np, "compatible") ||
> +	    of_device_is_compatible(np, "nvmem-cells"))
> +		return of_device_ensure_probed(parent);
> +
> +	return of_device_ensure_probed(np);
>  }
>  EXPORT_SYMBOL_GPL(of_partition_ensure_probed);
>  
> diff --git a/drivers/of/platform.c b/drivers/of/platform.c
> index ab737629325a..78b8a31331db 100644
> --- a/drivers/of/platform.c
> +++ b/drivers/of/platform.c
> @@ -484,7 +484,7 @@ int of_device_ensure_probed(struct device_node *np)
>  {
>  	struct device *dev;
>  
> -	if (!deep_probe_is_supported())
> +	if (!np || !deep_probe_is_supported())
>  		return 0;
>  
>  	dev = of_device_create_on_demand(np);
> -- 
> 2.39.2
> 
> 
> 


