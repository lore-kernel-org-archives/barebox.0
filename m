Delivery-date: Tue, 25 May 2021 14:56:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llWbJ-0002FO-2X
	for lore@lore.pengutronix.de; Tue, 25 May 2021 14:56:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llWbH-0004zJ-Qj
	for lore@pengutronix.de; Tue, 25 May 2021 14:56:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ekxn6wcJqWeypRfCvy50IDARoKvzKO7j/4IZ/uOa0XM=; b=4vz+fSs3UaQnMviU3In+Z12DCt
	WDvvIwInkYJz9XWNQYej38zDfgKJwmW9ODit6RiT9A/HOAGf3u/JFMrL2Mkj8WuIwB5ltD7vKw4i/
	hrWLsbXKsOdNRSN2KqyBse7l2pL6g8HBYa3bQjF4QXPBREJpz7dyysGF0vBfYyOQh777rJ0gktPG+
	ZQl6onTEIw4pDJD7pX2IDQcWtplcGGw4DimEc2bz5s6Qnd/yHr/EBOI+uzhD/L2QcdD5/y42PZJeE
	/rDVYN+MvhJJykrvkresofa3riLIV9HR+G6RnOUddfp1sBrrGDpo/vMVOiA1GHxoO351gTC6cZOnO
	WPTT0YGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llWa6-0059Ya-B9; Tue, 25 May 2021 12:54:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llWZn-0059Tx-Tj
 for barebox@lists.infradead.org; Tue, 25 May 2021 12:54:29 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1llWZm-0004e8-A5; Tue, 25 May 2021 14:54:26 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
References: <20210525071952.18045-1-antonynpavlov@gmail.com>
 <20210525071952.18045-2-antonynpavlov@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <fe4ad56f-dc9a-13d3-f296-1b086f42124f@pengutronix.de>
Date: Tue, 25 May 2021 14:54:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210525071952.18045-2-antonynpavlov@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_055428_006747_D43A9335 
X-CRM114-Status: GOOD (  27.03  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 01/10] clocksource: timer-riscv: select CSR from device
 tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 25.05.21 09:19, Antony Pavlov wrote:
> barebox timer-riscv driver supports one of user counters:
> 
>   * 'cycle', counter for RDCYCLE instruction (CSR 0xc00);
>   * 'time', timer for RDTIME instruction (CSR 0xc01).
> 
> At the moment in M-mode timer-riscv uses the 'cycle' counter,
> and in S-mode timer-riscv uses the 'time' timer.
> 
> Alas picorv32 CPU core supports only the 'cycle' counter.
> VexRiscV CPU core in M-mode supports only the 'time' timer.
> 
> This patch makes it possible to use the 'time' timer
> for VexRiscV CPU in M-mode.

It also changes the default for M-Mode from cycle to time.
I can't comment on whether this is ok, I just copied the logic
from Linux.

> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/riscv/dts/erizo.dtsi         |  2 ++
>  drivers/clocksource/timer-riscv.c | 24 ++++++++++++------------
>  2 files changed, 14 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/riscv/dts/erizo.dtsi b/arch/riscv/dts/erizo.dtsi
> index 228711bd69..4eb92ae6f1 100644
> --- a/arch/riscv/dts/erizo.dtsi
> +++ b/arch/riscv/dts/erizo.dtsi
> @@ -22,6 +22,8 @@
>  
>  		timebase-frequency = <24000000>;
>  
> +		barebox,csr-cycle;
> +
>  		cpu@0 {
>  			device_type = "cpu";
>  			compatible = "cliffordwolf,picorv32", "riscv";
> diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
> index cbbe18d9a6..305d1ecea0 100644
> --- a/drivers/clocksource/timer-riscv.c
> +++ b/drivers/clocksource/timer-riscv.c
> @@ -12,9 +12,8 @@
>  #include <clock.h>
>  #include <asm/timer.h>
>  #include <asm/csr.h>
> -#include <asm/system.h>
>  
> -static u64 notrace riscv_timer_get_count_sbi(void)
> +static u64 notrace riscv_timer_get_count_time(void)
>  {
>  	__maybe_unused u32 hi, lo;
>  
> @@ -29,7 +28,7 @@ static u64 notrace riscv_timer_get_count_sbi(void)
>  	return ((u64)hi << 32) | lo;
>  }
>  
> -static u64 notrace riscv_timer_get_count_rdcycle(void)
> +static u64 notrace riscv_timer_get_count_cycle(void)
>  {
>  	__maybe_unused u32 hi, lo;
>  
> @@ -44,24 +43,25 @@ static u64 notrace riscv_timer_get_count_rdcycle(void)
>  	return ((u64)hi << 32) | lo;
>  }
>  
> -static u64 notrace riscv_timer_get_count(void)
> -{
> -	if (riscv_mode() == RISCV_S_MODE)
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
>  
>  static int riscv_timer_init(struct device_d* dev)
>  {
> +	struct device_node *cpu;
> +
>  	dev_info(dev, "running at %lu Hz\n", riscv_timebase);
>  
> +	cpu = of_find_node_by_path("/cpus");
> +
> +	if (of_property_read_bool(cpu, "barebox,csr-cycle")) {
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

