Delivery-date: Wed, 02 Jul 2025 14:46:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWwr0-00DIhn-1p
	for lore@lore.pengutronix.de;
	Wed, 02 Jul 2025 14:46:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWwqz-0001yF-IE
	for lore@pengutronix.de; Wed, 02 Jul 2025 14:46:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kbXmrBTS8pERSrmc4Euhvm6kcusG5ycPHOwETNfWqdI=; b=UP6o2y0WMDbiovyt8HuDHJdvNK
	3S6ypg+keXRVh/2WCPz4yTLyVjV0UlI4nezUu8SY+4h/3/wlWK0RNqEwmRC9CUPbCdUsDxTRC+6lb
	C1KqpkVoI8K3PayF16pzkk4+zRzDTHk1VnDvVf7TNj+XAUxY77zVusQzz6XGwFlCVuQnCB6sErQh2
	a9hnGnD3qzbPPgvBuSjx55IFMkY5aG5MuZs+yARVEOHbEopW6+EfOkQvCAPY6CGneB6nZIKDofob1
	9yxkcrRi9e7e0ldpawonKM2EZRJ+qXXutfFzV/e6Nt5pMdh+Qtz5S2yywkhKfX6pcGxrgg/CGC/VI
	7X93zBCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWwqP-00000008LXo-26pg;
	Wed, 02 Jul 2025 12:45:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWwJr-00000008GLr-19Rp
	for barebox@lists.infradead.org;
	Wed, 02 Jul 2025 12:12:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uWwJq-0006H8-1D; Wed, 02 Jul 2025 14:12:06 +0200
Message-ID: <c2f82d07-f4f5-4c8b-a336-8f5f2af734aa@pengutronix.de>
Date: Wed, 2 Jul 2025 14:12:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: David Picard <david.picard@clermont.in2p3.fr>, barebox@lists.infradead.org
References: <f8c5021d-3dcb-47b5-8f27-09e33991d6ea@clermont.in2p3.fr>
 <e867d36e-4632-46d5-934f-a4efb3a8db5f@pengutronix.de>
 <a9b43b82-c234-4542-981c-ad034ad65403@clermont.in2p3.fr>
 <6ad40829-5819-4784-8123-0b6e24d4c525@pengutronix.de>
 <fd64d9fb-1b5e-4f99-a36a-e7d6fd59a13f@clermont.in2p3.fr>
 <59977218-0639-40da-9999-515f3973dbea@clermont.in2p3.fr>
