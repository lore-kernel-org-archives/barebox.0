Delivery-date: Thu, 04 Jan 2024 12:24:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLLqI-003T0n-1l
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 12:24:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLLqH-00072D-Gd
	for lore@pengutronix.de; Thu, 04 Jan 2024 12:24:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=atmHxGx5qPJK/sqaMZamxMPPhqElIzzR5AOQdhYFoqQ=; b=XuspGSa+WjLUAqmwpi4yzyKisN
	Op36OXL+TiuPaRAU7R7WRss4kHhDS9iAVEgjvgEUEWVu55D3FFJlWNUkw/F6/Q7RJxyVr9aDPiBwW
	sk80kfM2uPzcbqin36cr9aO9XR/eDpB0rdHYA+ZQewWJPdd16iq71ZZFl+EX2ZuVbns2qlQ4Y0NT6
	ZosG3u45HzCulzfC9YF42xCU3OjPyCA0jnpvp231SGYx2zIXFdme9Cvy6NjM9kXkxG7kkhsP1wU5r
	js8yaFlKcDSlvsKdCNaU4Dx1EEN380Gff9JdXqFMnXjOdDO9+HA4mxRu0EGkoFVBwaKyXraiDA69K
	LAnkAXIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLLpJ-00DiAy-33;
	Thu, 04 Jan 2024 11:23:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLLpF-00Di7N-1A
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 11:23:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLLpE-0006lp-3k; Thu, 04 Jan 2024 12:23:48 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rLLpD-000Klz-NY; Thu, 04 Jan 2024 12:23:47 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLLpD-00ACnK-LK; Thu, 04 Jan 2024 12:23:47 +0100
Date: Thu, 4 Jan 2024 12:23:47 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240104112347.GR1318922@pengutronix.de>
References: <20240104085736.541171-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240104085736.541171-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_032349_400046_47A790DA 
X-CRM114-Status: GOOD (  21.97  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] ARM: kasan: reserve shadow memory region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jan 04, 2024 at 09:57:36AM +0100, Ahmad Fatoum wrote:
> We did not have any protection in place to ensure that KASAN shadow memory
> isn't overwritten during boot. Add that now to avoid strange effects
> during debugging.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - fix build when CONFIG_KASAN is disabled (Sascha)
> ---
>  arch/arm/cpu/start.c  | 4 ++++
>  include/linux/kasan.h | 4 ++--
>  2 files changed, 6 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index 15f5b2937227..9f4cdfe67fbf 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -133,6 +133,10 @@ static int barebox_memory_areas_init(void)
>  		request_sdram_region("board data", (unsigned long)barebox_boarddata,
>  				     barebox_boarddata_size);
>  
> +	if (IS_ENABLED(CONFIG_KASAN))
> +		request_sdram_region("kasan shadow", kasan_shadow_base,
> +				     mem_malloc_start() - kasan_shadow_base);
> +
>  	return 0;
>  }
>  device_initcall(barebox_memory_areas_init);
> diff --git a/include/linux/kasan.h b/include/linux/kasan.h
> index 54fb993f38ba..5fa0bebb796b 100644
> --- a/include/linux/kasan.h
> +++ b/include/linux/kasan.h
> @@ -42,11 +42,11 @@
>  #define KASAN_ALLOCA_LEFT	0xCA
>  #define KASAN_ALLOCA_RIGHT	0xCB
>  
> -#if defined(CONFIG_KASAN) && !defined(__PBL__)
> -
>  extern unsigned long kasan_shadow_start;
>  extern unsigned long kasan_shadow_base;
>  
> +#if defined(CONFIG_KASAN) && !defined(__PBL__)
> +
>  static inline void *kasan_mem_to_shadow(const void *addr)
>  {
>  	unsigned long a = (unsigned long)addr;
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


