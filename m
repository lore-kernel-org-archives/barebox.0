Delivery-date: Sat, 06 Sep 2025 02:12:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uugXi-008dVU-2Y
	for lore@lore.pengutronix.de;
	Sat, 06 Sep 2025 02:12:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uugXg-0000Lz-IS
	for lore@pengutronix.de; Sat, 06 Sep 2025 02:12:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HTNNKAmLCqgcxU3wPDdSDUn/IYfxkZNVQs2OP1jH0dU=; b=rhbWX5Kxa2Jy583ls81JNbxe7L
	l4GuTkksVDId57YVEpxBpiaPskJJu4+Zph7N2NS80yXA38gLR1yUCaxOMIbHpY/AYua2iAe9wOqdn
	bIQJerbbXGgph/8w1/meKv9OIOcTFz/u6S1S4UyPKxVb4I3risw7btWRJ/OqXARnbKt4V+8EQZ13D
	eOwq3ZiIS7c+bxSrzOUFc2WloRDJ4rzxYiBypHHZUZJOiHRsl8vw7nTmL7QmU41uzUuTwSaPYvDR2
	B3zcdUxi4wxtGIzzCwPQo/Os2CJ/A8UZC9XLLgh8lN+iUEEn29Y0uhOM78/zw3kXuT+9XIAq34j2u
	y95o0FiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uugWs-00000005U3Q-2ocS;
	Sat, 06 Sep 2025 00:11:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uubOs-00000003sQ3-0wDV
	for barebox@lists.infradead.org;
	Fri, 05 Sep 2025 18:43:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uubOq-0001P4-Gf; Fri, 05 Sep 2025 20:43:04 +0200
Message-ID: <2ff9bf44-9f95-49bc-9669-2f0e5cb8dd91@pengutronix.de>
Date: Fri, 5 Sep 2025 20:43:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: christian.thiessen@airbus.com, BAREBOX <barebox@lists.infradead.org>
References: <20250903-fec_imx-fix-enodev-v1-1-0dd4c42fc293@airbus.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250903-fec_imx-fix-enodev-v1-1-0dd4c42fc293@airbus.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_114306_261137_92BE43F8 
X-CRM114-Status: GOOD (  27.25  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fec_imx: Fix ENODEV in fec_probe on i.MX27
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 9/3/25 4:46 PM, Christian Thießen via B4 Relay wrote:
> From: Christian Thießen <christian.thiessen@airbus.com>
> 
> The fec_imx driver stores an enum fec_type value in the match data
> pointer. When retrieving this value in fec_probe(), it handles
> FEC_TYPE_IMX27 (which is 0) like an error result from
> device_get_match_data and returns -ENODEV.
> 
> To be able to differentiate NULL from errors, introduce a new function
> device_get_match_data_default which returns its defaultval argument
> instead of NULL in case of errors.
> Add an FEC_TYPE_COUNT value to the fec_type enum.
> In fec_probe, pass FEC_TYPE_COUNT as defaultval and return -ENODEV for
> all type values greater or equal to that.
> 
> Fixes: 20d87123a6 ("treewide: replace dev_get_drvdata with        device_get_match_data")
> Signed-off-by: Christian Thießen <christian.thiessen@airbus.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
> Hi again,
> 
> this patch addresses the issue discussed in
> https://github.com/barebox/barebox/issues/40 ("fec_imx (and possibly
> others): Probe fails with ENODEV").
> 
> Cheers,
> Christian
> ---
>  drivers/base/driver.c | 13 +++++++++++++
>  drivers/net/fec_imx.c | 12 +++++-------
>  drivers/net/fec_imx.h |  1 +
>  include/driver.h      | 10 ++++++++++
>  4 files changed, 29 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> index 61118385f1df0f8d36208d236be66b077fa5e54d..614c3c26b04c6f252e3970e014a43bae6a1d9c2b 100644
> --- a/drivers/base/driver.c
> +++ b/drivers/base/driver.c
> @@ -690,6 +690,19 @@ const void *device_get_match_data(struct device *dev)
>  }
>  EXPORT_SYMBOL(device_get_match_data);
>  
> +const void *device_get_match_data_default(struct device *dev,
> +					  const void *defaultval)
> +{
> +	if (dev->of_id_entry)
> +		return dev->of_id_entry->data;
> +
> +	if (dev->id_entry)
> +		return (const void *)dev->id_entry->driver_data;
> +
> +	return defaultval;
> +}
> +EXPORT_SYMBOL(device_get_match_data_default);
> +
>  static void device_set_deferred_probe_reason(struct device *dev,
>  					     const struct va_format *vaf)
>  {
> diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> index 8474e6d5be9c6225af5708d21b0249b2618d36f6..fac190e6ea51950ed6085264e12617969847acbf 100644
> --- a/drivers/net/fec_imx.c
> +++ b/drivers/net/fec_imx.c
> @@ -763,20 +763,18 @@ static int fec_probe(struct device *dev)
>  	struct fec_priv *fec;
>  	void *base;
>  	int ret;
> -	enum fec_type type;
> -	void const *type_v;
> +	uintptr_t type_v;
>  	int phy_reset;
>  	u32 msec = 1, phy_post_delay = 0;
>  	u32 reg;
>  
> -	type_v = device_get_match_data(dev);
> -	if (!type_v)
> +	type_v = (uintptr_t)device_get_match_data_default(dev,
> +		(const void *)FEC_TYPE_COUNT);
> +	if (type_v >= FEC_TYPE_COUNT)
>  		return -ENODEV;
>  
> -	type = (uintptr_t)(type_v);
> -
>  	fec = xzalloc(sizeof(*fec));
> -	fec->type = type;
> +	fec->type = type_v;
>  	fec->dev = dev;
>  	edev = &fec->edev;
>  	dev->priv = fec;
> diff --git a/drivers/net/fec_imx.h b/drivers/net/fec_imx.h
> index 1aaff87fddfb44cf558436ab4a846757c6cd51aa..9549dab0f8e88288bd9fe3a02ff8bd5573147842 100644
> --- a/drivers/net/fec_imx.h
> +++ b/drivers/net/fec_imx.h
> @@ -117,6 +117,7 @@ enum fec_type {
>  	FEC_TYPE_IMX27,
>  	FEC_TYPE_IMX28,
>  	FEC_TYPE_IMX6,
> +	FEC_TYPE_COUNT,
>  };
>  
>  enum fec_clock {
> diff --git a/include/driver.h b/include/driver.h
> index c130a3cd63fd5e6dc365a33c765a22dc4e2ca90a..223799294fc0e32ceb13fc5bda2e3b8a78d71647 100644
> --- a/include/driver.h
> +++ b/include/driver.h
> @@ -650,6 +650,16 @@ int cdevfs_del_partition(struct cdev *cdev);
>   */
>  const void *device_get_match_data(struct device *dev);
>  
> +/**
> + * device_get_match_data_default - get driver match data associated with device
> + * @dev: device instance
> + * @defaultval: Value to return if no match data is associated with dev
> + *
> + * Returns match data on success and defaultval otherwise
> + */
> +const void *device_get_match_data_default(struct device *dev,
> +					  const void *defaultval);
> +
>  int device_match_of_modalias(struct device *dev, const struct driver *drv);
>  
>  struct device *device_find_child(struct device *parent, void *data,
> 
> ---
> base-commit: 7689314d0a78605e7d4a0c3ce4953d9d768aa343
> change-id: 20250903-fec_imx-fix-enodev-f7a9087054c8
> 
> Best regards,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



