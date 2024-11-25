Delivery-date: Mon, 25 Nov 2024 09:34:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUY6-000814-0O
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 09:34:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFUY5-0001rq-Uq
	for lore@pengutronix.de; Mon, 25 Nov 2024 09:34:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xhDnhtGT37nNxzVnKCtOfG2daEd7JvLA1zihuJAh7Rk=; b=kGHeyPZZCR+LR5RK9uOneFGvcc
	4J+J7sb7SonaeJD9wRyl+m3LUYItgwHRWUymQrv4IHIe7n3A95EDDU3KdORffXP7U22NH2FuebiSc
	7Jg2zqQCLDp+P0QYDE88WJ/t16oYnUYE9I8URo+YQx4BgYi/+G1tFv5NkGpGVzGGBgpGCPGwUi8wi
	N/R5ZyurPN9HOPw2T2nhhHEnFrh6TQBiJ6zLj57790vPvJCzpJcMgRG8YgAkOR79MUMAl9YBJO384
	IbIsIBH6rwNqo8LyhBtkmKn/E2OMho4vjQqBi5gYaYrTWZoZuM1lZerY5/2MOh12q9AlxhHOVLXiq
	zjJdXRoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUXd-00000007OTf-1zxn;
	Mon, 25 Nov 2024 08:33:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFUKg-00000007MRK-28tW
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 08:20:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tFUKd-0000Yc-Lc; Mon, 25 Nov 2024 09:20:31 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tFUKc-00031K-2J;
	Mon, 25 Nov 2024 09:20:31 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tFUKd-00EaiA-1J;
	Mon, 25 Nov 2024 09:20:31 +0100
Date: Mon, 25 Nov 2024 09:20:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z0QzT1LZ6Lo2kxtr@pengutronix.de>
References: <20241120130640.3866362-1-a.fatoum@pengutronix.de>
 <20241120130640.3866362-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241120130640.3866362-2-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_002034_546947_6C544045 
X-CRM114-Status: GOOD (  22.00  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] mfd: rn5t568: refactor to call
 reset_source_set_device only once
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Nov 20, 2024 at 02:06:39PM +0100, Ahmad Fatoum wrote:
> ---
>  drivers/mfd/rn5t568.c | 59 +++++++++++++++++++++----------------------
>  1 file changed, 29 insertions(+), 30 deletions(-)
> 

No S-o-b?

Sascha

> diff --git a/drivers/mfd/rn5t568.c b/drivers/mfd/rn5t568.c
> index f1e2eeb0c88b..7468338a2d53 100644
> --- a/drivers/mfd/rn5t568.c
> +++ b/drivers/mfd/rn5t568.c
> @@ -33,6 +33,7 @@ static void rn5t568_restart(struct restart_handler *rst)
>  static int rn5t568_reset_reason_detect(struct device *dev,
>  				       struct regmap *regmap)
>  {
> +	enum reset_src_type type;
>  	unsigned int reg;
>  	int ret;
>  
> @@ -47,40 +48,38 @@ static int rn5t568_reset_reason_detect(struct device *dev,
>  		return 0;
>  	}
>  
> -	if (reg & RN5T568_PONHIS_ON_EXTINPON) {
> -		reset_source_set_device(dev, RESET_POR);
> -		return 0;
> -	} else if (reg & RN5T568_PONHIS_ON_PWRONPON) {
> -		reset_source_set_device(dev, RESET_POR);
> -		return 0;
> -	} else if (!(reg & RN5T568_PONHIS_ON_REPWRPON))
> +	if (reg & (RN5T568_PONHIS_ON_EXTINPON | RN5T568_PONHIS_ON_PWRONPON)) {
> +		type = RESET_POR;
> +	} else if (!(reg & RN5T568_PONHIS_ON_REPWRPON)) {
>  		return -EINVAL;
> +	} else {
> +		ret = regmap_read(regmap, RN5T568_POFFHIS, &reg);
> +		if (ret)
> +			return ret;
>  
> -	ret = regmap_read(regmap, RN5T568_POFFHIS, &reg);
> -	if (ret)
> -		return ret;
> +		dev_dbg(dev, "Power-off history: %x\n", reg);
>  
> -	dev_dbg(dev, "Power-off history: %x\n", reg);
> -
> -	if (reg & RN5T568_POFFHIS_PWRONPOFF)
> -		reset_source_set_device(dev, RESET_POR);
> -	else if (reg & RN5T568_POFFHIS_TSHUTPOFF)
> -		reset_source_set_device(dev, RESET_THERM);
> -	else if (reg & RN5T568_POFFHIS_VINDETPOFF)
> -		reset_source_set_device(dev, RESET_BROWNOUT);
> -	else if (reg & RN5T568_POFFHIS_IODETPOFF)
> -		reset_source_set_device(dev, RESET_UKWN);
> -	else if (reg & RN5T568_POFFHIS_CPUPOFF)
> -		reset_source_set_device(dev, RESET_RST);
> -	else if (reg & RN5T568_POFFHIS_WDGPOFF)
> -		reset_source_set_device(dev, RESET_WDG);
> -	else if (reg & RN5T568_POFFHIS_DCLIMPOFF)
> -		reset_source_set_device(dev, RESET_BROWNOUT);
> -	else if (reg & RN5T568_POFFHIS_N_OEPOFF)
> -		reset_source_set_device(dev, RESET_EXT);
> -	else
> -		return -EINVAL;
> +		if (reg & RN5T568_POFFHIS_PWRONPOFF)
> +			type = RESET_POR;
> +		else if (reg & RN5T568_POFFHIS_TSHUTPOFF)
> +			type = RESET_THERM;
> +		else if (reg & RN5T568_POFFHIS_VINDETPOFF)
> +			type = RESET_BROWNOUT;
> +		else if (reg & RN5T568_POFFHIS_IODETPOFF)
> +			type = RESET_UKWN;
> +		else if (reg & RN5T568_POFFHIS_CPUPOFF)
> +			type = RESET_RST;
> +		else if (reg & RN5T568_POFFHIS_WDGPOFF)
> +			type = RESET_WDG;
> +		else if (reg & RN5T568_POFFHIS_DCLIMPOFF)
> +			type = RESET_BROWNOUT;
> +		else if (reg & RN5T568_POFFHIS_N_OEPOFF)
> +			type = RESET_EXT;
> +		else
> +			return -EINVAL;
> +	}
>  
> +	reset_source_set_device(dev, type);
>  	return 0;
>  }
>  
> -- 
> 2.39.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


