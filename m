Delivery-date: Fri, 05 Aug 2022 07:25:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJppn-00C8I8-QJ
	for lore@lore.pengutronix.de; Fri, 05 Aug 2022 07:25:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJppo-0005Ba-Qp
	for lore@pengutronix.de; Fri, 05 Aug 2022 07:25:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OAl7zg31ubqZTG759lMyXdCywk7S9Bfar1nBzSbBC+w=; b=pTJe2PbUXz5LFOaNooUinJt0+0
	y+SY30toKipsuZOx9/JFbXzYT/bREVHfeSWhp2Cjm3wiH3oYZg5elOwMQY3pBfmAuwoV4I5LmOi4D
	0G+QVDG3BLc6lU9qng71STH7JG2ljGvlTsl9D8lqk1/B7Ap04SxaJDbUOBNXqUSLypohnzig3zZ26
	Bn6fy/38MWHqpClOOanFXK2ij0xLc1tsmrDCHH0Y9hp3DM3VUAs0QGqEPpYoo8HTF0VYWfYq2XjGr
	aIraHWYNjARfwaLQ3dyMUKMAb2038JGzpDMwtYbkePussF5IdekDFHF1m/zXWekl55WGrHDXFgzZo
	TDMVc3/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJpo0-00C29h-Mr; Fri, 05 Aug 2022 05:23:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJpnv-00C26t-ML
	for barebox@lists.infradead.org; Fri, 05 Aug 2022 05:23:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oJpno-00055v-Rs; Fri, 05 Aug 2022 07:23:16 +0200
Message-ID: <1d72e940-a7d1-d0b5-fbeb-48d36b1bc4fa@pengutronix.de>
Date: Fri, 5 Aug 2022 07:23:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de, mfe@pengutronix.de
References: <20220730095211.1769119-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220730095211.1769119-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220804_222323_762493_E92673A8 
X-CRM114-Status: GOOD (  26.92  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/3] drivers: power: ignore power domains with
 barebox,allow-dummy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 30.07.22 11:52, Ahmad Fatoum wrote:
> With deep probe enabled, we can know for certain whether a driver will
> be found for a device or not. This allows us to specially handle devices
> that lack a driver. We already do that for regulators, where the device
> tree can specify barebox,allow-dummy-supply for regulators that are
> known to be enabled by the time barebox runs. Add the same functionality
> for power domains as well.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---

Please dismiss, sending out v2 shortly.

>  drivers/base/power.c | 24 +++++++++++++++++++++---
>  1 file changed, 21 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/base/power.c b/drivers/base/power.c
> index 96cac1a091f3..4a206051b137 100644
> --- a/drivers/base/power.c
> +++ b/drivers/base/power.c
> @@ -139,14 +139,32 @@ static struct generic_pm_domain *genpd_get_from_provider(
>  					struct of_phandle_args *genpdspec)
>  {
>  	struct generic_pm_domain *genpd = ERR_PTR(-ENOENT);
> +	struct device_node *node = genpdspec->np;
>  	struct of_genpd_provider *provider;
> +	int ret;
>  
>  	if (!genpdspec)
>  		return ERR_PTR(-EINVAL);
>  
> +	ret = of_device_ensure_probed(node);
> +	if (ret) {
> +		struct device_node *parent;
> +
> +		/*
> +		 * If "barebox,allow-dummy" property is set for power domain
> +		 * provider, assume it's turned on.
> +		 */
> +		parent = of_get_parent(node);
> +		if (of_get_property(node, "barebox,allow-dummy", NULL) ||
> +		    of_get_property(parent, "barebox,allow-dummy", NULL))
> +			return NULL;
> +
> +		return ERR_PTR(ret);
> +	}
> +
>  	/* Check if we have such a provider in our array */
>  	list_for_each_entry(provider, &of_genpd_providers, link) {
> -		if (provider->node == genpdspec->np)
> +		if (provider->node == node)
>  			genpd = provider->xlate(genpdspec, provider->data);
>  		if (!IS_ERR(genpd))
>  			break;
> @@ -175,7 +193,7 @@ static int genpd_power_on(struct generic_pm_domain *genpd, unsigned int depth)
>  {
>  	int ret;
>  
> -	if (genpd_status_on(genpd))
> +	if (!genpd || genpd_status_on(genpd))
>  		return 0;
>  
>  	ret = _genpd_power_on(genpd, true);
> @@ -211,7 +229,7 @@ static int __genpd_dev_pm_attach(struct device_d *dev, struct device_node *np,
>  		return (ret == -ENOENT) ? -EPROBE_DEFER : ret;
>  	}
>  
> -	dev_dbg(dev, "adding to PM domain %s\n", pd->name);
> +	dev_dbg(dev, "adding to PM domain %s\n", pd ? pd->name : "dummy");
>  
>  	if (power_on)
>  		ret = genpd_power_on(pd, 0);


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


