Delivery-date: Thu, 01 Jun 2023 14:37:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4hYS-005mUm-RV
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 14:37:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4hYO-0007Md-6w
	for lore@pengutronix.de; Thu, 01 Jun 2023 14:37:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Et/+EM+gJy9y9RFRi+/4VYvzIdV6dv9cuCcCU93zjkY=; b=y81LxYLP95kZSuqFnRpn+BsJFf
	GMNvUlDapEQPEwMGXEP4yqwZDaCK1cuNk7Y2GoyvXNEaxRq6DjNPzzEFkU8fCSSQSRzZlA2MMvc0a
	k31gPn4VmXEsAo5/lnqyFauSsFJi4WNZ14mttOdLuxuGaYwKFVp+Oqz8PIFMP3mDXdzWuEo8LoPoj
	JlpXqZGnezJ1AdDqQBRG+xLh5lR4k2TkJ6YAG7ctvbeXuySHZpRnCnbc1pev83lDVAFJfEu34RI48
	3+qusQFH7NzxcFb3SbirUwrjf3HENaLgVcpsUuEYp5F+EcBpyLEhCaA4V9YX7qUyDk/6M5SNGd9tG
	cXRTHmPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4hWu-003ZWZ-07;
	Thu, 01 Jun 2023 12:35:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4hWk-003ZV5-1a
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 12:35:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q4hWi-000789-5F; Thu, 01 Jun 2023 14:35:36 +0200
Message-ID: <98480243-c1b7-a2bb-9267-2126797f52bd@pengutronix.de>
Date: Thu, 1 Jun 2023 14:35:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Lior Weintraub <liorw@pliops.com>, Ahmad Fatoum <ahmad@a3f.at>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <f4aae166-1cc4-6255-1fde-7a52c7872bd8@pengutronix.de>
 <20230528153735.3315271-1-ahmad@a3f.at>
 <PR3P195MB05551AE3B3998B097BC90DCEC3459@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <PR3P195MB05555743B13DDCB43CEBA309C34A9@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <49afe89e-6e87-d003-119a-223344b6c4c9@pengutronix.de>
 <PR3P195MB055543898F124A46C209C170C34B9@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <23017859-57ee-8df3-cd8d-c7e4f2094cfe@pengutronix.de>
 <AM0P195MB0548E634FB807F1501D1D716C3489@AM0P195MB0548.EURP195.PROD.OUTLOOK.COM>
 <3448bd9c-06e3-89a9-e8de-c284d0268ca9@pengutronix.de>
 <AM0P195MB0548337CA7A533D0456BB14CC3489@AM0P195MB0548.EURP195.PROD.OUTLOOK.COM>
 <3340583d-12cd-1a52-4c9c-d237c58bfca7@pengutronix.de>
 <PR3P195MB0555265E59E77AB3ABE53D03C3499@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <ffde7964-42a4-c762-d46d-93cd9d923646@pengutronix.de>
 <PR3P195MB0555940C37560E6D01731A1BC3499@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <PR3P195MB0555940C37560E6D01731A1BC3499@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_053539_017171_625F036E 
X-CRM114-Status: GOOD (  44.83  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] Porting barebox to a new SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Lior,

On 01.06.23 13:45, Lior Weintraub wrote:
> Hello Ahmad,
> 
> Very interesting stuff.
> 
> We actually did started TF-A integration few months ago and tested it on the QEMU running ARM virt machine.
> The TF-A compilation didn't include BL31 image (probably this explains the "ERROR:   BL2: Failed to load image id 3").

I wouldn't recommend using TF-A as BL2. I am quite content with how
it's done on NXP's i.MX SoCs, which is the flow I described at the
end of my last mail. Instead of loading a FIP, TF-A would just
return to DRAM (or maintain LR on TF-A entry and return to it).

> For this code to run we used the following QEMU command:
> 
> qemu-system-aarch64 -nographic -machine virt,secure=on -cpu cortex-a53,rvbar=0x0000000000 \
>    -smp 1 -m 1024 -bios bl1.bin -d unimp -semihosting-config enable=on,target=native \
>    -monitor telnet:localhost:1235,server,nowait -gdb tcp::1236
> 
> Output:
> NOTICE:  bl1_early_platform_set
> NOTICE:  Booting Trusted Firmware
> NOTICE:  BL1: v2.7(debug):831de6588
> NOTICE:  BL1: Built : 12:40:08, May 28 2023
> INFO:    BL1: RAM 0xe0ee000 - 0xe0f6000
> INFO:    BL1: cortex_a53: CPU workaround for 835769 was applied
> INFO:    BL1: cortex_a53: CPU workaround for 843419 was applied
> INFO:    BL1: cortex_a53: CPU workaround for 855873 was applied
> INFO:    BL1: cortex_a53: CPU workaround for 1530924 was applied
> INFO:    BL1: Loading BL2
> WARNING: Firmware Image Package header check failed.
> INFO:    Loading image id=1 at address 0xe07b000
> INFO:    Image id=1 loaded: 0xe07b000 - 0xe081201
> NOTICE:  BL1: Booting BL2
> INFO:    Entry point address = 0xe07b000
> INFO:    SPSR = 0x3c5
> NOTICE:  BL2: v2.7(debug):831de6588
> NOTICE:  BL2: Built : 12:40:08, May 28 2023
> INFO:    BL2: Doing platform setup
> INFO:    BL2: Loading image id 3
> WARNING: Firmware Image Package header check failed.
> WARNING: Failed to obtain reference to image id=3 (-2)
> ERROR:   BL2: Failed to load image id 3 (-2)
> 
> When we tried to modify the TF-A code to use our SoC (e.g. change the start address to 0xC0_0400_0000 and use UART on 0xD0_0030_7000) it crashed with seg. Fault.

Try building your BL31 as position-independent executable. The code doing
fixed text area may be hardcoded to 32-bit. See here for an example
of turning on PIE:

https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/16370

> We didn't continue with this development effort and decided we will write our own BootROM as BL1

Ye, I don't think TF-A is a good candidate for a BL1 (are there even
other users that user TF-A that way?). 

> and use that to load u-boot or barebox

That's ok. You just need BL31 to provide you runtime services (or maintain your
Linux SoC support patches for ever).

> Now I understand we better go back and study how to port TF-A to our SoC.

:)

Cheers,
Ahmad

