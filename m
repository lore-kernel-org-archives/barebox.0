Delivery-date: Wed, 02 Jun 2021 12:32:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loOAp-0001E5-62
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 12:32:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loOAk-00072N-Mo
	for lore@pengutronix.de; Wed, 02 Jun 2021 12:32:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dOWXD2L+2cI1vxGthF9jEetTjubjvRmoX1sxAO34U6c=; b=M4b6YVrbn3IIpvkdLENdKNBF+1
	lGV0WtfAuhXl/hq24fqGzRkq5sgQpzb4xYh1ov7oQ1CrfEXCZc+7MLkRvTMaFimghJ7dwntjMs1NW
	Z5uukdZdGOs9O1+i6e0yfbwLJNJSnoDo2RpRw4ax0TLxUMR5Fe7cpO0hDaZ0dzYFztDi5i2FxgY7R
	zCn82INCN2Pr8DQ1lxjC7IMRk6vbxtfMFTzmW4BJPOZgh3wHgq9virK6g6t1GFytNrjQFq8SpJgaL
	uhuMSdlOJo9eEO5ORaDD7iJvvSD82rUL0cGJM1zfZuw2cXJ39Z9EnrUrddx6wDG/lP2jt3lXW0FAI
	misGzhGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loO9G-003LB8-Ms; Wed, 02 Jun 2021 10:30:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loO8j-003KwQ-9I
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 10:30:26 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1loO8i-0006Xt-2w; Wed, 02 Jun 2021 12:30:20 +0200
To: barebox@lists.infradead.org
Cc: mgr@pengutronix.de, ore@pengutronix.de
References: <20210602102524.20034-1-a.fatoum@pengutronix.de>
 <20210602102524.20034-2-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ceb0063e-71cd-8330-109c-b377072efee9@pengutronix.de>
Date: Wed, 2 Jun 2021 12:30:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210602102524.20034-2-a.fatoum@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_033021_359358_3E593B53 
X-CRM114-Status: GOOD (  29.51  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] ARM: at91: mmc-xload: allow overriding card capacity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

I see now that I botched, the title "mmc-xload" instead of "xload-mmc".
@Sascha, please tell me if I should resend.

On 02.06.21 12:25, Ahmad Fatoum wrote:
> The PBL MMC driver works with the assumption that the BootROM has left
> the SD-Card in transfer mode. There seems to be no definitive way
> to find out whether a running card is high capacity (> 2G) or not,
> but we need this info when reading, because default capacities accept
> their read offset in bytes while high capacity deal in 512 byte blocks.
> 
> For i.MX, this is elegantly solved by just reading from sector 0.
> For AT91, we chainload barebox from FAT, so we need to seek around.
> So far, we just had an assumption buried in the driver that we are
> always highcapacity.
> 
> Export a knob to change this, so we can move the hardcoding from
> driver to board code, where it's more prominent. This is done
> in a follow-up commit.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-at91/include/mach/xload.h | 3 +++
>  drivers/mci/atmel-sdhci-pbl.c           | 8 +++++++-
>  drivers/mci/atmel_mci_pbl.c             | 8 +++++++-
>  3 files changed, 17 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/mach-at91/include/mach/xload.h b/arch/arm/mach-at91/include/mach/xload.h
> index bbc70af2108a..038f32554568 100644
> --- a/arch/arm/mach-at91/include/mach/xload.h
> +++ b/arch/arm/mach-at91/include/mach/xload.h
> @@ -12,4 +12,7 @@ int at91_sdhci_bio_init(struct pbl_bio *bio, void __iomem *base);
>  int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
>  		      unsigned int clock, unsigned int slot);
>  
> +void at91_mci_set_highcapacity(struct pbl_bio *bio, bool highcap);
> +void at91_sdhci_set_highcapacity(struct pbl_bio *bio, bool highcap);
> +
>  #endif /* __MACH_XLOAD_H */
> diff --git a/drivers/mci/atmel-sdhci-pbl.c b/drivers/mci/atmel-sdhci-pbl.c
> index 626e4008fe85..317f26f8af0d 100644
> --- a/drivers/mci/atmel-sdhci-pbl.c
> +++ b/drivers/mci/atmel-sdhci-pbl.c
> @@ -99,6 +99,12 @@ static int at91_sdhci_bio_read(struct pbl_bio *bio, off_t start,
>  	return blocks_done;
>  }
>  
> +void at91_sdhci_set_highcapacity(struct pbl_bio *bio, bool highcap)
> +{
> +	struct at91_sdhci_priv *priv = bio->priv;
> +	priv->highcapacity_card = highcap;
> +}
> +
>  static struct at91_sdhci_priv atmel_sdcard;
>  
>  int at91_sdhci_bio_init(struct pbl_bio *bio, void __iomem *base)
> @@ -122,7 +128,7 @@ int at91_sdhci_bio_init(struct pbl_bio *bio, void __iomem *base)
>  	ret = at91_sdhci_set_ios(host, &ios);
>  
>  	 // FIXME can we determine this without leaving SD transfer mode?
> -	priv->highcapacity_card = 1;
> +	at91_sdhci_set_highcapacity(bio, true);
>  
>  	return 0;
>  }
> diff --git a/drivers/mci/atmel_mci_pbl.c b/drivers/mci/atmel_mci_pbl.c
> index 767d6f3ce2d7..82e45fd4e89e 100644
> --- a/drivers/mci/atmel_mci_pbl.c
> +++ b/drivers/mci/atmel_mci_pbl.c
> @@ -82,6 +82,12 @@ static int at91_mci_bio_read(struct pbl_bio *bio, off_t start,
>  	return blocks_done;
>  }
>  
> +void at91_mci_set_highcapacity(struct pbl_bio *bio, bool highcap)
> +{
> +	struct atmel_mci_priv *priv = bio->priv;
> +	priv->highcapacity_card = highcap;
> +}
> +
>  int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
>  		      unsigned int clock, unsigned int slot)
>  {
> @@ -110,7 +116,7 @@ int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
>  
>  	atmci_common_set_ios(host, &ios);
>  
> -	priv->highcapacity_card = 1;
> +	at91_mci_set_highcapacity(bio, true);
>  
>  	return 0;
>  }
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

