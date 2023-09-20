Delivery-date: Wed, 20 Sep 2023 13:26:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qivLv-004Zl3-5f
	for lore@lore.pengutronix.de; Wed, 20 Sep 2023 13:26:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qivLs-0005Z7-Qh
	for lore@pengutronix.de; Wed, 20 Sep 2023 13:26:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sgMWV+biMcIKnEfGb9HI0CypvN0SEbRSdFjTgVx4n6c=; b=n0s0dZW9sZqqLiC5WpSmI14g6O
	o17LV9+6CmMtU0Pr8duWHoowiNRDPef6wz9zpcqEmrj/eGrVxUmsO+s+SevmPRsBqOQHrG4buV0YF
	ozzDdqVidVHjT/Z+dLmAC1zfu919yw74VtxAwo51GpM3XQ7qHKFNHFYv4WtIkS/4zRpTszoxGWVCD
	AwzlV+4CImxbR3sh0lkKRJLmLlyRyTi8rtsEnsbBcR/lUVRtGIZAwT9hcr9kaSq+w3awYdct6V5lX
	A63rABmdAomV4uZg7EIDWrFZBx0pes85X/djLIyQ8IFDYQCMWAydlmP9cI8HaSTtMO68276n38eWR
	vcQNVfXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qivKq-002rqp-1G;
	Wed, 20 Sep 2023 11:25:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qivKn-002rp1-00
	for barebox@lists.infradead.org;
	Wed, 20 Sep 2023 11:25:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qivKl-0005HJ-MW; Wed, 20 Sep 2023 13:25:31 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qivKl-007ftn-A2; Wed, 20 Sep 2023 13:25:31 +0200
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qivKl-00AAlA-7m; Wed, 20 Sep 2023 13:25:31 +0200
Date: Wed, 20 Sep 2023 13:25:31 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230920112531.jgn5fnjjslccjcsy@pengutronix.de>
References: <20230920103316.2758383-1-s.hauer@pengutronix.de>
 <20230920103316.2758383-5-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230920103316.2758383-5-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_042533_033974_2EF43313 
X-CRM114-Status: GOOD (  21.55  )
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
Subject: Re: [PATCH 04/11] regulator: add regulator_get_voltage_internal()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 23-09-20, Sascha Hauer wrote:
> regulator_get_voltage() works on struct regulator * which may not always
> be available internally, so add a regulator_get_voltage_internal() and
> use it from regulator_get_voltage().
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/regulator/core.c | 52 +++++++++++++++++++++-------------------
>  1 file changed, 27 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
> index 8ef5a2372c..5693fa9634 100644
> --- a/drivers/regulator/core.c
> +++ b/drivers/regulator/core.c
> @@ -121,6 +121,32 @@ static int regulator_set_voltage_internal(struct regulator_dev *rdev,
>  	return -ENOSYS;
>  }
>  
> +static int regulator_get_voltage_internal(struct regulator_dev *rdev)

Can we name this regulator_get_voltage_rdev()? This would align the code
with Linux.

Regards,
  Marco

> +{
> +	int sel, ret;
> +
> +	if (rdev->desc->ops->get_voltage_sel) {
> +		sel = rdev->desc->ops->get_voltage_sel(rdev);
> +		if (sel < 0)
> +			return sel;
> +		ret = rdev->desc->ops->list_voltage(rdev, sel);
> +	} else if (rdev->desc->ops->get_voltage) {
> +		ret = rdev->desc->ops->get_voltage(rdev);
> +	} else if (rdev->desc->ops->list_voltage) {
> +		ret = rdev->desc->ops->list_voltage(rdev, 0);
> +	} else if (rdev->desc->fixed_uV && (rdev->desc->n_voltages == 1)) {
> +		ret = rdev->desc->fixed_uV;
> +	} else if (rdev->min_uv && rdev->min_uv == rdev->max_uv) {
> +		ret = rdev->min_uv;
> +	} else if (rdev->supply) {
> +		ret = regulator_get_voltage(rdev->supply);
> +	} else {
> +		return -EINVAL;
> +	}
> +
> +	return ret;
> +}
> +
>  static int regulator_resolve_supply(struct regulator_dev *rdev)
>  {
>  	struct regulator *supply;
> @@ -622,34 +648,10 @@ EXPORT_SYMBOL_GPL(regulator_bulk_free);
>  
>  int regulator_get_voltage(struct regulator *regulator)
>  {
> -	struct regulator_dev *rdev;
> -	int sel, ret;
> -
>  	if (!regulator)
>  		return -EINVAL;
>  
> -	rdev = regulator->rdev;
> -
> -	if (rdev->desc->ops->get_voltage_sel) {
> -		sel = rdev->desc->ops->get_voltage_sel(rdev);
> -		if (sel < 0)
> -			return sel;
> -		ret = rdev->desc->ops->list_voltage(rdev, sel);
> -	} else if (rdev->desc->ops->get_voltage) {
> -		ret = rdev->desc->ops->get_voltage(rdev);
> -	} else if (rdev->desc->ops->list_voltage) {
> -		ret = rdev->desc->ops->list_voltage(rdev, 0);
> -	} else if (rdev->desc->fixed_uV && (rdev->desc->n_voltages == 1)) {
> -		ret = rdev->desc->fixed_uV;
> -	} else if (rdev->min_uv && rdev->min_uv == rdev->max_uv) {
> -		ret = rdev->min_uv;
> -	} else if (rdev->supply) {
> -		ret = regulator_get_voltage(rdev->supply);
> -	} else {
> -		return -EINVAL;
> -	}
> -
> -	return ret;
> +	return regulator_get_voltage_internal(regulator->rdev);
>  }
>  EXPORT_SYMBOL_GPL(regulator_get_voltage);
>  
> -- 
> 2.39.2
> 
> 
> 


