Delivery-date: Mon, 27 Oct 2025 08:19:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDHWA-00CGCL-20
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 08:19:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDHWA-0005Lx-22
	for lore@pengutronix.de; Mon, 27 Oct 2025 08:19:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G4R1lAlrAjw52Aj2Xcqaq3TI3hV+d6+LcMUf6FqPrso=; b=u6AXSkTv5wpTeH7DLeAAqFH2qK
	rcd+3/+oi97BXP79uUQHnfyKgzejUp2zTGJQ4TeppJ3d9l2GYIYOlX8J4zej4lI+mmA8tW/AMZfv8
	5eXThATL7UMCdsoKJlRrgfb6/XxDP8/dR4pHkBt+n4SqYUqVSa1ZIKVpaZT2L3OwaJmPg+/5n4TmN
	mNMu5B4IKw2wTlOwblRn2UsOmj6v82NPvOkbN4WKGEkzaKqzbOuOkSOpK9re9Af8tkOPMHPUI74IE
	0h0Ne6QYT3KE5TzH7aJGoGxvi9rZvFD+A9SsQ0PYUs7rlkLjwyMFWx49vAvxZ7d0rY81SnyySMd43
	3i1jmeLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDHVa-0000000DGaz-1Z9R;
	Mon, 27 Oct 2025 07:19:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDHVV-0000000DGaR-3zpF
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 07:19:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vDHVS-0005FP-80; Mon, 27 Oct 2025 08:19:06 +0100
Message-ID: <a44d6b30-b2dc-4b13-8305-8642fa5e2e9c@pengutronix.de>
Date: Mon, 27 Oct 2025 08:19:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@barebox.org>, barebox@lists.infradead.org
References: <20251027065315.2419160-1-a.fatoum@barebox.org>
 <20251027065315.2419160-2-a.fatoum@barebox.org>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251027065315.2419160-2-a.fatoum@barebox.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_001909_998391_222B831B 
X-CRM114-Status: GOOD (  19.11  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/5] pmdomain: look up pmdomain even if not
 have_genpd_providers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

Seems I wrongly squashed the commit message.

On 27.10.25 07:53, Ahmad Fatoum wrote:

have_genpd_providers is a pre-deep-probe artifact, where SoC support
would promise that a power domain driver will be registered.

In a deep probe system, we can just force the probe in __genpd_dev_pm_attach.

Therefore, move the check for have_genpd_providers, until after the
lookup of power domain drivers.

This will be further refined in follow-up commits.

> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> --->  drivers/base/power.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/base/power.c b/drivers/base/power.c
> index d60a00f5735e..0cdece210d94 100644
> --- a/drivers/base/power.c
> +++ b/drivers/base/power.c
> @@ -371,9 +371,6 @@ static int __genpd_dev_pm_attach(struct device *dev,
>  	struct generic_pm_domain *pd;
>  	int ret;
>  
> -	if (!have_genpd_providers)
> -		return 0;
> -
>  	ret = of_parse_phandle_with_args(dev->of_node, "power-domains",
>  				"#power-domain-cells", index, &pd_args);
>  	if (ret < 0)
> @@ -384,11 +381,18 @@ static int __genpd_dev_pm_attach(struct device *dev,
>  		ret = PTR_ERR(pd);
>  		dev_dbg(dev, "%s() failed to find PM domain: %d\n",
>  			__func__, ret);
> +
> +		if (ret == -ENOENT)
> +			ret = -EPROBE_DEFER;
> +
> +		if (!have_genpd_providers && ret == -EPROBE_DEFER)
> +			return 0;
> +
>  		/*
>  		 * Assume that missing genpds are unresolved
>  		 * dependency are report them as deferred
>  		 */
> -		return (ret == -ENOENT) ? -EPROBE_DEFER : ret;
> +		return ret;
>  	}
>  
>  	dev_dbg(dev, "adding to PM domain %s\n", pd ? pd->name : "dummy");


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


