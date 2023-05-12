Delivery-date: Fri, 12 May 2023 20:10:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxXDi-00FNLn-T7
	for lore@lore.pengutronix.de; Fri, 12 May 2023 20:10:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pxXDh-0000SQ-18
	for lore@pengutronix.de; Fri, 12 May 2023 20:10:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XP/67vT/4FXjMd0nJPnxhMoMR/8xSw416xDkvr8QQps=; b=2T/GyppqvnILrhCx7wWi7rqWK9
	rrQynmYUFxd1StC+/0o8PGRcy0IHqtatAfaMRQ9imWo/T5uTctdGnYQ+VOdXhoQA7Wsp+dKl9mokU
	7g1F9x3zNzJluVDLAlueP9K+n8wpp7qmStuFORz5CmiFMrTHKnCqGqwwXazpVt1cBEHN3Mnis8b4B
	sBJKHmfP5uBmI0zINLvjQZ3tIYlwy7LW7WTraQvYRm7in8TRuRK/7AZl/Koy7FaoRrW2yEVk50F/C
	/yJjDyV16D+iu0231y7+bVCP+s38zfElAZ7kL8yCKZHSKfxCF4YPYX2FM4LiHJOPOPxaFdv4cz/t4
	wvpnuSTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxXCZ-00Cdqv-30;
	Fri, 12 May 2023 18:09:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxXCW-00Cdpj-1a
	for barebox@lists.infradead.org;
	Fri, 12 May 2023 18:09:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pxXCV-0000H8-0K; Fri, 12 May 2023 20:09:07 +0200
Message-ID: <acf69b00-9c79-1c84-d076-a940b9a1f03a@pengutronix.de>
Date: Fri, 12 May 2023 20:09:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230512111008.1120833-1-s.hauer@pengutronix.de>
 <20230512111008.1120833-11-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230512111008.1120833-11-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_110908_529846_429FF80B 
X-CRM114-Status: GOOD (  26.28  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 10/27] ARM: i.MX: Drop HAB workaround
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 12.05.23 13:09, Sascha Hauer wrote:
> The i.MX HAB code on i.MX6 has to jump into ROM which happens to start
> at 0x0. To make that possible we used to map the ROM cached and jumped
> to it before the MMU is initialized. Instead, remap the ROM as needed
> in the HAB code so that we can safely jump into ROM with MMU enabled.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/mmu-early_32.c | 7 -------
>  drivers/hab/habv4.c         | 9 ++++++++-
>  2 files changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm/cpu/mmu-early_32.c b/arch/arm/cpu/mmu-early_32.c
> index 07c5917e6a..94bde44c9b 100644
> --- a/arch/arm/cpu/mmu-early_32.c
> +++ b/arch/arm/cpu/mmu-early_32.c
> @@ -58,12 +58,5 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize,
>  	/* maps main memory as cachable */
>  	map_region(membase, memsize, PMD_SECT_DEF_CACHED);
>  
> -	/*
> -	 * With HAB enabled we call into the ROM code later in imx6_hab_get_status().
> -	 * Map the ROM cached which has the effect that the XN bit is not set.
> -	 */
> -	if (IS_ENABLED(CONFIG_HABV4) && IS_ENABLED(CONFIG_ARCH_IMX6))
> -		map_region(0x0, SZ_1M, PMD_SECT_DEF_CACHED);
> -
>  	__mmu_cache_on();
>  }
> diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
> index 252e38f655..d2494db114 100644
> --- a/drivers/hab/habv4.c
> +++ b/drivers/hab/habv4.c
> @@ -11,6 +11,9 @@
>  #include <hab.h>
>  #include <init.h>
>  #include <types.h>
> +#include <mmu.h>
> +#include <zero_page.h>
> +#include <linux/sizes.h>
>  #include <linux/arm-smccc.h>
>  #include <asm/cache.h>
>  
> @@ -613,12 +616,16 @@ static int init_imx6_hab_get_status(void)
>  		/* can happen in multi-image builds and is not an error */
>  		return 0;
>  
> +	arch_remap_range(0x0, SZ_1M, MAP_CACHED);

This affects SZ_1M bytes.

> +
>  	/*
>  	 * Nobody will check the return value if there were HAB errors, but the
>  	 * initcall will fail spectaculously with a strange error message.
>  	 */
>  	imx6_hab_get_status();
>  
> +	zero_page_faulting();

This affects only 4K. The rest of the 1M can now be speculated into :/

> +
>  	return 0;
>  }
>  
> @@ -627,7 +634,7 @@ static int init_imx6_hab_get_status(void)
>   * which will no longer be accessible when the MMU sets the zero page to
>   * faulting.
>   */
> -postconsole_initcall(init_imx6_hab_get_status);
> +postmmu_initcall(init_imx6_hab_get_status);
>  
>  int imx28_hab_get_status(void)
>  {

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



