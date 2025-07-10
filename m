Delivery-date: Thu, 10 Jul 2025 18:28:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZu89-00G5wF-2U
	for lore@lore.pengutronix.de;
	Thu, 10 Jul 2025 18:28:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZu89-0003vJ-1f
	for lore@pengutronix.de; Thu, 10 Jul 2025 18:28:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XQeOpnkOs33h0ZvnNPm2PpIgm1auFezlfKj7DgcKsfw=; b=IQnHwQRcB1z+ZK1/81hBMNUmDO
	MGr6gHb3Pn9cBC+aSWcJvAO36rQhio0SMdAVqlmnn2SpXHprdn2Omg8q31XJSUV1x6IMZm3nUgIQ3
	X9ZqgPVxXt2FH0R10GsnUfcwa3p7ZO17D5NoYMw6AA1bSwK+J5VF4ghmzISnMAmVfNTM4j/kdtWL2
	in//DgGqldK7VTizfeRieacsQm2NlB7XC8oiSvaDOXyE6axuz7Yi+hUsP1t44N5MPr3mKanPjCkm3
	/xFRlqigQ6dUk3bMHgtRBLVtNZP9fIj6XmexpVgh7rIf7uwUFCsVZ0M0im3raglLuVsedbtBxsflA
	j0jekrMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZu7N-0000000CPqg-0kHQ;
	Thu, 10 Jul 2025 16:27:29 +0000
Received: from cczrelay01.in2p3.fr ([134.158.66.141])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZrjk-0000000C1lk-0skb
	for barebox@lists.infradead.org;
	Thu, 10 Jul 2025 13:54:58 +0000
Received: from [134.158.124.135] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay01.in2p3.fr (8.14.4/8.14.4) with ESMTP id 56ADsf7a029593
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NO)
	for <barebox@lists.infradead.org>; Thu, 10 Jul 2025 15:54:52 +0200
Message-ID: <3c3f1ff0-c43e-448e-9706-72bf160a6ab4@clermont.in2p3.fr>
Date: Thu, 10 Jul 2025 15:54:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: David Picard <david.picard@clermont.in2p3.fr>
To: MList-Barebox <barebox@lists.infradead.org>
References: <9026c709-5e5f-4545-94ca-ea78ea431082@clermont.in2p3.fr>
 <aGbpedWAZoPS054m@pengutronix.de>
Content-Language: en-US
In-Reply-To: <aGbpedWAZoPS054m@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_065456_523654_5ACB5242 
X-CRM114-Status: GOOD (  23.34  )
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

My code is at: https://github.com/dpproto/barebox/tree/board-enclustra-sa2

I tried to change the alignment, as you suggested in this commit: 
https://github.com/dpproto/barebox/commit/518f39867ef7fef069c3a59934d8d5f55b7981ff
-    buf = calloc(ALIGN(read_size, 2) + 2, 1);
+   buf = memalign(64, read_size + 10);        // add 10 bytes; absolute 
random choice...


fdt_blob and fdt are now 64-byte aligned. With CONFIG_DEBUG_LL disabled 
in the 1st stage, I get this output:

===================
barebox 2025.06.1 #1 Thu Jul 10 10:37:51 CEST 2025


Board: SoCFPGA
No consoles were activated. Activating all consoles as fallback!
dw_mmc dw_mmc0: registered as mci0
mci0: detected SD card version 2.0
mci0: registered disk0
starting bootloader...
lowlevel.h: start_socfpga_c5_common() >> start
start_socfpga_c5_common() >> arm_cpu_lowlevel_init() OK
include/mach/socfpga/lowlevel.h: start_socfpga_c5_common() >>> 
fdt_blob=0x00002300 fdt=0x1ff87b00 size=0x40000000
uncompress.c: memory at 0x00000000, size 0x40000000
mmu: enabling MMU, ttb @ 0x3ffe0000
endmem                = 0x40000000
arm_mem_scratch       = 0x3fff8000+0x00008000
arm_mem_stack         = 0x3fff0000+0x00008000
arm_mem_ttb           = 0x3ffe0000+0x00010000
arm_mem_barebox_image = 0x3fe00000+0x00200000
arm_mem_early_malloc  = 0x3fde0000+0x00020000
membase               = 0x00000000+0x40000000
uncompress.c: uncompressing barebox binary at 0x1ff8c858 (size 
0x000502d2) to 0x3fe00000 (uncompressed size: 0x00077fd0)
uncompress.c: jumping to uncompressed image at 0x3fe00001
uncompress.c: calling armv7_switch_to_hyp()...
uncompress.c: armv7_switch_to_hyp() OK. Now jumping...
===================

