Delivery-date: Fri, 01 Oct 2021 12:13:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWFY4-0002jL-0c
	for lore@lore.pengutronix.de; Fri, 01 Oct 2021 12:13:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWFY2-0007GZ-Vt
	for lore@pengutronix.de; Fri, 01 Oct 2021 12:13:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/BfGiiiT2TCdCJYBfifcahYXJFFnGNuH8NiecPlaX7w=; b=SyYNxhPyRA91T5
	yK8Gp+6iihp3RSUvV+hgzv0+OjwV7P2erQ0s0lfwrpxLtcMKYD5XMt/yPaYbjbOylSX6HIeaytvW+
	bCiEmR3uca6gUZiO/j1nbfUrnBvBUFU2T4i2naLvYF41DnsqcPMHlGv46Db+aEKBK7C91luaFTd9K
	EY6zlQZlLQKNQ6PvrphZKeHjDPZQs0JVRynm0/rgOQtIi/OPWQlCIXV77qXamAou1o9eYOmgsVx5g
	7RxiPAFWwehYsXC7TIox24i5+grESaAFxqq41um5KHAxtXhtH+ZLCuKLPlH70t8JPCwqjyaw1x4C8
	MNV/1ofMPkxcIOQL94Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWFWi-00HS42-MP; Fri, 01 Oct 2021 10:12:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWFWc-00HS0y-7H
 for barebox@lists.infradead.org; Fri, 01 Oct 2021 10:12:19 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mWFWZ-0006h6-2z; Fri, 01 Oct 2021 12:12:15 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>
References: <20210817101104.114945-1-antonynpavlov@gmail.com>
 <20210817101104.114945-2-antonynpavlov@gmail.com>
 <ce1667b1-e42f-3836-9747-393a5fd8afc7@pengutronix.de>
 <20210831070710.3b6200eff8e7adb22bdf1454@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <f58fa974-16f3-e2cd-ce01-cb3ee7ba1833@pengutronix.de>
Date: Fri, 1 Oct 2021 12:12:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210831070710.3b6200eff8e7adb22bdf1454@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_031218_319795_A106B530 
X-CRM114-Status: GOOD (  26.52  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH RESEND v4 1/8] clocksource: timer-riscv: select CSR from
 device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 31.08.21 06:07, Antony Pavlov wrote:
> On Mon, 23 Aug 2021 14:08:52 +0200
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> 
> Hi Ahmad!
> 
>> On 17.08.21 12:10, Antony Pavlov wrote:
>>> barebox timer-riscv driver supports one of user counters:
>>>
>>>   * 'cycle', counter for RDCYCLE instruction (CSR 0xc00);
>>>   * 'time', timer for RDTIME instruction (CSR 0xc01).
>>>
>>> At the moment in M-mode timer-riscv uses the 'cycle' counter,
>>> and in S-mode timer-riscv uses the 'time' timer.
>>>
>>> Alas picorv32 CPU core supports only the 'cycle' counter.
>>> VexRiscV CPU core in M-mode supports only the 'time' timer.
>>>
>>> This patch makes it possible to use the 'time' timer
>>> for VexRiscV CPU in M-mode.
>>>
>>> See also http://lists.infradead.org/pipermail/barebox/2021-May/036067.html
>>
>> Comment from earlier series:
>>
>> "It also changes the default for M-Mode from cycle to time.
>>
>> I can't comment on whether this is ok, I just copied the logic
>>
>> from Linux."
>>
>> Can you say why this is ok?
> 
> v4 patch removes riscv_mode() mention from timer-riscv code
> so timer-riscv uses the 'time' timer by default disregarding
> M-mode or S-mode is used.
> 
> I suppose that the 'time' timer is "more popular" than
> the 'cycle' counter.
> So IMHO it is ok to use "more popular" feature by default.

Ok. We'll see if something breaks.

>>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

>>> ---
>>>  arch/riscv/dts/erizo.dtsi         |  2 ++
>>>  drivers/clocksource/timer-riscv.c | 24 ++++++++++++------------
>>>  2 files changed, 14 insertions(+), 12 deletions(-)
>>>
>>> diff --git a/arch/riscv/dts/erizo.dtsi b/arch/riscv/dts/erizo.dtsi
>>> index 228711bd69..4eb92ae6f1 100644
>>> --- a/arch/riscv/dts/erizo.dtsi
>>> +++ b/arch/riscv/dts/erizo.dtsi
>>> @@ -22,6 +22,8 @@
>>>  
>>>  		timebase-frequency = <24000000>;
>>>  
>>> +		barebox,csr-cycle;
>>> +
>>>  		cpu@0 {
>>>  			device_type = "cpu";
>>>  			compatible = "cliffordwolf,picorv32", "riscv";
>>> diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
>>> index 5a517fe6b4..96637f988a 100644
>>> --- a/drivers/clocksource/timer-riscv.c
>>> +++ b/drivers/clocksource/timer-riscv.c
>>> @@ -12,9 +12,8 @@
>>>  #include <clock.h>
>>>  #include <asm/timer.h>
>>>  #include <asm/csr.h>
>>> -#include <asm/system.h>
>>>  
>>> -static u64 notrace riscv_timer_get_count_sbi(void)
>>> +static u64 notrace riscv_timer_get_count_time(void)
>>>  {
>>>  	__maybe_unused u32 hi, lo;
>>>  
>>> @@ -29,7 +28,7 @@ static u64 notrace riscv_timer_get_count_sbi(void)
>>>  	return ((u64)hi << 32) | lo;
>>>  }
>>>  
>>> -static u64 notrace riscv_timer_get_count_rdcycle(void)
>>> +static u64 notrace riscv_timer_get_count_cycle(void)
>>>  {
>>>  	__maybe_unused u32 hi, lo;
>>>  
>>> @@ -44,24 +43,25 @@ static u64 notrace riscv_timer_get_count_rdcycle(void)
>>>  	return ((u64)hi << 32) | lo;
>>>  }
>>>  
>>> -static u64 notrace riscv_timer_get_count(void)
>>> -{
>>> -	if (riscv_mode() == RISCV_S_MODE)
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
>>>  
>>>  static int riscv_timer_init(struct device_d* dev)
>>>  {
>>> +	struct device_node *cpu;
>>> +
>>>  	dev_dbg(dev, "running at %lu Hz\n", riscv_timebase);
>>>  
>>> +	cpu = of_find_node_by_path("/cpus");
>>> +
>>> +	if (of_property_read_bool(cpu, "barebox,csr-cycle")) {
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

