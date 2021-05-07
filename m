Delivery-date: Fri, 07 May 2021 13:35:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leylY-0004O4-SO
	for lore@lore.pengutronix.de; Fri, 07 May 2021 13:35:32 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leylY-0000sm-01
	for lore@pengutronix.de; Fri, 07 May 2021 13:35:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Oi90Oo5RcpydBNnhUMTE18Rbr7KlQ08nWrNeRtpwqsg=; b=Em2Vmer0x0Rk8xvh/FgEGDOQw
	Bzsz8FXFf4mh37n8mABfQu9cNvu9ldx8Uo4Y52tkuzmJYA6JvJAExAjlHP7+B3A5TS9IBr9aqy8jj
	SLcs5TFECJNWMGoafzZ9rDopm7U7BAie1mQpxt80wNDgNSNtR17Z1rsoawfshYS1fJuh6/k2EdC4v
	N7o7ak5/35hyfS2mHX3iX/70BEuuzcFsE5r0oEzluoQ0+V5/4biXamKG68tnHh/f3gYSyfwbLJgNw
	VM+mYpm4jmErXI31AzHztP9zWmUy7dNomFdXqbFKz2FQ3Q2Vyd5Z0LmsD6MxJdDkAKsZy2YLD78bl
	7HPLT+0eA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leyki-006y8z-R5; Fri, 07 May 2021 11:34:40 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leyke-006y8q-Fb
 for barebox@desiato.infradead.org; Fri, 07 May 2021 11:34:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=Pmn+6wE6sZOAbpzyIIsSrTPTTj8VrloUIijoHTrk2bs=; b=MvdA1RCI0NkjHHcMRKPDyrnS8u
 Gbf0RolXont/oOHxB9Sg9IOmr+gPViv66GZkhjIiBoTcYRRu453bTOiV82jSLUCZeA+tuswESY8fL
 5pYQPhGIwG8NhRmZ4uVTFDLjWn3UE7zrL0/K2lPkZ9aTjYUhnRcDmMpGnuZU7I6kOkOnxPTZ+4erk
 3VF2nExjvO1xDw3XXT7iEtoOCmSy04mq/KoqcwjODVT916sO5c+9NCZceLhqq5mWP8k0RKUoXwK4W
 jXaJVAu0qg8b5WQVM93MZhuaVXwJukPkKaBm085x+o3XyYt0/vqXGiA/WCHWQVjydtiBVCeJrPyeu
 ld6SRc5Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leyka-006oyr-Gw
 for barebox@lists.infradead.org; Fri, 07 May 2021 11:34:34 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1leykY-0000nX-OA; Fri, 07 May 2021 13:34:30 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
References: <20210506220834.223350-1-antonynpavlov@gmail.com>
 <20210506220834.223350-2-antonynpavlov@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <3683b25f-f736-6447-90f7-f62e1f9ccb64@pengutronix.de>
Date: Fri, 7 May 2021 13:34:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210506220834.223350-2-antonynpavlov@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_043432_596927_5396911B 
X-CRM114-Status: GOOD (  28.61  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 01/11] clocksource: timer-riscv: select CSR from device
 tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Antony,

On 07.05.21 00:08, Antony Pavlov wrote:
> barebox timer-riscv driver supports one of user counters:
> 
>   * 'cycle', counter for RDCYCLE instruction (CSR 0xc00);
>   * 'time', timer for RDTIME instruction (CSR 0xc01).
> 
> At the moment in S-mode timer-riscv uses the 'cycle' counter,
> and in M-mode timer-riscv uses the 'time' timer.

Other way round, right? cycle for M-Mode, time for S-Mode?

> 
> Alas picorv32 CPU core supports only the 'cycle' counter.
> VexRiscV CPU core supports only the 'time' timer.
> 
> This patch makes it possible to use the 'time' timer
> for VexRiscV CPU in M-mode.

Is that allowed by the ISA? To provide time, but not cycle?
Can VexRiscV boot Linux? If so, how does Linux handle lack
of this CSR?
 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/riscv/cpu/time.c             |  7 +++++++
