Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx012.vodafonemail.xion.oxcs.net ([153.92.174.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKMfN-0002QX-Ml
 for barebox@lists.infradead.org; Fri, 03 Apr 2020 13:47:28 +0000
References: <c013449a-b775-b805-df78-48a908d506fb@arcor.de>
 <d5949d44-9377-98f4-029c-ae1b0debf7d1@pengutronix.de>
 <2179bad5-0ec6-a2ae-683f-f2f24e3aabfb@arcor.de>
 <56816c6f-86ac-e350-3d23-bf0ff1fe87d2@pengutronix.de>
 <6679e805-8f1e-0c02-cc73-e2d2ab4911c1@arcor.de>
 <63e3eb58-9f5b-54d6-e8cf-b7672fe55a4a@pengutronix.de>
From: Giorgio <giorgio.nicole@arcor.de>
Message-ID: <9bd7f507-8f59-98ee-18af-48be3dba9372@arcor.de>
Date: Fri, 3 Apr 2020 15:47:10 +0200
MIME-Version: 1.0
In-Reply-To: <63e3eb58-9f5b-54d6-e8cf-b7672fe55a4a@pengutronix.de>
Content-Language: en-US
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: imx7d dual core boot
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad,

thank you for the detailed explanations, I'll have a look
at the armv7 ref. manual for more background.

I wanted just to note, the problem is specifically linked
to enabling the MMU:

in arch/arm/cpu/cache-armv7.S:


		orrne	r0, r0, #1		@ MMU enabled
...
		mcr	p15, 0, r0, c1, c0, 0	@ load control register

without the 'orrne ...' the imx7 does not hang.

giorgio


On 4/3/20 3:01 PM, Ahmad Fatoum wrote:
> Hello Giorgio,
> 
> On 3/30/20 4:33 PM, Giorgio wrote:
>> Hi Ahmad,
>>
>> I think I've found the problem with my imx7d:
>> in your commit id ae0a375ba71ba9b9a70cb7eda177445fcfbf586d:
>>
>> ARM: cache-armv7: remove duplicate domain initialization
>> ...
>>
>> you removed the two asm lines:
>>
>> 		movne	r1, #-1
>> 		mcrne	p15, 0, r1, c3, c0, 0	@ load domain access control
>>
>> from arch/arm/cpu/cache-armv7.S
> 
> Thanks for bisecting this.
> The patch you ended up at is stopping barebox from runnning in manager domain.
> This is necessary to avoid speculative execution on memory mapped IO regions.
> With manager domain, you can access/execute everything.
> Without, you will have to clear the eXecute Never bit for regions you need to execute.
> It's cleared by default for the SDRAM banks and for the barebox text section.
> SRAM or BootROM that's jumped into after MMU setup need to be explicitly marked
> as executable.
> 
> That said, I am not sure why it breaks..
> 
> I've got myself an i.MX7D and will take a look the coming days
> where it goes wrong. If you have new info/patches to share in the
> meanwhile, please do. :)
> 
>> If I add them back then the imx7d does not hang anymore and
>> the kernel is able to boot and power up the second core as
>> expected.
>>
>> I have just one last question: what is the reason for the
>> 'mov r12, lr' at the beginning of v7_mmu_cache_on ?
> 
> It looks like a left-over.
> 837795895801e6c3 ("ARM __mmu_cache_*: Do not clobber registers")
> made it obsolete.
> 
> Cheers
> Ahmad
> 
>>
>> giorgio
>>
>> On 3/27/20 11:01 AM, Ahmad Fatoum wrote:
>>> Hello,
>>>
>>> On 3/27/20 9:27 AM, Giorgio wrote:
>>>> Hi,
>>>>
>>>> maybe 'crash' was not the best word to describe the effect I see;
>>>>
>>>> the bootloader just stops running, never returns from the call
>>>> to __mmu_cache_on(), there's no debug messages or stack dumps;
>>>> in this case the kernel image is not started.
>>>>
>>>> I think on my arch / soc __mmu_cache_on() calls some asm coded function
>>>> defined in arch/arm/cpu/cache-armv7.S (v7_mmu_cache_on) and one
>>>> of the opcodes there crashes the cpu directly. Maybe I should try to
>>>> dump the core state (registers, ...) on the console just before jumping
>>>> to v7_mmu_cache_on.
>>>
>>> AFAIU, non-secure barebox keeps reusing the secure monitor barebox till
>>> it boots the kernel. The secure monitor already had translation tables
>>> set up and active and non-secure barebox reuses those.
>>>
>>> Given that this should've worked once, could you run a git-bisect and
>>> see when it broke?
>>>
>>> If you make bnet the default target, only board interaction you need
>>> for bisecting should be the power cycle when you do a git bisect bad.
>>>
>>> This is most likely the fastest way to find what broke it.
>>>
>>> Cheers
>>> Ahmad
>>>
>>>>
>>>> giorgio
>>>>
>>>> On 3/27/20 6:56 AM, Ahmad Fatoum wrote:
>>>>> Hello,
>>>>>
>>>>> On 3/26/20 11:21 AM, Giorgio wrote:
>>>>>> Hi,
>>>>>>
>>>>>> I'm having problems booting a linux kernel image on an imx7d.
>>>>>>
>>>>>> What I want is to boot in nonsecure mode and that the kernel enables the
>>>>>> second core with the PSCI.
>>>>>>
>>>>>> What I see is that barebox crashes within the call to __mmu_cache_on()
>>>>>> in the file arch/arm/cpu/sm.c:
>>>>>
>>>>> The kind of crash may be useful info. Can you copy the whole boot log?
>>>>>
>>>>>>
>>>>>> int armv7_secure_monitor_install(void)
>>>>>> {
>>>>>> ...
>>>>>> 	if (mmuon) {
>>>>>> 		/*
>>>>>> 		 * If the MMU was already turned on in secure mode, enable it in
>>>>>> 		 * non-secure mode aswell
>>>>>> 		 */
>>>>>> 		__mmu_cache_on();
>>>>>> 	}
>>>>>> ...
>>>>>>
>>>>>>
>>>>>> As a workaround, if I comment the call to __mmu_cache_on(), the system
>>>>>> boots properly with 2 cores:
>>>>>>
>>>>>> Loading ARM Linux zImage '/mnt/boot/kernel.img'
>>>>>> Loading devicetree from '/mnt/boot/devtree.dtb'
>>>>>> commandline: console=ttymxc5,115200n8 ip=::::gdm:eth0:off root=PARTUUID=37199a57-ec72-41f9-ab27-445329d1bd77 rootwait
>>>>>> Starting kernel in nonsecure mode
>>>>>> [    0.000000] 000: Booting Linux on physical CPU 0x0
>>>>>> [    0.000000] 000: Linux version 5.4.24-rt15-dirty (giorgio@BVblfs) (gcc version 9.2.1 20200110 (OSELAS.Toolchain 9.2.1)) #1 SMP PREEMPT_RT Fri Mar 13 17:25:51 CET 2020
>>>>>> [    0.000000] 000: CPU: ARMv7 Processor [410fc075] revision 5 (ARMv7), cr=10c5387d
>>>>>> [    0.000000] 000: CPU: div instructions available: patching division code
>>>>>> [    0.000000] 000: CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
>>>>>> t[    0.000000] 000: Memory policy: Data cache writealloc
>>>>>> [    0.000000] 000: cma: Reserved 64 MiB at 0xfa000000
>>>>>> [    0.000000] 000: psci: probing for conduit method from DT.
>>>>>> [    0.000000] 000: psci: PSCIv1.0 detected in firmware.
>>>>>> [    0.000000] 000: psci: Using standard PSCI v0.2 function IDs
>>>>>> [    0.000000] 000: psci: MIGRATE_INFO_TYPE not supported.
>>>>>> [    0.000000] 000: psci: SMC Calling Convention v1.0
>>>>>> [    0.000000] 000: percpu: Embedded 9 pages/cpu s15008 r0 d21856 u36864
>>>>>> [    0.000000] 000: Built 1 zonelists, mobility grouping on.  Total pages: 522751
>>>>>> [    0.000000] 000: Kernel command line: console=ttymxc5,115200n8 ip=::::gdm:eth0:off root=PARTUUID=37199a57-ec72-41f9-ab27-445329d1bd77 rootwait
>>>>>> [    0.000000] 000: Dentry cache hash table entries: 131072 (order: 8, 1048576 bytes, linear)
>>>>>> [    0.000000] 000: Inode-cache hash table entries: 65536 (order: 6, 262144 bytes, linear)
>>>>>> [    0.000000] 000: mem auto-init: stack:off, heap alloc:off, heap free:off
>>>>>> [    0.000000] 000: Memory: 1997464K/2097148K available (9216K kernel code, 430K rwdata, 3100K rodata, 1024K init, 733K bss, 34148K reserved, 65536K cma-reserved, 1244448K highmem)
>>>>>> [    0.000000] 000: SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=2, Nodes=1
>>>>>> [    0.000000] 000: rcu: Preemptible hierarchical RCU implementation.
>>>>>> [    0.000000] 000: rcu: 	RCU priority boosting: priority 1 delay 500 ms.
>>>>>> [    0.000000] 000: rcu: 	RCU_SOFTIRQ processing moved to rcuc kthreads.
>>>>>> [    0.000000] 000: 	No expedited grace period (rcu_normal_after_boot).
>>>>>> [    0.000000] 000: 	Tasks RCU enabled.
>>>>>> [    0.000000] 000: rcu: RCU calculated value of scheduler-enlistment delay is 10 jiffies.
>>>>>> [    0.000000] 000: NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
>>>>>> [    0.000000] 000: rcu: 	Offload RCU callbacks from CPUs: (none).
>>>>>> [    0.000000] 000: arch_timer: cp15 timer(s) running at 8.00MHz (virt).
>>>>>> [    0.000000] 000: clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x1d854df40, max_idle_ns: 440795202120 ns
>>>>>> [    0.000001] 000: sched_clock: 56 bits at 8MHz, resolution 125ns, wraps every 2199023255500ns
>>>>>> [    0.000013] 000: Switching to timer-based delay loop, resolution 125ns
>>>>>> [    0.000426] 000: Switching to timer-based delay loop, resolution 41ns
>>>>>> [    0.000438] 000: sched_clock: 32 bits at 24MHz, resolution 41ns, wraps every 89478484971ns
>>>>>> [    0.000450] 000: clocksource: mxc_timer1: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 79635851949 ns
>>>>>> [    0.001597] 000: Console: colour dummy device 80x30
>>>>>> [    0.001642] 000: Calibrating delay loop (skipped), value calculated using timer frequency.. 48.00 BogoMIPS (lpj=240000)
>>>>>> [    0.001650] 000: pid_max: default: 32768 minimum: 301
>>>>>> [    0.001788] 000: Mount-cache hash table entries: 2048 (order: 1, 8192 bytes, linear)
>>>>>> [    0.001807] 000: Mountpoint-cache hash table entries: 2048 (order: 1, 8192 bytes, linear)
>>>>>> [    0.002631] 000: CPU: Testing write buffer coherency: ok
>>>>>> [    0.059991] 000: Setting up static identity map for 0x80100000 - 0x80100060
>>>>>> [    0.079972] 000: rcu: Hierarchical SRCU implementation.
>>>>>> [    0.160105] 000: smp: Bringing up secondary CPUs ...
>>>>>> [    0.280687] 000: smp: Brought up 1 node, 2 CPUs
>>>>>> [    0.280697] 000: SMP: Total of 2 processors activated (96.00 BogoMIPS).
>>>>>> [    0.280705] 000: CPU: All CPU(s) started in SVC mode.
>>>>>> [    0.281170] 000: devtmpfs: initialized
>>>>>> [    0.290961] 000: random: get_random_u32 called from bucket_table_alloc+0x58/0x14c with crng_init=0
>>>>>>
>>>>>>
>>>>>> giorgio
>>>>>>
>>>>>> _______________________________________________
>>>>>> barebox mailing list
>>>>>> barebox@lists.infradead.org
>>>>>> http://lists.infradead.org/mailman/listinfo/barebox
>>>>>>
>>>>>
>>>>
>>>
>>
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
