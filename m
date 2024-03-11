Delivery-date: Mon, 11 Mar 2024 09:15:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjaoG-000ls0-39
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 09:15:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjaoG-00088x-DF
	for lore@pengutronix.de; Mon, 11 Mar 2024 09:15:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5J9Gamw98d63ynHNgyEyAj0XlzuOdm8MAlF3DMLvHuQ=; b=Z1JvfLNjdq0XFhxkHZXFTNv089
	+AZXFQ4OLBs+y/JyoOfBWMZZ7Iqrx6ZxCCE3xMcyzVKlVvzZC3MuL3ERNudjcXrz+9rmoWdKNtU44
	Tp73oqOc0/J6YMZNyCmHuMwPjudHpb5dLaP8eVfQtiXgrn7UFsNeGSfLsxxVsKEUCd235xbwNpPww
	78lZG4u799YUTz8worGEvKR7YFBfIt6pHvoQbC8G//kDTy4GDeIX5pvpfB4DiBLDI7/WuZcUy9PhU
	Jzl5HCZUpbVZLvZ6P6KTpCC7K4wsL0IVqX4R8BoQ2jw0yBEDTX+o8kDkkgjIbYQR8kK1O3F1PCWCv
	R5T/lGRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjano-00000000aio-3ow4;
	Mon, 11 Mar 2024 08:14:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjanl-00000000ahh-1JJb
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 08:14:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rjanj-0007nG-V4; Mon, 11 Mar 2024 09:14:28 +0100
Message-ID: <83c5089c-416b-4bf9-8b4b-063474943177@pengutronix.de>
Date: Mon, 11 Mar 2024 09:14:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>, barebox@lists.infradead.org
References: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-0-6d50c90485f3@pengutronix.de>
 <20240308-v2024-02-0-topic-arasan-hs200-support-v1-5-6d50c90485f3@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240308-v2024-02-0-topic-arasan-hs200-support-v1-5-6d50c90485f3@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_011429_459555_433F02CB 
X-CRM114-Status: GOOD (  16.26  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 05/12] mci: arasan: register sdcard/sampleclk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 08.03.24 12:17, Steffen Trumtrar wrote:
> +static unsigned long arasan_zynqmp_sampleclk_recalc_rate(struct clk_hw *hw,
> +							 unsigned long parent_rate)
> +{
> +	return 0;

In HS200 mode, Linux reports this as 200MHz. Returning zero here is confusing,
even if no one depends on it. What we should be doing, I think, is set

  host->actual_clock = host->clock

at the end of mci_set_ios() and return host->sdhci.mci->actual_clock here.

> +static unsigned long arasan_zynqmp_sdcardclk_recalc_rate(struct clk_hw *hw,
> +							 unsigned long parent_rate)
> +{
> +	return 0;
> +};

Same here

> +static int arasan_sdhci_register_sdclk(struct sdhci_arasan_clk_data *sdhci_arasan,
> +				       struct clk *clk_xin,
> +				       struct device *dev)
> +{
> +	struct device_node *np = dev->of_node;
> +	u32 num_clks = 0;
> +	int ret;
> +
> +	/* Providing a clock to the PHY is optional; no error if missing */
> +	if (of_property_read_u32(np, "#clock-cells", &num_clks) < 0)
> +		return 0;
> +
> +	ret = arasan_sdhci_register_sdcardclk(sdhci_arasan, clk_xin, dev);
> +	if (ret)
> +		return ret;
> +
> +	if (num_clks) {
> +		ret = arasan_sdhci_register_sampleclk(sdhci_arasan, clk_xin,
> +						      dev);
		s/ret = /return/

While at it, you can drop the braces.


> +	}
> +
> +	return 0;
> +}
> +
>  /**
>   * arasan_dt_parse_clk_phases - Read Clock Delay values from DT
>   *
> @@ -400,6 +703,8 @@ static int arasan_sdhci_probe(struct device *dev)
>  	mci->f_max = clk_get_rate(clk_xin);
>  	mci->f_min = 50000000 / 256;
>  
> +	arasan_sdhci_register_sdclk(&arasan_sdhci->clk_data, clk_xin, dev);
> +
>  	arasan_dt_parse_clk_phases(dev, &arasan_sdhci->clk_data);
>  
>  	/* parse board supported bus width capabilities */
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



