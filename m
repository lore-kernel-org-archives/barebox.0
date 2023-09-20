Delivery-date: Wed, 20 Sep 2023 13:40:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qivZK-004aRE-9e
	for lore@lore.pengutronix.de; Wed, 20 Sep 2023 13:40:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qivZI-0007lN-Cy
	for lore@pengutronix.de; Wed, 20 Sep 2023 13:40:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3MouW4+z3KwszJ031GA3K/6hvq6QzlEofjxXtUHvn2E=; b=bZkLrPZJLG0UHBRJwHMLoBcmBE
	P5xWRVZBrfcVHoNx2962fC3OOAZAFWc3p+Y3TSQu1x2lyhODVmg6yCGj52S73on8hu3hkXgxl+bab
	1TKZv7M9AuPQXZBoZGKoxtJZn/C/XxKWjhRA5OpuiplATkKIlBHXC8y4PGA1x98MUGzknAN/8MJdw
	dThqsU5SH12aH1qBLEM92xzG+ST5L9rCEA2r9n/yQXU2lgx9Bs5Pv37XnMAXSTcoYFI+uBrAly7dL
	Lv9lQU10NoChbv/jtJfa4mazcfKVHPDKFWAB76jQZ2OtT55X6KwPIpV8MNh/wWhFVTuoimucOiEj2
	nLRT2wpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qivYE-002tVi-18;
	Wed, 20 Sep 2023 11:39:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qivYB-002tVL-29
	for barebox@lists.infradead.org;
	Wed, 20 Sep 2023 11:39:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qivYA-0007as-Gv; Wed, 20 Sep 2023 13:39:22 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qivYA-007fxz-43; Wed, 20 Sep 2023 13:39:22 +0200
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qivYA-00AAs5-1i; Wed, 20 Sep 2023 13:39:22 +0200
Date: Wed, 20 Sep 2023 13:39:22 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230920113922.ystz3523e5buvwht@pengutronix.de>
References: <20230920103316.2758383-1-s.hauer@pengutronix.de>
 <20230920103316.2758383-9-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230920103316.2758383-9-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_043923_702630_811EBB93 
X-CRM114-Status: GOOD (  14.93  )
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
Subject: Re: [PATCH 08/11] regulator: register regulator as last step in
 of_regulator_register()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 23-09-20, Sascha Hauer wrote:
> In of_regulator_register() call __regulator_register as last step after
> all fields have been initialized. This was not possible before as
> __regulator_register() returned the struct regulator_internal * which
> contained the remaining fields. Now that struct regulator_internal is
> gone we can restore the natural initialization order.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/regulator/core.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
> index b9a97a784f..d08df1dc68 100644
> --- a/drivers/regulator/core.c
> +++ b/drivers/regulator/core.c
> @@ -240,10 +240,6 @@ int of_regulator_register(struct regulator_dev *rdev, struct device_node *node)
>  	if (!name)
>  		name = node->name;
>  
> -	ret = __regulator_register(rdev, name);
> -	if (ret)
> -		return ret;
> -
>  	rdev->node = node;
>  	node->dev = rdev->dev;
>  
> @@ -260,6 +256,10 @@ int of_regulator_register(struct regulator_dev *rdev, struct device_node *node)
>  	of_property_read_u32(node, "regulator-max-microvolt",
>  			&rdev->max_uv);
>  
> +	ret = __regulator_register(rdev, name);

	return __regulator_register(rdev, name);

Regards,
  Marco

> +	if (ret)
> +		return ret;
> +
>  	return 0;
>  }
>  
> -- 
> 2.39.2
> 
> 
> 


