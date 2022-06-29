Delivery-date: Wed, 29 Jun 2022 08:52:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RYZ-000wkb-9J
	for lore@lore.pengutronix.de; Wed, 29 Jun 2022 08:52:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RYa-00008P-NJ
	for lore@pengutronix.de; Wed, 29 Jun 2022 08:52:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vixNFSal7J2q/RyRF/MGls8qXJ/k1dYkobNLizdRV0w=; b=dy0KWCy8GK6BWBETVe2aQBZx/L
	sn7Fah0/nbk0Rp6nUsN5wp5wFiacxrQ/1jwtz3YI6O5mtk2Jvkxuj+EVLCGrp5IRgGfJDcpcm8fwK
	3kewRKyPqaJb8AaPJa5KOmgMz1ryGWSRCjPZshIuxB9IdNc2kcbz6TUGW9BtMyvm+NVTLZkATGweL
	fZOkpbwvPCc8DR/v2998/o37cEcly/XR2CFgeZeBqHiJqf9sqEpeY6VhZZvkemNvt5431ppbdr2pc
	lTPlAcw/k3sApuZmEZtAC5n2JC2R0javG+Xv/aAtmDQG5bEHglVkH5KzZIg6vhIRQgqrpJAUVsZKN
	bMDK0yhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RXN-009tsZ-UG; Wed, 29 Jun 2022 06:50:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RXD-009toT-Lo
	for barebox@lists.infradead.org; Wed, 29 Jun 2022 06:50:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o6RXC-00082X-EP; Wed, 29 Jun 2022 08:50:46 +0200
Message-ID: <e7353786-07e5-206b-ec09-9dd982653687@pengutronix.de>
Date: Wed, 29 Jun 2022 08:50:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sam Ravnborg <sam@ravnborg.org>, barebox@lists.infradead.org
References: <20220628203849.2785611-1-sam@ravnborg.org>
 <20220628203849.2785611-3-sam@ravnborg.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220628203849.2785611-3-sam@ravnborg.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_235047_793995_C23671D5 
X-CRM114-Status: GOOD (  18.39  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 02/11] ARM: at91: Make sdramc.h useable in multi image
 builds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 28.06.22 22:38, Sam Ravnborg wrote:
> There is no need to ifdef out all the static inlines as the headers
> no longer conflicts. Drop the ifdefs so we can now use the header
> in multi image builds.
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  .../mach-at91/include/mach/at91sam9_sdramc.h  | 45 ++-----------------
>  1 file changed, 4 insertions(+), 41 deletions(-)
> 
> diff --git a/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h b/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
> index 80effe214..3cda10165 100644
> --- a/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
> +++ b/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
> @@ -81,6 +81,10 @@
>  
>  #ifndef __ASSEMBLY__
>  #include <io.h>
> +#include <mach/at91sam9260.h>
> +#include <mach/at91sam9261.h>
> +#include <mach/at91sam9263.h>
> +
>  static inline u32 at91_get_sdram_size(void *base)
>  {
>  	u32 val;
> @@ -107,14 +111,11 @@ static inline u32 at91_get_sdram_size(void *base)
>  	return size;
>  }
>  
> -
>  static inline bool at91_is_low_power_sdram(void *base)
>  {
>  	return readl(base + AT91_SDRAMC_MDR) & AT91_SDRAMC_MD_LOW_POWER_SDRAM;
>  }
>  
> -#ifdef CONFIG_SOC_AT91SAM9260
> -#include <mach/at91sam9260.h>
>  static inline u32 at91sam9260_get_sdram_size(void)
>  {
>  	return at91_get_sdram_size(IOMEM(AT91SAM9260_BASE_SDRAMC));
> @@ -124,20 +125,7 @@ static inline bool at91sam9260_is_low_power_sdram(void)
>  {
>  	return at91_is_low_power_sdram(IOMEM(AT91SAM9260_BASE_SDRAMC));
>  }
> -#else
> -static inline u32 at91sam9260_get_sdram_size(void)
> -{
> -	return 0;
> -}
> -
> -static inline bool at91sam9260_is_low_power_sdram(void)
> -{
> -	return false;
> -}
> -#endif
>  
> -#ifdef CONFIG_SOC_AT91SAM9261
> -#include <mach/at91sam9261.h>
>  static inline u32 at91sam9261_get_sdram_size(void)
>  {
>  	return at91_get_sdram_size(IOMEM(AT91SAM9261_BASE_SDRAMC));
> @@ -147,20 +135,7 @@ static inline bool at91sam9261_is_low_power_sdram(void)
>  {
>  	return at91_is_low_power_sdram(IOMEM(AT91SAM9261_BASE_SDRAMC));
>  }
> -#else
> -static inline u32 at91sam9261_get_sdram_size(void)
> -{
> -	return 0;
> -}
> -
> -static inline bool at91sam9261_is_low_power_sdram(void)
> -{
> -	return false;
> -}
> -#endif
>  
> -#ifdef CONFIG_SOC_AT91SAM9263
> -#include <mach/at91sam9263.h>
>  static inline u32 at91sam9263_get_sdram_size(int bank)
>  {
>  	switch (bank) {
> @@ -184,18 +159,6 @@ static inline bool at91sam9263_is_low_power_sdram(int bank)
>  		return false;
>  	}
>  }
> -#else
> -static inline u32 at91sam9263_get_sdram_size(int bank)
> -{
> -	return 0;
> -}
> -
> -static inline bool at91sam9263_is_low_power_sdram(void)
> -{
> -	return false;
> -}
> -#endif
>  
>  #endif
> -
>  #endif


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