Content-Language: en-US
In-Reply-To: <59977218-0639-40da-9999-515f3973dbea@clermont.in2p3.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250702_051207_463973_16F13790 
X-CRM114-Status: GOOD (  32.68  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: moving to same chip, different board: no console output
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello David,

On 01.07.25 16:24, David Picard wrote:
> I copied the handoff files from a Quartus sample project released by the manufacturer, Enclustra.
> 
> Any hint about the debug output below is welcome.
> 
> I put some pr_debug() in arch/arm/cpu/uncompress.c, and it seems to execute until the last line: barebox(membase, memsize, handoff_data);

First some context: The barebox binary consists of two parts: A
prebootloader (PBL) that's very barebones and does the low level
initialization of setting up the DRAM while running from on-chip SRAM
and then loads the full barebox proper.

The entry point of barebox proper is that barebox function pointer in
uncompress.c. So you are hanging on first jump to DRAM or shortly after.

Given that you just added code for DRAM setup, I suspect that the code
may be erroneous in part. I have also seen similar effects before on
other SoCs, when the DRAM controller was setup the wrong way:
Writes were posted and didn't trigger hangs/aborts, but system locked up
on first read or execute.

Can you push your code somewhere, so we can take a look?

Cheers,
Ahmad


> https://github.com/barebox/barebox/blob/796506e790596a0b59c186651cf98112eafe01c5/arch/arm/cpu/uncompress.c#L106
> 
> I'm trying to boot from the SD card. I copied and adapted Buildroot genimage.cfg from the Terasic DE0 board.
> Device             Boot Start    End Sectors  Size Id Type
> images/sdcard.img1          1   2048    2048    1M a2 unknown
> images/sdcard.img2 *     2049  18432   16384    8M  c W95 FAT32 (LBA)
> images/sdcard.img3      18433 264192  245760  120M 83 Linux
> 
> The FAT32 partition contains:
> -rwxr-xr-x 1 root root 375K juil.  1  2025 barebox.bin
> -rwxr-xr-x 1 root root  600 juil.  1  2025 barebox.env
> -rwxr-xr-x 1 root root  26K juil.  1  2025 socfpga_cyclone5_mercury_sa2.dtb
> -rwxr-xr-x 1 root root 5,9M juil.  1  2025 zImage
> 
> 
> David
> 
> Le 30/06/2025 à 15:23, David Picard a écrit :
>> Hello,
>>
>> I can get an output on the console! I switched to v2025.06.1 and enabled CONFIG_DEBUG_LL, CONFIG_PBL_CONSOLE and CONFIG_DEBUG_PBL.
>>
>> Could you help me to interpret this ?
>>
>> -------------------------
>>
>> barebox 2025.06.1 #2 Mon Jun 30 15:01:21 CEST 2025
>>
>>
>> Board: SoCFPGA
>> No consoles were activated. Activating all consoles as fallback!
>> dw_mmc dw_mmc0: registered as mci0
>> mci0: detected SD card version 2.0
>> mci0: registered disk0
>> starting bootloader...
>> uncompress.c: memory at 0x00000000, size 0x40000000
>> mmu: enabling MMU, ttb @ 0x3ffe0000
>> endmem                = 0x40000000
>> arm_mem_scratch       = 0x3fff8000+0x00008000
>> arm_mem_stack         = 0x3fff0000+0x00008000
>> arm_mem_ttb           = 0x3ffe0000+0x00010000
>> arm_mem_barebox_image = 0x3fe00000+0x00200000
>> arm_mem_early_malloc  = 0x3fde0000+0x00020000
>> membase               = 0x00000000+0x40000000
>> uncompress.c: uncompressing barebox binary at 0x1ff8c5e0 (size 0x00056c32) to 0x3fe00000 (uncompressed size: 0x000778b0)
>> uncompress.c: jumping to uncompressed image at 0x3fe00001
>>
>> -----------
>>
>> End of log, no prompt.
>>
>> David
>>
>>
>> Le 16/06/2025 à 12:39, Ahmad Fatoum a écrit :
>>> Hi David,
>>>
>>> On 6/11/25 13:46, David Picard wrote:
>>>> Hello,
>>>>
>>>> I took the same Buildroot configuration. I replaced the .dts* files with
>>>> the ones provided by the new board BSP. Actually, they differ quite a
>>>> lot from the Altera SoC FPGA .dts* files in the Linux tree. Then, I
>>>> compiled and flashed the SD card.
>>> The device trees don't have the whole story. There is Quartus-generated
>>> C board code that sets up the DRAM controller for example, so just
>>> replacing the device tree doesn't work so early.
>>>
>>>> I enabled CONFIG_DEBUG_LL with no change. CONFIG_DEBUG_PBL doesn't exist
>>>> in my case. For some reason, the defconfig I built upon, uses Barebox
>>>> v2021.07.0, which is probably outdated...
>>> v2021.07.0 predated CONFIG_DEBUG_PBL, yes.
>>>
>>> Cheers,
>>> Ahmad
>>>
>>>> David
>>>>
>>>> Le 06/06/2025 à 19:46, Ahmad Fatoum a écrit :
>>>>> Hello David,
>>>>>
>>>>> On 06.06.25 16:43, David Picard wrote:
>>>>>> Hello,
>>>>>>
>>>>>> I am working on a project for which we selected an Intel/Altera
>>>>>> Cyclone 5 SoC FPGA (an FPGA with an ARM core). As the project
>>>>>> evolves, I have to change boards and I am facing issues to boot:
>>>>>> absolutely no output on the serial console (USB virtual COM port),
>>>>>> not even from Barebox.
>>>>>>
>>>>>> Previous working configuration:
>>>>>> - SD card image produced by Buildroot with Barebox as the bootloader
>>>>>> - Terasic ADC-SoC demo board, booting from the SD card.
>>>>>> https://www.terasic.com.tw/cgi-bin/page/archive.pl?
>>>>>> Language=English&No=1061&PartNo=1
>>>>>>
>>>>>> Current non-working configuration:
>>>>>> - Eclustra Mercury+ SA2 module, also with a Cyclone 5, plus SDRAM,
>>>>>> RTC, QSPI flash, etc. I think that the main difference between both
>>>>>> Cyclone 5 chips is the size of the logic section is bigger on the
>>>>>> module. The module has more RAM.
>>>>>> https://www.enclustra.com/en/products/system-on-chip-modules/mercury-
>>>>>> sa2/
>>>>>> - Enclustra ST1 demo baseboard. It has a JTAG port, should this
>>>>>> information be of interest.
>>>>>> https://www.enclustra.com/en/products/base-boards/mercury-st1/
>>>>>>
>>>>>> I the current configuration, I get no output on the serial console.
>>>>> So you tried to use the exact same image on both boards or were
>>>>> there changes?
>>>>>
>>>>>> What I did:
>>>>>> - I checked the hardware configuration (switches to select booting
>>>>>> from the SD card and USB config) with a bare-metal application
>>>>>> provided by Enclustra.
>>>>>> - I used Enclutra's .dts and .dtsi files, which differ very slightly
>>>>>> from the Linux kernel tree files.
>>>>>> - I checked how the SD card is connected: to the exact same pins in
>>>>>> both configurations.
>>>>>> - I had a look at Barebox menuconfig, but nothing caught my eye.
>>>>>>
>>>>>> So, now I'm stuck, and I'm looking for some guidance.
>>>>> You can try enabling CONFIG_DEBUG_LL and CONFIG_DEBUG_PBL and see if you
>>>>> get some debugging output maybe. You'll have to choose which UART to use.
>>>>>
>>>>> I think your new SoM may have different RAM and thus you can't use the
>>>>> same image, but need one suitable to RAM integrated on your new board.
>>>>>
>>>>> Cheers,
>>>>> Ahmad
>>>>>
>>>>>> David
>>>>>>
>>>>>>
>>>>>>
>>>>
>>>>
>>
>>
> 
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


