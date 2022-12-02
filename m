Delivery-date: Fri, 02 Dec 2022 09:52:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p11mL-008KqP-6l
	for lore@lore.pengutronix.de; Fri, 02 Dec 2022 09:52:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p11mK-0002mU-EG
	for lore@pengutronix.de; Fri, 02 Dec 2022 09:52:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6MxYrPJS0JRRHGsn+BGe1QVXMjcWxPdVwDXO/9ReGWM=; b=pSkCpefl+pIuFPOl64RbZRDBbo
	zhYDszy5BFRywx7xiBrMMiqCy6fB0yemomXzlPtjcVP/8qRugNSvxTfjEdXMTnYpMyYr5myXEKMXc
	ZicMZvn4wjYvXpH+l71QN65is9rVWuIJH/3nm85se3mxcv0Y+E3e+/iEj1tN/nh50AuXcPn5sBCHn
	cg0xy5ZW6I5xjs+REtIfh7usyWk/nBYWQRD2kgB7A1uk4jg0XO5fYihItrJqdIrjNQ/RBBYtJwpir
	VL9Foy6wqQRzN4MYj+J5b13bcjZ2DW3lG98U2JOlkQbltTMxcHhCDQAcril/JplGxGacOX7AZ7wM4
	RzoQkPFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p11ky-00EgHc-5j; Fri, 02 Dec 2022 08:50:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p11kt-00EgG3-FV
	for barebox@lists.infradead.org; Fri, 02 Dec 2022 08:50:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p11ks-0002Xu-4h; Fri, 02 Dec 2022 09:50:46 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p11kr-0006Kc-Po; Fri, 02 Dec 2022 09:50:45 +0100
Date: Fri, 2 Dec 2022 09:50:45 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Michael Riesch <michael.riesch@wolfvision.net>
Message-ID: <20221202085045.GL29728@pengutronix.de>
References: <20221130171439.2928344-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221130171439.2928344-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221202_005047_542902_444ACA8D 
X-CRM114-Status: GOOD (  21.52  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master v2] regulator: rk808: fix misplaced DCDC_REG5
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Nov 30, 2022 at 06:14:39PM +0100, Ahmad Fatoum wrote:
> Driver was written to mimic existing stpmic1 regulator driver, which had
> the implicit assumption of a 1:1 relationship between of_match_data and
> regulator configuration with same indices.
> 
> Yet DCDC_REG5 was not at the same place it was in the rk_regulator_cfg
> due to likely a copy-paste mistake, leading to possibly the wrong
> regulators being controlled. Fix this.
> 
> Reported-by: Michael Riesch <michael.riesch@wolfvision.net>
> Suggested-by: Michael Riesch <michael.riesch@wolfvision.net>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> move entry in rk809_reg, not rk809_reg_matches to keep same numbering as
> enum rk809_reg_id.
> ---
>  drivers/regulator/rk808-regulator.c | 27 ++++++++++++++-------------
>  1 file changed, 14 insertions(+), 13 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk808-regulator.c
> index 39eadbd3ebe5..f8bc31f354e2 100644
> --- a/ drivers/regulator/rk808-regulator.c
> +++ b/drivers/regulator/rk808-regulator.c
> @@ -526,19 +526,6 @@ static struct rk_regulator_cfg rk809_reg[] = {
>  		.enable_mask = ENABLE_MASK(RK817_ID_DCDC4),
>  		.enable_val = ENABLE_MASK(RK817_ID_DCDC4),
>  		.disable_val = DISABLE_VAL(RK817_ID_DCDC4),
> -	}}, {{
> -		/* .name = "DCDC_REG5", */
> -		.supply_name = "vcc9",
> -		.ops = &rk809_buck5_ops_range,
> -		.n_voltages = RK809_BUCK5_SEL_CNT,
> -		.linear_ranges = rk809_buck5_voltage_ranges,
> -		.n_linear_ranges = ARRAY_SIZE(rk809_buck5_voltage_ranges),
> -		.vsel_reg = RK809_BUCK5_CONFIG(0),
> -		.vsel_mask = RK809_BUCK5_VSEL_MASK,
> -		.enable_reg = RK817_POWER_EN_REG(3),
> -		.enable_mask = ENABLE_MASK(1),
> -		.enable_val = ENABLE_MASK(1),
> -		.disable_val = DISABLE_VAL(1),
>  	}},
>  	RK817_DESC(/* "LDO_REG1", */ "vcc5", 600, 3400, 25,
>  		   RK817_LDO_ON_VSEL_REG(0), RK817_LDO_VSEL_MASK,
> @@ -576,6 +563,20 @@ static struct rk_regulator_cfg rk809_reg[] = {
>  		   RK817_LDO_ON_VSEL_REG(8), RK817_LDO_VSEL_MASK,
>  		   RK817_POWER_EN_REG(3), ENABLE_MASK(0),
>  		   DISABLE_VAL(0), 400),
> +	{{
> +		/* .name = "DCDC_REG5", */
> +		.supply_name = "vcc9",
> +		.ops = &rk809_buck5_ops_range,
> +		.n_voltages = RK809_BUCK5_SEL_CNT,
> +		.linear_ranges = rk809_buck5_voltage_ranges,
> +		.n_linear_ranges = ARRAY_SIZE(rk809_buck5_voltage_ranges),
> +		.vsel_reg = RK809_BUCK5_CONFIG(0),
> +		.vsel_mask = RK809_BUCK5_VSEL_MASK,
> +		.enable_reg = RK817_POWER_EN_REG(3),
> +		.enable_mask = ENABLE_MASK(1),
> +		.enable_val = ENABLE_MASK(1),
> +		.disable_val = DISABLE_VAL(1),
> +	}},
>  	RK817_DESC_SWITCH(/* "SWITCH_REG1", */ "vcc9",
>  			  RK817_POWER_EN_REG(3), ENABLE_MASK(2), DISABLE_VAL(2)),
>  	RK817_DESC_SWITCH(/* "SWITCH_REG2", */ "vcc8",
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