> 
> Cheers,
> Lior. 
> 
>  
>> -----Original Message-----
>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> Sent: Thursday, June 1, 2023 12:29 PM
>> To: Lior Weintraub <liorw@pliops.com>; Ahmad Fatoum <ahmad@a3f.at>;
>> barebox@lists.infradead.org
>> Subject: Re: [PATCH v2] Porting barebox to a new SoC
>>
>> CAUTION: External Sender
>>
>> Hello Lior,
>>
>> On 01.06.23 10:54, Lior Weintraub wrote:
>>> Hi Ahmad,
>>>
>>> Thanks again for your great support and the patch.
>>> I've checked it and it works perfectly!
>>> The UART issue was solved after fixing the device tree per your
>> recommendations.
>>> Now I can write into barbox terminal :-)
>>
>> Nice!
>>
>>> When I type "cpuinfo" on the terminal I am getting:
>>> implementer: ARM
>>> architecture: v8
>>> core: Cortex-A53 r0p4
>>> exception level: 3
>>> cache: no cache
>>> Control register: P D Z DT IT U XP
>>
>> FYI, barebox next (or maybe master?) branch adds mmuinfo command to
>> arm64.
>> You can use that to check if a specific address is cached or not.
>>
>>> Notice that it say "no cache".
>>> I tried to add cache to cpu0 but it didn't help.
>>>
>>> .
>>> .
>>>    d-cache-size = <0x8000>;
>>>    d-cache-line-size = <64>;
>>>    d-cache-sets = <128>; // 32KiB(size)/64(line-size)=512ways/4-way set
>>>    i-cache-size = <0x8000>;
>>>    i-cache-line-size = <64>;
>>>    i-cache-sets = <256>; // 32KiB(size)/64(line-size)=512ways/2-way set
>>>    next-level-cache = <&l2>;
>>> };
>>>
>>> l2: l2-cache0 {
>>>    compatible = "cache";
>>>    cache-unified;
>>>    cache-size = <0x80000>;
>>>    cache-line-size = <64>;
>>>    cache-sets = <512>; // 512KiB(size)/64(line-size)=8192ways/16-way set
>>>    cache-level = <2>;
>>> }
>>
>> barebox doesn't consume these nodes. What may be happening is that
>> cpuinfo
>> was written with the assumption that barebox executes at EL2 or EL1, so
>> executing it at EL3 may end up accessing the wrong MSRs. Feel free to send
>> a patch against arch/arm/cpu/cpuinfo.c, so it uses the correct register for
>> EL3. current_el() will tell you which EL you are at.
>>
>>> Regarding Linux kernel:
>>> This would be the next step but I assume that it would be a bit more
>> complicated.
>>
>> Linux ARM64 Maintainers mandate that platforms implement the PSCI
>> protocol.
>> In your case with single core that means providing reset and poweroff
>> handlers
>> that the kernel can invoke via secure monitor call.
>>
>> barebox can consume psci: CONFIG_ARM_PSCI_CLIENT, CONFIG_CMD_SMC,
>> but what
>> you're missing is the provider side. barebox as PSCI provider is implemented
>> only for a single ARM32 SoC, the i.MX7. All supported ARM64 platforms use
>> TF-A as BL31 with the exception of Layerscape (which uses PPA, an NXP BL31
>> implementation).
>>
>> What does this mean for you?
>>
>>   1) Either add your SoC to TF-A
>>   2) Extend PSCI implementation in barebox for ARM64.
>>
>> While I think it would be cool to have barebox provide all of BL2, BL31 and
>> BL32, I think you are better advised to use TF-A, because that's what most
>> other ARM Silicon Vendors use. That means less effort for you and easier
>> maintenance as you benefit from fixes done for other SoCs using the same
>> IPs. barebox certainly benefits from being able to focus on being a bootloader
>> and leaving the errata workarounds, GIC init stuff and runtime services
>> to TF-A.
>>
>> The boot flow would then be:
>>
>>  - barebox PBL runs as BL2 in SRAM and sets up DRAM
>>  - barebox PBL executes BL31 (TF-A) which was compiled into PBL
>>  - TF-A installs secure monitor and returns control to DRAM in EL2
>>  - barebox resumes execution in EL2 as BL33
>>  - Linux is invoked in EL2 and can communicate with secure monitor.
>>
>> You may find this talk interesting:
>> https://fosdem.org/2023/schedule/event/uboot_psci/
>> Even if I disagree a bit with the takeaway.
>>
>>> I guess we will have to integrate the interrupt controlled (GIC-600) into
>> QEMU and into the device tree for it to work.
>>> Is that a valid assumption?
>>
>> I never had to add a new SoC to Linux, so I can't give any better
>> suggestions than Yes. Where you're going, you'll need interrupts.
>>
>> Godspeed and keep me posted :)
>> Ahmad
>>
>>>
>>> Thanks,
>>> Lior.
>>>
>>>
>>>
>>>
>>>> -----Original Message-----
>>>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>>> Sent: Wednesday, May 31, 2023 8:55 PM
>>>> To: Lior Weintraub <liorw@pliops.com>; Ahmad Fatoum <ahmad@a3f.at>;
>>>> barebox@lists.infradead.org
>>>> Subject: Re: [PATCH v2] Porting barebox to a new SoC
>>>>
>>>> CAUTION: External Sender
>>>>
>>>> Hi Lior,
>>>>
>>>> On 31.05.23 18:13, Lior Weintraub wrote:
>>>>> Hi Ahmad,
>>>>>
>>>>> Using end of SRAM as PBL stack is currently not working because we need
>>>> 40bit address (0xC0_0020_0000).
>>>>> This needs a fix to ENTRY_FUNCTION_WITHSTACK macro.
>>>>
>>>> Ah, right. I just sent an (untested) patch. Would be cool if you could
>>>> try it out.
>>>>
>>>>> I tried just to change const u32 __stack_top = (stack_top); to const u64
>>>> __stack_top = (stack_top); but there were linking errors caused by:
>>>>> ASSERT(. - __pbl_board_stack_top <= 8, "Only One PBL per Image
>> allowed")
>>>>
>>>> The easy way would have been using a __attribute__((naked)) function,
>> but
>>>> those are only supported for arm32, not arm64. The alternative is thus
>>>> writing the entry point in assembly and to make board authors life easier
>>>> the linker script ensures that the stack setup entry point is invoked prior
>>>> to the board entry.
>>>>
>>>>> Regarding the arm timer:
>>>>> Adding the timer entry to DT solved the issue.
>>>>>
>>>>> Regarding the UART:
>>>>> Indeed CONFIG_SERIAL_AMBA_PL011 was set on spider_defconfig (also
>>>> verified it generated the correct entry on .config).
>>>>> I also noticed that if I remove the putc_ll implementation there is no Tx at
>> all
>>>> from Barebox.
>>>>
>>>> I've led you astray. Indeed:
>>>>
>>>>>>> of_platform_bus_create() - skipping /soc, no compatible prop
>>>>
>>>> points at the issue.
>>>>
>>>> Try adding into /soc
>>>>
>>>>   compatible = "simple,bus";
>>>>   ranges;
>>>>   dma-ranges;
>>>>
>>>> This matches /soc with the simple bus driver which just instantiates devices
>>>> for the
>>>> contained children. Those in turn should be matched by the drivers.
>>>>
>>>> The ranges stuff just tells that memory and SoC peripherals exist in the
>> same
>>>> address space.
>>>>
>>>> When it probes you may need to describe the clock in the DT. Eventually,
>> you
>>>> will
>>>> want to have a clock driver for your hardware (good news: barebox and
>> Linux
>>>> have
>>>> basically the same API, so you only need to write it once). But for now, you
>>>> can
>>>> fake it using fixed-clock in the DT. Take a look at:
>>>>
>>>> snps,dw-apb-uart in arch/riscv/dts/jh7100.dtsi and compare with
>>>> dts/src/arm/imx28.dtsi
>>>> to see how to map that to PL011.
>>>>
>>>>> Could it be a hint?
>>>>
>>>> DEBUG_LL bridges the gap until a driver registers a console that's enabled. If
>>>> this
>>>> never happens, you are left with a non-interactive shell.
>>>>
>>>> Cheers,
>>>> Ahmad
>>>>
>>>>>
>>>>> Thanks,
>>>>> Lior.
>>>>>
>>>>>> -----Original Message-----
>>>>>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>>>>> Sent: Wednesday, May 31, 2023 11:40 AM
>>>>>> To: Lior Weintraub <liorw@pliops.com>; Ahmad Fatoum
>> <ahmad@a3f.at>;
>>>>>> barebox@lists.infradead.org
>>>>>> Subject: Re: [PATCH v2] Porting barebox to a new SoC
>>>>>>
>>>>>> CAUTION: External Sender
>>>>>>
>>>>>> Hi Lior,
>>>>>>
>>>>>> On 31.05.23 10:05, Lior Weintraub wrote:
>>>>>>> Hi Ahmad,
>>>>>>>
>>>>>>> Thanks again for your prompt reply and accurate tips!
>>>>>>> Took the following changes:
>>>>>>> 1. Increasing the DRAM size to 128MB (let barebox start from 0).
>>>>>>> 2. Set PBL stack to offset 2MB from DRAM
>>>>>>
>>>>>> Just use end of SRAM, so you are completely independent of DRAM
>>>>>> until you call barebox_arm_entry.
>>>>>>
>>>>>>> 3. Fix the device tree "memory" entry to have 128MB.
>>>>>>
>>>>>> (y)
>>>>>>
>>>>>>> 4. Load barebox-spider-mk1-evk.img to SRAM and run from there.
>>>>>>>
>>>>>>> Now I can see the following logs:
>>>>>>> uncompress.c: memory at 0x00000000, size 0x08000000
>>>>>>> uncompress.c: uncompressing barebox binary at 0x000000c0000021c0
>>>>>> (size 0x0001e3a4) to 0x07e00000 (uncompressed size: 0x000390d0)
>>>>>>> uncompress.c: jumping to uncompressed image at
>>>> 0x0000000007e00000
>>>>>>> start.c: memory at 0x00000000, size 0x08000000
>>>>>>> start.c: found DTB in boarddata, copying to 0x07dffcc0
>>>>>>> start.c: initializing malloc pool at 0x079ffcc0 (size 0x00400000)
>>>>>>> start.c: starting barebox...
>>>>>>> initcall-> command_slice_init+0x0/0x3c
>>>>>>> initcall-> globalvar_init+0x0/0x80
>>>>>>> register_device: global
>>>>>>> register_device: nv
>>>>>>> initcall-> platform_init+0x0/0x1c
>>>>>>> register_device: platform
>>>>>>> initcall-> amba_bus_init+0x0/0x1c
>>>>>>> register_device: amba
>>>>>>> initcall-> spi_bus_init+0x0/0x1c
>>>>>>> register_device: spi
>>>>>>> initcall-> gpio_desc_alloc+0x0/0x24
>>>>>>> initcall-> fs_bus_init+0x0/0x1c
>>>>>>> register_device: fs
>>>>>>> initcall-> aarch64_init_vectors+0x0/0x50
>>>>>>> initcall-> gpio_gate_clock_driver_register+0x0/0x1c
>>>>>>> register_driver: gpio-gate-clock
>>>>>>> initcall-> of_arm_init+0x0/0x5c
>>>>>>> start.c: barebox_arm_boot_dtb: using barebox_boarddata
>>>>>>> using boarddata provided DTB
>>>>>>> adding DT alias:serial0: stem=serial id=0
>> node=/soc/serial@d000307000
>>>>>>> register_device: machine
>>>>>>> of_platform_bus_create() - skipping /chosen, no compatible prop
>>>>>>> of_platform_bus_create() - skipping /aliases, no compatible prop
>>>>>>> of_platform_bus_create() - skipping /cpus, no compatible prop
>>>>>>> of_platform_bus_create() - skipping /memory@0, no compatible prop
>>>>>>> of_platform_bus_create() - skipping /soc, no compatible prop
>>>>>>> initcall-> register_autoboot_vars+0x0/0x70
>>>>>>> initcall-> arm_arch_timer_driver_register+0x0/0x1c
>>>>>>> register_driver: arm-architected-timer
>>>>>>> initcall-> of_timer_init+0x0/0x20
>>>>>>> initcall-> init_fs+0x0/0x3c
>>>>>>> initcall-> pl011_driver_register+0x0/0x1c
>>>>>>> register_driver: uart-pl011
>>>>>>> initcall-> of_stdoutpath_init+0x0/0x28
>>>>>>> initcall-> of_probe_memory+0x0/0x60
>>>>>>> __request_region ok: 0x00000000:0x07ffffff flags=0x0
>>>>>>> initcall-> __bare_init_end+0x0/0x6c
>>>>>>> register_device: mem0
>>>>>>> initcall-> of_reserved_mem_walk+0x0/0x1ac
>>>>>>> initcall-> mem_malloc_resource+0x0/0xa8
>>>>>>> __request_region ok: 0x079ffcc0:0x07dffcbf flags=0x200
>>>>>>> __request_region ok: 0x07e00000:0x07e2aeff flags=0x200
>>>>>>> __request_region ok: 0x07e2af00:0x07e390cf flags=0x200
>>>>>>> __request_region ok: 0x07e390d0:0x07e3adaf flags=0x200
>>>>>>> initcall-> bootsource_init+0x0/0x40
>>>>>>> initcall-> ramfs_init+0x0/0x1c
>>>>>>> register_driver: ramfs
>>>>>>> initcall-> devfs_init+0x0/0x1c
>>>>>>> register_driver: devfs
>>>>>>> initcall-> arm_request_stack+0x0/0x398
>>>>>>> __request_region ok: 0x07ff0000:0x07ff7fff flags=0x200
>>>>>>> initcall-> mount_root+0x0/0x7c
>>>>>>> mount: none on / type ramfs, options=
>>>>>>> register_device: ramfs0
>>>>>>>     probe-> ramfs0
>>>>>>> mount: none on /dev type devfs, options=
>>>>>>> register_device: devfs0
>>>>>>>     probe-> devfs0
>>>>>>> initcall-> binfmt_sh_init+0x0/0x1c
>>>>>>> initcall-> binfmt_uimage_init+0x0/0x1c
>>>>>>> initcall-> console_common_init+0x0/0x48
>>>>>>> initcall-> of_kernel_init+0x0/0x28
>>>>>>> initcall-> console_ctrlc_init+0x0/0x30
>>>>>>> initcall-> mem_init+0x0/0x90
>>>>>>> register_device: mem1
>>>>>>> register_driver: mem
>>>>>>>     probe-> mem0
>>>>>>>     probe-> mem1
>>>>>>> initcall-> of_partition_init+0x0/0x48
>>>>>>> initcall-> prng_init+0x0/0x40
>>>>>>> initcall-> null_init+0x0/0x40
>>>>>>> initcall-> full_init+0x0/0x40
>>>>>>> initcall-> zero_init+0x0/0x40
>>>>>>> initcall-> spider_board_driver_register+0x0/0x1c
>>>>>>> register_driver: board-spider
>>>>>>>     probe-> machine
>>>>>>> initcall-> barebox_memory_areas_init+0x0/0x40
>>>>>>> __request_region ok: 0x07dffcc0:0x07dfffce flags=0x200
>>>>>>> initcall-> barebox_of_populate+0x0/0x28
>>>>>>> initcall-> of_register_memory_fixup+0x0/0x20
>>>>>>> initcall-> dummy_csrc_warn+0x0/0x44
>>>>>>> WARNING: Warning: Using dummy clocksource
>>>>>>
>>>>>> Add a arm,armv8-timer node into your SoC device tree.
>>>>>> This lets barebox and Linux know that you have the ARM
>>>>>> architected timer available. Without that, you'll notice
>>>>>> that timeouts are wrong.
>>>>>>
>>>>>>> initcall-> bootm_init+0x0/0xf4
>>>>>>> initcall-> init_command_list+0x0/0x40
>>>>>>> register command bootm
>>>>>>> register command cat
>>>>>>> register command cd
>>>>>>> register command clear
>>>>>>> register command cp
>>>>>>> register command cpuinfo
>>>>>>> register command devinfo
>>>>>>> register command drvinfo
>>>>>>> register command echo
>>>>>>> register command exit
>>>>>>> register command false
>>>>>>> register command help
>>>>>>> register command ?
>>>>>>> register command ll
>>>>>>> register command ls
>>>>>>> register command md
>>>>>>> register command memcmp
>>>>>>> register command memcpy
>>>>>>> register command memset
>>>>>>> register command mkdir
>>>>>>> register command mount
>>>>>>> register command mw
>>>>>>> register command pwd
>>>>>>> register command rm
>>>>>>> register command rmdir
>>>>>>> register command setenv
>>>>>>> register command sh
>>>>>>> register command source
>>>>>>> register command .
>>>>>>> register command test
>>>>>>> register command [
>>>>>>> register command true
>>>>>>> register command :
>>>>>>> register command umount
>>>>>>> register command version
>>>>>>> initcall-> display_meminfo+0x0/0xa8
>>>>>>> barebox code: 0x7e00000 -> 0x7e2aeff
>>>>>>> bss segment:  0x7e390d0 -> 0x7e3adaf
>>>>>>> malloc space: 0x079ffcc0 -> 0x07dffcbf (size 4 MiB)
>>>>>>> initcall-> of_register_bootargs_fixup+0x0/0x3c
>>>>>>> initcall-> device_probe_deferred+0x0/0x14c
>>>>>>> initcall-> of_init_hostname+0x0/0x28
>>>>>>> initcall-> aarch64_register_image_handler+0x0/0x2c
>>>>>>> initcall-> load_environment+0x0/0x4c
>>>>>>> loading defaultenv
>>>>>>> environment load /dev/env0: No such file or directory
>>>>>>> Maybe you have to create the partition.
>>>>>>> initcalls done
>>>>>>>
>>>>>>> Hit any to stop autoboot:    0
>>>>>>> boot: No such file or directory
>>>>>>> barebox:/
>>>>>>>
>>>>>>>
>>>>>>> Few questions:
>>>>>>> 1. The serial input doesn't work. i.e. I cannot type anything hence
>> cannot
>>>>>> interact with barebox terminal.
>>>>>>
>>>>>> DEBUG_LL only does otuput. For input, you will want to load the driver.
>>>>>> Do you have CONFIG_SERIAL_AMBA_PL011 enabled?
>>>>>>
>>>>>>>      Does it require GIC and setting interrupts for it to work?
>>>>>>
>>>>>> No interrupts needed. barebox runs with interrupts disabled and
>>>> everything
>>>>>> is done cooperatively.
>>>>>>
>>>>>>> 2. What does "of_platform_bus_create() - skipping" means? Do I need
>> to
>>>> fix
>>>>>> that?
>>>>>>
>>>>>> That's normal debugging output. Some device tree nodes are busses,
>> which
>>>>>> have
>>>>>> children. These entries are skipped because they have no compatible.
>> This is
>>>>>> expected. I'd suggest you remove your VERBOSED_DEBUG define, so you
>>>> are
>>>>>> not
>>>>>> spammed by too much debugging output.
>>>>>>
>>>>>>> 3. Looks like I am still missing some stuff (rootfs? Environment?
>>>> Mounting?
>>>>>> Partitions?)
>>>>>>
>>>>>> Take multi_v8_defconfig, open menuconfig and enable your SoC and use
>>>> that.
>>>>>> That will be quicker than enabling everything yourself. If it doesn't work
>>>>>> out of the box, try imx_v8_defconfig.
>>>>>>
>>>>>> Once you get around to upstreaming your SoC, I'd suggest you just add it
>>>>>> to multi_v8_defconfig. Not all ARMv8 SoCs are supported there, but
>> those
>>>>>> that are make development easier, because we don't need to build as
>> many
>>>>>> different configs..
>>>>>>
>>>>>> Cheers,
>>>>>> Ahmad
>>>>>>
>>>>>>>
>>>>>>> Thanks,
>>>>>>> Have a great day,
>>>>>>> Lior.
>>>>>>>
>>>>>>>
>>>>>>>> -----Original Message-----
>>>>>>>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>>>>>>> Sent: Wednesday, May 31, 2023 9:11 AM
>>>>>>>> To: Lior Weintraub <liorw@pliops.com>; Ahmad Fatoum
>>>> <ahmad@a3f.at>;
>>>>>>>> barebox@lists.infradead.org
>>>>>>>> Subject: Re: [PATCH v2] Porting barebox to a new SoC
>>>>>>>>
>>>>>>>> CAUTION: External Sender
>>>>>>>>
>>>>>>>> Hi Lior,
>>>>>>>>
>>>>>>>> On 30.05.23 22:10, Lior Weintraub wrote:
>>>>>>>>> Hello Ahmad,
>>>>>>>>>
>>>>>>>>> Thanks again for your kind support!
>>>>>>>>> Your comments helped me progress and the current situation is as
>>>>>> follows:
>>>>>>>>> Our QEMU Spider machine is running a BL1.elf file using the following
>>>>>>>> command:
>>>>>>>>> QEMU_AUDIO_DRV=none qemu-system-aarch64 -M spider-soc -
>> smp 1
>>>> -
>>>>>> m
>>>>>>>> 128M -nographic \
>>>>>>>>>       -device loader,file=BL1.elf -cpu cortex-a53,rvbar=0xC004000000 \
>>>>>>>>>       -d unimp -semihosting-config enable=on,target=native \
>>>>>>>>>       -monitor telnet:localhost:1235,server,nowait \
>>>>>>>>>       -gdb tcp::1236
>>>>>>>>>
>>>>>>>>> The BL1.elf is our BootROM application that runs from ROM address
>>>>>>>> 0xC004000000.
>>>>>>>>> Just for debugging purpose we've increased the ROM size so it can
>>>> include
>>>>>>>> the images/barebox-spider-mk1-evk.img (as a const array).
>>>>>>>>> BL1 then copy it (using memcpy) to address 0 and jumps there for
>>>>>>>> execution.
>>>>>>>>
>>>>>>>> Sounds ok.
>>>>>>>>
>>>>>>>>> On the real ASIC this address will be the DRAM and indeed will need
>> to
>>>> be
>>>>>>>> initialized before the copy but here on QEMU it is not required.
>>>>>>>>
>>>>>>>> I see. You could still have your bootrom move barebox into SRAM and
>>>> then
>>>>>>>>
>>>>>>>>   barebox_arm_entry(DRAM_ADDR, SZ_128M,
>>>>>> __dtb_spider_mk1_evk_start);
>>>>>>>>
>>>>>>>> To have PBL extract barebox to DRAM. Even if you don't need need
>>>> DRAM
>>>>>>>> setup in QEMU, the flow would be similar to what you will have on
>> actual
>>>>>>>> silicon.
>>>>>>>>
>>>>>>>>> The lowlevel.c of spider-evk was modified to use DRAM_ADDR
>>>> 0x400000
>>>>>>>> (4MB from start) and MY_STACK_TOP was set to 0x8000000 (128M).
>>>>>>>>
>>>>>>>> That's not needed. While you don't have control where barebox PBL
>> will
>>>> be
>>>>>>>> located
>>>>>>>> (depends on BootROM), barebox will extract itself to the end of DRAM
>>>>>>>> without
>>>>>>>> overwriting itself, so you can just use DRAM_ADDR 0 normally.
>>>> Eventually,
>>>>>>>> stack
>>>>>>>> top should go into SRAM, but anywhere that works is ok.
>>>>>>>>
>>>>>>>>> In addition, I implemented putc_ll (currently hard-coded in
>>>>>>>> include/debug_ll.h) and opened log level to VERBOSE_DEBUG
>> (currently
>>>>>> just
>>>>>>>> hard-coded in printk.h).
>>>>>>>>
>>>>>>>> There's CONFIG_DEBUG_PBL you can enable to get all these messages
>> by
>>>>>>>> default.
>>>>>>>>
>>>>>>>>> I see the following (which makes sense) logs on QEMU terminal:
>>>>>>>>> uncompress.c: memory at 0x00400000, size 0x00200000
>>>>>>>>> uncompress.c: uncompressing barebox binary at
>>>> 0x0000000000002200
>>>>>>>> (size 0x0001d3b2) to 0x00400000 (uncompressed size: 0x000373d0)
>>>>>>>>
>>>>>>>> Why pass only 2M to barebox_arm_entry? While this need not be the
>>>>>> whole
>>>>>>>> of RAM, this
>>>>>>>> initial memory is what barebox will use for itself including its final stack
>>>> and
>>>>>>>> malloc area. barebox will also not place itself into the last 1M AFAIK, so
>>>> 2M
>>>>>>>> may not work ok. You should use the minimum possible RAM here or
>> if
>>>> you
>>>>>>>> can detect
>>>>>>>> in PBL how much RAM you have or just the whole RAM bank. I am not
>>>> sure
>>>>>>>> anything lower
>>>>>>>> than SZ_4M would work ok. (Note this is DRAM size, not SRAM.
>> barebox
>>>>>> PBL
>>>>>>>> is fine being
>>>>>>>> called from 64K SRAMs, it just needs DRAM to extract to).
>>>>>>>>
>>>>>>>>> I then connect with aarch64-none-elf-gdb, load the barebox symbols
>>>> (to
>>>>>>>> 0x400000) and check the current execution state (program counter
>> and
>>>>>>>> stack).
>>>>>>>>> Looks like the code is stuck on function register_autoboot_vars:
>>>>>>>>> sp             0x5f7e60            0x5f7e60
>>>>>>>>> pc             0x401264            0x401264 <register_autoboot_vars+24>
>>>>>>>>>
>>>>>>>>> Few observations:
>>>>>>>>> 1. The PBL was using stack top located on 0x8000000 (which is
>>>>>>>> MY_STACK_TOP). Found it be causing a breakpoint on the PBL.
>>>>>>>>> 2. Barebox uses a stack top on 0x600000 which is probably calculated
>>>>>> from
>>>>>>>> my new DRAM_ADDR and SZ_2M given to the function call:
>>>>>>>>>     barebox_arm_entry(DRAM_ADDR, SZ_2M,
>>>>>> __dtb_spider_mk1_evk_start);
>>>>>>>>>
>>>>>>>>> This is great! I am starting to find my way.
>>>>>>>>
>>>>>>>> :) Ye, the ENTRY_FUNCTION_WITHSTACK is only when the BootROM
>>>>>> doesn't
>>>>>>>> enter
>>>>>>>> with a valid stack pointer. It's overwritten as soon as barebox is told
>>>>>>>> about the initial memory layout (with barebox_arm_entry).
>>>>>>>>
>>>>>>>>> When the barebox execution didn't print anything to the terminal I
>>>>>>>> remembered that we used a place holder on the dtsi for the uart.
>>>>>>>>> So now I changed it to:
>>>>>>>>> uart0: serial@d000307000 {
>>>>>>>>>        compatible = "arm,pl011", "arm,primecell";
>>>>>>>>>        reg = <0xd0 0x307000 0 0x1000>;
>>>>>>>>> }
>>>>>>>>> (Our QEMU UART is currently using pl011 device.)
>>>>>>>>
>>>>>>>> Looks ok. Don't forget to enable the driver (via make menuconfig).
>>>>>>>>
>>>>>>>>> After some time (trying to debug by enabling MMU but then reverted
>>>> the
>>>>>>>> code back), I got to a point that when I try to run again I am getting an
>>>>>>>> exception.
>>>>>>>>> I can swear all code changes were reverted back to the point where I
>>>> saw
>>>>>> the
>>>>>>>> barebox stuck on register_autoboot_vars but now it just cases an
>>>>>> exception.
>>>>>>>>> The exception vector code is located on our ROM (part of BL1 code)
>> and
>>>>>> the
>>>>>>>> logs shows that the link register has the value 0x401218 which suggest
>>>> the
>>>>>>>> following code:
>>>>>>>>> 0000000000001200 <load_environment>:
>>>>>>>>> 1200: a9be7bfd        stp     x29, x30, [sp, #-32]!
>>>>>>>>> 1204: 910003fd        mov     x29, sp
>>>>>>>>> 1208: a90153f3        stp     x19, x20, [sp, #16]
>>>>>>>>> 120c: 94000a07        bl      3a28 <default_environment_path_get>
>>>>>>>>> 1210: d00000f3        adrp    x19, 1f000 <do_cpuinfo+0x1f0>
>>>>>>>>> 1214: 912a7273        add     x19, x19, #0xa9c
>>>>>>>>> 1218: aa0003f4        mov     x20, x0
>>>>>>>>>
>>>>>>>>> Any ideas or suggestions how to proceed with the debugging?
>>>>>>>>
>>>>>>>> You shouldn't need to touch the MMU code. If your initial memory
>> setup
>>>>>>>> is wonky, you may end up overwriting stuff. Try again with bigger
>>>> memory.
>>>>>>>>
>>>>>>>>> BTW, to answer your questions:
>>>>>>>>> The SRAM of 4MB is the only one we have because we assumed it is
>>>> only
>>>>>> for
>>>>>>>> BootROM to load a PBL
>>>>>>>>
>>>>>>>> Ok. Sometimes there are SRAMs for use with DMA. I asked, because a
>>>>>> SRAM
>>>>>>>> in the first 4M
>>>>>>>> would lend itself nicely as stack, but if there is none, we can adjust
>>>>>>>> ENTRY_FUNCTION_WITHSTACK to accept a 64-bit parameter.
>>>>>>>>
>>>>>>>> Cheers,
>>>>>>>> Ahmad
>>>>>>>>
>>>>>>>>> Thank you very much,
>>>>>>>>> Cheers,
>>>>>>>>> Lior.
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>> -----Original Message-----
>>>>>>>>>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>>>>>>>>> Sent: Monday, May 29, 2023 10:03 PM
>>>>>>>>>> To: Lior Weintraub <liorw@pliops.com>; Ahmad Fatoum
>>>>>> <ahmad@a3f.at>;
>>>>>>>>>> barebox@lists.infradead.org
>>>>>>>>>> Subject: Re: [PATCH v2] Porting barebox to a new SoC
>>>>>>>>>>
>>>>>>>>>> CAUTION: External Sender
>>>>>>>>>>
>>>>>>>>>> Hello Lior,
>>>>>>>>>>
>>>>>>>>>> On 29.05.23 15:34, Lior Weintraub wrote:
>>>>>>>>>>> Hi Ahmad,
>>>>>>>>>>>
>>>>>>>>>>> I have revised the addresses and used DRAM address @ 0 instead:
>>>>>>>>>>> #define UARTBASE        (0xD000307000)
>>>>>>>>>>> #define DRAM_ADDR       (0x00000000)
>>>>>>>>>>> #define MY_STACK_TOP    (0x00000000 + SZ_2M) // Set the stack
>>>> 2MB
>>>>>>>> from
>>>>>>>>>> DRAM start
>>>>>>>>>>
>>>>>>>>>> Is DRAM configured by the time barebox runs? If not, you should
>> keep
>>>>>>>> stack
>>>>>>>>>> top
>>>>>>>>>> in SRAM, until you have setup memory in prebootloader (PBL). Is
>> the
>>>> 4M
>>>>>>>>>> SRAM
>>>>>>>>>> the only on-chip SRAM you have?
>>>>>>>>>>
>>>>>>>>>>> static inline void spider_serial_putc(void *base, int c)
>>>>>>>>>>> {
>>>>>>>>>>>     *((volatile unsigned *)base) = c;
>>>>>>>>>>
>>>>>>>>>> There's a helper for that: writel(c, base); In barebox, it's equivalent
>>>>>>>>>> to the volatile access, but in Linux it involves a write memory barrier.
>>>>>>>>>> We try to write code in barebox, so it's easily reusable in Linux (and
>>>>>>>>>> the other way round).
>>>>>>>>>>
>>>>>>>>>>> }
>>>>>>>>>>>
>>>>>>>>>>> I will try to test it on QEMU using an initial QEMU machine we
>> made
>>>> for
>>>>>>>>>> Spider.
>>>>>>>>>>> In this machine we only have 3 memory regions and a PL011 UART:
>>>>>>>>>>> spider_soc_memories soc_memories[] = {
>>>>>>>>>>>     {.name = "SPIDER_GPRAM",   .add = 0xC000000000ULL, .size = 4
>> *
>>>>>> MiB},
>>>>>>>>>>>     {.name = "SPIDER_ROM",     .add = 0xC004000000ULL, .size =
>> 128 *
>>>>>>>> KiB},
>>>>>>>>>>>     {.name = "SPIDER_DRAM",    .add = 0x0000000000ULL, .size = 1
>> *
>>>>>> GiB},
>>>>>>>>>>> };
>>>>>>>>>>>
>>>>>>>>>>> This special QEMU machine can run our BL1 code from "ROM"
>>>> address
>>>>>>>> (we
>>>>>>>>>> set the RVBAR to point there).
>>>>>>>>>>> So my idea is to test the barebox image by the following steps:
>>>>>>>>>>> 1. Modify the QEMU code to have a "ROM" with the size of 128M.
>>>>>>>>>>> 2. Compile our BL1 code to include the barebox.bin as a const
>> array,
>>>>>> copy
>>>>>>>> it
>>>>>>>>>> to "DRAM" @ address 0 and jump there.
>>>>>>>>>>
>>>>>>>>>> Why not map QEMU -bios option to SRAM? (Or DRAM directly, if it
>>>>>> needs
>>>>>>>> no
>>>>>>>>>> special setup from
>>>>>>>>>> barebox side).
>>>>>>>>>>
>>>>>>>>>>> For this to work I wanted to understand how to call (i.e. what
>>>>>> arguments
>>>>>>>> to
>>>>>>>>>> pass) to barebox.
>>>>>>>>>>
>>>>>>>>>> barebox doesn't expect any arguments, because most BootROMs
>>>> don't
>>>>>>>> pass
>>>>>>>>>> anything useful.
>>>>>>>>>> Some pass information about bootsource though, so that's why the
>>>>>>>>>> ENTRY_FUNCTION has
>>>>>>>>>> r0, r1 and r2 as parameters, but you need not use them.
>>>>>>>>>>
>>>>>>>>>>> So I checked the barebox.map and found the function "start" on
>>>>>> address
>>>>>>>> 0.
>>>>>>>>>>
>>>>>>>>>> You may know that Linux on some platforms comes with a
>>>> decompressor
>>>>>>>> that
>>>>>>>>>> is glued to the
>>>>>>>>>> front of the kernel image and extracts the compressed kernel image.
>>>>>>>> barebox
>>>>>>>>>> has the same
>>>>>>>>>> concept. The prebootloader is uncompressed and runs (starting
>> from
>>>>>>>>>> ENTRY_FUNCTION) and
>>>>>>>>>> then does some early setup (e.g. enable clocks, configure PMIC,
>> setup
>>>>>>>> DRAM,
>>>>>>>>>> load secure
>>>>>>>>>> monitor (BL31), ...etc.) and then it decompresses barebox proper
>> into
>>>>>>>> DRAM.
>>>>>>>>>>
>>>>>>>>>> barebox.bin <- barebox proper. You don't usually need that.
>>>>>>>>>> barebox.elf <- ELF binary for the above (for gdb)
>>>>>>>>>> barebox.map <- map file of the above
>>>>>>>>>>
>>>>>>>>>> images/barebox-spider-mk1-evk.img   <- complete barebox image
>> (PBL
>>>> +
>>>>>>>>>> barebox proper)
>>>>>>>>>> images/start_spider_mk1_evk.pbl     <- ELF image for the above
>>>>>>>>>> images/start_spider_mk1_evk.pbl.map <- map file of the above
>>>>>>>>>>
>>>>>>>>>> If you want to follow barbeox from the start, begin at
>>>>>>>> start_spider_mk1_evk.
>>>>>>>>>>
>>>>>>>>>>> Then I went to arch/arm/cpu/start.c and realized that the code is
>>>>>> compiled
>>>>>>>>>> with CONFIG_PBL_IMAGE.
>>>>>>>>>>> In that case I assume I need to pass 3 arguments and use this
>>>> function
>>>>>>>>>> prototype:
>>>>>>>>>>> void start(unsigned long membase, unsigned long memsize, void
>>>>>>>>>> *boarddata);
>>>>>>>>>>
>>>>>>>>>> barebox prebootloader takes care of this, so you don't need to do
>>>>>> anything.
>>>>>>>>>>
>>>>>>>>>>> Few questions:
>>>>>>>>>>> 1. Will that call work:
>>>>>>>>>>>     typedef void (*barebox_start)(unsigned long , unsigned long ,
>> void
>>>> *);
>>>>>>>>>>>     #define DRAM_START  (0)
>>>>>>>>>>>     barebox_start p_barebox = (barebox_start)DRAM_START;
>>>>>>>>>>>     p_barebox(DRAM_START, DRAM_START+SZ_2M, (void
>>>>>>>>>> *)(DRAM_START+SZ_4M));
>>>>>>>>>>>     This assumes that my BL1 code also copied the device tree
>>>> (barebox-
>>>>>> dt-
>>>>>>>>>> 2nd.img? start_dt_2nd.pblb? start_spider_mk1_evk.pblb?)
>>>>>>>>>>
>>>>>>>>>> The device tree is built into the PBL and passed to barebox proper.
>> This
>>>>>>>>>> allows us to use the same barebox proper binary and link it with a
>>>>>> different
>>>>>>>>>> prebootloader for each SoC/board, all in the same build.
>>>>>>>>>>
>>>>>>>>>> barebox-dt-2nd.img is a special image that looks exactly like a Linux
>>>>>> kernel:
>>>>>>>>>>
>>>>>>>>>>   images/barebox-dt-2nd.img: Linux kernel ARM64 boot executable
>>>>>> Image,
>>>>>>>>>> little-endian, 4K pages
>>>>>>>>>>
>>>>>>>>>> and can thus be used for booting for easy chainloading from other
>>>>>>>>>> bootloaders or for running
>>>>>>>>>> with QEMU -kernel. You shouldn't need it right now.
>>>>>>>>>>
>>>>>>>>>>> 2. Do I want to have my code compiled with CONFIG_PBL_IMAGE?
>>>>>>>>>>>     If I understand correctly, it means that my code will provide a PBL
>>>>>> (a.k.a
>>>>>>>>>> BL2) which will set the DRAM and STACK among other things
>> (MMU?).
>>>>>>>>>>
>>>>>>>>>> The patch I sent already builds a PBL. You will need to fill out
>>>>>>>>>> start_spider_mk1_evk
>>>>>>>>>> to do all the other early initialization you need. Then you call
>>>>>>>>>> barebox_arm_entry
>>>>>>>>>> with device tree and memory size and it will take care to do stack
>> setup
>>>> in
>>>>>>>> new
>>>>>>>>>> memory region, MMU setup (if enabled) and chainloading barebox
>>>>>> proper.
>>>>>>>>>>
>>>>>>>>>> Note that PBL isn't necessary BL2. You can chainload barebox from
>>>> within
>>>>>>>>>> barebox (i.e.
>>>>>>>>>> in EL2 or EL1), which is useful for debugging. You will thus often find
>>>> PBL
>>>>>>>> code
>>>>>>>>>> that
>>>>>>>>>> does
>>>>>>>>>>
>>>>>>>>>>   if (current_el() == 3) {
>>>>>>>>>>         /* Do BL2 setup */
>>>>>>>>>>         chainload();
>>>>>>>>>>         __builtin_unreachable();
>>>>>>>>>>   }
>>>>>>>>>>
>>>>>>>>>>   barebox_arm_entry(...)
>>>>>>>>>>
>>>>>>>>>> See for example arch/arm/boards/innocomm-imx8mm-
>>>> wb15/lowlevel.c
>>>>>>>>>>
>>>>>>>>>> to see a real-world example of another Cortex-A53.
>>>>>>>>>>
>>>>>>>>>>>     In that case I assume it is OK.
>>>>>>>>>>> 3. If I try to remove it by having CONFIG_PBL_IMAGE=n on
>>>>>>>> spider_defconfig
>>>>>>>>>> this doesn't do anything
>>>>>>>>>>>     The build (make spider_defconfig) ignores it and say that " No
>>>> change
>>>>>> to
>>>>>>>>>> .config ".
>>>>>>>>>>
>>>>>>>>>> Another symbol forces it to be enabled. If you are curious, run make
>>>>>>>>>> menuconfig
>>>>>>>>>> and then search (/) for the symbol and it will list, whether it's
>> enabled
>>>>>> and
>>>>>>>>>> why:
>>>>>>>>>>
>>>>>>>>>>   Selected by [y]:
>>>>>>>>>>     - PBL_MULTI_IMAGES [=y] && HAVE_PBL_MULTI_IMAGES [=y]
>>>>>>>>>>
>>>>>>>>>> I'd suggest you avoid modifying the .config file manually. always use
>>>>>>>>>> menuconfig.
>>>>>>>>>>
>>>>>>>>>>> 4. I also tried to understand how to implement PUTC_LL but not
>> sure
>>>> I
>>>>>>>>>> understand.
>>>>>>>>>>>    4.1 When I set "CONFIG_DEBUG_LL=y" on spider_defconfig it is
>>>> again
>>>>>>>> not
>>>>>>>>>> written to .config and I get " No change to .config " message.
>>>>>>>>>>
>>>>>>>>>> You must:
>>>>>>>>>>
>>>>>>>>>>   - select HAS_DEBUG_LL from MACH_SPIDER
>>>>>>>>>>   - Add your arch to arch/arm/include/asm/debug_ll.h
>>>>>>>>>>   - Then implement PUTC_LL in e.g. mach/spider/debug_ll.h
>>>>>>>>>>
>>>>>>>>>>>    4.2 Do I need to have my own debug_ll.h file?
>>>>>>>>>>
>>>>>>>>>> Yes. See above.
>>>>>>>>>>
>>>>>>>>>>> 5. When I make changes to spider_defconfig and try to regenerate
>>>> the
>>>>>>>>>> .config and I get " No change to .config " message, does it mean that
>>>>>> those
>>>>>>>>>> macros are "hidden" symbols like you said about the
>>>> CONFIG_CPU_V8?
>>>>>>>>>>
>>>>>>>>>> Yes. Just check menuconfig to see how symbols relate to each other.
>>>>>>>>>> This is 1:1 like it's in Linux, so it'll come in handy when you do
>>>>>>>>>> the kernel port too ;)
>>>>>>>>>>
>>>>>>>>>>> Apologize for so many questions :-)
>>>>>>>>>>
>>>>>>>>>> No problem. Looking forward to your patches ;)
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> Cheers,
>>>>>>>>>> Ahmad
>>>>>>>>>>
>>>>>>>>>>> Cheers,
>>>>>>>>>>> Lior.
>>>>>>>>>>>
>>>>>>>>>>> -----Original Message-----
>>>>>>>>>>> From: Lior Weintraub
>>>>>>>>>>> Sent: Sunday, May 28, 2023 11:16 PM
>>>>>>>>>>> To: Ahmad Fatoum <ahmad@a3f.at>; barebox@lists.infradead.org
>>>>>>>>>>> Subject: RE: [PATCH v2] Porting barebox to a new SoC
>>>>>>>>>>>
>>>>>>>>>>> Hi Ahmad,
>>>>>>>>>>>
>>>>>>>>>>> Thank you so much for your kind support!
>>>>>>>>>>>
>>>>>>>>>>> Indeed we also have a 16GB DRAM that starts from address 0
>>>> (though
>>>>>>>>>> currently we don't have the controller settings (under
>> development)).
>>>>>>>>>>>
>>>>>>>>>>> I also wrote the BootROM (BL1) for this SoC (128KB ROM @
>> address
>>>>>>>>>> 0xC004000000).
>>>>>>>>>>> I understand now that it would be best for me to develop BL2 that
>>>> will
>>>>>> run
>>>>>>>>>> from our SRAM.
>>>>>>>>>>>
>>>>>>>>>>> As this BL2 code is bare-metal I have no problem or limitations with
>>>> the
>>>>>> 40
>>>>>>>>>> bit addresses.
>>>>>>>>>>> The BL2 code will initialize the DRAM controller and then copy
>>>> Barebox
>>>>>>>> image
>>>>>>>>>> from NOR Flash to address 0 of the DRAM.
>>>>>>>>>>> Our NOR Flash is 128MB in size and it is accessed via QSPI
>> controller.
>>>>>>>>>>>
>>>>>>>>>>> I tried applying your suggested patch but got an error while doing
>> so:
>>>>>>>>>>> $git apply 0002-Ahmad.patch
>>>>>>>>>>> 0002-Ahmad.patch:115: trailing whitespace.
>>>>>>>>>>>       .of_compatible = spider_board_of_match, };
>>>>>>>>>>> error: corrupt patch at line 117
>>>>>>>>>>>
>>>>>>>>>>> After some digging I found that my Outlook probably messed with
>>>> the
>>>>>>>> patch
>>>>>>>>>> format (even though I am using text only and no HTML format).
>>>>>>>>>>> When I went to the web and copied the patch from there (mailing
>> list
>>>>>>>>>> archive) it was working well (i.e. no compilation error).
>>>>>>>>>>>
>>>>>>>>>>> Cheers,
>>>>>>>>>>> Lior.
>>>>>>>>>>>
>>>>>>>>>>> -----Original Message-----
>>>>>>>>>>> From: Ahmad Fatoum <ahmad@a3f.at>
>>>>>>>>>>> Sent: Sunday, May 28, 2023 6:38 PM
>>>>>>>>>>> To: barebox@lists.infradead.org
>>>>>>>>>>> Cc: Lior Weintraub <liorw@pliops.com>
>>>>>>>>>>> Subject: [PATCH v2] Porting barebox to a new SoC
>>>>>>>>>>>
>>>>>>>>>>> CAUTION: External Sender
>>>>>>>>>>>
>>>>>>>>>>> From: Lior Weintraub <liorw@pliops.com>
>>>>>>>>>>>
>>>>>>>>>>> Hi,
>>>>>>>>>>>
>>>>>>>>>>> I tried to follow the porting guide on https://ddec1-0-en-
>>>>>>>>>>
>>>>>>>>
>>>>>>
>>>>
>> ctp.trendmicro.com:443/wis/clicktime/v1/query?url=https%3a%2f%2fwww.
>>>>>>>>>>
>>>>>>>>
>>>>>>
>>>>
>> barebox.org%2fdoc%2flatest%2fdevel%2fporting.html%23&umid=60097eda
>>>>>>>>>> -f136-45a1-9c8e-
>>>>>>>>>>
>>>> cf6a76e45cf8&auth=860a7ebb9feba264acc79b6e38eb59582349362c-
>>>>>>>>>> 480ae23736add41c88ab8d30c090a75517ca7f9e but couldn't
>> follow
>>>>>> the
>>>>>>>>>> instructions.
>>>>>>>>>>> I would like to port barebox to a new SoC (which is not a derivative
>> of
>>>>>> any
>>>>>>>>>> known SoC).
>>>>>>>>>>> It has the following:
>>>>>>>>>>> * Single Cortex A53
>>>>>>>>>>> * SRAM (4MB) located on address 0xC000000000
>>>>>>>>>>>
>>>>>>>>>>> The below patch shows my initial test to try and have a starting
>> point.
>>>>>>>>>>> I am setting env variables:
>>>>>>>>>>> export ARCH=arm64
>>>>>>>>>>> export CROSS_COMPILE=/home/pliops/workspace/ARM/arm-
>> gnu-
>>>>>>>>>> toolchain/bin/aarch64-none-elf-
>>>>>>>>>>>
>>>>>>>>>>> Then I build with:
>>>>>>>>>>> make spider_defconfig && make
>>>>>>>>>>>
>>>>>>>>>>> This gives an error:
>>>>>>>>>>> aarch64-none-elf-gcc: error: unrecognized argument in option '-
>>>>>>>> mabi=apcs-
>>>>>>>>>> gnu'
>>>>>>>>>>> aarch64-none-elf-gcc: note: valid arguments to '-mabi=' are: ilp32
>>>> lp64
>>>>>>>>>>> aarch64-none-elf-gcc: error: unrecognized command-line option '-
>>>>>> msoft-
>>>>>>>>>> float'
>>>>>>>>>>> aarch64-none-elf-gcc: error: unrecognized command-line option '-
>>>> mno-
>>>>>>>>>> unaligned-access'
>>>>>>>>>>> /home/pliops/workspace/simplest-linux-
>>>>>>>>>> demo/barebox/scripts/Makefile.build:140: recipe for target
>>>>>>>>>> 'scripts/mod/empty.o' failed
>>>>>>>>>>> make[2]: *** [scripts/mod/empty.o] Error 1
>>>>>>>>>>>
>>>>>>>>>>> Not sure why the compiler flags get -mabi=apcs-gnu when I
>> explicitly
>>>> set
>>>>>>>>>> CONFIG_CPU_V8 and the arch/arm/Makefile has:
>>>>>>>>>>> ifeq ($(CONFIG_CPU_V8), y)
>>>>>>>>>>> CFLAGS_ABI      :=-mabi=lp64
>>>>>>>>>>>
>>>>>>>>>>> The changes I did:
>>>>>>>>>>> >From 848b5f9b18bb1bb96d197cbc1b368ee0a729d581 Mon
>> Sep
>>>> 17
>>>>>>>>>> 00:00:00 2001
>>>>>>>>>>> ---
>>>>>>>>>>>  arch/arm/Kconfig                      | 13 ++++++++
>>>>>>>>>>>  arch/arm/Makefile                     |  1 +
>>>>>>>>>>>  arch/arm/boards/Makefile              |  1 +
>>>>>>>>>>>  arch/arm/boards/spider-evk/Makefile   |  4 +++
>>>>>>>>>>>  arch/arm/boards/spider-evk/board.c    | 26 +++++++++++++++
>>>>>>>>>>>  arch/arm/boards/spider-evk/lowlevel.c | 30 +++++++++++++++++
>>>>>>>>>>>  arch/arm/configs/spider_defconfig     |  8 +++++
>>>>>>>>>>>  arch/arm/dts/Makefile                 |  1 +
>>>>>>>>>>>  arch/arm/dts/spider-mk1-evk.dts       | 10 ++++++
>>>>>>>>>>>  arch/arm/dts/spider-mk1.dtsi          | 46
>>>>>> +++++++++++++++++++++++++++
>>>>>>>>>>>  arch/arm/mach-spider/Kconfig          | 16 ++++++++++
>>>>>>>>>>>  arch/arm/mach-spider/Makefile         |  1 +
>>>>>>>>>>>  arch/arm/mach-spider/lowlevel.c       | 14 ++++++++
>>>>>>>>>>>  images/Makefile                       |  1 +
>>>>>>>>>>>  images/Makefile.spider                |  5 +++
>>>>>>>>>>>  include/mach/spider/lowlevel.h        |  7 ++++
>>>>>>>>>>>  16 files changed, 184 insertions(+)
>>>>>>>>>>>  create mode 100644 arch/arm/boards/spider-evk/Makefile
>>>>>>>>>>>  create mode 100644 arch/arm/boards/spider-evk/board.c
>>>>>>>>>>>  create mode 100644 arch/arm/boards/spider-evk/lowlevel.c
>>>>>>>>>>>  create mode 100644 arch/arm/configs/spider_defconfig  create
>>>> mode
>>>>>>>>>> 100644 arch/arm/dts/spider-mk1-evk.dts  create mode 100644
>>>>>>>>>> arch/arm/dts/spider-mk1.dtsi  create mode 100644
>> arch/arm/mach-
>>>>>>>>>> spider/Kconfig  create mode 100644 arch/arm/mach-
>> spider/Makefile
>>>>>>>> create
>>>>>>>>>> mode 100644 arch/arm/mach-spider/lowlevel.c  create mode
>> 100644
>>>>>>>>>> images/Makefile.spider  create mode 100644
>>>>>>>> include/mach/spider/lowlevel.h
>>>>>>>>>>>
>>>>>>>>>>> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig index
>>>>>>>>>> e76ee0f6dfe1..e5dcf128447e 100644
>>>>>>>>>>> --- a/arch/arm/Kconfig
>>>>>>>>>>> +++ b/arch/arm/Kconfig
>>>>>>>>>>> @@ -255,6 +255,18 @@ config ARCH_ROCKCHIP
>>>>>>>>>>>         select HAS_DEBUG_LL
>>>>>>>>>>>         imply GPIO_ROCKCHIP
>>>>>>>>>>>
>>>>>>>>>>> +config ARCH_SPIDER
>>>>>>>>>>> +       bool "Pliops Spider based"
>>>>>>>>>>> +       depends on 64BIT
>>>>>>>>>>> +       depends on ARCH_MULTIARCH
>>>>>>>>>>> +       select GPIOLIB
>>>>>>>>>>> +       select HAVE_PBL_MULTI_IMAGES
>>>>>>>>>>> +       select COMMON_CLK
>>>>>>>>>>> +       select CLKDEV_LOOKUP
>>>>>>>>>>> +       select COMMON_CLK_OF_PROVIDER
>>>>>>>>>>> +       select OFTREE
>>>>>>>>>>> +       select OFDEVICE
>>>>>>>>>>> +
>>>>>>>>>>>  config ARCH_STM32MP
>>>>>>>>>>>         bool "STMicroelectronics STM32MP"
>>>>>>>>>>>         depends on 32BIT
>>>>>>>>>>> @@ -331,6 +343,7 @@ source "arch/arm/mach-omap/Kconfig"
>>>>>>>>>>>  source "arch/arm/mach-pxa/Kconfig"
>>>>>>>>>>>  source "arch/arm/mach-rockchip/Kconfig"
>>>>>>>>>>>  source "arch/arm/mach-socfpga/Kconfig"
>>>>>>>>>>> +source "arch/arm/mach-spider/Kconfig"
>>>>>>>>>>>  source "arch/arm/mach-stm32mp/Kconfig"
>>>>>>>>>>>  source "arch/arm/mach-versatile/Kconfig"
>>>>>>>>>>>  source "arch/arm/mach-vexpress/Kconfig"
>>>>>>>>>>> diff --git a/arch/arm/Makefile b/arch/arm/Makefile index
>>>>>>>>>> 35ebc70f44e2..4c63dfee48f4 100644
>>>>>>>>>>> --- a/arch/arm/Makefile
>>>>>>>>>>> +++ b/arch/arm/Makefile
>>>>>>>>>>> @@ -101,6 +101,7 @@ machine-$(CONFIG_ARCH_MXS)          +=
>> mxs
>>>>>>>>>>>  machine-$(CONFIG_ARCH_MVEBU)           += mvebu
>>>>>>>>>>>  machine-$(CONFIG_ARCH_NOMADIK)         += nomadik
>>>>>>>>>>>  machine-$(CONFIG_ARCH_OMAP)            += omap
>>>>>>>>>>> +machine-$(CONFIG_ARCH_SPIDER)          += spider
>>>>>>>>>>>  machine-$(CONFIG_ARCH_PXA)             += pxa
>>>>>>>>>>>  machine-$(CONFIG_ARCH_ROCKCHIP)                += rockchip
>>>>>>>>>>>  machine-$(CONFIG_ARCH_SAMSUNG)         += samsung
>>>>>>>>>>> diff --git a/arch/arm/boards/Makefile
>> b/arch/arm/boards/Makefile
>>>>>> index
>>>>>>>>>> 2877debad535..6fe0a90c81ea 100644
>>>>>>>>>>> --- a/arch/arm/boards/Makefile
>>>>>>>>>>> +++ b/arch/arm/boards/Makefile
>>>>>>>>>>> @@ -135,6 +135,7 @@ obj-
>>>>>>>>>> $(CONFIG_MACH_SOCFPGA_TERASIC_DE10_NANO)        += terasic-
>>>>>> de10-
>>>>>>>>>> nano/
>>>>>>>>>>>  obj-$(CONFIG_MACH_SOCFPGA_TERASIC_SOCKIT)      += terasic-
>>>>>> sockit/
>>>>>>>>>>>  obj-$(CONFIG_MACH_SOLIDRUN_CUBOX)              += solidrun-
>> cubox/
>>>>>>>>>>>  obj-$(CONFIG_MACH_SOLIDRUN_MICROSOM)           += solidrun-
>>>>>>>>>> microsom/
>>>>>>>>>>> +obj-$(CONFIG_MACH_SPIDER_MK1_EVK)              += spider-evk/
>>>>>>>>>>>  obj-$(CONFIG_MACH_STM32MP15XX_DKX)             +=
>>>> stm32mp15xx-
>>>>>>>> dkx/
>>>>>>>>>>>  obj-$(CONFIG_MACH_STM32MP13XX_DK)              +=
>> stm32mp13xx-
>>>>>> dk/
>>>>>>>>>>>  obj-$(CONFIG_MACH_LXA_MC1)                     += lxa-mc1/
>>>>>>>>>>> diff --git a/arch/arm/boards/spider-evk/Makefile
>>>>>>>>>> b/arch/arm/boards/spider-evk/Makefile
>>>>>>>>>>> new file mode 100644
>>>>>>>>>>> index 000000000000..da63d2625f7a
>>>>>>>>>>> --- /dev/null
>>>>>>>>>>> +++ b/arch/arm/boards/spider-evk/Makefile
>>>>>>>>>>> @@ -0,0 +1,4 @@
>>>>>>>>>>> +# SPDX-License-Identifier: GPL-2.0-only
>>>>>>>>>>> +
>>>>>>>>>>> +obj-y += board.o
>>>>>>>>>>> +lwl-y += lowlevel.o
>>>>>>>>>>> diff --git a/arch/arm/boards/spider-evk/board.c
>>>>>>>> b/arch/arm/boards/spider-
>>>>>>>>>> evk/board.c
>>>>>>>>>>> new file mode 100644
>>>>>>>>>>> index 000000000000..3920e83b457d
>>>>>>>>>>> --- /dev/null
>>>>>>>>>>> +++ b/arch/arm/boards/spider-evk/board.c
>>>>>>>>>>> @@ -0,0 +1,26 @@
>>>>>>>>>>> +#include <bbu.h>
>>>>>>>>>>> +#include <boot.h>
>>>>>>>>>>> +#include <bootm.h>
>>>>>>>>>>> +#include <common.h>
>>>>>>>>>>> +#include <deep-probe.h>
>>>>>>>>>>> +#include <environment.h>
>>>>>>>>>>> +#include <fcntl.h>
>>>>>>>>>>> +#include <globalvar.h>
>>>>>>>>>>> +
>>>>>>>>>>> +static int spider_board_probe(struct device *dev) {
>>>>>>>>>>> +      /* Do some board-specific setup */
>>>>>>>>>>> +      return 0;
>>>>>>>>>>> +}
>>>>>>>>>>> +
>>>>>>>>>>> +static const struct of_device_id spider_board_of_match[] = {
>>>>>>>>>>> +      { .compatible = "pliops,spider-mk1-evk" },
>>>>>>>>>>> +      { /* sentinel */ },
>>>>>>>>>>> +};
>>>>>>>>>>> +
>>>>>>>>>>> +static struct driver spider_board_driver = {
>>>>>>>>>>> +      .name = "board-spider",
>>>>>>>>>>> +      .probe = spider_board_probe,
>>>>>>>>>>> +      .of_compatible = spider_board_of_match, };
>>>>>>>>>>> +device_platform_driver(spider_board_driver);
>>>>>>>>>>> diff --git a/arch/arm/boards/spider-evk/lowlevel.c
>>>>>>>>>> b/arch/arm/boards/spider-evk/lowlevel.c
>>>>>>>>>>> new file mode 100644
>>>>>>>>>>> index 000000000000..e36fcde4208e
>>>>>>>>>>> --- /dev/null
>>>>>>>>>>> +++ b/arch/arm/boards/spider-evk/lowlevel.c
>>>>>>>>>>> @@ -0,0 +1,30 @@
>>>>>>>>>>> +#include <common.h>
>>>>>>>>>>> +#include <asm/barebox-arm.h>
>>>>>>>>>>> +#include <mach/spider/lowlevel.h>
>>>>>>>>>>> +
>>>>>>>>>>> +#define BASE_ADDR       (0xD000307000)
>>>>>>>>>>> +#define GPRAM_ADDR      (0xC000000000)
>>>>>>>>>>> +#define MY_STACK_TOP    (0xC000000000 + SZ_2M) // Set the
>> stack
>>>>>>>> 2MB
>>>>>>>>>> from GPRAM start (excatly in the middle)
>>>>>>>>>>> +static inline void spider_serial_putc(void *base, int c) {
>>>>>>>>>>> +//     if (!(readl(base + UCR1) & UCR1_UARTEN))
>>>>>>>>>>> +//             return;
>>>>>>>>>>> +//
>>>>>>>>>>> +//     while (!(readl(base + USR2) & USR2_TXDC));
>>>>>>>>>>> +//
>>>>>>>>>>> +//     writel(c, base + URTX0);
>>>>>>>>>>> +}
>>>>>>>>>>> +
>>>>>>>>>>> +ENTRY_FUNCTION_WITHSTACK(start_spider_mk1_evk,
>>>>>> MY_STACK_TOP,
>>>>>>>>>> r0, r1,
>>>>>>>>>>> +r2) {
>>>>>>>>>>> +       extern char __dtb_spider_mk1_evk_start[];
>>>>>>>>>>> +
>>>>>>>>>>> +       spider_lowlevel_init();
>>>>>>>>>>> +
>>>>>>>>>>> +       relocate_to_current_adr();
>>>>>>>>>>> +       setup_c();
>>>>>>>>>>> +
>>>>>>>>>>> +       pbl_set_putc(spider_serial_putc, (void *)BASE_ADDR);
>>>>>>>>>>> +
>>>>>>>>>>> +       barebox_arm_entry(GPRAM_ADDR, SZ_2M,
>>>>>>>>>>> +__dtb_spider_mk1_evk_start); }
>>>>>>>>>>> diff --git a/arch/arm/configs/spider_defconfig
>>>>>>>>>> b/arch/arm/configs/spider_defconfig
>>>>>>>>>>> new file mode 100644
>>>>>>>>>>> index 000000000000..c91bb889d97f
>>>>>>>>>>> --- /dev/null
>>>>>>>>>>> +++ b/arch/arm/configs/spider_defconfig
>>>>>>>>>>> @@ -0,0 +1,8 @@
>>>>>>>>>>> +CONFIG_ARCH_SPIDER=y
>>>>>>>>>>> +CONFIG_MACH_SPIDER_MK1_EVK=y
>>>>>>>>>>> +CONFIG_BOARD_ARM_GENERIC_DT=y
>>>>>>>>>>> +CONFIG_MALLOC_TLSF=y
>>>>>>>>>>> +CONFIG_KALLSYMS=y
>>>>>>>>>>> +CONFIG_RELOCATABLE=y
>>>>>>>>>>> +CONFIG_CONSOLE_ALLOW_COLOR=y
>>>>>>>>>>> +CONFIG_PBL_CONSOLE=y
>>>>>>>>>>> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile index
>>>>>>>>>> 98f4c4e0194b..94b304d4878f 100644
>>>>>>>>>>> --- a/arch/arm/dts/Makefile
>>>>>>>>>>> +++ b/arch/arm/dts/Makefile
>>>>>>>>>>> @@ -134,6 +134,7 @@ lwl-$(CONFIG_MACH_SOLIDRUN_CUBOX)
>>>> +=
>>>>>>>> dove-
>>>>>>>>>> cubox-bb.dtb.o
>>>>>>>>>>>  lwl-$(CONFIG_MACH_SOLIDRUN_MICROSOM) += imx6dl-
>>>>>>>>>> hummingboard.dtb.o imx6q-hummingboard.dtb.o \
>>>>>>>>>>>                                 imx6dl-hummingboard2.dtb.o imx6q-
>>>>>>>>>> hummingboard2.dtb.o \
>>>>>>>>>>>                                 imx6q-h100.dtb.o
>>>>>>>>>>> +lwl-$(CONFIG_MACH_SPIDER_MK1_EVK) += spider-mk1-
>> evk.dtb.o
>>>>>>>>>>>  lwl-$(CONFIG_MACH_SKOV_IMX6) += imx6s-skov-imx6.dtb.o
>>>> imx6dl-
>>>>>>>> skov-
>>>>>>>>>> imx6.dtb.o imx6q-skov-imx6.dtb.o
>>>>>>>>>>>  lwl-$(CONFIG_MACH_SKOV_ARM9CPU) += at91-skov-
>>>> arm9cpu.dtb.o
>>>>>>>>>>>  lwl-$(CONFIG_MACH_SEEED_ODYSSEY) += stm32mp157c-
>>>>>> odyssey.dtb.o
>>>>>>>>>> diff --git a/arch/arm/dts/spider-mk1-evk.dts
>> b/arch/arm/dts/spider-
>>>>>> mk1-
>>>>>>>>>> evk.dts new file mode 100644 index
>> 000000000000..b8081cb85bf8
>>>>>>>>>>> --- /dev/null
>>>>>>>>>>> +++ b/arch/arm/dts/spider-mk1-evk.dts
>>>>>>>>>>> @@ -0,0 +1,10 @@
>>>>>>>>>>> +// SPDX-License-Identifier: GPL-2.0 OR X11
>>>>>>>>>>> +
>>>>>>>>>>> +/dts-v1/;
>>>>>>>>>>> +
>>>>>>>>>>> +#include "spider-mk1.dtsi"
>>>>>>>>>>> +
>>>>>>>>>>> +/ {
>>>>>>>>>>> +       model = "Pliops Spider MK-I EVK";
>>>>>>>>>>> +       compatible = "pliops,spider-mk1-evk"; };
>>>>>>>>>>> diff --git a/arch/arm/dts/spider-mk1.dtsi b/arch/arm/dts/spider-
>>>>>> mk1.dtsi
>>>>>>>>>> new file mode 100644 index 000000000000..d4613848169d
>>>>>>>>>>> --- /dev/null
>>>>>>>>>>> +++ b/arch/arm/dts/spider-mk1.dtsi
>>>>>>>>>>> @@ -0,0 +1,46 @@
>>>>>>>>>>> +// SPDX-License-Identifier: GPL-2.0 OR X11
>>>>>>>>>>> +
>>>>>>>>>>> +/ {
>>>>>>>>>>> +       #address-cells = <2>;
>>>>>>>>>>> +       #size-cells = <2>;
>>>>>>>>>>> +
>>>>>>>>>>> +       chosen {
>>>>>>>>>>> +               stdout-path = &uart0;
>>>>>>>>>>> +       };
>>>>>>>>>>> +
>>>>>>>>>>> +       aliases {
>>>>>>>>>>> +               serial0 = &uart0;
>>>>>>>>>>> +       };
>>>>>>>>>>> +
>>>>>>>>>>> +       cpus {
>>>>>>>>>>> +               #address-cells = <1>;
>>>>>>>>>>> +               #size-cells = <0>;
>>>>>>>>>>> +
>>>>>>>>>>> +               cpu0: cpu@0 {
>>>>>>>>>>> +                       device_type = "cpu";
>>>>>>>>>>> +                       compatible = "arm,cortex-a53";
>>>>>>>>>>> +                       reg = <0x0>;
>>>>>>>>>>> +               };
>>>>>>>>>>> +       };
>>>>>>>>>>> +
>>>>>>>>>>> +       memory@1000000 {
>>>>>>>>>>> +               reg = <0x0 0x1000000 0x0 0x400000>; /* 128M */
>>>>>>>>>>> +               device_type = "memory";
>>>>>>>>>>> +       };
>>>>>>>>>>> +
>>>>>>>>>>> +       soc {
>>>>>>>>>>> +               #address-cells = <2>;
>>>>>>>>>>> +               #size-cells = <2>;
>>>>>>>>>>> +               ranges;
>>>>>>>>>>> +
>>>>>>>>>>> +               sram@c000000000 {
>>>>>>>>>>> +                       compatible = "mmio-sram";
>>>>>>>>>>> +                       reg = <0xc0 0x0 0x0 0x400000>;
>>>>>>>>>>> +               };
>>>>>>>>>>> +
>>>>>>>>>>> +               uart0: serial@d000307000 {
>>>>>>>>>>> +                       compatible = "pliops,spider-uart";
>>>>>>>>>>> +                       reg = <0xd0 0x307000 0 0x1000>;
>>>>>>>>>>> +               };
>>>>>>>>>>> +       };
>>>>>>>>>>> +};
>>>>>>>>>>> diff --git a/arch/arm/mach-spider/Kconfig b/arch/arm/mach-
>>>>>>>> spider/Kconfig
>>>>>>>>>> new file mode 100644 index 000000000000..6d2f888a5fd8
>>>>>>>>>>> --- /dev/null
>>>>>>>>>>> +++ b/arch/arm/mach-spider/Kconfig
>>>>>>>>>>> @@ -0,0 +1,16 @@
>>>>>>>>>>> +# SPDX-License-Identifier: GPL-2.0-only
>>>>>>>>>>> +
>>>>>>>>>>> +if ARCH_SPIDER
>>>>>>>>>>> +
>>>>>>>>>>> +config ARCH_SPIDER_MK1
>>>>>>>>>>> +       bool
>>>>>>>>>>> +       select CPU_V8
>>>>>>>>>>> +       help
>>>>>>>>>>> +         The first Cortex-A53-based SoC of the spider family.
>>>>>>>>>>> +         This symbol is invisble and select by boards
>>>>>>>>>>> +
>>>>>>>>>>> +config MACH_SPIDER_MK1_EVK
>>>>>>>>>>> +       bool "Pliops Spider Reference Design Board"
>>>>>>>>>>> +       select ARCH_SPIDER_MK1
>>>>>>>>>>> +
>>>>>>>>>>> +endif
>>>>>>>>>>> diff --git a/arch/arm/mach-spider/Makefile b/arch/arm/mach-
>>>>>>>>>> spider/Makefile new file mode 100644 index
>>>>>>>> 000000000000..b08c4a93ca27
>>>>>>>>>>> --- /dev/null
>>>>>>>>>>> +++ b/arch/arm/mach-spider/Makefile
>>>>>>>>>>> @@ -0,0 +1 @@
>>>>>>>>>>> +lwl-y += lowlevel.o
>>>>>>>>>>> diff --git a/arch/arm/mach-spider/lowlevel.c b/arch/arm/mach-
>>>>>>>>>> spider/lowlevel.c new file mode 100644 index
>>>>>>>>>> 000000000000..5d62ef0f39e5
>>>>>>>>>>> --- /dev/null
>>>>>>>>>>> +++ b/arch/arm/mach-spider/lowlevel.c
>>>>>>>>>>> @@ -0,0 +1,14 @@
>>>>>>>>>>> +// SPDX-License-Identifier:     GPL-2.0+
>>>>>>>>>>> +
>>>>>>>>>>> +#include <linux/types.h>
>>>>>>>>>>> +#include <mach/spider/lowlevel.h>
>>>>>>>>>>> +#include <asm/barebox-arm-head.h>
>>>>>>>>>>> +
>>>>>>>>>>> +void spider_lowlevel_init(void)
>>>>>>>>>>> +{
>>>>>>>>>>> +       arm_cpu_lowlevel_init();
>>>>>>>>>>> +       /*
>>>>>>>>>>> +        * not yet relocated, only do writel/readl for stuff that's
>>>>>>>>>>> +        * critical to run early. No global variables allowed.
>>>>>>>>>>> +        */
>>>>>>>>>>> +}
>>>>>>>>>>> diff --git a/images/Makefile b/images/Makefile index
>>>>>>>>>> c93f9e268978..97521e713228 100644
>>>>>>>>>>> --- a/images/Makefile
>>>>>>>>>>> +++ b/images/Makefile
>>>>>>>>>>> @@ -150,6 +150,7 @@ include $(srctree)/images/Makefile.mxs
>>>>>> include
>>>>>>>>>> $(srctree)/images/Makefile.omap3  include
>>>>>>>>>> $(srctree)/images/Makefile.rockchip
>>>>>>>>>>>  include $(srctree)/images/Makefile.socfpga
>>>>>>>>>>> +include $(srctree)/images/Makefile.spider
>>>>>>>>>>>  include $(srctree)/images/Makefile.stm32mp
>>>>>>>>>>>  include $(srctree)/images/Makefile.tegra  include
>>>>>>>>>> $(srctree)/images/Makefile.versatile
>>>>>>>>>>> diff --git a/images/Makefile.spider b/images/Makefile.spider new
>> file
>>>>>>>> mode
>>>>>>>>>> 100644 index 000000000000..c32f2762df04
>>>>>>>>>>> --- /dev/null
>>>>>>>>>>> +++ b/images/Makefile.spider
>>>>>>>>>>> @@ -0,0 +1,5 @@
>>>>>>>>>>> +# SPDX-License-Identifier: GPL-2.0-only
>>>>>>>>>>> +
>>>>>>>>>>> +pblb-$(CONFIG_MACH_SPIDER_MK1_EVK) +=
>>>> start_spider_mk1_evk
>>>>>>>>>>> +FILE_barebox-spider-mk1-evk.img = start_spider_mk1_evk.pblb
>>>>>>>>>>> +image-$(CONFIG_MACH_SPIDER_MK1_EVK) += barebox-spider-
>>>> mk1-
>>>>>>>>>> evk.img
>>>>>>>>>>> diff --git a/include/mach/spider/lowlevel.h
>>>>>>>>>> b/include/mach/spider/lowlevel.h new file mode 100644 index
>>>>>>>>>> 000000000000..6e0ce1c77f7e
>>>>>>>>>>> --- /dev/null
>>>>>>>>>>> +++ b/include/mach/spider/lowlevel.h
>>>>>>>>>>> @@ -0,0 +1,7 @@
>>>>>>>>>>> +/* SPDX-License-Identifier: GPL-2.0+ */ #ifndef
>> __MACH_SPIDER_H_
>>>>>>>>>>> +#define __MACH_SPIDER_H_
>>>>>>>>>>> +
>>>>>>>>>>> +void spider_lowlevel_init(void);
>>>>>>>>>>> +
>>>>>>>>>>> +#endif
>>>>>>>>>>> --
>>>>>>>>>>> 2.38.4
>>>>>>>>>>>
>>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> --
>>>>>>>>>> Pengutronix e.K.                           |                             |
>>>>>>>>>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>>>>>>>>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0
>>>> |
>>>>>>>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-
>>>> 5555
>>>>>> |
>>>>>>>>>
>>>>>>>>
>>>>>>>> --
>>>>>>>> Pengutronix e.K.                           |                             |
>>>>>>>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>>>>>>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0
>> |
>>>>>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-
>> 5555
>>>> |
>>>>>>>
>>>>>>
>>>>>> --
>>>>>> Pengutronix e.K.                           |                             |
>>>>>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>>>>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555
>> |
>>>>>
>>>>
>>>> --
>>>> Pengutronix e.K.                           |                             |
>>>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>>
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



