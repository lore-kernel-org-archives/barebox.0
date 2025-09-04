Delivery-date: Thu, 04 Sep 2025 08:59:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu3wj-007wT7-0G
	for lore@lore.pengutronix.de;
	Thu, 04 Sep 2025 08:59:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu3wh-0005lv-T8
	for lore@pengutronix.de; Thu, 04 Sep 2025 08:59:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=embUhKtO0R4s8SbayRPsMi1yOIbzem36dH73Wl/a7y8=; b=w37DJ/iYnCkJ9RZFmz/K2tOiUj
	t0neUM43Dvft9ucgSVqmze4LQA2GzImqzaI3aReDCiyfPOtGRpHiaSX3dfNsUaksXJbKVpvw5D7Xs
	FNVJ0YpDbr5iN8THLPtaRmdMq0Twq6/sR6QT4E/mWkzjJN5oi3/7imznIxrXxFEwVihvU259haSNV
	wfR0P/SujiRe/cnmS4wQeSRq8YzYCoFTYZjqbf4PuZuOIlYqG0MzuJlITzc00hf9PcNouMRQ+nGeL
	dmKMuQMjdJdwYcXFjoYUUaz38uvYvvYdggPJflHac75GH+ETmwmRVGaG1UrjUwqacwEX7xTnoLoGJ
	nRCyJj7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3wH-00000009hkT-0qDz;
	Thu, 04 Sep 2025 06:59:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu3wE-00000009hjM-1iRC
	for barebox@lists.infradead.org;
	Thu, 04 Sep 2025 06:59:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uu3wD-0005cO-4d; Thu, 04 Sep 2025 08:59:17 +0200
Message-ID: <d2679421-b69b-49aa-ad58-23ab81e39ed2@pengutronix.de>
Date: Thu, 4 Sep 2025 08:59:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Cc: anis chali <chalianis1@gmail.com>
References: <20250904055336.3136705-1-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250904055336.3136705-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_235918_449593_1B2F8EA1 
X-CRM114-Status: GOOD (  18.77  )
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
Subject: Re: [PATCH] FIT: let fit_has_image() return bool
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 04.09.25 07:53, Sascha Hauer wrote:
> The return value of fit_has_image() is treated as bool by most callers.
> It could return an error code though which by the callers would be
> evaluated to true. Change the return type to bool and return false
> instead of an error code to meet the callers expectations.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/image-fit.c  | 10 +++++-----
>  include/image-fit.h |  4 ++--
>  2 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/common/image-fit.c b/common/image-fit.c
> index 6d241338e4..6b44a79e9d 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -491,19 +491,19 @@ static int fit_image_verify_signature(struct fit_handle *handle,
>  	return ret;
>  }
>  
> -int fit_has_image(struct fit_handle *handle, void *configuration,
> -		  const char *name)
> +bool fit_has_image(struct fit_handle *handle, void *configuration,
> +		   const char *name)
>  {
>  	const char *unit;
>  	struct device_node *conf_node = configuration;
>  
>  	if (!conf_node)
> -		return -EINVAL;
> +		return false;
>  
>  	if (of_property_read_string(conf_node, name, &unit))
> -		return 0;
> +		return false;
>  
> -	return 1;
> +	return true;
>  }
>  
>  static int fit_get_address(struct device_node *image, const char *property,
> diff --git a/include/image-fit.h b/include/image-fit.h
> index f9791ff251..c332f77bd3 100644
> --- a/include/image-fit.h
> +++ b/include/image-fit.h
> @@ -34,8 +34,8 @@ struct fit_handle *fit_open_buf(const void *buf, size_t len, bool verbose,
>  void *fit_open_configuration(struct fit_handle *handle, const char *name,
>  			     bool (*match_valid)(struct fit_handle *handle,
>  						 struct device_node *config));
> -int fit_has_image(struct fit_handle *handle, void *configuration,
> -		  const char *name);
> +bool fit_has_image(struct fit_handle *handle, void *configuration,
> +		   const char *name);
>  int fit_open_image(struct fit_handle *handle, void *configuration,
>  		   const char *name, const void **outdata,
>  		   unsigned long *outsize);


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


