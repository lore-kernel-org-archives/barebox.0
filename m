Delivery-date: Thu, 10 Jul 2025 20:59:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZwUU-00G89b-28
	for lore@lore.pengutronix.de;
	Thu, 10 Jul 2025 20:59:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZwUT-0002tf-W6
	for lore@pengutronix.de; Thu, 10 Jul 2025 20:59:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Uri8d9Q1KczD4MQtAQFi2v2WSVEVxgIgqrDNxrPgX+s=; b=K6kZ5SEaZcuZ6FkHrcl/DwBrMY
	MlLFk822qwrDEetp2ucGspocY8KMWLgAcdOkH+/alGYBdiiG1txjKkxuX2q6Gs/Y9ClU0AKUAehb6
	rW7H0x+e5U83G+biWYoypp+Fx5p4rmUH2P320nCYfxkQd2B1pNi+RiR1PJw/Ax/F0rHD+GuCfkH/g
	XS/8VtezHG7mufYA/BHtMB/1tcL2NREbZQ64F/8UszTGEUnHshwUCuZiW9ij6KqcEhuDblOpGXHgi
	ccdB1dPHmgRldRKNxOY5tD3FqbHvW28GGdDx37hjrYTN9mGl/NvRhq49Zx7ZtzGaZQzIA04HvV0dJ
	1njKTpcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZwUA-0000000ClCy-26Pg;
	Thu, 10 Jul 2025 18:59:10 +0000
Received: from cczrelay01.in2p3.fr ([134.158.66.141])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZtUU-0000000CIjD-1LBX
	for barebox@lists.infradead.org;
	Thu, 10 Jul 2025 15:47:20 +0000
Received: from [134.158.124.135] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay01.in2p3.fr (8.14.4/8.14.4) with ESMTP id 56AFlFXP013136
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NO)
	for <barebox@lists.infradead.org>; Thu, 10 Jul 2025 17:47:15 +0200
Message-ID: <2cb8676a-7682-41d0-aa09-5a02083b4827@clermont.in2p3.fr>
Date: Thu, 10 Jul 2025 17:47:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: MList-Barebox <barebox@lists.infradead.org>
References: <9026c709-5e5f-4545-94ca-ea78ea431082@clermont.in2p3.fr>
 <c775017a-aa6c-46b2-8bd8-457474f34325@pengutronix.de>
Content-Language: fr
From: David Picard <david.picard@clermont.in2p3.fr>
In-Reply-To: <c775017a-aa6c-46b2-8bd8-457474f34325@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_084718_629794_84402C57 
X-CRM114-Status: GOOD (  23.84  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: boards/enclustra-sa2: add new board (HELP NEEDED)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Last output with CONFIG_DEBUG_INITCALLS enabled: 
https://paste.debian.net/1385224/, line 24 : '%' is at top of function, 
'C' is before setup_c() and 'B' is before pbl_barebox_break()

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



