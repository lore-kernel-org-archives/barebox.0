Delivery-date: Fri, 22 Dec 2023 13:39:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rGeoA-00A5EM-01
	for lore@lore.pengutronix.de;
	Fri, 22 Dec 2023 13:39:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rGeo9-0002XJ-DI
	for lore@pengutronix.de; Fri, 22 Dec 2023 13:39:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nyes81XLyu69EV2kCKBx99vspWgfSo3UkG0xFeoQuJQ=; b=L23Bixg42ste8Mx7ct10VqWSUq
	1NqDHIo5nJ3iW1S20PF8JjPI71Xlt3dTS68hwGmzPZoTGwUEFk4LVdCW7OKT2LTE0tuiI34829ish
	7k9srPBx8ATNjVjkHx+LMC9zuJmq0y1DJfXS+2V2BQ53nQ87jD0NYjBWHpsSYbd2ja+4YFZNjuKhF
	Jv7E22VkIG4M4L5ejIBE8ouh0wUqQdOVOVojHphL4BbZ94wxIJFJ3N0E5xsqwk6w1EORCxK7K/een
	uftOe/GEiYBrhhuOV8PXdyUXyxZnUwUqYg23h76W3x36mA6hHB1N/yqO2kqgFW0Qsi1LhHo7Tckd4
	9nFVw8Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGemq-005xex-1D;
	Fri, 22 Dec 2023 12:37:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGemn-005xdv-0U
	for barebox@lists.infradead.org;
	Fri, 22 Dec 2023 12:37:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rGemk-0002EV-Gx; Fri, 22 Dec 2023 13:37:50 +0100
Message-ID: <6b48ca5a-b023-495e-9f17-cc7d59b815be@pengutronix.de>
Date: Fri, 22 Dec 2023 13:37:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: =?UTF-8?Q?Alvin_=C5=A0ipraga?= <alvin@pqrs.dk>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
Cc: =?UTF-8?Q?Alvin_=C5=A0ipraga?= <alsi@bang-olufsen.dk>
References: <20231222-pca954x-of-v1-1-d39efe336b06@bang-olufsen.dk>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231222-pca954x-of-v1-1-d39efe336b06@bang-olufsen.dk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_043753_209263_DE11A6EB 
X-CRM114-Status: GOOD (  18.91  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] i2c-mux-pca954x: use OF match table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Alvin,

On 22.12.23 03:12, Alvin Šipraga wrote:
> From: Alvin Šipraga <alsi@bang-olufsen.dk>
> 
> Allow the mux driver to match against device tree compatible strings.
> 
> Signed-off-by: Alvin Šipraga <alsi@bang-olufsen.dk>
> ---
>  drivers/i2c/muxes/i2c-mux-pca954x.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/i2c/muxes/i2c-mux-pca954x.c b/drivers/i2c/muxes/i2c-mux-pca954x.c
> index 6c21b92860f0..fef95fa57eb7 100644
> --- a/drivers/i2c/muxes/i2c-mux-pca954x.c
> +++ b/drivers/i2c/muxes/i2c-mux-pca954x.c
> @@ -255,9 +255,23 @@ static int pca954x_probe(struct device *dev)
>  	return ret;
>  }
>  
> +static const struct of_device_id pca954x_dt_ids[] = {
> +	{ .compatible = "nxp,pca9540", .data = (const void *)pca_9540 },
> +	{ .compatible = "nxp,pca9542", .data = (const void *)pca_9542 },
> +	{ .compatible = "nxp,pca9543", .data = (const void *)pca_9543 },
> +	{ .compatible = "nxp,pca9544", .data = (const void *)pca_9544 },
> +	{ .compatible = "nxp,pca9545", .data = (const void *)pca_9545 },
> +	{ .compatible = "nxp,pca9546", .data = (const void *)pca_9546 },
> +	{ .compatible = "nxp,pca9547", .data = (const void *)pca_9547 },
> +	{ .compatible = "nxp,pca9548", .data = (const void *)pca_9548 },

Could you elaborate why this is necessary? Matches on the I2C bus are
found by device_match_of_modalias(), which will take care to remove
the vendor string and then compare pca954x::id_table, which lists the
same devices that are added here.

Cheers,
Ahmad

> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, pca954x_of_match);
> +
>  static struct driver pca954x_driver = {
>  	.name	= "pca954x",
>  	.probe		= pca954x_probe,
> +	.of_compatible	= DRV_OF_COMPAT(pca954x_dt_ids),
>  	.id_table	= pca954x_id,
>  };
>  device_i2c_driver(pca954x_driver);
> 
> ---
> base-commit: cd2f24268402207a20467ddc41be9865a73ca4f8
> change-id: 20231222-pca954x-of-dd6da5a25622
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



