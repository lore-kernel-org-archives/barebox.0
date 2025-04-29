Delivery-date: Tue, 29 Apr 2025 11:10:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9gyi-000Rqb-0c
	for lore@lore.pengutronix.de;
	Tue, 29 Apr 2025 11:10:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9gyh-0006iE-C1
	for lore@pengutronix.de; Tue, 29 Apr 2025 11:10:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cp0im8CyIngp5NHjvlmoi2hbia7VnDyTIozUWjhh2rw=; b=Iri34PERBpFe46QQCDjxd9tJLT
	ZbXWVG3p+1lnNhHMihvlFbxCfzCmN5S2I+6J/V6YRBBPBuRoSpHcN/dtrPC0Pg4SSqP+ypulJnFQj
	ySeBYPMoUnvVik7nn43vEqR34A/VqguNN4JeAQURQTwNN9NdEob1ggxgktlR3zMDZAgRGc143H0Gz
	ADXQeZJNw3fafBiD0rWQXmPQ2kfKOsNCzV0cAO5rtPXuDpgrko/12Q6xq217j4ay2XKZyyk/3VLs6
	0v2wmTGVEudY/o0lDPY4fewxqpcRwa8BfL9d9RU5SKaXlBfLFOAN1xUqwfdzI38SyfZZ7FI1t7N4B
	3CqJvcjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9gy2-000000094Mc-0kqb;
	Tue, 29 Apr 2025 09:09:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9gxI-000000094GL-1pSe
	for barebox@bombadil.infradead.org;
	Tue, 29 Apr 2025 09:08:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=cp0im8CyIngp5NHjvlmoi2hbia7VnDyTIozUWjhh2rw=; b=Rng8/Wra9qC0qD5VeE8gTevIJp
	Wv9zrn4QLot/mL2dSKhJH8muaIOq0eaL0EOONYAaSrhZnvJDA4xpCgJLaH0+7TgABNFYlVmLA71lC
	HWSts6qhw8Lzf2QFH5j/natrceJfV6GY6gGSg739Di1U8QocbcTO7ipdOWo7SUIqmaM+vyAsJtFj0
	Iw0SrkZWrwrjMwYVJ7qeutbOOJi6txPf1E7Opt7kxDYWlYpG/raXY0QQGcVQUqaVo8jfxZF3qHABQ
	lFMk1QUYHATddAad5FXK2gMh7ZQHeuof62vNrnwQTpvoNbv9+LS7sKVJRzPt0KFC3fIVnOrMM2Owi
	+nUnNJwA==;
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u9gxF-0000000DEvb-0yaX
	for barebox@lists.infradead.org;
	Tue, 29 Apr 2025 09:08:43 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-43edecbfb46so36205175e9.0
        for <barebox@lists.infradead.org>; Tue, 29 Apr 2025 02:08:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745917718; x=1746522518; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cp0im8CyIngp5NHjvlmoi2hbia7VnDyTIozUWjhh2rw=;
        b=IgFxOBhd3wIj40fDDz/fbPWuHf4gMrC6V6FgFatD6S3dI78AvOlZT74/JOeeuWISSK
         cjzLgvpsRRD6DFKH4j9nnsbakwS225rzGCCpcGxP5XB6aiHnzxChRwM7inWaw16ZaqNj
         VVqBDaTq0ev3AvtIreTQIMCWqJR39sYjfhLTDG0hFqQ/4hYJH8osDukta0EBrS3DFmNv
         2Lilv5Yb7Ru/03dlOSZ4ROxuTIEwOxiT6xvjyq3+BRo6h9Hoy6BMHck3TN1w8Lw3B8A+
         2pkhoU+H+lRGPbSxrsxA9OxW25bifMbJ2ot6C7h5GE8mVfFF2VV2BeJqqJer5xJJA7di
         zuVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745917718; x=1746522518;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cp0im8CyIngp5NHjvlmoi2hbia7VnDyTIozUWjhh2rw=;
        b=Ell4W8Zf7DlUrcOdZSd+mu/64u5qwf/ZC0o0+UZ/mJuGcbeT9reP8eb6Hb4d2VrEG0
         SWeqJQ9e26jN4/c7rGrNVkcZQT6GoZBSfZnwpF0eKqKNS/55z9dqQIjjyzRlfaMauUqo
         qb2u0S0hScg9Dm2ulcKUz6zcOHrmqBVrJuahsDbkVwNBTU7u8O+al9DUS2VwX9xAs4eW
         Y3rnJxJbKUJdukMFKT6rY9k9y7VajLkjNzVGThhY5AVYd2Vd5/Y2ZN00YGu2OSXAz3UW
         cFNUsvhwnP/arZD6FB+eXZtyu7e1V1HJnHlICTPSGwK2BcZEJj06JEUlgkLfJzT69upX
         DiGA==
