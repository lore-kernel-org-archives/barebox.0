Delivery-date: Wed, 31 May 2023 19:42:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4Ppo-004ZfW-8L
	for lore@lore.pengutronix.de; Wed, 31 May 2023 19:42:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4Ppl-0007Tk-4M
	for lore@pengutronix.de; Wed, 31 May 2023 19:42:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gZt6op0ZnhJ4GQ8mfDSWDf61ZoWB0uTdtJP1Cew/SRU=; b=q7AEtIbiOEjxbArY4UJgAv6hMM
	9fkZZiIqM8lQnvlUHS0OqHa5S7WSxd53N64lQl2Y2bY9pJBruei2V9fzfULxVKb/uk5BgJGV04twR
	Lgo3AdCruI9NSMt/BRw/Z0sNcyKKQgV5P1mn6tZPHwV3iuegHXI+9oUcxr9Cou88Qim12wCdQxYAT
	+7BGqnAzaQrEKVMqVpP90y14F4mhpvqlnez1D4fe2+q9DSt8cTiXRfuTFrg2+7mECDeQ39eVLy2bL
	/Cu+dLcVZmO688Yt3J5MYzD6VvUV6I2YTI/HMNM0BzfmHsUYMFNtTbaxsj5xORKGO98eupmjF7UAP
	/VFgx12A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Pp2-000fmJ-0Y;
	Wed, 31 May 2023 17:41:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Poy-000flB-2P
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 17:41:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4Pow-0007OB-T6; Wed, 31 May 2023 19:41:14 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4Pow-0005eh-Le; Wed, 31 May 2023 19:41:14 +0200
Date: Wed, 31 May 2023 19:41:14 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230531174114.oho3djhov7vs2ipu@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-15-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230531145927.1399282-15-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_104116_789367_04B34685 
X-CRM114-Status: GOOD (  25.24  )
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
Subject: Re: [PATCH 14/18] of: export new of_cdev_find helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-05-31, Ahmad Fatoum wrote:
> __of_find_path goes throught the hassle of determining the cdev, only to
> discard it again and return either zero or an error code.
> 
> Follow up commits will need to get the cdev corresponding to a path in
> the DT. So let's make that easier by exporting a suitable helper function.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  drivers/of/of_path.c | 59 ++++++++++++++++++++++++++++++--------------
>  include/of.h         |  1 +
>  2 files changed, 41 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
> index 059690e9b8e8..4d9f7b6005af 100644
> --- a/drivers/of/of_path.c
> +++ b/drivers/of/of_path.c
> @@ -27,21 +27,17 @@ struct device *of_find_device_by_node_path(const char *path)
>  }
>  
>  /**
> - * __of_find_path
> + * __of_cdev_find
>   *
>   * @node: The node to find the cdev for, can be the device or a
>   *        partition in the device
>   * @part: Optionally, a description of a partition of @node.  See of_find_path
> - * @outpath: if this function returns 0 outpath will contain the path belonging
> - *           to the input path description. Must be freed with free().
> - * @flags: use OF_FIND_PATH_FLAGS_BB to return the .bb device if available
>   *
>   */
> -static int __of_find_path(struct device_node *node, const char *part, char **outpath, unsigned flags)
> +static struct cdev *__of_cdev_find(struct device_node *node, const char *part)
>  {
>  	struct device *dev;
>  	struct cdev *cdev;
> -	bool add_bb = false;
>  
>  	of_partition_ensure_probed(node);
>  
> @@ -56,24 +52,17 @@ static int __of_find_path(struct device_node *node, const char *part, char **out
>  
>  			/* when partuuid is specified short-circuit the search for the cdev */
>  			ret = of_property_read_string(node, "partuuid", &uuid);
> -			if (!ret) {
> -				cdev = cdev_by_partuuid(uuid);
> -				if (!cdev)
> -					return -ENODEV;
> -
> -				*outpath = basprintf("/dev/%s", cdev->name);
> -
> -				return 0;
> -			}
> +			if (!ret)
> +				return cdev_by_partuuid(uuid) ?: ERR_PTR(-ENODEV);
>  		}
>  
>  		dev = of_find_device_by_node_path(devnode->full_name);
>  		if (!dev)
> -			return -ENODEV;
> +			return ERR_PTR(-ENODEV);
>  	}
>  
>  	if (dev->bus && !dev->driver)
> -		return -EPROBE_DEFER;
> +		return ERR_PTR(-EPROBE_DEFER);
>  
>  	device_detect(dev);
>  
> @@ -82,8 +71,40 @@ static int __of_find_path(struct device_node *node, const char *part, char **out
>  	else
>  		cdev = cdev_by_device_node(node);
>  
> -	if (!cdev)
> -		return -ENOENT;
> +	return cdev ?: ERR_PTR(-ENOENT);
> +}
> +
> +/**
> + * of_cdev_find
> + *
> + * @node: The node to find the cdev for, can be the device or a
> + *        partition in the device
> + *
> + */
> +struct cdev *of_cdev_find(struct device_node *node)
> +{
> +	return __of_cdev_find(node, NULL);
> +}
> +
> +/**
> + * __of_find_path
> + *
> + * @node: The node to find the cdev for, can be the device or a
> + *        partition in the device
> + * @part: Optionally, a description of a partition of @node.  See of_find_path
> + * @outpath: if this function returns 0 outpath will contain the path belonging
> + *           to the input path description. Must be freed with free().
> + * @flags: use OF_FIND_PATH_FLAGS_BB to return the .bb device if available
> + *
> + */
> +static int __of_find_path(struct device_node *node, const char *part, char **outpath, unsigned flags)
> +{
> +	bool add_bb = false;
> +	struct cdev *cdev;
> +
> +	cdev = __of_cdev_find(node, part);
> +	if (IS_ERR(cdev))
> +		return PTR_ERR(cdev);
>  
>  	if ((flags & OF_FIND_PATH_FLAGS_BB) && cdev->mtd &&
>  	    mtd_can_have_bb(cdev->mtd))
> diff --git a/include/of.h b/include/of.h
> index c716f9283316..2b75ce63e185 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -331,6 +331,7 @@ int of_add_memory_bank(struct device_node *node, bool dump, int r,
>  struct device *of_find_device_by_node_path(const char *path);
>  #define OF_FIND_PATH_FLAGS_BB 1		/* return .bb device if available */
>  int of_find_path(struct device_node *node, const char *propname, char **outpath, unsigned flags);
> +struct cdev *of_cdev_find(struct device_node *node);
>  int of_find_path_by_node(struct device_node *node, char **outpath, unsigned flags);
>  struct device_node *of_find_node_by_devpath(struct device_node *root, const char *path);
>  int of_register_fixup(int (*fixup)(struct device_node *, void *), void *context);
> -- 
> 2.39.2
> 
> 
> 


