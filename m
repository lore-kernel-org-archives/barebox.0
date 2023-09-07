Delivery-date: Thu, 07 Sep 2023 10:33:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeASX-006uf8-D2
	for lore@lore.pengutronix.de; Thu, 07 Sep 2023 10:33:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeASU-0002JK-RN
	for lore@pengutronix.de; Thu, 07 Sep 2023 10:33:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D4WTV9h03xQdWikl3bC3aKdY1x4OkXspMpSj55Gr87Q=; b=WrPqjZKLDMHHsFKwEEDeHehxbc
	2lYaktqF5RiGz3I9pFv3WrQYdZIHvUyW84p2kT9kYBXsL+KfhQdBtvy1JtzovELYLvYncS376nbYM
	OtUr8vuBitP5rgVlYB7TsEahtLYi3qJlr+y6qTsirDVCb9IN0Y2hCxLzywdoFpXGe7Il6OzFyiPM2
	EJMfXHtmGjlLnZV/GeKVSSoJcYAChOCFWTPBGwfuu/SRTf8ZMz1p16yYkH5HCuBmCKUEXi4E9+qyN
	rwCvGE6DC7J52UACYuoZHjMDNF1YaMwnujhpFkzD/n50RnX9jX+Z/P8jCa6vNjBR8l8PXm3Aq8YNT
	mIKxGjTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeARQ-00Bb5u-2N;
	Thu, 07 Sep 2023 08:32:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeARN-00Bb5U-0m
	for barebox@lists.infradead.org;
	Thu, 07 Sep 2023 08:32:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qeARL-0001tP-E9; Thu, 07 Sep 2023 10:32:39 +0200
Message-ID: <18205fbc-7165-e3bc-49a0-f23dbbe4a555@pengutronix.de>
Date: Thu, 7 Sep 2023 10:32:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Lior Weintraub <liorw@pliops.com>
Cc: Ahmad Fatoum <ahmad@a3f.at>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <f4aae166-1cc4-6255-1fde-7a52c7872bd8@pengutronix.de>
 <15f8d795-f486-1914-9eba-e5a315bf2083@pengutronix.de>
 <PR3P195MB055508CA0B6A5CE36DCCADD4C355A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <f2fa8b9e-ae3e-ac89-a7ab-4710aebcdb98@pengutronix.de>
 <PR3P195MB0555E76684395257F4C32426C355A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <PR3P195MB0555565681087967FFAA3CBEC35AA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <7023e1e4-f383-49aa-e194-3c61be33c9fe@pengutronix.de>
 <PR3P195MB0555BA90F8CC6FDAAD775C50C35FA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <2dd1dcef-8c63-5360-365d-c4ac29dad38c@pengutronix.de>
 <PR3P195MB05559F58793017F19F9AD1F3C321A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <0623c749-be9a-423a-d79d-e21a8513af88@pengutronix.de>
 <PR3P195MB055558F7BAAF81999ED46D29C308A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <19bbb913-64d9-2d71-81b3-8cbac346b66d@pengutronix.de>
 <PR3P195MB0555881A5E4A6EDD452E0BD6C31FA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <PR3P195MB0555881A5E4A6EDD452E0BD6C31FA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230907_013241_426208_70ECE618 
X-CRM114-Status: GOOD (  41.55  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] Porting barebox to a new SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Lior,

On 22.08.23 10:48, Lior Weintraub wrote:
> Thanks Ahmad, I Will try to post same question on Linux mailing list.

I am curious to follow the discussion. Did you already post somewhere?
I can't find a recent mail on lore.kernel.org.

Feel free to Cc me when you post.

Cheers,
Ahmad

