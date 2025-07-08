Delivery-date: Tue, 08 Jul 2025 17:05:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZ9se-00FOYc-0Q
	for lore@lore.pengutronix.de;
	Tue, 08 Jul 2025 17:05:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZ9sd-00056P-EJ
	for lore@pengutronix.de; Tue, 08 Jul 2025 17:05:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3X5m2McOzEk2qVMrnJmf67FbED6igMRV9A1Nbdg9piw=; b=sT092a78x+jF0kVNghxpRJG0Or
	eBLqYsazNFQe5bSxePN7s4EIWq4VQo+udkW1K2jfevLcdigS7IzoGwO8msnImr4bPWVU8Tmqnrljd
	lxDrdyT7UVpT1nxghmE1zBkeFy4WlNyes9sV/uyZIxXmA/FczbymQD2Kxpq2YVVp9waBB1qR+bdLK
	V7fcB+eo0GgLFkAwTfTqQ0MR3M4kvqmG0YNGuQ/BrIqF0LpBjX04umZO62ic4TxFC80iUylzWrFif
	bwZYzQH2P3UiMxxJzWYsQQwOf/atED2TaWMvhbsW4RBPObYbMyzN/9GK5CabvxpG2j6wI/g4OZKbS
	L0ZFSctA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ9rs-00000005hnD-3XiM;
	Tue, 08 Jul 2025 15:04:24 +0000
Received: from cczrelay02.in2p3.fr ([134.158.66.142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZ9l4-00000005gXo-2quh
	for barebox@lists.infradead.org;
	Tue, 08 Jul 2025 14:57:26 +0000
Received: from [134.158.124.135] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay02.in2p3.fr (8.14.4/8.14.4) with ESMTP id 568Ev8fc012117
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NO)
	for <barebox@lists.infradead.org>; Tue, 8 Jul 2025 16:57:17 +0200
Message-ID: <f267df0d-6a2a-4a19-8763-998e05110406@clermont.in2p3.fr>
Date: Tue, 8 Jul 2025 16:57:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: MList-Barebox <barebox@lists.infradead.org>
References: <9026c709-5e5f-4545-94ca-ea78ea431082@clermont.in2p3.fr>
 <c775017a-aa6c-46b2-8bd8-457474f34325@pengutronix.de>
Content-Language: en-US
From: David Picard <david.picard@clermont.in2p3.fr>
In-Reply-To: <c775017a-aa6c-46b2-8bd8-457474f34325@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250708_075722_992101_4BCF9CD9 
X-CRM114-Status: GOOD (  26.87  )
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

Hello,

I could enable CONFIG_DEBUG_LL in the 1st stage, but not 
CONFIG_DEBUG_PBL because I got an error:
"input image too big. Maximum is 61436 bytes, got xxxxx bytes" where 
xxxxx > 61436. The on-chip RAM is 64KB.

When I enable CONFIG_DEBUG_LL in the 1st stage, I get the following 
output, which is much shorter:

=============================
lowlevel init done
SDRAM setup...
SDRAM calibration...
done
Error: offset create reference outside destination buffer <<< MY DEBUG 
MESSAGE
ERROR: Decoding failed
HANG
=============================

So, there is an error in lib/lz4/lz4_decompress.c on this test:
https://github.com/barebox/barebox/blob/7e5ea8eb09a1ca3b13e89586411f5a60ae8fd5b3/lib/lz4/lz4_decompress.c#L104

I added chosen/stdout-path in the devicetree.

David

Le 04/07/2025 à 17:09, Ahmad Fatoum a écrit :
> Hello David,
>
> On 7/3/25 16:21, David Picard wrote:
>> Hello,
>>
>> I'm trying to port the Enclustra SA2 module. I started off the Terasic
>> DE0 nano Soc board, that I could run with success previously. They both
>> have a Cyclone V SoC FPGA. I added some pr_debug().
>>
>> My code is here, in the board-enclustra-sa2 branch:
>> https://github.com/dpproto/barebox
>>
>> It hangs when the execution jumps to the uncompressed Barebox image, and
>> I'm really stuck.
> It's very interesting to know that this is actually the second
> decompression. The first stage (barebox-socfpga-sa2-xload.img) succeeded
> up to 'starting bootloader...' and then the output you have after that
> is the prebootloader of the second stage (barebox-socfpga-sa2.img).
>
> The decompressed barebox proper of the first stage already ran from
> within SDRAM, so your SDRAM setup might not be to blame.
>
> For a more complete picture, could you enable CONFIG_DEBUG_PBL and
> CONFIG_DEBUG_LL also for the first stage and include them in your next mail?
>
>> Enclustra provides a U-Boot configuration, with handoff files. I tried
>> to compare them with those I copied from a sample Quartus project they
>> provide too. I couldn't notice striking differences, although it's not
>> easy to compare because they used an older version of Quartus.
>>
>> - The addresses and sizes in the log output below don't seem to exceed
>> SDRAM boundaries, do they?
>> - Any hint on anything to check?
> I expanded a bit on Sascha's suggestions in the troubleshooting guide
> I just sent out. I hope this will be helpful to you in pinpointing your
> issue. Looking at the branch you pushed to your repository, I notice
> the following in no particular order:
>
>    -  you are missing a /chosen/stdout-path. You probably want to set it
>       to silence the 'No consoles were activated' warning and get
>       early output, even without CONFIG_DEBUG_LL
>
>    - As Sascha mentioned, calling pr_debug before relocation can
>      introduce bugs of its own, so stick to putc_ll('@') if unsure
>
>    - It would be interesting to see if CONFIG_PBL_VERIFY_PIGGY succeeds
>      and if an early putc_ll() in start.c as suggested by Sascha
>      would give any output.
>
> Cheers,
> Ahmad
>
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
>> uncompress.c: uncompressing barebox binary at 0x1ff8c800 (size
>> 0x00056b67) to 0x3fe00000 (uncompressed size: 0x000778b0)
>> uncompress.c: jumping to uncompressed image at 0x3fe00001
>> uncompress.c: calling armv7_switch_to_hyp()...
>> uncompress.c: armv7_switch_to_hyp() OK. Now jumping...
>> =============================
>>
>>
>>



