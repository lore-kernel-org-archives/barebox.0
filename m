Delivery-date: Fri, 07 May 2021 20:06:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lf4rh-000549-M5
	for lore@lore.pengutronix.de; Fri, 07 May 2021 20:06:17 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lf4rg-0002sc-JU
	for lore@pengutronix.de; Fri, 07 May 2021 20:06:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+XN1I0nXZZaxqAOlgMttXyRl7niPLoHI9d3pvzMc4qI=; b=NRmlg9Vy9JrZZ+BPjHuGnQUr4
	sgEiTAuel7mpheLVfujG//cZozjY21wpwvG77/yGG0rb6WukAp0iMC/t9klDWCkVyfS58diNDA2QW
	pkbbX007VyHs0YbkoYJPFwAt1CMfuhKcar6wAmRox+T84+dKJYPSmtDxg5S4ffxTeiWIEFk+WJNfU
	mh50+M2SBPNQyRKxC5yNiScLfSxxQZnX5P1FzTQRi3pdYtWC2OvjiWwXQwV8LKu/ffz3+BAs5OUIy
	FxHN6P9LYdc0Okmyd74P9q8dUnwcsYMx4SyOBM8dsx2df/14ltkJb+ZxeAX/bCZJY8OMein3vFWVJ
	J62QgoONA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lf4qs-007k3R-Ey; Fri, 07 May 2021 18:05:26 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf4qo-007k3C-MJ
 for barebox@desiato.infradead.org; Fri, 07 May 2021 18:05:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=cwK8TZfEAXaBDsHvQASslnhKvZA5DhpjMCWSBj0B66E=; b=NTmZx4CxSxqkTrxQs6CCmoaEHz
 gdbHbJiDjgu6LiwDCmyGjL31eqSSNavfgmYsF+pch2gyFmv5xy562b912Vpxan9nrMBqUTeeolKZ/
 US3x8hCJTVKmw77Yy0kOHl1R0C62wBR+D/RcUyCaCO0sULU0+BpDov7znj/Vw9S8815Bsbdfc64Yl
 jm9NUwGsBgjGkQshWrdQE1E3lOW3SPGPzOEa6FKAsQb/CsQXctEYmJ4oZKtwn7U73l8yMDIYn++2o
 VIZYxCQ1icXASm8/mE38lrMQjSwDX8+OjFHL0fW8/9bV0mxsAjzngAyM/kYeFYj/IMsPk1E5PWGLJ
 rVcloIzQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf4ql-0073q2-F0
 for barebox@lists.infradead.org; Fri, 07 May 2021 18:05:21 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lf4qj-0002b4-Lc; Fri, 07 May 2021 20:05:17 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>
References: <20210506220834.223350-1-antonynpavlov@gmail.com>
 <20210506220834.223350-2-antonynpavlov@gmail.com>
 <3683b25f-f736-6447-90f7-f62e1f9ccb64@pengutronix.de>
 <20210507204136.0289302048cc5edb0c06596b@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <d33e7579-9390-a624-c353-e60907f3b7d5@pengutronix.de>
Date: Fri, 7 May 2021 20:05:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210507204136.0289302048cc5edb0c06596b@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_110519_551233_7A7ADE8C 
X-CRM114-Status: GOOD (  31.88  )
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
Cc: barebox@lists.infradead.org
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

On 07.05.21 19:41, Antony Pavlov wrote:
> On Fri, 7 May 2021 13:34:30 +0200
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>> Alas picorv32 CPU core supports only the 'cycle' counter.
>>> VexRiscV CPU core supports only the 'time' timer.
>>>
>>> This patch makes it possible to use the 'time' timer
>>> for VexRiscV CPU in M-mode.
>>
>> Is that allowed by the ISA? To provide time, but not cycle?
>> Can VexRiscV boot Linux? If so, how does Linux handle lack
>> of this CSR?
> 
> Here is an unobvious answer for all these questions at once.
> 
> The RISC-V Instruction Set Manual, Volume II: Privileged Architecture
> Document Version 20190608-Priv-MSU-Ratified states that
> 
> <<
>    Attempts to access a non-existent CSR raise an illegal instruction exception
>>>
> 
> So you can even realize in hardware very few CSR for exception handling (mstatus, mcause, mtvec, mie, mepc)
> and try to emulate all other CSR in software !> 
> As a result exception handler for VexRiscv emulates access to 'cycle' CSR (RDCYCLE pseudo-op)
> by reading the 'time' CSR !  
> Please see https://github.com/SpinalHDL/VexRiscv/blob/master/src/main/c/emulator/src/main.c#L239
> 
> opensbi do near the same ! Please see https://github.com/riscv/opensbi/blob/master/lib/sbi/sbi_emulate_csr.c#L64
> 
> Can VexRiscV boot Linux? Yes, it can boot linux!
> Please see this demo: https://asciinema.org/a/7fLu84ytgtVd3rjPm7Li3GD4r
> In this demo barebox loads emulator.bin into the RAM.
> This emulator.bin realizes SBI for linux kernel and emulates all missed features
> necessary for running linux.

Thanks for clearing this up :)

