Delivery-date: Mon, 11 Jul 2022 11:37:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oApqz-002M4N-2H
	for lore@lore.pengutronix.de; Mon, 11 Jul 2022 11:37:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oApqx-0002V6-66
	for lore@pengutronix.de; Mon, 11 Jul 2022 11:37:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M3Hq/kyuzMmw/eMX+MB9MK4HwznNVK1XUUVxBtD/PMA=; b=WcsD2OjGzJlOm6EIEvNlXlaj+a
	ZONzEiV0Y4xQql8Y66o23NlL7KIhtP62fOYNrQIu3VzLvXxzZ+HEnxLa5qtdgvZfDlliD5/hHdcQM
	TT7fuFUUk4xASZDhc/qVZcEhoVfZ6OH9p81EaKG3izqOyTevlheOlbf4L+vq09RLzdcvTkbCqlJbP
	VUyvbebO2y2nT/VzkVdN5Zb+jHzZKk6UETwvc1B1iH8HeBs2y1Sgevvkbx3kplN2kjlmsmdgMv+rV
	jSCKOJB4AKFsXlVwUeMW5QsOZgkEXXnSbu9SJQC1Qu1a0ukSOLDLRMy7DpxOXV6xjvOh+fWdV0gNA
	PXycxBeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAppa-0009ZD-66; Mon, 11 Jul 2022 09:35:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAppU-0009VL-1x
	for barebox@lists.infradead.org; Mon, 11 Jul 2022 09:35:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oAppS-00029U-Ho; Mon, 11 Jul 2022 11:35:46 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oAppS-0004Mz-0m; Mon, 11 Jul 2022 11:35:46 +0200
Date: Mon, 11 Jul 2022 11:35:46 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20220711093545.GO5208@pengutronix.de>
References: <20220708061539.1193059-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220708061539.1193059-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_023548_118888_68E90DB1 
X-CRM114-Status: GOOD (  25.48  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] regulator: fixed: remove duplicate always-on handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jul 08, 2022 at 08:15:40AM +0200, Ahmad Fatoum wrote:
> Regulator core already handles always-on property by enabling always-on
> regulators at registration time, so we can remove duplicate handling in
> the fixed-regulator driver. To avoid regressions due to previously
> unnoticed unbalanced regulator usage, maintain a positive use count
> always like Linux does and additionally warn on violation attempt.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
> v1 -> v2:
>   - prevent use count dipping below 1 due to unbalanced use.
>     This should avoid regressions and still warn us if they occur
> ---
>  drivers/regulator/core.c  |  9 +++++++--
>  drivers/regulator/fixed.c | 10 ----------
>  2 files changed, 7 insertions(+), 12 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
> index af8a0cb4fc3e..1fb344656f38 100644
> --- a/drivers/regulator/core.c
> +++ b/drivers/regulator/core.c
> @@ -66,6 +66,7 @@ static int regulator_enable_internal(struct regulator_internal *ri)
>  
>  static int regulator_disable_internal(struct regulator_internal *ri)
>  {
> +	struct regulator_dev *rdev = ri->rdev;
>  	int ret;
>  
>  	if (!ri->enable_count)
> @@ -76,10 +77,14 @@ static int regulator_disable_internal(struct regulator_internal *ri)
>  		return 0;
>  	}
>  
> -	if (!ri->rdev->desc->ops->disable)
> +	/* Crisis averted, be loud about the unbalanced regulator use */
> +	if (WARN_ON(rdev->always_on))
> +		return -EPERM;
> +
> +	if (!rdev->desc->ops->disable)
>  		return -ENOSYS;
>  
> -	ret = ri->rdev->desc->ops->disable(ri->rdev);
> +	ret = rdev->desc->ops->disable(rdev);
>  	if (ret)
>  		return ret;
>  
> diff --git a/drivers/regulator/fixed.c b/drivers/regulator/fixed.c
> index c5f97d78df40..ec64f39b86c7 100644
> --- a/drivers/regulator/fixed.c
> +++ b/drivers/regulator/fixed.c
> @@ -15,7 +15,6 @@
>  
>  struct regulator_fixed {
>  	int gpio;
> -	int always_on;
>  	struct regulator_dev rdev;
>  	struct regulator_desc rdesc;
>  };
> @@ -34,9 +33,6 @@ static int regulator_fixed_disable(struct regulator_dev *rdev)
>  {
>  	struct regulator_fixed *fix = container_of(rdev, struct regulator_fixed, rdev);
>  
> -	if (fix->always_on)
> -		return 0;
> -
>  	if (!gpio_is_valid(fix->gpio))
>  		return 0;
>  
> @@ -76,12 +72,6 @@ static int regulator_fixed_probe(struct device_d *dev)
>  	if (!of_property_read_u32(np, "off-on-delay-us", &delay))
>  		fix->rdesc.off_on_delay = delay;
>  
> -	if (of_find_property(np, "regulator-always-on", NULL) ||
> -	    of_find_property(np, "regulator-boot-on", NULL)) {
> -		fix->always_on = 1;
> -		regulator_fixed_enable(&fix->rdev);
> -	}
> -
>  	ret = of_regulator_register(&fix->rdev, np);
>  	if (ret)
>  		goto err;
> -- 
> 2.34.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


