Delivery-date: Fri, 15 Nov 2024 13:38:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBvb4-002FNj-0u
	for lore@lore.pengutronix.de;
	Fri, 15 Nov 2024 13:38:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBvb3-00082L-Lp
	for lore@pengutronix.de; Fri, 15 Nov 2024 13:38:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7PyK8MEhSi2oAwS+gjdgVf9nhzJgWzYnWYLayCFzRwI=; b=2MjIpHdDyr2IPacZon2PgzMyR2
	PyJ6/Mu7RNezeR/UCJ+H70b922zRKE5o64Tb69VTR9J/4zYRhBlnbwGRcgZs0/tU9/HlVOo3aD3XD
	4RIWxL/Og54cpOxexIkQw7mquKglZ/35a354TA3e0J0s/E78Lf8LQ0jXRYidZscYa8Hncyvb1p72y
	mHRUmP/CyaRLwrAASz99Hj9J/JJUFswcOQGPrQeehVMjdOx+i52u0wp+PPinGihpMCW17WOBaxmsY
	rSn4SAzcfIDCuIMAdBWP/pUQBES6s6qAf95oAHLtsB3oFxbsm3OiR8TmUW7tGq0+HdnTAW8z1RpHY
	EIviz+og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBvaa-00000002g58-2oFG;
	Fri, 15 Nov 2024 12:38:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBvaQ-00000002g20-2UR0
	for barebox@lists.infradead.org;
	Fri, 15 Nov 2024 12:38:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tBvaP-0007p8-4G; Fri, 15 Nov 2024 13:38:05 +0100
Message-ID: <970fb560-b4f5-4c3b-9d5e-cd7b243707c3@pengutronix.de>
Date: Fri, 15 Nov 2024 13:38:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: barebox@lists.infradead.org
Cc: h.assmann@pengutronix.de
References: <20241115121602.3999375-1-a.fatoum@pengutronix.de>
 <20241115121602.3999375-2-a.fatoum@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241115121602.3999375-2-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_043806_634274_9FCE81AC 
X-CRM114-Status: GOOD (  21.35  )
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
Subject: Re: [PATCH v2 2/4] environment: implement of_env_get_alias_by_path
 helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 15.11.24 13:16, Ahmad Fatoum wrote:
> For use by board-code that wants to get the alias pointing at the
> backing device of an environment node add a simple
> of_env_get_alias_by_path() helper, so board code doesn't need to worry
> about property name and whether the binding uses a phandle or string path.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thinking about it, of_env_get_device_alias_by_path may be a bit verbose,
but is a better name.

I'll wait for more feedback before sending v3 though.

Cheers,
Ahmad

> ---
> v1 -> v2:
>   - no change
> ---
>  drivers/of/barebox.c |  5 +++++
>  include/envfs.h      | 10 ++++++++++
>  2 files changed, 15 insertions(+)
> 
> diff --git a/drivers/of/barebox.c b/drivers/of/barebox.c
> index ed5d171e43a8..7d433e280ba5 100644
> --- a/drivers/of/barebox.c
> +++ b/drivers/of/barebox.c
> @@ -15,6 +15,11 @@
>  
>  #define ENV_MNT_DIR "/boot"	/* If env on filesystem, where to mount */
>  
> +const char *of_env_get_alias_by_path(const char *of_path)
> +{
> +	return of_property_get_alias(of_path, "device-path");
> +}
> +
>  /* If dev describes a file on a fs, mount the fs and return a pointer
>   * to the file's path.  Otherwise return an error code or NULL if the
>   * device path should be used.
> diff --git a/include/envfs.h b/include/envfs.h
> index 767b34c943de..8bfc83b6b008 100644
> --- a/include/envfs.h
> +++ b/include/envfs.h
> @@ -118,6 +118,16 @@ static inline const char *default_environment_path_get(void)
>  }
>  #endif
>  
> +#ifdef CONFIG_OF_BAREBOX_DRIVERS
> +const char *of_env_get_alias_by_path(const char *of_path);
> +#else
> +static inline const char *of_env_get_alias_by_path(const char *of_path)
> +{
> +	return NULL;
> +}
> +#endif
> +
> +
>  #ifdef CONFIG_DEFAULT_ENVIRONMENT
>  void defaultenv_append(void *buf, unsigned int size, const char *name);
>  int defaultenv_load(const char *dir, unsigned flags);


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


