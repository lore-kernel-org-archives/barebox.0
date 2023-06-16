Delivery-date: Fri, 16 Jun 2023 18:22:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qACDL-009EtD-O7
	for lore@lore.pengutronix.de; Fri, 16 Jun 2023 18:22:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qACDI-00058Q-PR
	for lore@pengutronix.de; Fri, 16 Jun 2023 18:22:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jbGvMrDOzHPU37OlxDLX6UaEaIPcuXw94lCvtnEYIpQ=; b=ueE8hPmSoG+gbq0NexeoQ5lkK4
	SjYqv1FsP8xcy2zwLpimlqOD6ooAM5gWfE+dZZ9uIs6AvhQlbHayiOA300SPQxW+zKz3tpHU1PTOb
	1HrhoyHQTFbVQp2aV6T4yi2VdOh6sZrLh1dZrBCaewfZ8Qumi3O5vQtM1EnvqnTMx4BmeV9kJiXIS
	E9Ugib1SQWvfX96p41RA6t7O3Bz7ENzjTW2LtGQSFE6g03T8BmqAWW0U80MrQOkG+hBcJhdLcLbS2
	deoujkNgW19wKj46qHEq7Sgl9r0qpVD1jIra5ErN2GM7CAYRSa8rSqbkrY5r4iNO+cup5Zaz0Ibqp
	KoFlbpEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qACC1-0016AH-17;
	Fri, 16 Jun 2023 16:20:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qACBw-001675-0A
	for barebox@lists.infradead.org;
	Fri, 16 Jun 2023 16:20:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qACBs-0004yY-FZ; Fri, 16 Jun 2023 18:20:48 +0200
Message-ID: <7023e1e4-f383-49aa-e194-3c61be33c9fe@pengutronix.de>
Date: Fri, 16 Jun 2023 18:20:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Lior Weintraub <liorw@pliops.com>, Ahmad Fatoum <ahmad@a3f.at>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <f4aae166-1cc4-6255-1fde-7a52c7872bd8@pengutronix.de>
 <ffde7964-42a4-c762-d46d-93cd9d923646@pengutronix.de>
 <PR3P195MB0555940C37560E6D01731A1BC3499@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <98480243-c1b7-a2bb-9267-2126797f52bd@pengutronix.de>
 <PR3P195MB05554662E272B9E1A8E5655AC352A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <381bd0cc-26b3-ad2e-1857-436932549934@pengutronix.de>
 <PR3P195MB055562ACCF6EBF0A490BBB4EC354A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <d4fddd30-74bc-dab3-a6e0-a83920d2763f@pengutronix.de>
 <PR3P195MB0555C35406A3BC621BA1038EC354A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <15f8d795-f486-1914-9eba-e5a315bf2083@pengutronix.de>
 <PR3P195MB055508CA0B6A5CE36DCCADD4C355A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <f2fa8b9e-ae3e-ac89-a7ab-4710aebcdb98@pengutronix.de>
 <PR3P195MB0555E76684395257F4C32426C355A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <PR3P195MB0555565681087967FFAA3CBEC35AA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <PR3P195MB0555565681087967FFAA3CBEC35AA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_092052_414491_492019AD 
X-CRM114-Status: GOOD (  40.29  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] Porting barebox to a new SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Lior,

On 14.06.23 08:42, Lior Weintraub wrote:
> Hi Ahmad,
> 
> Looks like I found the issue :-)
> 
> When I declared the flash@0 node I used about 16MB for the kernel partition even though currently my kernel image is around 11MB:
> flash@0 {
>     compatible = "mtd-rom";
>     probe-type = "map_rom";
>     reg = <0x0 0x20000000 0x0 0x10000000>; /* Offset 512MB, size 256MB */
>     bank-width = <4>;
>     device-width = <1>;
> 
>     #address-cells = <1>;
>     #size-cells = <1>;
>     kernel@0 { /* 16MB (minus 32KB) */
>         label = "kernel";
>         //reg = <0x0 0x00FF8000>; // This line caused the error
>         reg =   <0x0 0x00b30000>;
>     };
>     oftree@00FF8000 { /* 32KB for DTB image */
>         label = "oftree";
>         reg = <0x00FF8000 0x00008000>;
>     };
>     rootfs@1000000 { /* Offset 512MB+16MB with size 8MB */
>         label = "rootfs";
>         reg = <0x01000000 0x00800000>;
>     };
> };
> 
> From the error message I saw that barebox tried to place the rootfs on address 0xb30000 and that conflicted with the kernel:
> mtdrom0.kernel: read ofs: 0x00fe0000 count: 0x00018000
> __request_region ok: 0x00000000:0x00ff7fff flags=0x200
> mtdrom0.rootfs: read ofs: 0x00000000 count: 0x00000800
> __request_region: 0x00b30000:0x00b4ffff (image) conflicts with 0x00000000:0x00ff7fff (image)