> 
>> -----Original Message-----
>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> Sent: Tuesday, August 22, 2023 11:01 AM
>> To: Lior Weintraub <liorw@pliops.com>
>> Cc: Ahmad Fatoum <ahmad@a3f.at>; barebox@lists.infradead.org
>> Subject: Re: [PATCH v2] Porting barebox to a new SoC
>>
>> CAUTION: External Sender
>>
>> Hello Lior,
>>
>> On 03.08.23 13:17, Lior Weintraub wrote:
>>> Hi Ahmad,
>>>
>>> Hope you had a great time on EOSS 2023 :-)
>>
>> Thanks and sorry for the late answer.
>>
>>> Quick recap and additional info on the current issue:
>>>
>>> 1.
>>> The spider-soc QEMU with the additional GICv3 and Timers was tested with
>> a bare-metal code and proved to be OK.
>>> This bare-metal code sets the A53 timers and GICv3 to handle interrupts on
>> various execution levels as well as various security levels:
>>> EL1_NS_PHYSICAL_TIMER set as GROUP1_NON_SECURE
>>> EL1_SCR_PHYSICAL_TIMER set as GROUP1_SECURE
>>> EL2_PHYSICAL_TIMER set as GROUP1_SECURE
>>> VIRTUAL_TIMER set as GROUP1_NON_SECURE
>>
>> ok.
>>
>>> 2.
>>> The kernel we build with Buildroot runs OK on virt QEMU but gets stuck in
>> the middle when we use our spider-soc QEMU.
>>> There are few differences between those runs:
>>> a.
>>> The virt QEMU is executed with -kernel switch and hence the QEMU itself
>> implements the "bootloader" and prepares the DT given to the Kernel.
>>> When the Kernel starts on this platforms it starts at EL1.
>>
>> This can be influenced e.g. on Virt with -M virt,virtualization=on, I think.
>>
>>> b.
>>> The spider-soc QEMU is executed with -device loader,file=spider-soc-bl1.elf
>>> Just for easy execution and testing, this executable includes all the needed
>> binaries (as const data blobs) and it copies the binaries into correct locations
>> before jumping to Barebox execution.
>>> The list of binaries includes the barebox, kernel, dt, and rootfs.
>>> As you recall, BL31 is compiled via Trusted-Firmware-A and has all it's
>> functions as empty stubs because we currently don't care about CPU power
>> states.
>>> The prove that BL31 is executed correctly is that Barebox now runs at EL2.
>>
>> Good.
>>
>>> At that point the Linux kernel is starting and as I mentioned gets stuck in the
>> middle (cpu_do_idle function. more details to follow).
>>>
>>> Debugging the kernel with GDB revealed few differences:
>>> 1. When running with Barebox, the kernel starts at EL2 and at some point
>> moves to EL1.
>>> Not sure if that has some impact on the following issue but thought it is
>> worth mentioning.
>>> (We get a "CPU: All CPU(s) started at EL2" trace)
>>
>> I get the same on an i.MX8M as well (multi-core Cortex-A53 SoC).
>>
>>> Another difference that might be related to this execution level is that timers
>> setting shows that it uses the physical timer (as oppose to virt QEMU run that
>> uses the virtual timer):
>>> The spider-soc QEMU Timers dump:
>>> CNTFRQ_EL0 = 0x3b9aca0
>>> CNTP_CTL_EL0 = 0x5
>>> CNTV_CTL_EL0 = 0x0
>>> CNTP_TVAL_EL0 = 0xff1f2ad5
>>> CNTP_CVAL_EL0 = 0xac5c3240
>>> CNTV_TVAL_EL0 = 0x52c2d916
>>> CNTV_CVAL_EL0 = 0x0
>>>
>>> The virt QEMU Timers dump:
>>> CNTFRQ_EL0 = 0x3b9aca0
>>> CNTP_CTL_EL0 = 0x0
>>> CNTV_CTL_EL0 = 0x5
>>> CNTP_TVAL_EL0 = 0xb8394fbc
>>> CNTP_CVAL_EL0 = 0x0
>>> CNTV_TVAL_EL0 = 0xffd18e39
>>> CNTV_CVAL_EL0 = 0x479858aa
>>>
>>> 2. When running with Barebox, the kernel fails to correctly set the GICv3
>> registers.
>>> So in other words, there are no timer events and hence the scheduler is not
>> running.
>>> The code get stuck on cpu_do_idle but we also found that the RCU cb_list is
>> not empty (probably explains why scheduler haven't started (just a guess)).
>>> We placed a breakpoint just before calling wait_for_completion (from
>> function rcu_barrier on kernel/rcu/tree.c) and found:
>>> bt
>>> #0  rcu_barrier () at kernel/rcu/tree.c:4064
>>> #1  0xffffffc08059e1b4 in mark_readonly () at init/main.c:1789
>>> #2  kernel_init (unused=<optimized out>) at init/main.c:1838
>>> #3  0xffffffc080015e48 in ret_from_fork () at
>> arch/arm64/kernel/entry.S:853
>>>
>>> At that point rcu_state.barrier_cpu_count.counter is 1 (as oppose to virt
>> QEMU where it is 0 at that point)
>>> If we place the breakpoint a bit earlier in this rcu_barrier function (just
>> before the for_each_possible_cpu loop) and run few more steps (to get the
>> rdp) we see that rdp->cblist.len is 0x268 (616):
>>> p/x rdp->cblist
>>> $1 = {head = 0xffffffc0808f06d0, tails = {0xffffff802fe55a78,
>> 0xffffff802fe55a78, 0xffffff802fe55a78, 0xffffff80001c22c8}, gp_seq = {0x0,
>> 0x0, 0x0, 0x0}, len = 0x268, seglen = {0x0, 0x0, 0x0, 0x268}, flags = 0x1}
>>>
>>> When we compare that with virt QEMU we see that the rdp->cblist.len is 0
>> there.
>>>
>>> IMHO, this all is a result of the GICv3 settings that were not applied properly.
>>> As a result there are no timer interrupts.
>>>
>>> Further debugging on the GICv3 settings showed that the code (function
>> gic_cpu_init on drivers/irqchip/irq-gic-v3.c) tries to write 0xffffffff to
>> GICR_IGROUPR0 (Configure SGIs/PPIs as non-secure Group-1) but when we
>> try to read it back we get all zeros.
>>> Dumping GICv3 settings after the call to init_IRQ:
>>> Showing only the differences:
>>>                       Spider-SoC QEMU virt QEMU
>>> GICD_CTLR =           0x00000012              0x00000053
>>> GICD_TYPER =          0x037a0402              0x037a0007
>>> GICR0_IGROUPR0 =      0x00000000              0xffffffff
>>> GICR0_ISENABLER0 =    0x00000000              0x0000007f
>>> GICR0_ICENABLER0 =    0x00000000              0x0000007f
>>> GICR0_ICFGR0 =        0x00000000              0xaaaaaaaa
>>>
>>> Any thoughts?
>>> As always, your support is much appreciated!
>>
>> Sorry to disappoint, but I have no hands-on experience with the GIC.
>> My guess would be that you are missing initialization in the TF-A...
>>
>> Cheers,
>> Ahmad
>>
>>>
>>> Cheers,
>>> Lior.
>>>
>>>
>>>> -----Original Message-----
>>>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>>> Sent: Friday, June 30, 2023 8:53 AM
>>>> To: Lior Weintraub <liorw@pliops.com>; Ahmad Fatoum <ahmad@a3f.at>;
>>>> barebox@lists.infradead.org
>>>> Subject: Re: [PATCH v2] Porting barebox to a new SoC
>>>>
>>>> CAUTION: External Sender
>>>>
>>>> Hi Lior,
>>>>
>>>> On 25.06.23 22:33, Lior Weintraub wrote:
>>>>> Hello Ahmad,
>>>>
>>>> [Sorry for the delay, we're at EOSS 2023 currently]
>>>>
>>>>> I failed to reproduce this issue on virt because the addresses and
>> peripherals
>>>> on virt machine are different and it is difficult to change our code to match
>>>> that.
>>>>> If you think this is critical I will make extra effort to make it work.
>>>>> AFAIU, this suggestion was made to debug the "conflict" issue.
>>>>
>>>> It's not critical, but I'd have liked to understand this, so I can check
>>>> if it's perhaps a barebox bug.
>>>>
>>>>> Currently the workaround I am using is just to set the size of the kernel
>>>> partition to match the exact size of the "Image" file.
>>>>>
>>>>> The other issue I am facing is that Kernel seems stuck on cpu_do_idle and
>>>> there is no login prompt from the kernel.
>>>>
>>>> Does it call into PSCI during idle?
>>>>
>>>>> As you recall, I am running on a custom QEMU that tries to emulate our
>>>> platform.
>>>>> I suspect that I did something wrong with the GICv3 and Timers
>> connectivity.
>>>>> The code I used was based on examples I saw on sbsa-ref.c and virt.c.
>>>>> In addition, I declared the GICv3 and timers on our device tree.
>>>>>
>>>>> I running QEMU with "-d int" so I am also getting trace of exceptions and
>>>> interrupts.
>>>>
>>>> Nice. Didn't know about this option.
>>>>
>>>> [snip]
>>>>
>>>>> Exception return from AArch64 EL3 to AArch64 EL1 PC
>> 0xffffffc00802112c
>>>>> Taking exception 13 [Secure Monitor Call] on CPU 0
>>>>> ...from EL1 to EL3
>>>>> ...with ESR 0x17/0x5e000000
>>>>> ...with ELR 0xffffffc008021640
>>>>> ...to EL3 PC 0x10005400 PSTATE 0x3cd
>>>>> Exception return from AArch64 EL3 to AArch64 EL1 PC
>> 0xffffffc008021640
>>>>
>>>> Looks fine so far? Doesn't look like it's hanging in EL1.
>>>>
>>>> [snip]
>>>>
>>>>> Segment Routing with IPv6
>>>>> In-situ OAM (IOAM) with IPv6
>>>>> sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver
>>>>> NET: Registered PF_PACKET protocol family
>>>>> NET: Registered PF_KEY protocol family
>>>>> NET: Registered PF_VSOCK protocol family
>>>>> registered taskstats version 1
>>>>> clk: Disabling unused clocks
>>>>> Freeing unused kernel memory: 1664K
>>>>
>>>> Not sure. Normally, I'd try again with pd_ignore_unused clk_ignore_unused
>> in
>>>> the
>>>> kernel arguments, but I think you define no clocks or power domains yet in
>>>> the DT?
>>>>
>>>> You can try again with kernel command line option initcall_debug and see
>>>> what the
>>>> initcall is that is getting stuck. If nothing helps, maybe attach a hardware
>>>> debugger?
>>>>
>>>> Cheers,
>>>> Ahmad
>>>>
>>>> --
>>>> Pengutronix e.K.                           |                             |
>>>> Steuerwalder Str. 21                       | http://secure-
>> web.cisco.com/1RKlXzLFuAdOeswlWvHRCbVHHvoQssFo7iVFqyvv8Yn0sP-
>> MsWtfVRf2HW_4AXhQNuR5kNBuKLHNWkQfzg5qQhZ2AYhdNYqrfmNM7Isb
>> bDhybYe7C21TIR6Du5pxC7TSTbhhg4oBK3J9y2XyMtJNhBKeliNv2I5G4mlnB_
>> 57ph9x9tlPHstmZ8SL22VzM9RxLoj-5LddbVSsB69VGG-
>> O3Hw57EyoSFWKWmjNjOHDmuU1R3SwOX2tkDMmiLPauqbBc-
>> FP9cAFpclCgrOIJu2Jfef0-
>> sVV346BmbxC1SOFAKCI/http%3A%2F%2Fwww.pengutronix.de%2F  |
>>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>>
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://secure-
>> web.cisco.com/1RKlXzLFuAdOeswlWvHRCbVHHvoQssFo7iVFqyvv8Yn0sP-
>> MsWtfVRf2HW_4AXhQNuR5kNBuKLHNWkQfzg5qQhZ2AYhdNYqrfmNM7Isb
>> bDhybYe7C21TIR6Du5pxC7TSTbhhg4oBK3J9y2XyMtJNhBKeliNv2I5G4mlnB_
>> 57ph9x9tlPHstmZ8SL22VzM9RxLoj-5LddbVSsB69VGG-
>> O3Hw57EyoSFWKWmjNjOHDmuU1R3SwOX2tkDMmiLPauqbBc-
>> FP9cAFpclCgrOIJu2Jfef0-
>> sVV346BmbxC1SOFAKCI/http%3A%2F%2Fwww.pengutronix.de%2F  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



