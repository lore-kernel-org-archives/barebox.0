Delivery-date: Mon, 28 Aug 2023 09:53:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qaX4J-00Bm4f-QZ
	for lore@lore.pengutronix.de; Mon, 28 Aug 2023 09:53:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qaX4H-0007i0-E7
	for lore@pengutronix.de; Mon, 28 Aug 2023 09:53:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0HCXPjVOWli+31Q4yPqn6ZA4vrjaxvEk/Vte0l3qiPA=; b=0HFS9w20xfSbxD07yhYqPPhfNA
	GTVe1PesMyFQbOWtLZnZHOpCVR078VEbvNsjvoDtnMFPPOXgxLKg25umlb4rXewP4l4WMpnfd2xrZ
	BAkp4g3a+vgoZWgtcOIyZtmAw7NYlR2V394gARoO/FNVpva+nHHc3rngO8N6mEHDFlYSNZ3cVESkx
	U7aquuWevwJK3i6bBXyOe5DJo/hv8XzMfyGFI3OriS5LQvrua8fgctt9i1SttZ4dx4xb/2iHsDLzl
	7h+ZM7eKvQosjSjQPOgZrhK9ZNsH/tnU5Os3gHO3dNqZECVN1CNAI+JgOdQA4g+L+aEObacoCZeHn
	YtLOdj6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qaX2y-0095Ob-00;
	Mon, 28 Aug 2023 07:52:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qaX2v-0095OF-0v
	for barebox@lists.infradead.org;
	Mon, 28 Aug 2023 07:52:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qaX2t-0007bc-Ky; Mon, 28 Aug 2023 09:52:23 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qaX2t-0003vB-Dt; Mon, 28 Aug 2023 09:52:23 +0200
Date: Mon, 28 Aug 2023 09:52:23 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230828075223.GI16522@pengutronix.de>
References: <20230825102246.4189465-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230825102246.4189465-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230828_005225_346894_24697200 
X-CRM114-Status: GOOD (  27.56  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] FIT: refactor compression handling into separate
 function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Aug 25, 2023 at 12:22:45PM +0200, Ahmad Fatoum wrote:
> There are four conditions that need to be true for successful decompression
> and the follow-up commit will add one more. Thus split off the compression
> handling to aid readability.
> 
> No functional change.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/image-fit.c | 62 ++++++++++++++++++++++++++++------------------
>  1 file changed, 38 insertions(+), 24 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/image-fit.c b/common/image-fit.c
> index af9b2a94793c..9ceebde02931 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -564,6 +564,40 @@ static void fit_uncompress_error_fn(char *x)
>  	pr_err("%s\n", x);
>  }
>  
> +static int fit_handle_decompression(struct device_node *image,
> +				    const void **data,
> +				    int *data_len)
> +{
> +	const char *compression = NULL;
> +	void *uc_data;
> +	int ret;
> +
> +	of_property_read_string(image, "compression", &compression);
> +	if (!compression || !strcmp(compression, "none"))
> +		return 0;
> +
> +	if (!IS_ENABLED(CONFIG_UNCOMPRESS)) {
> +		pr_err("image has compression = \"%s\", but support not compiled in\n",
> +		       compression);
> +		return -ENOSYS;
> +	}
> +
> +	ret = uncompress_buf_to_buf(*data, *data_len, &uc_data,
> +				    fit_uncompress_error_fn);
> +	if (ret < 0) {
> +		pr_err("data couldn't be decompressed\n");
> +		return ret;
> +	}
> +
> +	*data = uc_data;
> +	*data_len = ret;
> +
> +	/* associate buffer with FIT, so it's not leaked */
> +	__of_new_property(image, "uncompressed-data", uc_data, *data_len);
> +
> +	return 0;
> +}
> +
>  /**
>   * fit_open_image - Open an image in a FIT image
>   * @handle: The FIT image handle
> @@ -586,8 +620,7 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
>  		   unsigned long *outsize)
>  {
>  	struct device_node *image;
> -	const char *unit = name, *type = NULL, *compression = NULL,
> -	      *desc= "(no description)";
> +	const char *unit = name, *type = NULL, *desc= "(no description)";
>  	const void *data;
>  	int data_len;
>  	int ret = 0;
> @@ -619,28 +652,9 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
>  	if (ret < 0)
>  		return ret;
>  
> -	of_property_read_string(image, "compression", &compression);
> -	if (compression && strcmp(compression, "none") != 0) {
> -		void *uc_data;
> -
> -		if (!IS_ENABLED(CONFIG_UNCOMPRESS)) {
> -			pr_err("image has compression = \"%s\", but support not compiled in\n",
> -			       compression);
> -			return -ENOSYS;
> -		}
> -
> -		data_len = uncompress_buf_to_buf(data, data_len, &uc_data,
> -					    fit_uncompress_error_fn);
> -		if (data_len < 0) {
> -			pr_err("data couldn't be decompressed\n");
> -			return data_len;
> -		}
> -
> -		data = uc_data;
> -
> -		/* associate buffer with FIT, so it's not leaked */
> -		__of_new_property(image, "uncompressed-data", uc_data, data_len);
> -	}
> +	ret = fit_handle_decompression(image, &data, &data_len);
> +	if (ret)
> +		return ret;
>  
>  	*outdata = data;
>  	*outsize = data_len;
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


