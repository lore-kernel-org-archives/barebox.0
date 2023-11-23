Delivery-date: Thu, 23 Nov 2023 11:55:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r67Mq-005kgC-0J
	for lore@lore.pengutronix.de;
	Thu, 23 Nov 2023 11:55:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r67Mq-0006Ed-2K
	for lore@pengutronix.de; Thu, 23 Nov 2023 11:55:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2UpkN9C/eAgqfCTLrga5q4gLL4khZ4HSQ2GwHtInWl8=; b=2lJbIWEgllYIsIhRxBqvmJlA5g
	wlKvVKrOVbGpypOqHW17B43OlBm+V/2r1dYBUexaWIcINyADCnoVTbcq+/6PW20920ijA7UruFt2X
	mpa2PhQNFMRXq5hDHAwEV/0zoNMo03W75zXdqujWD+ayRDBQ1USjeISEgILMv/ArtH+H0ftEBZGNj
	k0hj2RnaQCiNPjmF+sUKt5Z3h42reKfCqNHQPTaH+eGKOFnNl8kCJHsdQFiYOW+U+VLx34AW4XP94
	WZ4ZRc62B1zwKVdcrapw+YTXEMFjzjqxJS/m2YiYDoHhwbxg0YDETlh/WMIf7QAhzjIf59cZtGWUU
	YiRWy61A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r67LV-004R0S-0z;
	Thu, 23 Nov 2023 10:54:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r67LS-004R01-1D
	for barebox@lists.infradead.org;
	Thu, 23 Nov 2023 10:54:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r67LR-0005pL-0L
	for barebox@lists.infradead.org; Thu, 23 Nov 2023 11:54:05 +0100
Message-ID: <bdad3dff-a8d8-b9a3-ccba-0d6711362ce0@pengutronix.de>
Date: Thu, 23 Nov 2023 11:54:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <20231123103808.432548-1-a.fatoum@pengutronix.de>
 <20231123103808.432548-2-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231123103808.432548-2-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231123_025406_431452_B00B4E9F 
X-CRM114-Status: GOOD (  20.41  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] mci: stm32_sdmmc2: enable eMMC 52MHz DDR mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 23.11.23 11:38, Ahmad Fatoum wrote:
> Dual data rate can be enabled on STM32 SDMMC2 host by toggling a bit in
> the CLKRC register and avoiding clock bypass. Let's do that for a nice
> boost in throughput. Before:
> 
>   barebox@STM32MP157C-ED1:/ time cp /dev/mmc0.data /tmp
>   time: 2684ms
> 
> After:
> 
>   barebox@STM32MP157C-ED1:/ time cp /dev/mmc1.data /tmp
>   time: 1624ms

while reading a 100 MiB partition, i.e. 37.2 MiB/s -> 61.5 MiB/s.

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/mci/stm32_sdmmc2.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/mci/stm32_sdmmc2.c b/drivers/mci/stm32_sdmmc2.c
> index 90e969a867e6..1bfef1ccf0eb 100644
> --- a/drivers/mci/stm32_sdmmc2.c
> +++ b/drivers/mci/stm32_sdmmc2.c
> @@ -538,11 +538,14 @@ static void stm32_sdmmc2_set_ios(struct mci_host *mci, struct mci_ios *ios)
>  	struct stm32_sdmmc2_priv *priv = to_mci_host(mci);
>  	u32 desired = mci->clock;
>  	u32 sys_clock = clk_get_rate(priv->clk);
> -	u32 clk = 0;
> +	u32 clk = 0, ddr = 0;
>  
>  	dev_dbg(priv->dev, "%s: bus_width = %d, clock = %d\n", __func__,
>  		mci->bus_width, mci->clock);
>  
> +	if (mci_timing_is_ddr(ios->timing))
> +		ddr = SDMMC_CLKCR_DDR;
> +
>  	if (mci->clock)
>  		stm32_sdmmc2_pwron(priv);
>  	else
> @@ -555,13 +558,15 @@ static void stm32_sdmmc2_set_ios(struct mci_host *mci, struct mci_ios *ios)
>  	 * clk_div > 0 and NEGEDGE = 1 => command and data generated on
>  	 * SDMMCCLK falling edge
>  	 */
> -	if (desired && (sys_clock > desired ||
> +	if (desired && (sys_clock > desired || ddr ||
>  			IS_RISING_EDGE(priv->clk_reg_msk))) {
>  		clk = DIV_ROUND_UP(sys_clock, 2 * desired);
>  		if (clk > SDMMC_CLKCR_CLKDIV_MAX)
>  			clk = SDMMC_CLKCR_CLKDIV_MAX;
>  	}
>  
> +	clk |= ddr;
> +
>  	if (mci->bus_width == MMC_BUS_WIDTH_4)
>  		clk |= SDMMC_CLKCR_WIDBUS_4;
>  	if (mci->bus_width == MMC_BUS_WIDTH_8)
> @@ -624,6 +629,11 @@ static int stm32_sdmmc2_probe(struct amba_device *adev,
>  	if (mci->f_max >= 52000000)
>  		mci->host_caps |= MMC_CAP_MMC_HIGHSPEED_52MHZ;
>  
> +	if (of_property_read_bool(np, "mmc-ddr-3_3v"))
> +		mci->host_caps |= MMC_CAP_MMC_3_3V_DDR;
> +	if (of_property_read_bool(np, "mmc-ddr-1_8v"))
> +		mci->host_caps |= MMC_CAP_MMC_1_8V_DDR;
> +
>  	return mci_register(&priv->mci);
>  
>  priv_free:

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



