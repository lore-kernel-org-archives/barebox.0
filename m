Delivery-date: Wed, 29 Jun 2022 08:52:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RYK-000wjB-K7
	for lore@lore.pengutronix.de; Wed, 29 Jun 2022 08:52:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RYM-0008Vp-Le
	for lore@pengutronix.de; Wed, 29 Jun 2022 08:51:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9X5GA2JwZ95HpJO38Cd+SE0aUfdbei0nDRX3TH9Rh9Y=; b=O1JRFhr/I8MdUgFu/I728JbhDc
	fiUhnoK0ffbU3K+pBzXawKJ4OJiayIFBft6u26MHoHyd6WG0bPxv2cxobCPALnC89U3nMDIOg4TVH
	uDyONqtvV16PwaJuGUeA318GBsYg+m9Rgen0LcLkkaN/jtiGxK3DDOWSlzr8OY9VBJrNir6zPkdKY
	NTluiDVEhtRY58Rl9LJf6mBKx+KICkMUibUqWrON6KvM5O6HbQU/39CLxiK8Wjlmk5pucy2sQnUlA
	vgWSykUPNJvU5rr7sjYIGI40ieDuoW7Hl+uxLjA9bXe1hS58I6kfRW2GDgFg+JMaitcyu975K6M5j
	jUj0/zTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RXA-009tkR-A7; Wed, 29 Jun 2022 06:50:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RX3-009tim-DV
	for barebox@lists.infradead.org; Wed, 29 Jun 2022 06:50:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o6RX2-0007zC-7O; Wed, 29 Jun 2022 08:50:36 +0200
Message-ID: <58c085dd-aa5a-f655-1eb5-ed5f2f45dd9e@pengutronix.de>
Date: Wed, 29 Jun 2022 08:50:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sam Ravnborg <sam@ravnborg.org>, barebox@lists.infradead.org
References: <20220628203849.2785611-1-sam@ravnborg.org>
 <20220628203849.2785611-6-sam@ravnborg.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220628203849.2785611-6-sam@ravnborg.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_235037_493250_19BCC61F 
X-CRM114-Status: GOOD (  19.66  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 05/11] mci: atmel_mci: Add PBL helper to configure
 highcapacity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 28.06.22 22:38, Sam Ravnborg wrote:
> Older atmel SoC's like at91sam9263 do not support highcapacity SD cards.
> Add helper that can be used to disable highcapacity support
> in the PBL code - as probing for the SD card type is not an option.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> 
> Suggested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> ---
>  arch/arm/mach-at91/include/mach/xload.h | 1 +
>  drivers/mci/atmel_mci_pbl.c             | 5 +++++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/arch/arm/mach-at91/include/mach/xload.h b/arch/arm/mach-at91/include/mach/xload.h
> index e9336d59c..488279c1a 100644
> --- a/arch/arm/mach-at91/include/mach/xload.h
> +++ b/arch/arm/mach-at91/include/mach/xload.h
> @@ -13,5 +13,6 @@ void __noreturn sama5d3_atmci_start_image(u32 r4, unsigned int clock,
>  int at91_sdhci_bio_init(struct pbl_bio *bio, void __iomem *base);
>  int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
>  		      unsigned int clock, unsigned int slot);
> +void at91_mci_bio_set_highcapacity(bool highcapacity_card);
>  
>  #endif /* __MACH_XLOAD_H */
> diff --git a/drivers/mci/atmel_mci_pbl.c b/drivers/mci/atmel_mci_pbl.c
> index 767d6f3ce..65d8b3632 100644
> --- a/drivers/mci/atmel_mci_pbl.c
> +++ b/drivers/mci/atmel_mci_pbl.c
> @@ -114,3 +114,8 @@ int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
>  
>  	return 0;
>  }
> +
> +void at91_mci_bio_set_highcapacity(bool highcapacity_card)
> +{
> +	atmci_sdcard.highcapacity_card = highcapacity_card;
> +}


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


