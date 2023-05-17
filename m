Delivery-date: Wed, 17 May 2023 15:02:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzGnX-004JpS-Kz
	for lore@lore.pengutronix.de; Wed, 17 May 2023 15:02:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pzGnV-0002AQ-0e
	for lore@pengutronix.de; Wed, 17 May 2023 15:02:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YJsRaKKew593WWg1wsOnL36Ha//Es4pQNgPSiUqLj0o=; b=fHebkug27mU/qXxPZFzdTPom+w
	oE8ZKa5o9VQSTvH5yf88aE9to1kDmmM7Q02Eey33yQplLdhOAJkivVobJSSpTeuOaTI0O5jsSuJL5
	qk2dQBkQLtIfbkw31jg4y9z5i9SLMaI3wDCI7dpXbl71jeXRpsffjAH9uisLClufrAKW0Sis2BLyK
	Nz2njf4wUOHDJ9fzUMq4yvyxuOcZN/gbltuDuxTfhTIhEM645RBWMVdvv3c6aUcdh9uShglq63/U4
	QZO6Uu1TO2lUSk30oMjYcH6JG0pnhrxzNQHSOrN/LHRXE7V7/U34UtaRTRhEoUOBenKwDFMwt4GJI
	lk34aWzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzGmP-009suU-2X;
	Wed, 17 May 2023 13:01:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzGmN-009su6-13
	for barebox@lists.infradead.org;
	Wed, 17 May 2023 13:01:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pzGmL-0001xp-F3; Wed, 17 May 2023 15:01:17 +0200
Message-ID: <27a4fe67-e71b-5f14-d48d-aadac3f8ea05@pengutronix.de>
Date: Wed, 17 May 2023 15:01:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230517090340.3954615-1-s.hauer@pengutronix.de>
 <20230517090340.3954615-18-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230517090340.3954615-18-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_060119_369296_F41C69CF 
X-CRM114-Status: GOOD (  26.03  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 17/34] ARM: i.MX: Drop HAB workaround
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 17.05.23 11:03, Sascha Hauer wrote:
> The i.MX HAB code on i.MX6 has to jump into ROM which happens to start
> at 0x0. To make that possible we used to map the ROM cached and jumped
> to it before the MMU is initialized. Instead, remap the ROM as needed
> in the HAB code so that we can safely jump into ROM with MMU enabled.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/cpu/mmu-early_32.c |  7 -------
>  drivers/hab/habv4.c         | 10 +++++++++-
>  2 files changed, 9 insertions(+), 8 deletions(-)
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
> index ca26773bf8..e8c7d3264d 100644
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
> @@ -616,12 +619,17 @@ static int init_imx6_hab_get_status(void)
>  		/* can happen in multi-image builds and is not an error */
>  		return 0;
>  
> +	arch_remap_range(0x0, SZ_1M, MAP_CACHED);
> +
>  	/*
>  	 * Nobody will check the return value if there were HAB errors, but the
>  	 * initcall will fail spectaculously with a strange error message.
>  	 */
>  	imx6_hab_get_status();
>  
> +	zero_page_faulting();
> +	arch_remap_range((void *)PAGE_SIZE, SZ_1M - PAGE_SIZE, MAP_UNCACHED);
> +
>  	return 0;
>  }
>  
> @@ -630,7 +638,7 @@ static int init_imx6_hab_get_status(void)
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



