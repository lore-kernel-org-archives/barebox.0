Delivery-date: Mon, 22 Mar 2021 08:40:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOFB9-0003C3-Kc
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 08:40:47 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOFB8-00033U-Nw
	for lore@pengutronix.de; Mon, 22 Mar 2021 08:40:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s6vQt/HEG70c0+RA+XdLq5rdFkIwhOJdVtjCCY+LBqc=; b=WbatP+TWNG3xjW/VithoG7UB0
	6PWCfnifan9NHJw3+HWdbDf1IWG5fypxCzYCEhGGhK5M7P/eQ0bRbHJzuZGgd60QHYWPiAAT1AnWH
	P4xBfzqWBoBQ7P5q7sVnfoyVydBBifbSlUxtdQsYI9I8LqFeyww1o+ZLunW+/IE+fjFxyK1mCq5ZF
	JCcrdyEJ7RgDHQ+IITHDk11EmF3jfvZeQGoPCbgfESUbEsDIPzqNY5uYYLukSHllTPhJPoD2Gujz0
	2pAXQIUiOu9PEcxMZtLFypZOvyYtJJ29J5f3Zw23OsyCMtoMr6yZCHw3JhOB0m/OFRANQ6d11HAD1
	4uAG0Qcrg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOFA5-00B5iD-QL; Mon, 22 Mar 2021 07:39:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOF9t-00B5gx-Ch
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 07:39:32 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lOF9r-0002qs-Tl; Mon, 22 Mar 2021 08:39:27 +0100
To: Ahmad Fatoum <ahmad@a3f.at>, barebox@lists.infradead.org,
 Sascha Hauer <s.hauer@pengutronix.de>
References: <20210321151344.5810-21-a.fatoum@pengutronix.de>
 <20210322072149.3740811-1-ahmad@a3f.at>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <4d20d2ca-db0f-35dd-2b88-3759277adda1@pengutronix.de>
Date: Mon, 22 Mar 2021 08:39:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210322072149.3740811-1-ahmad@a3f.at>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_073930_015147_0D5CDF32 
X-CRM114-Status: GOOD (  25.49  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! clocksource: add driver for RISC-V and CLINT timers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 22.03.21 08:21, Ahmad Fatoum wrote:
> This were wrongly squashed into the commit after.

And this one was supposed to be a reply to the commit before..
Sascha, let me know if you want me to resend.

> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/riscv/Kconfig                |  1 +
>  arch/riscv/dts/erizo.dtsi         |  2 +-
>  drivers/clocksource/Kconfig       |  2 +-
>  drivers/clocksource/timer-riscv.c | 18 +++++++++++++++++-
>  4 files changed, 20 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index ce338e3f1f95..c0583f31536b 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -32,6 +32,7 @@ config MACH_ERIZO
>  	select HAS_NMON
>  	select USE_COMPRESSED_DTB
>  	select RISCV_M_MODE
> +	select RISCV_TIMER
>  
>  config MACH_VIRT
>  	bool "virt family"
> diff --git a/arch/riscv/dts/erizo.dtsi b/arch/riscv/dts/erizo.dtsi
> index 07534798ac75..e854a48ae55c 100644
> --- a/arch/riscv/dts/erizo.dtsi
> +++ b/arch/riscv/dts/erizo.dtsi
> @@ -22,7 +22,7 @@ fixed-clock
>  
>  		cpu@0 {
>  			device_type = "cpu";
> -			compatible = "cliffordwolf,picorv32";
> +			compatible = "cliffordwolf,picorv32", "riscv";
>  			clocks = <&ref_clk>;
>  			reg = <0>;
>  		};
> diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
> index 2d8f5113ad8d..7bc69afd7820 100644
> --- a/drivers/clocksource/Kconfig
> +++ b/drivers/clocksource/Kconfig
> @@ -101,7 +101,7 @@ config CLOCKSOURCE_TI_32K
>  
>  config RISCV_TIMER
>  	bool "Timer for the RISC-V platform" if COMPILE_TEST
> -	depends on RISCV && RISCV_SBI
> +	depends on RISCV
>  	help
>  	  This enables the per-hart timer built into all RISC-V systems, which
>  	  is accessed via both the SBI and the rdcycle instruction.  This is
> diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
> index 637285fd78a7..eb5ba2d8c226 100644
> --- a/drivers/clocksource/timer-riscv.c
> +++ b/drivers/clocksource/timer-riscv.c
> @@ -13,7 +13,7 @@
>  #include <asm/timer.h>
>  #include <asm/csr.h>
>  
> -static u64 notrace riscv_timer_get_count(void)
> +static u64 notrace riscv_timer_get_count_sbi(void)
>  {
>  	__maybe_unused u32 hi, lo;
>  
> @@ -28,6 +28,22 @@ static u64 notrace riscv_timer_get_count(void)
>  	return ((u64)hi << 32) | lo;
>  }
>  
> +static u64 notrace riscv_timer_get_count_rdcycle(void)
> +{
> +	u64 ticks;
> +	asm volatile("rdcycle %0" : "=r" (ticks));
> +
> +	return ticks;
> +}
> +
> +static u64 notrace riscv_timer_get_count(void)
> +{
> +	if (IS_ENABLED(CONFIG_RISCV_SBI))
> +		return riscv_timer_get_count_sbi();
> +	else
> +		return riscv_timer_get_count_rdcycle();
> +}
> +
>  static struct clocksource riscv_clocksource = {
>  	.read		= riscv_timer_get_count,
>  	.mask		= CLOCKSOURCE_MASK(64),
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