>  arch/riscv/dts/erizo.dtsi         |  2 ++
>  arch/riscv/include/asm/timer.h    |  1 +
>  drivers/clocksource/timer-riscv.c | 19 ++++++++-----------
>  4 files changed, 18 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/riscv/cpu/time.c b/arch/riscv/cpu/time.c
> index 39bb6a5112..59c8ca61d6 100644
> --- a/arch/riscv/cpu/time.c
> +++ b/arch/riscv/cpu/time.c
> @@ -18,6 +18,7 @@
>  #include <asm/timer.h>
>  
>  unsigned long riscv_timebase;
> +unsigned long riscv_use_csr_cycle;
>  
>  int timer_init(void)
>  {
> @@ -32,6 +33,12 @@ int timer_init(void)
>  
>  	riscv_timebase = prop;
>  
> +	if (of_property_read_bool(cpu, "csr-cycle")) {
> +		riscv_use_csr_cycle = 1;
> +	} else {
> +		riscv_use_csr_cycle = 0;
> +	}
> +

Any reason this couldn't happen in driver probe?
I'd also prefer another name, e.g. barebox,use-csr-cycle ?

>  	of_platform_populate(cpu, NULL, NULL);
>  
>  	return 0;
> diff --git a/arch/riscv/dts/erizo.dtsi b/arch/riscv/dts/erizo.dtsi
> index 228711bd69..b3ccf281f2 100644
> --- a/arch/riscv/dts/erizo.dtsi
> +++ b/arch/riscv/dts/erizo.dtsi
> @@ -22,6 +22,8 @@
>  
>  		timebase-frequency = <24000000>;
>  
> +		csr-cycle;
> +
>  		cpu@0 {
>  			device_type = "cpu";
>  			compatible = "cliffordwolf,picorv32", "riscv";
> diff --git a/arch/riscv/include/asm/timer.h b/arch/riscv/include/asm/timer.h
> index 1f78ef4c00..555b3f5989 100644
> --- a/arch/riscv/include/asm/timer.h
> +++ b/arch/riscv/include/asm/timer.h
> @@ -5,5 +5,6 @@
>  
>  int timer_init(void);
>  extern unsigned long riscv_timebase;
> +extern unsigned long riscv_use_csr_cycle;
>  
>  #endif /* _ASM_RISCV_DELAY_H */
> diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
> index ef67cff475..c0deed40eb 100644
> --- a/drivers/clocksource/timer-riscv.c
> +++ b/drivers/clocksource/timer-riscv.c
> @@ -13,7 +13,7 @@
>  #include <asm/timer.h>
>  #include <asm/csr.h>
>  
> -static u64 notrace riscv_timer_get_count_sbi(void)
> +static u64 notrace riscv_timer_get_count_time(void)
>  {
>  	__maybe_unused u32 hi, lo;
>  
> @@ -28,7 +28,7 @@ static u64 notrace riscv_timer_get_count_sbi(void)
>  	return ((u64)hi << 32) | lo;
>  }
>  
> -static u64 notrace riscv_timer_get_count_rdcycle(void)
> +static u64 notrace riscv_timer_get_count_cycle(void)
>  {
>  	__maybe_unused u32 hi, lo;
>  
> @@ -43,16 +43,7 @@ static u64 notrace riscv_timer_get_count_rdcycle(void)
>  	return ((u64)hi << 32) | lo;
>  }
>  
> -static u64 notrace riscv_timer_get_count(void)
> -{
> -	if (IS_ENABLED(CONFIG_RISCV_SBI))
> -		return riscv_timer_get_count_sbi();
> -	else
> -		return riscv_timer_get_count_rdcycle();
> -}
> -
>  static struct clocksource riscv_clocksource = {
> -	.read		= riscv_timer_get_count,
>  	.mask		= CLOCKSOURCE_MASK(64),
>  	.priority	= 100,
>  };
> @@ -61,6 +52,12 @@ static int riscv_timer_init(struct device_d* dev)
>  {
>  	dev_info(dev, "running at %lu Hz\n", riscv_timebase);
>  
> +	if (riscv_use_csr_cycle) {
> +		riscv_clocksource.read = riscv_timer_get_count_cycle;
> +	} else {
> +		riscv_clocksource.read = riscv_timer_get_count_time;
> +	}
> +
>  	riscv_clocksource.mult = clocksource_hz2mult(riscv_timebase, riscv_clocksource.shift);
>  
>  	return init_clock(&riscv_clocksource);
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