This error message still doesn't make sense to me. No idea why this conflicts.
I see now though that I made this more complicated that it needs be. Please
scratch all that, remove the mtd-rom and revert the /memory node to encompass
all memory. Then you can at runtime, just create the partitions with the addpart
command (see help addpart for info). Then you can boot normally.

> 
> So I changed the kernel@0 node and used size 0x00b30000 and now kernel starts running.
> The kernel is producing all kinds of errors but at least it's a start :-)
> The errors are now related to pieces of HW that we didn't implement on QEMU so it is understandable.
> 
> How can we control where the rootfs is copied to?

Normally, global.bootm.initrd.loadaddr, but you shouldn't need to do
that. Try it with addpart and let me know.

Cheers,
Ahmad

>  
> Thanks again for your kind advise and patience.
> Cheers,
> Lior.
> 
>> -----Original Message-----
>> From: Lior Weintraub
>> Sent: Tuesday, June 13, 2023 4:28 PM
>> To: Ahmad Fatoum <a.fatoum@pengutronix.de>; Ahmad Fatoum
>> <ahmad@a3f.at>; barebox@lists.infradead.org
>> Subject: RE: [PATCH v2] Porting barebox to a new SoC
>>
>> Hi Ahmad,
>>
>> I also thought that load address was suspicious (0x8000000) but then I saw
>> the following comment on nxp_imx8mq_evk_start:
>> 		/*
>> 		 * On completion the TF-A will jump to
>> MX8MQ_ATF_BL33_BASE_ADDR
>> 		 * in EL2. Copy the image there, but replace the PBL part of
>> 		 * that image with ourselves. On a high assurance boot only
>> the
>> 		 * currently running code is validated and contains the
>> checksum
>> 		 * for the piggy data, so we need to ensure that we are
>> running
>> 		 * the same code in DRAM.
>> 		 */
>> Our code was based on this function and as a result it copies the barebox
>> image into address 0x8000000 (which is our settings of
>> ATF_BL33_BASE_ADDR).
>> The fact that Linux image is also copied there seemed reasonable (I might be
>> wrong here) because once loading is done and we jump to Linux there is no
>> need for barebox code anymore.
>>
>> In any case, at that time when I thought it was wrong I also tried to run the
>> bootm command with "-a 0" but I got exactly the same error:
>> barebox:/ bootm -o /dev/mtdrom0.oftree -r /dev/mtdrom0.rootfs -a 0
>> /dev/mtdrom0.kernel
>> getopt: optindex: 1 nonopts: 0 optind: 1
>> getopt: optindex: 1 nonopts: 0 optind: 3
>> getopt: optindex: 1 nonopts: 0 optind: 5
>> getopt: optindex: 1 nonopts: 0 optind: 7
>> mtdrom0.kernel: read ofs: 0x00000000 count: 0x00001000
>>
>> Loading ARM aarch64 Linux image '/dev/mtdrom0.kernel'
>> header 00000000: 4d 5a 40 fa 3f 1a 23 14 00 00 00 00 00 00 00 00
>> MZ@.?.#.........
>> header 00000010: 00 00 b3 00 00 00 00 00 0a 00 00 00 00 00 00 00
>> ................
>> header 00000020: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>> ................
>> header 00000030: 00 00 00 00 00 00 00 00 41 52 4d 64 40 00 00 00
>> ........ARMd@...
>> header 00000040: 50 45 00 00 64 aa 02 00 00 00 00 00 00 00 00 00
>> PE..d...........
>> booti: Kernel to be loaded to 0+b30000
>> __request_region ok: 0x00000000:0x0001ffff flags=0x200
>> mtdrom0.kernel: read ofs: 0x00000000 count: 0x00020000
>> __request_region ok: 0x00000000:0x0003ffff flags=0x200
>> mtdrom0.kernel: read ofs: 0x00020000 count: 0x00020000
>> __request_region ok: 0x00000000:0x0005ffff flags=0x200
>> .
>> .
>> mtdrom0.kernel: read ofs: 0x00fe0000 count: 0x00018000
>> __request_region ok: 0x00000000:0x00ff7fff flags=0x200
>> mtdrom0.rootfs: read ofs: 0x00000000 count: 0x00000800
>> __request_region: 0x00b30000:0x00b4ffff (image) conflicts with
>> 0x00000000:0x00ff7fff (image)
>> unable to request SDRAM 0x00b30000-0x00b4ffff
>> handler failed with: Out of memory
>>
>>
>> The iomem before:
>> barebox:/ iomem
>> 0x0000000000000000 - 0xffffffffffffffff (size 0x0000000000000000) iomem
>>   0x0000000000000000 - 0x000000001fffffff (size 0x0000000020000000)
>> ram0
>>     0x00000000079fef00 - 0x0000000007dfeeff (size 0x0000000000400000)
>> malloc space
>>     0x0000000007dfef00 - 0x0000000007dfffd1 (size 0x00000000000010d2)
>> board data
>>     0x0000000007e00000 - 0x0000000007e3d95f (size
>> 0x000000000003d960) barebox
>>     0x0000000007e3d960 - 0x0000000007e50bb7 (size
>> 0x0000000000013258) barebox data
>>     0x0000000007e50bb8 - 0x0000000007e53b3f (size
>> 0x0000000000002f88) bss
>>     0x0000000007ff0000 - 0x0000000007ff7fff (size 0x0000000000008000)
>> stack
>>   0x0000000020000000 - 0x000000002fffffff (size 0x0000000010000000)
>> 20000000.flash@0.of
>>   0x000000d000307000 - 0x000000d000307fff (size
>> 0x0000000000001000) amba
>>
>> After:
>> barebox:/ iomem
>> 0x0000000000000000 - 0xffffffffffffffff (size 0x0000000000000000) iomem
>>   0x0000000000000000 - 0x000000001fffffff (size 0x0000000020000000)
>> ram0
>>     0x00000000079fef00 - 0x0000000007dfeeff (size 0x0000000000400000)
>> malloc space
>>     0x0000000007dfef00 - 0x0000000007dfffd1 (size 0x00000000000010d2)
>> board data
>>     0x0000000007e00000 - 0x0000000007e3d95f (size
>> 0x000000000003d960) barebox
>>     0x0000000007e3d960 - 0x0000000007e50bb7 (size
>> 0x0000000000013258) barebox data
>>     0x0000000007e50bb8 - 0x0000000007e53b3f (size
>> 0x0000000000002f88) bss
>>     0x0000000007ff0000 - 0x0000000007ff7fff (size 0x0000000000008000)
>> stack
>>   0x0000000020000000 - 0x000000002fffffff (size 0x0000000010000000)
>> 20000000.flash@0.of
>>   0x000000d000307000 - 0x000000d000307fff (size
>> 0x0000000000001000) amba
>>
>> I did not set global.bootm.image.loadaddr
>> Speaking of env, the last few lines on the barebox terminal are:
>> initcall-> load_environment+0x0/0x4c
>> loading defaultenv
>> environment load /dev/env0: No such file or directory
>> Maybe you have to create the partition.
>> initcalls done
>>
>> When I run "printenv" I am getting:
>> barebox:/ printenv
>> locals:
>> globals:
>> bootsource=unknown
>> bootsource_instance=unknown
>> PATH=/env/bin
>>
>> Hope this info can help.
>> Cheers,
>> Lior.
>>
>>
>>> -----Original Message-----
>>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>> Sent: Tuesday, June 13, 2023 3:51 PM
>>> To: Lior Weintraub <liorw@pliops.com>; Ahmad Fatoum <ahmad@a3f.at>;
>>> barebox@lists.infradead.org
>>> Subject: Re: [PATCH v2] Porting barebox to a new SoC
>>>
>>> CAUTION: External Sender
>>>
>>> On 13.06.23 14:39, Lior Weintraub wrote:
>>>> Hi Ahmad,
>>>>
>>>> As usual, your comments are spot on :-)
>>>>
>>>> After fixing the DT, devinfo command shows correct flash node:
>>>>    `-- 20000000.flash@0.of
>>>>       `-- mtdrom0
>>>>          `-- 0x00000000-0x0fffffff (   256 MiB): /dev/mtdrom0
>>>>          `-- mtdrom0.kernel
>>>>             `-- 0x00000000-0x00ff7fff (    16 MiB): /dev/mtdrom0.kernel
>>>>          `-- mtdrom0.oftree
>>>>             `-- 0x00000000-0x00007fff (    32 KiB): /dev/mtdrom0.oftree
>>>>          `-- mtdrom0.rootfs
>>>>             `-- 0x00000000-0x007fffff (     8 MiB): /dev/mtdrom0.rootfs
>>>>
>>>> As can be seen above, we chose to map this "flash" node on DRAM
>> address
>>> 0x20000000 (offset 512MB).
>>>> The BL1 code correctly copy the 3 artifacts into those location (verified the
>>> content via "md -l -s /dev/mtdrom0.kernel").
>>>> Running "drvinfo" shows:
>>>> mtdram
>>>>         20000000.flash@0.of
>>>>
>>>> Now when I try to run "bootm -o /dev/mtdrom0.oftree -r
>>> /dev/mtdrom0.rootfs /dev/mtdrom0.kernel" I am getting this error:
>>>>
>>>> barebox:/ bootm -o /dev/mtdrom0.oftree -r /dev/mtdrom0.rootfs
>>> /dev/mtdrom0.kernel
>>>> getopt: optindex: 1 nonopts: 0 optind: 1
>>>> getopt: optindex: 1 nonopts: 0 optind: 3
>>>> getopt: optindex: 1 nonopts: 0 optind: 5
>>>> mtdrom0.kernel: read ofs: 0x00000000 count: 0x00001000
>>>>
>>>> Loading ARM aarch64 Linux image '/dev/mtdrom0.kernel'
>>>> header 00000000: 4d 5a 40 fa 3f 1a 23 14 00 00 00 00 00 00 00 00
>>> MZ@.?.#.........
>>>> header 00000010: 00 00 b3 00 00 00 00 00 0a 00 00 00 00 00 00 00
>>> ................
>>>> header 00000020: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>>> ................
>>>> header 00000030: 00 00 00 00 00 00 00 00 41 52 4d 64 40 00 00 00
>>> ........ARMd@...
>>>> header 00000040: 50 45 00 00 64 aa 02 00 00 00 00 00 00 00 00 00
>>> PE..d...........
>>>> booti: Kernel to be loaded to 8000000+b30000
>>>
>>> Kernel image is relocatable and ARM64 header in hexdump says that
>>> load offset is zero. Yet, barebox wants to load your image to
>>> 8000000, which is already reserved.
>>>
>>> What's the output of the iomem command before and after the failed
>>> boot attempt?
>>>
>>>> __request_region ok: 0x08000000:0x0801ffff flags=0x200
>>>> mtdrom0.kernel: read ofs: 0x00000000 count: 0x00020000
>>>> __request_region ok: 0x08000000:0x0803ffff flags=0x200
>>>> mtdrom0.kernel: read ofs: 0x00020000 count: 0x00020000
>>>> .
>>>> .
>>>> mtdrom0.kernel: read ofs: 0x00fe0000 count: 0x00018000
>>>> __request_region ok: 0x08000000:0x08ff7fff flags=0x200
>>>> mtdrom0.rootfs: read ofs: 0x00000000 count: 0x00000800
>>>> __request_region: 0x08b30000:0x08b4ffff (image) conflicts with
>>> 0x08000000:0x08ff7fff (image)
>>>> unable to request SDRAM 0x08b30000-0x08b4ffff
>>>> handler failed with: Out of memory
>>>
>>> Just to be sure: You don't set global.bootm.image.loadaddr, right?
>>>
>>> Cheers,
>>> Ahmad
>>>
>>>>
>>>> Appreciate your advice,
>>>> Cheers,
>>>> Lior.
>>>>
>>>>
>>>>> -----Original Message-----
>>>>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>>>> Sent: Monday, June 12, 2023 6:08 PM
>>>>> To: Lior Weintraub <liorw@pliops.com>; Ahmad Fatoum
>> <ahmad@a3f.at>;
>>>>> barebox@lists.infradead.org
>>>>> Subject: Re: [PATCH v2] Porting barebox to a new SoC
>>>>>
>>>>> CAUTION: External Sender
>>>>>
>>>>> Hi,
>>>>>
>>>>> On 12.06.23 16:59, Lior Weintraub wrote:
>>>>>> Hello Ahmad,
>>>>>>
>>>>>> Just for simple simulations we make the ROM size 192MB so it can
>> include
>>> all
>>>>> needed artifacts.
>>>>>
>>>>> I am not convinced that this is much of a simplification over having
>>>>> your Qemu machine provide cfi-flash.
>>>>>
>>>>>> When we get this simple system to work we will move the relevant parts
>>> to
>>>>> BL2.
>>>>>
>>>>> Ok.
>>>>>
>>>>>> DRAM is also simulated now as SRAM so we are not worried about
>>>>> initializations.
>>>>>>
>>>>>> So if I understand correctly, we can decide that address 0x10000000 will
>>> be
>>>>> reserved for "flash" and add the following node:
>>>>>> flash@0 {
>>>>>
>>>>> flash@10000000, but that's just for informational purposes.
>>>>>
>>>>>>     compatible = "mtd-rom";
>>>>>>     probe-type = "map_rom";
>>>>>>     reg = <0x10000000 0x10000000>;
>>>>>>     bank-width = <4>;
>>>>>>     device-width = <1>;
>>>>>>
>>>>>>     #address-cells = <1>;
>>>>>>     #size-cells = <1>;
>>>>>>     kernel@0 {
>>>>>>         label = "kernel";
>>>>>>         reg = <0x0 0x01000000>;
>>>>>>     };
>>>>>>     rootfs@1000000 {
>>>>>>         label = "rootfs";
>>>>>>         reg = <0x01000000 0x00800000>;
>>>>>>     };
>>>>>> };
>>>>>>
>>>>>> When I use this node on our DT I see the following devinfo:
>>>>>> barebox:/ devinfo
>>>>>> `-- global
>>>>>> `-- nv
>>>>>> `-- platform
>>>>>>    `-- machine
>>>>>>    `-- psci.of
>>>>>>    `-- 1000000010000000.flash@0.of
>>>>>
>>>>> As you can see the address is wrong. That's because you have
>>>>> #address-cells = <2>;
>>>>> #size-cells = <2>;
>>>>>
>>>>> Yet, you wrote reg as if it was <1>/<1>. Change it to
>>>>>
>>>>>   reg = <0x0 0x10000000 0x0 0x10000000>;
>>>>>
>>>>> Remember all device tree integers are 32-bit big endian.
>>>>>
>>>>>>    `-- soc.of
>>>>>>       `-- c000000000.sram@c000000000.of
>>>>>>       `-- soc:pmu.of
>>>>>>       `-- soc:timer.of
>>>>>>       `-- e000000000.interrupt-controller@E000000000.of
>>>>>>    `-- mem0
>>>>>>       `-- 0x00000000-0x0fffffff (   256 MiB): /dev/ram0
>>>>>>    `-- mem1
>>>>>>       `-- 0x00000000-0xffffffffffffffff (   0 Bytes): /dev/mem
>>>>>> `-- amba
>>>>>>    `-- d000307000.serial@d000307000.of
>>>>>>       `-- cs0
>>>>>>          `-- 0x00000000-0xffffffffffffffff (   0 Bytes): /dev/cs0
>>>>>> `-- spi
>>>>>> `-- fs
>>>>>>    `-- ramfs0
>>>>>>    `-- devfs0
>>>>>>    `-- pstore0
>>>>>>
>>>>>> Not sure how to proceed from here...
>>>>>
>>>>> Type drvinfo command to see what drivers are bound to what devices.
>>>>> If you see no driver bound to your flash device, then maybe you need
>>>>> to enable the correct driver, that would be CONFIG_MTD_MTDRAM
>> (which
>>>>> handles both read-only and read-write memory mapped MTD).
>>>>>
>>>>> Cheers,
>>>>> Ahmad
>>>>>
>>>>>> Cheers,
>>>>>> Lior.
>>>>>>
>>>>>>> -----Original Message-----
>>>>>>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>>>>>> Sent: Monday, June 12, 2023 3:29 PM
>>>>>>> To: Lior Weintraub <liorw@pliops.com>; Ahmad Fatoum
>>> <ahmad@a3f.at>;
>>>>>>> barebox@lists.infradead.org
>>>>>>> Subject: Re: [PATCH v2] Porting barebox to a new SoC
>>>>>>>
>>>>>>> CAUTION: External Sender
>>>>>>>
>>>>>>> Hello Lior,
>>>>>>>
>>>>>>> On 12.06.23 11:27, Lior Weintraub wrote:
>>>>>>>> Hi Ahmad,
>>>>>>>>
>>>>>>>> Regarding the rootfs and Linux run question:
>>>>>>>> Our board doesn't include eMMC\SD card.
>>>>>>>> We only have our NOR Flash to store the binaries and our BL1 code
>> will
>>>>> make
>>>>>>> sure to copy those blobs into DRAM.
>>>>>>>
>>>>>>> How could BL1 copy artifacts in DRAM when BL2 first needs to set up
>>>>> DRAM?
>>>>>>>
>>>>>>>> The use of QEMU needs to be as simple as possible so no hidden virtio
>>>>>>> drivers and such because we would like to simulate the real HW flow.
>>>>>>>
>>>>>>> cfi-flash is just memory-mapped flash, which is the next simplest thing
>>>>>>> after BL1 copies stuff into (limited-to-4M) on-chip SRAM.
>>>>>>>
>>>>>>>> Our DTS file now includes the GIC, timer and arm,psci-1.0.
>>>>>>>> We have an initial build of Linux kernel Image (using buildroot) and a
>>>>>>> rootfs.cpio.xz.
>>>>>>>> I assume we can somehow reserve a portion of the DRAM to store
>>> those
>>>>>>> binaries and let barebox boot this Linux.
>>>>>>>
>>>>>>> You can make this work, but this is not how your actual system will
>>>>>>> look like and trying to make this work is harder than it needs to be.
>>>>>>>
>>>>>>> Just add a cfi-flash that corresponds to the Linux/rootfs flash in
>>>>>>> your actual system, then boot with bootm (type help bootm for info
>>>>>>> on how to use it). You don't need to hardcode the load addresses,
>>>>>>> barebox will determine them automatically.
>>>>>>>
>>>>>>>> Can you please advise how to make it work?
>>>>>>>
>>>>>>> For completion's sake, if you have 64M of RAM that's preloaded with
>>>>>>> boot images:
>>>>>>>
>>>>>>>   - Remove the 64M from the barebox /memory node. You can use a
>>>>> different
>>>>>>>     DT for kernel, but if you have memory that barebox shouldn't
>> override,
>>>>>>>     you need to tell it that.
>>>>>>>
>>>>>>>   - Add a mtd-rom node that describes these 64M that you have. You
>> can
>>>>>>>     add partitions for the region used for kernel and oftree
>>>>>>>
>>>>>>>   - boot with bootm -o /dev/mtdrom0.oftree -r /dev/mtdrom0.initrd \
>>>>>>>     /dev/mtdrom0.kernel
>>>>>>>
>>>>>>> That's admittedly cumbersome, but necessary, so barebox knows what
>>>>>>> memory
>>>>>>> it may use for itself and what memory may be used for boot.
>>>>>>>
>>>>>>> Correct solution is to use cfi-flash or similar.
>>>>>>>
>>>>>>> Cheers,
>>>>>>> Ahmad
>>>>>>> --
>>>>>>> Pengutronix e.K.                           |                             |
>>>>>>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>>>>>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>>>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-
>> 5555
>>> |
>>>>>>
>>>>>
>>>>> --
>>>>> Pengutronix e.K.                           |                             |
>>>>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>>>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555
>> |
>>>>
>>>
>>> --
>>> Pengutronix e.K.                           |                             |
>>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