X-Gm-Message-State: AOJu0Yyb+Yl764FfIJA3wYVD4Sx4P7EA/KBj4N+lQmxKjaJffrDpnRGV
	w95aS8344kxbf1Q7EknGCy5D2AwjDy8HS29EbjWW/VKO17TR8wzk8/LuL49ptEQ=
X-Gm-Gg: ASbGncujUy+Up5F6DQg6Rz8mKDYzzYyDfpBZJAA/BJcOvK1c5AXURAjDdbZDA6xPfY6
	WcraENamXwDG27+H9gkYKtXtZjG7huIHvUef3f6GHIrWEM7ZUZUwPOLpSWV0WIHHvYwD4rsnBeD
	GScUW/AB0dTEWCtzbMaWzLTWSxX0YU/SQRI/FDiVQpdzqcXb0SW5mwUECoX7AYeVznSGRCoT40Q
	7trz02jHW7Hl78+P9tJVpZKgZfoGCCjbqhb1cpWmWRDNxAz55XGbcTpVVTw68xI1GCm7QadIwMi
	zOMrNIYGoE/ZPgu/zvyEjn7mR21CwbrPGWGENi/1XlHlGbEpXE6GA0VyD7dNTaF+c8K6o6BsFfl
	6lJY=
X-Google-Smtp-Source: AGHT+IHW2PtChCkDD66KudFlnee4qhPnIqWKlqU0Cx9ElFAOe6TqQnPMlKWU2SCfSDTzW8V7J5uiuQ==
X-Received: by 2002:a05:600c:4708:b0:43d:26e3:f2f6 with SMTP id 5b1f17b1804b1-440ab77d2b4mr88702805e9.5.1745917717672;
        Tue, 29 Apr 2025 02:08:37 -0700 (PDT)
