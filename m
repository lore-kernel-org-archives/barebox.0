Delivery-date: Fri, 12 Mar 2021 12:15:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKflM-0004OR-Tv
	for lore@lore.pengutronix.de; Fri, 12 Mar 2021 12:15:24 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKflL-0001Jw-TC
	for lore@pengutronix.de; Fri, 12 Mar 2021 12:15:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DLc+ENZ7aoupK7yRELe5E+SM3qdj7UTUo/TXOHwvlKE=; b=fBxsdvGQ9pa8Z3tiO4kz9Dfe2
	XCvqDE0KhJPGIiTQLb0SI/b8AjF3RARx/tqTMMnh1uP4PeQ6Jfhah0Ps/6SF5v9Zti3xr4BeJNOLk
	10AZsQ2+nZGBwr1AUfSBAOBlUlNaHyInaajSf45zNL7qfhWD4ziNWJPihN1eIQruowPQvwToj3EwC
	sbG9/5ihvjrj0Fa0Pt67s6pK1voG68OLqmdoYgARWDW3ML6EpmmWf8hezk+7uIm2Xh958uS5ckPD3
	NH3N1idrf8tMZ8EMBA4mZ57+r1tasiN4KbDOxaJ7QL8y088zGUshFjka/FTPSf+EXow0705fVN8QD
	oZ6arYzfA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKfkD-00BGcp-7X; Fri, 12 Mar 2021 11:14:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKfjy-00BGbb-Mn
 for barebox@lists.infradead.org; Fri, 12 Mar 2021 11:14:00 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lKfjv-00015e-G7; Fri, 12 Mar 2021 12:13:55 +0100
To: "Gittinger Joerg (XC-ECO/ESH2)" <Joerg.Gittinger@de.bosch.com>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <f9f47ca6b7cb4fe88344dea3c63b5d84@de.bosch.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <33279efb-c168-04a4-10fe-8492d426679a@pengutronix.de>
Date: Fri, 12 Mar 2021 12:13:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <f9f47ca6b7cb4fe88344dea3c63b5d84@de.bosch.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210312_111358_898363_2559E1B4 
X-CRM114-Status: GOOD (  24.26  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Aarch64 Qemu virt - crash
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello,

On 12.03.21 11:55, Gittinger Joerg (XC-ECO/ESH2) wrote:
> Hi,
> 
> I'd like to check out bareboot. In the documentation I found that aarch64 QEMU virt target is supported. Therefore I wanted to build it and run it in the emulator. I checked out latest git and built it for aarch64. When running it in QEMU 
>   $ qemu-system-aarch64 -m 2G -M virt -cpu cortex-a53 -kernel ../barebox/barebox -display none -serial stdio
> I run into an exception:
> 
> -------- qemu output ---------
> barebox 2021.02.0-jg-00106-g43a513fa8 #1 Mon Mar 8 15:56:47 CET 2021
> 
> 
> Board: ARM QEMU virt64
> DABT (current EL) exception (ESR 0x9600004b) at 0x0000000000000000
> elr: 000000004100d754 lr : 000000004100d740
> x0 : 0000000000000001 x1 : 00000000000000f0
> x2 : 00000000bffefdbc x3 : 00000000ffffffff
> x4 : 0000000000000008 x5 : 0000000000000000
> x6 : 0000000040c07ad0 x7 : 0000000000000000
> x8 : 0000000040c07ad0 x9 : 00000000bffefe90
> ...
> -----------------------------------
> 
> I debugged it in gdb and set a breakpoint at the ELR value. Backtrace shows this:
> 
> -----------------------------------
> #0  flash_write8 (addr=0x0, value=240 '\360') at drivers/mtd/nor/cfi_flash.h:258
> #1  flash_write_word (addr=0x0, datum=240, info=0x40c07ad0) at drivers/mtd/nor/cfi_flash.h:336
> #2  flash_write_cmd (info=info@entry=0x40c07ad0, sect=sect@entry=0, offset=offset@entry=0, cmd=cmd@entry=240) at drivers/mtd/nor/cfi_flash.c:837
> #3  0x000000004100d940 in flash_detect_width (info=info@entry=0x40c07ad0, qry=qry@entry=0xbffefe90) at drivers/mtd/nor/cfi_flash.c:244
> #4  0x000000004100dc60 in flash_detect_cfi (qry=0xbffefe90, info=0x40c07ad0) at drivers/mtd/nor/cfi_flash.c:287
> #5  flash_detect_size (info=0x40c07ad0) at drivers/mtd/nor/cfi_flash.c:321
> #6  cfi_probe_one (num=0, info=0x40c07ad0) at drivers/mtd/nor/cfi_flash.c:972
> #7  cfi_probe (dev=0x40c07910) at drivers/mtd/nor/cfi_flash.c:1013
> #8  0x000000004100c188 in device_probe (dev=0x40c07910, dev@entry=0x40c07998) at drivers/base/driver.c:91
> #9  0x000000004100c258 in match (drv=drv@entry=0x40c07910, dev=0x40c07998, dev@entry=0x40c07910) at drivers/base/driver.c:164
> #10 0x000000004100c574 in register_device (new_device=0x40c07910) at drivers/base/driver.c:209
> #11 0x000000004100ca28 in add_generic_device (devname=devname@entry=0x4102b5d0 "cfi_flash", id=id@entry=0, resname=resname@entry=0x0, start=start@entry=0,
>     size=size@entry=134217728, flags=flags@entry=512, pdata=pdata@entry=0x0) at drivers/base/resource.c:78
> #12 0x0000000041027260 in add_cfi_flash_device (flags=0, size=134217728, start=0, id=0) at include/driver.h:267
> #13 virt_env_init () at arch/arm/boards/qemu-virt64/init.c:30
> #14 0x0000000041001610 in start_barebox () at common/startup.c:412
> #15 0x00000000410289a0 in barebox_non_pbl_start (membase=1090689334, memsize=<optimized out>, boarddata=0x41035000 <__barebox_cmd_drvinfo+8>)
>     at arch/arm/cpu/start.c:246
> #16 0x00000000410289d0 in __barebox_arm_entry ()
> -----------------------------------
> 
> Apparently the NOR cfi driver tries to figure out the flash width by writing to it. In QEMU aarch64 virt machine, the flash starts at 0x0, so the address is correct. In barebox config the "QEMU arm64 virt machine" is selected. I tried with specifying a "-pflash ..." parameter at QEMU command line but still got the same exception. MMU (SCTLR.M) is turned on - therefore I wonder why I get this exception. It seems that the MMU region for the flash is not or not correctly set up when the memory access occurs..? Or do I do something wrong? Please let me know how I get it running.

There was recent rework on this platform, please pull again. This particular
issue is worked around with
767edcc58757 ("mtd: cfi-flash: fail gracefully instead of crashing on NULL page")

The root cause is that when MMU is enabled, barebox traps NULL pointer dereference
and accessing the first page of a cfi-flash mapped at zero looks just like one.

The proper fix would be to remap the cfi-flash for this board, but no one
has come around to do this yet. An alternative if you need to pass data to barebox
is to use VirtIO Block devices. They need no further configuration than qemu command
line parameters. That's in next as well.

Cheers,
Ahmad

> 
> Thanks + Regards
> Joerg
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

