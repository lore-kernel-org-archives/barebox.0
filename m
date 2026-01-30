Delivery-date: Fri, 30 Jan 2026 09:03:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vljT9-006uXl-2D
	for lore@lore.pengutronix.de;
	Fri, 30 Jan 2026 09:03:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vljT8-0005gA-Nm
	for lore@pengutronix.de; Fri, 30 Jan 2026 09:03:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Awd2kjVL6WKiuLuo1jkvLWHC5n+HdC7HPMafddV1HHc=; b=4gPYVexofwB7IRLiDqXQwyRHjx
	LUkqzl3p+41TcHiNf38VMcvj8VSJQUL2TXW4KGB1Aw4DZZA6Im6luL5233poq4BGAg/ue3WHae40T
	OMPUUIZI0X22DWduAo7zYDmh9vyoI29tpOhFTt9lQEUUYU9MPgRWTeaHK/nrBzBWmhlZTKsqj7ze2
	Ry7TNETzRkLdiZriztNaHZmXyKfaC8DA+yb+znBmfTc19hgkTkYLZ7m0s4NnM6ZmxIMOZZOWs4eKh
	cXGzKvwjrwAa+PG3FZdwqub3DxKui3Zmf0mxQytaxliqrK1pSZzQ7/bNqt62At/9ZQFKGGRAO7KFl
	xdJr1bAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vljSo-00000001B7h-1Gzg;
	Fri, 30 Jan 2026 08:02:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vljSl-00000001B7J-3Vzv
	for barebox@lists.infradead.org;
	Fri, 30 Jan 2026 08:02:45 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vljSj-0005an-RQ; Fri, 30 Jan 2026 09:02:42 +0100
Message-ID: <d623c35c-e2d9-4697-8d7f-984dfdf49399@pengutronix.de>
Date: Fri, 30 Jan 2026 09:02:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sohaib Mohamed <sohaib.amhmd@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
 <20260130-barebox-kickpi-v2-10-d27cf94a39b6@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260130-barebox-kickpi-v2-10-d27cf94a39b6@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260130_000243_883793_7E71AE21 
X-CRM114-Status: GOOD (  15.81  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 10/14] rockchip-rng: Add RK3562 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 1/30/26 06:17, Sohaib Mohamed wrote:
> Add compatible string for RK3562 RNG support.

Nitpick: I'd have rather suggested hw_random as prefix, but I don't think
you need to resend just for that.

> 
> Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/hw_random/rockchip-rng.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/hw_random/rockchip-rng.c b/drivers/hw_random/rockchip-rng.c
> index 8856a3883e..f1f4c4cb12 100644
> --- a/drivers/hw_random/rockchip-rng.c
> +++ b/drivers/hw_random/rockchip-rng.c
> @@ -193,6 +193,10 @@ static const struct of_device_id rk_rng_dt_match[] = {
>  		.compatible = "rockchip,cryptov1-rng",
>  		.data = &rk_rng_v1_soc_data,
>  	},
> +	{
> +		.compatible = "rockchip,rk3562-rng",
> +		.data = &rk_rng_v2_soc_data,
> +	},
>  	{
>  		.compatible = "rockchip,rk3568-rng",
>  		.data = &rk_rng_v2_soc_data,
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


