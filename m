Delivery-date: Thu, 27 Mar 2025 07:42:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txgwh-004lB8-0q
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 07:42:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txgwg-0005Qd-Hz
	for lore@pengutronix.de; Thu, 27 Mar 2025 07:42:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ebCHizWRMsQDb7Ly+HQdkj7lWwrqo9jqjSmbcp1svM4=; b=nsBtHJcZcBozhIxt8qp+BXPNE3
	zUP2lh4lW6r3W9pWRtJGIL87EBXqF50euHJ/ADXFLOTm5k6Odvr15PcNFsk4PeYc2BkEStJwH9BCC
	SL58XoPr91cCXEcvVsFr6PdvIwZn6bCAx9lJSQ+f40moeO7qHzmpdBhGtkDE/9XRqjQp3fr8Hz0l1
	YXPVJEFEEf2M64pMg7oLqMgkgvJZKBdxfVCLKjUFW/3aoEfUGF550cEjWJtv9Qk5DWxx5ziuR1aDY
	BH5dkhKGY6xKQI3cU6BgsUD64NjXGd2Dyl7KM2yDqfeHL3H6woEV74Xlqu+wQohQJAknY/386ZxFW
	LvLgv6aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txgw2-0000000AHZR-0YSR;
	Thu, 27 Mar 2025 06:41:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txgvy-0000000AHYw-38RA
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 06:41:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txgvw-0005GJ-ER; Thu, 27 Mar 2025 07:41:44 +0100
Message-ID: <03e0271b-8912-4c26-86d8-064236350268@pengutronix.de>
Date: Thu, 27 Mar 2025 07:41:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 barebox@lists.infradead.org
References: <20250327053801.52356-1-eagle.alexander923@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250327053801.52356-1-eagle.alexander923@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_234146_794735_7CF5E166 
X-CRM114-Status: GOOD (  25.26  )
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
Subject: Re: [PATCH] mci: atmel_mci: Merge at91_mci_bio_set_highcapacity()
 with at91_mci_bio_init()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Alexander,

On 27.03.25 06:38, Alexander Shiyan wrote:
> The high-capacity parameter is always set to one of the possible values
> at initialization, so there is no need to have a separate function to
> configure it.

here's an idea from IRC by the way to get rid of the parameter:

ye, that [checking CSD] is what is used normally, but the problem is doing it
while in transmission state.

  I looked into Part1_Physical_Layer_Simplified_Specification_Ver9.00.pdf
  again and for the first time I see
  "Figure 4-13 : SD Memory Card State Diagram (data transfer mode)"

  Apparently, you don't necessarily need CMD0 (Go idle) to be able to get to a
  state where you can execute CMD9 (SEND CSD), but one could also execute CMD7
  (SELECT CARD) to deselect card and then run CMD9 and get back to transmission mode

  One would need to issue a CMD3 (SEND_RELATIVE_ADDR) to get the RCA to communicate
  with the correct SD (it's argument to CMD9), but this might work.

Perhaps you're interested in trying this out :D

Cheers,
Ahmad

> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/mach-at91/at91sam9_xload_mmc.c |  5 +----
>  arch/arm/mach-at91/xload.c              |  2 +-
>  drivers/mci/atmel_mci_pbl.c             | 10 +++-------
>  include/mach/at91/xload.h               |  4 ++--
>  4 files changed, 7 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm/mach-at91/at91sam9_xload_mmc.c b/arch/arm/mach-at91/at91sam9_xload_mmc.c
> index 26f268ae91..e8cd72bd56 100644
> --- a/arch/arm/mach-at91/at91sam9_xload_mmc.c
> +++ b/arch/arm/mach-at91/at91sam9_xload_mmc.c
> @@ -94,15 +94,12 @@ void __noreturn sam9263_atmci_start_image(u32 mmc_id, unsigned int clock,
>  		at91_pmc_enable_periph_clock(IOMEM(AT91SAM926X_BASE_PMC),  AT91SAM9263_ID_MCI1);
>  	}
>  
> -	ret = at91_mci_bio_init(&bio, base, clock, (int)slot_b);
> +	ret = at91_mci_bio_init(&bio, base, clock, (int)slot_b, false);
>  	if (ret) {
>  		pr_err("atmci_start_image: bio init faild: %d\n", ret);
>  		goto out_panic;
>  	}
>  
> -	/* at91sam9x do not support high capacity */
> -	at91_mci_bio_set_highcapacity(false);
> -
>  	ret = pbl_fat_load(&bio, "barebox.bin", buf, SZ_16M);
>  	if (ret < 0) {
>  		pr_err("pbl_fat_load: error %d\n", ret);
> diff --git a/arch/arm/mach-at91/xload.c b/arch/arm/mach-at91/xload.c
> index 5d8105f07f..effe8802ee 100644
> --- a/arch/arm/mach-at91/xload.c
> +++ b/arch/arm/mach-at91/xload.c
> @@ -228,7 +228,7 @@ void __noreturn sama5d3_atmci_start_image(u32 r4, unsigned int clock,
>  
>  	sama5d3_pmc_enable_periph_clock(instance->id);
>  
> -	ret = at91_mci_bio_init(&bio, instance->base, clock, slot);
> +	ret = at91_mci_bio_init(&bio, instance->base, clock, slot, true);
>  	if (ret)
>  		goto out_panic;
>  
> diff --git a/drivers/mci/atmel_mci_pbl.c b/drivers/mci/atmel_mci_pbl.c
> index bd4faa4de5..c94a4240db 100644
> --- a/drivers/mci/atmel_mci_pbl.c
> +++ b/drivers/mci/atmel_mci_pbl.c
> @@ -83,7 +83,8 @@ static int at91_mci_bio_read(struct pbl_bio *bio, off_t start,
>  }
>  
>  int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
> -		      unsigned int clock, unsigned int slot)
> +		      unsigned int clock, unsigned int slot,
> +		      bool highcapacity_card)
>  {
>  	struct atmel_mci_priv *priv = &atmci_sdcard;
>  	struct atmel_mci *host = &priv->host;
> @@ -111,12 +112,7 @@ int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
>  
>  	atmci_common_set_ios(host, &ios);
>  
> -	priv->highcapacity_card = 1;
> +	priv->highcapacity_card = highcapacity_card;
>  
>  	return 0;
>  }
> -
> -void at91_mci_bio_set_highcapacity(bool highcapacity_card)
> -{
> -	atmci_sdcard.highcapacity_card = highcapacity_card;
> -}
> diff --git a/include/mach/at91/xload.h b/include/mach/at91/xload.h
> index d5fc7596fd..329ccc98eb 100644
> --- a/include/mach/at91/xload.h
> +++ b/include/mach/at91/xload.h
> @@ -12,8 +12,8 @@ void __noreturn sama5d3_atmci_start_image(u32 r4, unsigned int clock,
>  
>  int at91_sdhci_bio_init(struct pbl_bio *bio, void __iomem *base);
>  int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
> -		      unsigned int clock, unsigned int slot);
> -void at91_mci_bio_set_highcapacity(bool highcapacity_card);
> +		      unsigned int clock, unsigned int slot,
> +		      bool highcapacity_card);
>  
>  void __noreturn sam9263_atmci_start_image(u32 mmc_id, unsigned int clock,
>  					  bool slot_b);


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


