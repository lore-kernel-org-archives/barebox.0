Delivery-date: Fri, 16 May 2025 21:45:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uG103-006HLV-0A
	for lore@lore.pengutronix.de;
	Fri, 16 May 2025 21:45:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uG102-00084U-Bo
	for lore@pengutronix.de; Fri, 16 May 2025 21:45:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hAMfY4shI7JXJ7PCOH0zwjAfCTFStgYygQglDKy49DU=; b=txNrs4arrD/Hu07x58lcWjBnra
	IrrAqooOSyKv5CrmXSYGEQmjquqfGvYp5C3W8x6Sqid/5r+zWwAM4gPBbAW2m5aYB1RKlzpjpfs1w
	nbefbMjAesvGwxQaorS2VVkl3iCORQb7CQqCv6fPufppmuHCYvxzfaTuAqkqImjOwHUSYpZFi+v3b
	YidMQd2EG/p0smXdC7yi0cISemMeLj/5r4xsmcgeeIWNQhrF6d7wmH9E8gv2SGSrfNELqgfDWhu2c
	OnbWuWB8JouzVHeB6x/r4eQ1/B1k2BgHL2Tq+yny6DKPHi+U3MdJ3sdYOC4EDzZvwOqF4CCf4PD3n
	Oe6K38DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uG0zV-00000004VBJ-28J6;
	Fri, 16 May 2025 19:45:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uG0zS-00000004VAr-3KXI
	for barebox@lists.infradead.org;
	Fri, 16 May 2025 19:45:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uG0zR-0007in-IF; Fri, 16 May 2025 21:45:05 +0200
Message-ID: <7d4314cb-5f25-47e7-aaa5-0f488f9e30ca@pengutronix.de>
Date: Fri, 16 May 2025 21:45:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Johannes Roith <johannes@gnu-linux.rocks>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250428172001.6708-1-johannes@gnu-linux.rocks>
 <aBCO-SSyT0BQnlek@pengutronix.de>
 <3761c82f-78ec-42ea-bf4a-d8ecbdced01d@pengutronix.de>
 <aBNmGWyUGPW/okvk@InfinityCube> <aBhrPYOt9ZaJuki7@pengutronix.de>
 <aBpBAxuh7vZrunZ7@InfinityCube>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aBpBAxuh7vZrunZ7@InfinityCube>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_124506_837733_BD3B50A9 
X-CRM114-Status: GOOD (  36.50  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Porting Cora Z7 Board to barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Johannes,

On 06.05.25 19:04, Johannes Roith wrote:
> The Zynq-7000 has a processor system (PS) with a Cortex-A9 and a
> programmable logic (PL) which is basically a FPGA. With barebox I can't
> load a bitstream to the FPGA. Or does barebox provides an interface for
> loading FPGAs?

As mentioned in the other thread, there is a framework for firmware loading,
which is already used for ZynqMP for example.

> My idea was to use Xilinx FSBL which loads the bitstream to the FPGA and
> then loads an ELF file. The problem is, if the ELF file is linked to
> address 0x0 like the FSBL, the FSBL overwrites its code when loading the
> ELF file and crashes.
> 
> But if I write a small application which is loaded by the FSBL I can read
> start_dt_2nd.pblb from the mmc, put it somewhere in DRAM memory and jump to it.
> This should start the barebox proper, right?

A barebox build can generate multiple image, so if you need a separate first
stage bootloader, just create a new PBL entry point, but don't call
barebox_arm_entry. See for example arch/arm/boards/sama5d27-som1/lowlevel.c;
On the AT91, the BootROM looks for a BOOT.BIN file on the FAT and then that
BOOT.BIN file looks for a barebox.bin and loads it into DRAM after setting it up.

You'll probably notice that the PBL MMC drivers in barebox are a bit peculiar;
normally the BootROM doesn't reset the SD-Card and often even keeps the SD-Card
controller running, so barebox PBL makes use of that by just sending a
read multiple block command to the SD-Card to chainload the big barebox after
SDRAM has been set up. This saves a lot of time, complexity and image size.

The alternative would be having a MMC stack in the PBL and doing that initialization
dance for the card after resetting it. There are out-of-tree patches for that,
but I'd suggest you try doing it like other in-tree boards do if you are interested
in FSBL support inside barebox.

> I set ARCH_TEXT_BASE to 0x1000_0000 as you suggested and create a Xilinx Boot
> Image with start_dt_2nd.pbl inside, but the ELF file seems still be linked for
> 0x0. The FSBL loaded the FPGA but barebox never booted, so I guess the
> FSBL overwrote itself.

Did you see any early DEBUG_LL output at least? Or did you resolve this by now?

>> Best practice is to separate the barebox specific dts stuff from the
>> about-to-be-upstreamed stuff and put both files into arch/arm/dts.
>> With this we can just drop the non-barebox specific file once it's in
>> Linux upstream without losing the barebox specific changes.
>>
> 
> Currently both files are named zynq-cora.dts. What would be a good name
> for the DT which will be replaced when upstreamed to Linux?
> zynq-cora-linux.dts?

That works I guess.

>>> And a last question: How can I change the default boot method in barebox
>>> from net to mmc0?
>>
>> nv boot.default="mmc0". See https://www.barebox.org/doc/latest/user/variables.html
>> and the output of the "magicvar" command
> 
> Ok, it now tries to boot from mmc0, but I am getting an error:
> 
> Board: Digilent Cora Z7
> deep-probe: supported due to xlnx,zynq-cora
> mdio_bus: miibus0: probed
> macb e000b000.ethernet@e000b000.of: Cadence GEM at 0xe000b000
> arasan-sdhci e0100000.mmc@e0100000.of: registered as mmc0
> malloc space: 0x17e00000 -> 0x1fdfffff (size 128 MiB)
> mmc0: detected SD card version 2.0
> mmc0: registered mmc0
> 
> Hit any to stop autoboot:    3
> barebox@Digilent Cora Z7:/ boot
> Nothing bootable found on 'mmc0'
> Nothing bootable found
> barebox@Digilent Cora Z7:/ nv
>   allow_color: true
>   autoboot_timeout: 3
>   boot.default: mmc0
>   linux.bootargs.console: console=ttyPS1,115200 root=/dev/mmcblk0p2 rootwait
>   user: none
> 
> I have an SD card with a FAT32 and an EXT4 partition. On the FAT32 I
> have the zImage of the Linux kernel. Am I missing something here?

With bootm, you can explicitly name which images you want to boot.
The boot command on the other hand will try to figure out what images
should be used without hardcoding as is described in its help text.

For MMC, I'd suggest you use bootloader spec entries. Here's an example:
https://gist.github.com/a3f/f2e2b7414128cad6d1bceca0b6013cf8

Just place that at /loader/entries/cora.conf or something.

Cheers,
Ahmad

> 
>>
>> Regards,
>>   Sascha
>>
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> Best regard,
> Johannes
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