Received: from mai.linaro.org (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4409d2aab65sm180822165e9.17.2025.04.29.02.08.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 02:08:37 -0700 (PDT)
Date: Tue, 29 Apr 2025 11:08:35 +0200
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aBCXEyLrpWJpFmmN@mai.linaro.org>
References: <20250422052635.3423961-1-a.fatoum@pengutronix.de>
 <20250422052635.3423961-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250422052635.3423961-3-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_100841_447535_39910399 
X-CRM114-Status: GOOD (  21.90  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/9] clocksource: ti-dm: make available in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Apr 22, 2025 at 07:26:28AM +0200, Ahmad Fatoum wrote:
> Now that there's clocksource framework support in PBL, let's make
> available the first clocksource driver for use by OMAP HSMMC.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-omap/Kconfig        |  1 +
>  drivers/clocksource/Makefile      |  2 +-
>  drivers/clocksource/timer-ti-dm.c | 19 +++++++++++++------
>  include/mach/omap/am33xx-clock.h  |  3 +++
>  4 files changed, 18 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
> index 6c4e9d748d61..e7a9b331125d 100644
> --- a/arch/arm/mach-omap/Kconfig
> +++ b/arch/arm/mach-omap/Kconfig
> @@ -40,6 +40,7 @@ config ARCH_AM33XX
>  	select CPU_V7
>  	select GENERIC_GPIO
>  	select CLOCKSOURCE_TI_DM
> +	select PBL_CLOCKSOURCE
>  	help
>  	  Say Y here if you are using Texas Instrument's AM33xx based platform
>  
> diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
> index eceaa990d43d..dff825565072 100644
> --- a/drivers/clocksource/Makefile
> +++ b/drivers/clocksource/Makefile
> @@ -20,7 +20,7 @@ endif
>  obj-$(CONFIG_CLOCKSOURCE_ARM_GLOBAL_TIMER) += arm_global_timer.o
>  obj-$(CONFIG_CLOCKSOURCE_IMX_GPT) += timer-imx-gpt.o
>  obj-$(CONFIG_CLOCKSOURCE_DW_APB_TIMER) += dw_apb_timer.o
> -obj-$(CONFIG_CLOCKSOURCE_TI_DM) += timer-ti-dm.o
> +obj-pbl-$(CONFIG_CLOCKSOURCE_TI_DM) += timer-ti-dm.o
>  obj-$(CONFIG_CLOCKSOURCE_TI_32K) += timer-ti-32k.o
>  obj-$(CONFIG_CLINT_TIMER) += timer-clint.o
>  obj-$(CONFIG_RISCV_TIMER) += timer-riscv.o
> diff --git a/drivers/clocksource/timer-ti-dm.c b/drivers/clocksource/timer-ti-dm.c
> index eb658402f58d..1090b96a0e94 100644
> --- a/drivers/clocksource/timer-ti-dm.c
> +++ b/drivers/clocksource/timer-ti-dm.c
> @@ -69,6 +69,18 @@ struct omap_dmtimer_data {
>  	int (*get_clock)(struct device *dev);
>  };
>  
> +int omap_dmtimer_init(void __iomem *mmio_start, unsigned clk_speed)
> +{
> +	base = mmio_start;
> +
> +	dmtimer_cs.mult = clocksource_hz2mult(clk_speed, dmtimer_cs.shift);
> +
> +	/* Enable counter */
> +	writel(0x3, base + TCLR);
> +
> +	return init_clock(&dmtimer_cs);
> +}

Can you take the opportunity to fix the function prototype with the correct types 'u32' ?

And replacing the litteral 0x3 with a macro ?

> +
>  static int omap_dmtimer_probe(struct device *dev)
>  {
>  	struct resource *iores;
> @@ -90,12 +102,7 @@ static int omap_dmtimer_probe(struct device *dev)
>  	if (clk_speed < 0)
>  		return clk_speed;
>  
> -	dmtimer_cs.mult = clocksource_hz2mult(clk_speed, dmtimer_cs.shift);
> -
> -	/* Enable counter */
> -	writel(0x3, base + TCLR);
> -
> -	return init_clock(&dmtimer_cs);
> +	return omap_dmtimer_init(IOMEM(iores->start), clk_speed);
>  }
>  
>  static int am335x_get_clock(struct device *dev)
> diff --git a/include/mach/omap/am33xx-clock.h b/include/mach/omap/am33xx-clock.h
> index af47a0f3e77a..b064337ac4f8 100644
> --- a/include/mach/omap/am33xx-clock.h
> +++ b/include/mach/omap/am33xx-clock.h
> @@ -191,4 +191,7 @@ void am33xx_pll_init(int mpupll_M, int ddrpll_M);
>  void am33xx_enable_ddr_clocks(void);
>  int am33xx_get_osc_clock(void);
>  
> +int omap_dmtimer_init(void __iomem *mmio_start,
> +		      unsigned clk_speed);
> +
>  #endif  /* endif _AM33XX_CLOCKS_H_ */
> -- 
> 2.39.5
> 
> 
> 

-- 

 <http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog


