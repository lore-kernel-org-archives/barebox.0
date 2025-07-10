Delivery-date: Thu, 10 Jul 2025 21:57:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZxP0-00G90x-0b
	for lore@lore.pengutronix.de;
	Thu, 10 Jul 2025 21:57:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZxOz-0000XW-I3
	for lore@pengutronix.de; Thu, 10 Jul 2025 21:57:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Hk9LZcRf/OcSqFRxH0oo90s154+PqT2PGBc1w38WM6s=; b=xEZy7S0+O5F22498w30VEpLoDl
	fw/tpzcAyVlnXYVDszGwUW+1Fyxvf+/lW7JusW/7HDiOO5Rqh1/c6Ou+aAFvNHGrDOXrSc0EzI2kF
	4NaMQEGuOp/LkDvlEC3BE2npMx0SpZ1itYASON8MQbPmKukD/OKiR+E916pwlH6qWkl98m+jxPNL9
	AFWtCjPooW5WGdRbZA1wNtXp4k4nvNonGj8StYG19usGzkVLlccxLo3u2EecWVqOx3AIVOimDs9a5
	WGgfz1KIWPM/I2drmuhNhnd4cdL3FmS4glH/EZSX3nsDCtPjxUXkoijde0y3E8V5clb3QvG0TpWmY
	elJzPkwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZxOR-0000000Cs76-35Fh;
	Thu, 10 Jul 2025 19:57:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZw2t-0000000CiG6-2MgV
	for barebox@lists.infradead.org;
	Thu, 10 Jul 2025 18:31:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uZw2j-0005ou-2C; Thu, 10 Jul 2025 20:30:49 +0200
Message-ID: <0f14a473-e238-4e7f-9c4b-5b59c4f6bc0e@pengutronix.de>
Date: Thu, 10 Jul 2025 20:30:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: David Picard <david.picard@clermont.in2p3.fr>,
 MList-Barebox <barebox@lists.infradead.org>
References: <9026c709-5e5f-4545-94ca-ea78ea431082@clermont.in2p3.fr>
 <aGbpedWAZoPS054m@pengutronix.de>
 <3c3f1ff0-c43e-448e-9706-72bf160a6ab4@clermont.in2p3.fr>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <3c3f1ff0-c43e-448e-9706-72bf160a6ab4@clermont.in2p3.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_113059_601905_8BEB3D8C 
X-CRM114-Status: GOOD (  16.42  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: boards/enclustra-sa2: add new board (HELP NEEDED)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 7/10/25 15:54, David Picard wrote:
>>> - The addresses and sizes in the log output below don't seem to
>>> exceed SDRAM
>>> boundaries, do they?
>>> - Any hint on anything to check?

FTR, here is the last boot log: https://paste.debian.net/1385224/

I thought asking about CONFIG_DEBUG_INITCALLS was the first thing I did,
but I might misremember. Anyways, you are clearly reaching barebox
proper now, so just forget about all the putc_ll() stuff, you only need
that for the early hangs, which isn't the case for you.

As for why it hangs, I suspect you have CONFIG_ARCH_SOCFPGA_ARRIA10
enabled, despite that SA2 using a Cyclone V.

Can you check if CONFIG_ARCH_SOCFPGA_ARRIA10 is enabled and try again
after disabling it if it is?

Cheers,
Ahmad

>>>
>>> David
>>>
>>> =============================
>>> barebox 2025.06.1 #1 Thu Jul 3 10:53:43 CEST 2025
>>>
>>>
>>> Board: SoCFPGA
>>> No consoles were activated. Activating all consoles as fallback!
>>> dw_mmc dw_mmc0: registered as mci0
>>> mci0: detected SD card version 2.0
>>> mci0: registered disk0
>>> starting bootloader...
>>> arch/arm/boards/enclustra-sa2/lowlevel.c: __start_socfpga_sa2() >>>
>>> start
>>> include/mach/socfpga/lowlevel.h: start_socfpga_c5_common() >>> start
>>> include/mach/socfpga/lowlevel.h: start_socfpga_c5_common() >>>
>>> arm_cpu_lowlevel_init() OK
>>> include/mach/socfpga/lowlevel.h: start_socfpga_c5_common() >>>
>>> fdt_blob=0x00002320 fdt=0x1ff87ae8 size=0x40000000
>> This looks strange. Your fdt blob is at offset 0x2320 in the binary, but
>> the final pointer is at 0x1ff87ae8 meaning that your binary is only 8
>> byte aligned in memory. I would expect a bigger alignment here. The
>> buffer should be allocated by read_file_2(). Could you replace the
>> call to calloc there with a memalign() call aligning to something like
>> 64 bytes?
>>
>> Could be a red herring though.
>>
>>> include/mach/socfpga/lowlevel.h: start_socfpga_c5_common() >>> calling
>>> barebox_arm_entry()...
>>> uncompress.c: memory at 0x00000000, size 0x40000000
>>> mmu: enabling MMU, ttb @ 0x3ffe0000
>>> endmem                = 0x40000000
>>> arm_mem_scratch       = 0x3fff8000+0x00008000
>>> arm_mem_stack         = 0x3fff0000+0x00008000
>>> arm_mem_ttb           = 0x3ffe0000+0x00010000
>>> arm_mem_barebox_image = 0x3fe00000+0x00200000
>>> arm_mem_early_malloc  = 0x3fde0000+0x00020000
>>> membase               = 0x00000000+0x40000000
>>> uncompress.c: uncompressing barebox binary at 0x1ff8c800 (size
>>> 0x00056b67)
>>> to 0x3fe00000 (uncompressed size: 0x000778b0)
>>> uncompress.c: jumping to uncompressed image at 0x3fe00001
>>> uncompress.c: calling armv7_switch_to_hyp()...
>>> uncompress.c: armv7_switch_to_hyp() OK. Now jumping...
>> Have you tried adding some debug output to barebox_non_pbl_start()?
>>
>> pr_debug and friends will only work after setup_c() is called, but you
>> can either use putc_ll() before that or directly write to the UART TX
>> register.
>>
>> Sascha
>>
> 
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



