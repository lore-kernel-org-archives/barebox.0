Delivery-date: Tue, 10 Dec 2024 16:16:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tL1yY-006QE7-0U
	for lore@lore.pengutronix.de;
	Tue, 10 Dec 2024 16:16:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tL1yY-00024H-3p
	for lore@pengutronix.de; Tue, 10 Dec 2024 16:16:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6nC8NHE3n1TdOn8ED2vulYwYFek+zK6wIaPIvDn28X8=; b=IvLBGDsKFKuWtmNst3QumaucMQ
	d3h2fzrUhv4Q6APMGkQyUMsnnYrAfKEDp438Fdyu1sqAapvxj/6ecKepbG66eCiXBCo1qayjDLYsg
	ldIdgPwQtTGfYoNxLoYafvdwavP7r48VzZzrkiM2EeZWpatb/4g82/rpJexIxKlYs+M5IYXsL6gCz
	98NqT3lLMAL/VeabvMtNohXWzXjkTtY0C7+slTuD+z7DC27W9k82IDwKGyqHIrRJPuo7/5eBAUmAP
	mXiEogqVxikz4vIgda1aoIPZQPYwoUu9S4BHT7C2NciG3i7AH4iVtyGmQ352fXvvzfI/X7cKwGQ2v
	Lt+IRWPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL1xn-0000000BuVf-1fjU;
	Tue, 10 Dec 2024 15:15:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL1wp-0000000BuPI-3txU
	for barebox@lists.infradead.org;
	Tue, 10 Dec 2024 15:14:53 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tL1wo-0001mY-Ip; Tue, 10 Dec 2024 16:14:50 +0100
Message-ID: <5bf5849c-fdee-4b66-a819-dea718143e17@pengutronix.de>
Date: Tue, 10 Dec 2024 16:14:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jules Maselbas <jmaselbas@zdiv.net>, barebox@lists.infradead.org
References: <20241107145722.5145-1-jmaselbas@zdiv.net>
 <20241107145722.5145-6-jmaselbas@zdiv.net>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241107145722.5145-6-jmaselbas@zdiv.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_071451_969517_771D96EA 
X-CRM114-Status: GOOD (  14.65  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/6] mci: Add sunxi-mmc driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Jules,

On 07.11.24 15:57, Jules Maselbas wrote:
> This driver is adapted from different sources: Linux, u-boot and p-boot.
> The latter, p-boot (forked from u-boot), is a bootloader for pinephones.
> 
> It currently only support PIO xfer but could be further improved to also
> support DMA xfer. This driver is split in three files so it can be used
> by the PBL and barebox proper.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>

With below nitpick addressed:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> +static int sunxi_mmc_probe(struct device *dev)
> +{
> +	struct device_node *np = dev->of_node;
> +	struct resource *iores;
> +	struct sunxi_mmc_host *host;
> +	unsigned int f_min, f_max;
> +	int ret;
> +
> +	iores = dev_request_mem_resource(dev, 0);
> +	if (IS_ERR(iores))
> +		return PTR_ERR(iores);
> +	host = xzalloc(sizeof(*host));
> +	host->base = IOMEM(iores->start);
> +	dma_set_mask(dev, DMA_BIT_MASK(32));
> +	host->cfg = device_get_match_data(dev);
> +
> +	host->gpio_cd = of_get_named_gpio(np, "cd-gpios", 0);

Please use gpiod_get & gpiod_get_valute, which will handle details like active low for you.

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