Despite the chosen/stdout-path set in the DT, I still get the no console 
warning. Maybe, I didn't do it properly.
https://github.com/dpproto/barebox/commit/2ca6fe47a1ad1cdea12520bed66a7f260624e54e


With the CONFIG_DEBUG_LL and CONFIG_DEBUG_SOCFPGA_UART0 options enabled 
in the 1st stage, and regardless of whether memalign() replaces calloc() 
or not, I get:

===================
lowlevel init done
SDRAM setup...
SDRAM calibration...
done
ERR: ref outside dest buf        << MY DEBUG message in 
lib/lz4/lz4_decompress.c
ERROR: Decoding failed
HANG
===================

The error I catch happens in lib/lz4/lz4_decompress.c
https://github.com/dpproto/barebox/commit/1273048898fb4f9e5613b944b4871bc5f9b8f178

I seems that memalign() instead of calloc() doesn't help. puts_ll() 
doesn't work in lib/libfile.c; I can't check if the pointer returned by 
calloc()/memalign() is null.

Should I still try to:
- replace lz4 with lzo?
- add debug messages in start.c?

David

Le 03/07/2025 à 22:35, Sascha Hauer a écrit :
> On Thu, Jul 03, 2025 at 04:21:52PM +0200, David Picard wrote:
>> Hello,
>>
>> I'm trying to port the Enclustra SA2 module. I started off the Terasic DE0
>> nano Soc board, that I could run with success previously. They both have a
>> Cyclone V SoC FPGA. I added some pr_debug().
>>
>> My code is here, in the board-enclustra-sa2 branch:
>> https://github.com/dpproto/barebox
>>
>> It hangs when the execution jumps to the uncompressed Barebox image, and I'm
>> really stuck.
>>
>> Enclustra provides a U-Boot configuration, with handoff files. I tried to
>> compare them with those I copied from a sample Quartus project they provide
>> too. I couldn't notice striking differences, although it's not easy to
>> compare because they used an older version of Quartus.
>>
>> - The addresses and sizes in the log output below don't seem to exceed SDRAM
>> boundaries, do they?
>> - Any hint on anything to check?
>>
>> David
>>
>> =============================
>> barebox 2025.06.1 #1 Thu Jul 3 10:53:43 CEST 2025
>>
>>
>> Board: SoCFPGA
>> No consoles were activated. Activating all consoles as fallback!
>> dw_mmc dw_mmc0: registered as mci0
>> mci0: detected SD card version 2.0
>> mci0: registered disk0
>> starting bootloader...
>> arch/arm/boards/enclustra-sa2/lowlevel.c: __start_socfpga_sa2() >>> start
>> include/mach/socfpga/lowlevel.h: start_socfpga_c5_common() >>> start
>> include/mach/socfpga/lowlevel.h: start_socfpga_c5_common() >>>
>> arm_cpu_lowlevel_init() OK
>> include/mach/socfpga/lowlevel.h: start_socfpga_c5_common() >>>
>> fdt_blob=0x00002320 fdt=0x1ff87ae8 size=0x40000000
> This looks strange. Your fdt blob is at offset 0x2320 in the binary, but
> the final pointer is at 0x1ff87ae8 meaning that your binary is only 8
> byte aligned in memory. I would expect a bigger alignment here. The
> buffer should be allocated by read_file_2(). Could you replace the
> call to calloc there with a memalign() call aligning to something like
> 64 bytes?
>
> Could be a red herring though.
>
>> include/mach/socfpga/lowlevel.h: start_socfpga_c5_common() >>> calling
>> barebox_arm_entry()...
>> uncompress.c: memory at 0x00000000, size 0x40000000
>> mmu: enabling MMU, ttb @ 0x3ffe0000
>> endmem                = 0x40000000
>> arm_mem_scratch       = 0x3fff8000+0x00008000
>> arm_mem_stack         = 0x3fff0000+0x00008000
>> arm_mem_ttb           = 0x3ffe0000+0x00010000
>> arm_mem_barebox_image = 0x3fe00000+0x00200000
>> arm_mem_early_malloc  = 0x3fde0000+0x00020000
>> membase               = 0x00000000+0x40000000
>> uncompress.c: uncompressing barebox binary at 0x1ff8c800 (size 0x00056b67)
>> to 0x3fe00000 (uncompressed size: 0x000778b0)
>> uncompress.c: jumping to uncompressed image at 0x3fe00001
>> uncompress.c: calling armv7_switch_to_hyp()...
>> uncompress.c: armv7_switch_to_hyp() OK. Now jumping...
> Have you tried adding some debug output to barebox_non_pbl_start()?
>
> pr_debug and friends will only work after setup_c() is called, but you
> can either use putc_ll() before that or directly write to the UART TX
> register.
>
> Sascha
>



