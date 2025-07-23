Delivery-date: Wed, 23 Jul 2025 11:35:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ueVsk-002rM9-2p
	for lore@lore.pengutronix.de;
	Wed, 23 Jul 2025 11:35:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ueVsk-0000gD-7B
	for lore@pengutronix.de; Wed, 23 Jul 2025 11:35:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pQbCdpLB7wkKb01vC8EOzocAGlDVAQp7uBPlHyKfLeo=; b=krXBPN3Np/20ftbLp0KKnckGfS
	EepD8EWiyciA98pskyrAgtm4TvFwma2ZwAjcaAlGpYtYU0kbh5UezwqGfrBWDiA+OE7gNAszlT6gt
	wq2uCdV+JH7+W3fGMeuGcmAyGsLNDq9AfneoW2rstJ9Wd2iZuJAIG/4G9+YRSPILU5wRyu09nTBpt
	5tkiDmYrB3eodmhoHlq5hjfjChWanIkCp48KNBIV5PBz45/6B9ccr0T3Unyx9rBw7LGv2AmZEL4Lx
	1t3LUyhXZvqBeRj535q/4S6fzzKmXNEZQYnYBP8HNNUmABPAkbWYtI6n0VgLMhHKI6JXzE/8DEEpX
	2ju43JEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueVs2-00000004WUY-0lyE;
	Wed, 23 Jul 2025 09:34:42 +0000
Received: from cczrelay02.in2p3.fr ([134.158.66.142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueVL9-00000004Ror-2kB1
	for barebox@lists.infradead.org;
	Wed, 23 Jul 2025 09:00:46 +0000
Received: from [134.158.124.135] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay02.in2p3.fr (8.14.4/8.14.4) with ESMTP id 56N90T8W029817
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NO)
	for <barebox@lists.infradead.org>; Wed, 23 Jul 2025 11:00:38 +0200
Message-ID: <3ef00ba8-98b2-476b-96ed-5bc2d0164de8@clermont.in2p3.fr>
Date: Wed, 23 Jul 2025 11:00:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: David Picard <david.picard@clermont.in2p3.fr>
To: MList-Barebox <barebox@lists.infradead.org>
References: <9026c709-5e5f-4545-94ca-ea78ea431082@clermont.in2p3.fr>
Content-Language: fr, en-US
In-Reply-To: <9026c709-5e5f-4545-94ca-ea78ea431082@clermont.in2p3.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_020043_967930_36AFA569 
X-CRM114-Status: GOOD (  19.10  )
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
Subject: Re: boards/enclustra-sa2: add new board (HELP NEEDED)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

I am now able to boot Linux, after I changed the devicetree files. Now, 
neither Barebox nor Linux can detect the Ethernet PHY.

I copied the devicetree files from Enclustra's BSP because e.g. they 
include skew parameters for the Ethernet PHY, that, if I understood 
well, depend on board routing.

To port the board to Barebox, I took the Terasic DE0, which has the same 
SoC FPGA and the same Ethernet PHY, the Microchip KSZ9031RNX. The MDIO 
bus address on the DE0 is 1, and 3 on the SA2.

@dok had me type some commands in the Barebox prompt such as devinfo, 
miitool, but it didn't solve the issue.

I notices differences in the devicetree files of the DE0 and the SA2. I 
tried to group them; see the links below.

Links:
- the boot log: https://paste.debian.net/1387433/
- Ethernet-related DT of Terasic DE0: https://paste.debian.net/1387428/
- Ethernet-related DT of Enclustra SA2: https://paste.debian.net/1387430/
- arch/arm/boards/enclustra-sa2/board.c (seems to tweak MDIO timing ?): 
https://paste.debian.net/1387437/
- the KSZ9031RNX PHY datasheet: 
https://ww1.microchip.com/downloads/aemDocuments/documents/UNG/ProductDocuments/DataSheets/KSZ9031RNX-Data-Sheet-DS00002117.pdf

David

Le 03/07/2025 à 16:21, David Picard a écrit :
> Hello,
>
> I'm trying to port the Enclustra SA2 module. I started off the Terasic 
> DE0 nano Soc board, that I could run with success previously. They 
> both have a Cyclone V SoC FPGA. I added some pr_debug().
>
> My code is here, in the board-enclustra-sa2 branch:
> https://github.com/dpproto/barebox
>
> It hangs when the execution jumps to the uncompressed Barebox image, 
> and I'm really stuck.
>
> Enclustra provides a U-Boot configuration, with handoff files. I tried 
> to compare them with those I copied from a sample Quartus project they 
> provide too. I couldn't notice striking differences, although it's not 
> easy to compare because they used an older version of Quartus.
>
> - The addresses and sizes in the log output below don't seem to exceed 
> SDRAM boundaries, do they?
> - Any hint on anything to check?
>
> David
>
> =============================
> barebox 2025.06.1 #1 Thu Jul 3 10:53:43 CEST 2025
>
>
> Board: SoCFPGA
> No consoles were activated. Activating all consoles as fallback!
> dw_mmc dw_mmc0: registered as mci0
> mci0: detected SD card version 2.0
> mci0: registered disk0
> starting bootloader...
> arch/arm/boards/enclustra-sa2/lowlevel.c: __start_socfpga_sa2() >>> start
> include/mach/socfpga/lowlevel.h: start_socfpga_c5_common() >>> start
> include/mach/socfpga/lowlevel.h: start_socfpga_c5_common() >>> 
> arm_cpu_lowlevel_init() OK
> include/mach/socfpga/lowlevel.h: start_socfpga_c5_common() >>> 
> fdt_blob=0x00002320 fdt=0x1ff87ae8 size=0x40000000
> include/mach/socfpga/lowlevel.h: start_socfpga_c5_common() >>> calling 
> barebox_arm_entry()...
> uncompress.c: memory at 0x00000000, size 0x40000000
> mmu: enabling MMU, ttb @ 0x3ffe0000
> endmem                = 0x40000000
> arm_mem_scratch       = 0x3fff8000+0x00008000
> arm_mem_stack         = 0x3fff0000+0x00008000
> arm_mem_ttb           = 0x3ffe0000+0x00010000
> arm_mem_barebox_image = 0x3fe00000+0x00200000
> arm_mem_early_malloc  = 0x3fde0000+0x00020000
> membase               = 0x00000000+0x40000000
> uncompress.c: uncompressing barebox binary at 0x1ff8c800 (size 
> 0x00056b67) to 0x3fe00000 (uncompressed size: 0x000778b0)
> uncompress.c: jumping to uncompressed image at 0x3fe00001
> uncompress.c: calling armv7_switch_to_hyp()...
> uncompress.c: armv7_switch_to_hyp() OK. Now jumping...
> =============================
>
>