>>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>>> ---
>>>  arch/riscv/cpu/time.c             |  7 +++++++
>>>  arch/riscv/dts/erizo.dtsi         |  2 ++
>>>  arch/riscv/include/asm/timer.h    |  1 +
>>>  drivers/clocksource/timer-riscv.c | 19 ++++++++-----------
>>>  4 files changed, 18 insertions(+), 11 deletions(-)
>>>
>>> diff --git a/arch/riscv/cpu/time.c b/arch/riscv/cpu/time.c
>>> index 39bb6a5112..59c8ca61d6 100644
>>> --- a/arch/riscv/cpu/time.c
>>> +++ b/arch/riscv/cpu/time.c
>>> @@ -18,6 +18,7 @@
>>>  #include <asm/timer.h>
>>>  
>>>  unsigned long riscv_timebase;
>>> +unsigned long riscv_use_csr_cycle;
>>>  
>>>  int timer_init(void)
>>>  {
>>> @@ -32,6 +33,12 @@ int timer_init(void)
>>>  
>>>  	riscv_timebase = prop;
>>>  
>>> +	if (of_property_read_bool(cpu, "csr-cycle")) {
>>> +		riscv_use_csr_cycle = 1;
>>> +	} else {
>>> +		riscv_use_csr_cycle = 0;
>>> +	}
>>> +
>>
>> Any reason this couldn't happen in driver probe?
> 
> Because we already have riscv_timebase parse routine outside of driver probe.
> I tryed to avoid code duplication.
> Why we couldn't parse riscv_timebase in driver probe?

Because riscv_timebase is also used for CLINT clocksource, but this one
here would be exclusive to riscv timer, so it should be read there.

>> I'd also prefer another name, e.g. barebox,use-csr-cycle ?
> 
> Yes, barebox,use-csr-cycle is a better name.
> 
> 
>>>  	of_platform_populate(cpu, NULL, NULL);
>>>  
>>>  	return 0;
>>> diff --git a/arch/riscv/dts/erizo.dtsi b/arch/riscv/dts/erizo.dtsi
>>> index 228711bd69..b3ccf281f2 100644
>>> --- a/arch/riscv/dts/erizo.dtsi
>>> +++ b/arch/riscv/dts/erizo.dtsi
>>> @@ -22,6 +22,8 @@
>>>  
>>>  		timebase-frequency = <24000000>;
>>>  
>>> +		csr-cycle;
>>> +
>>>  		cpu@0 {
>>>  			device_type = "cpu";
>>>  			compatible = "cliffordwolf,picorv32", "riscv";
>>> diff --git a/arch/riscv/include/asm/timer.h b/arch/riscv/include/asm/timer.h
>>> index 1f78ef4c00..555b3f5989 100644
>>> --- a/arch/riscv/include/asm/timer.h
>>> +++ b/arch/riscv/include/asm/timer.h
>>> @@ -5,5 +5,6 @@
>>>  
>>>  int timer_init(void);
>>>  extern unsigned long riscv_timebase;
>>> +extern unsigned long riscv_use_csr_cycle;
>>>  
>>>  #endif /* _ASM_RISCV_DELAY_H */
>>> diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
>>> index ef67cff475..c0deed40eb 100644
>>> --- a/drivers/clocksource/timer-riscv.c
>>> +++ b/drivers/clocksource/timer-riscv.c
>>> @@ -13,7 +13,7 @@
>>>  #include <asm/timer.h>
>>>  #include <asm/csr.h>
>>>  
>>> -static u64 notrace riscv_timer_get_count_sbi(void)
>>> +static u64 notrace riscv_timer_get_count_time(void)
>>>  {
>>>  	__maybe_unused u32 hi, lo;
>>>  
>>> @@ -28,7 +28,7 @@ static u64 notrace riscv_timer_get_count_sbi(void)
>>>  	return ((u64)hi << 32) | lo;
>>>  }
>>>  
>>> -static u64 notrace riscv_timer_get_count_rdcycle(void)
>>> +static u64 notrace riscv_timer_get_count_cycle(void)
>>>  {
>>>  	__maybe_unused u32 hi, lo;
>>>  
>>> @@ -43,16 +43,7 @@ static u64 notrace riscv_timer_get_count_rdcycle(void)
>>>  	return ((u64)hi << 32) | lo;
>>>  }
>>>  
>>> -static u64 notrace riscv_timer_get_count(void)
>>> -{
>>> -	if (IS_ENABLED(CONFIG_RISCV_SBI))
>>> -		return riscv_timer_get_count_sbi();
>>> -	else
>>> -		return riscv_timer_get_count_rdcycle();
>>> -}
>>> -
>>>  static struct clocksource riscv_clocksource = {
>>> -	.read		= riscv_timer_get_count,
>>>  	.mask		= CLOCKSOURCE_MASK(64),
>>>  	.priority	= 100,
>>>  };
>>> @@ -61,6 +52,12 @@ static int riscv_timer_init(struct device_d* dev)
>>>  {
>>>  	dev_info(dev, "running at %lu Hz\n", riscv_timebase);
>>>  
>>> +	if (riscv_use_csr_cycle) {
>>> +		riscv_clocksource.read = riscv_timer_get_count_cycle;
>>> +	} else {
>>> +		riscv_clocksource.read = riscv_timer_get_count_time;
>>> +	}
>>> +
>>>  	riscv_clocksource.mult = clocksource_hz2mult(riscv_timebase, riscv_clocksource.shift);
>>>  
>>>  	return init_clock(&riscv_clocksource);
>>>
>>
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
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

