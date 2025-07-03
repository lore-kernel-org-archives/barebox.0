Delivery-date: Fri, 04 Jul 2025 00:39:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uXSaa-00DmzE-27
	for lore@lore.pengutronix.de;
	Fri, 04 Jul 2025 00:39:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uXSaa-0006A7-0a
	for lore@pengutronix.de; Fri, 04 Jul 2025 00:39:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=msRHHMc5CBpEE8HrloBSs36xijE5phwbCpH2sSCME8Y=; b=13ekK0t5dUpPVR7RVSqxMetLJM
	7IIcogs89V2APy6WNlXeDG5dPDkEnh0WTqE0Pcpc5WjX28NcGktpkArFrOqguqutmn8NxmH3XUAB1
	rmPY35UctkSCj0xNSwer7tIqcsCZnYZcg7p/g896h1jBPQ14YnfQq3rkIdMrhr3mClVC51nUQBSKl
	a+JuUBU9EWX14AIyVAFwchMv5SkupjJGlDwETQH3kYcLo2UUnr22XIb/t3l49GN+ttfgX0O2ynp02
	DyDOcHvkHO/iAGmMuOgycOfUtYRkYbQKbyY5OVLfP+LxxKB5xFhrQY4qfjw07xmfGoawOlbpO3mVX
	RH0e20fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXSZp-0000000CkIO-4AUo;
	Thu, 03 Jul 2025 22:38:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXQeD-0000000CRQK-2RDu
	for barebox@lists.infradead.org;
	Thu, 03 Jul 2025 20:35:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uXQe9-0003XM-TB; Thu, 03 Jul 2025 22:35:05 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uXQe9-006epL-1c;
	Thu, 03 Jul 2025 22:35:05 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uXQe9-00FehZ-1D;
	Thu, 03 Jul 2025 22:35:05 +0200
Date: Thu, 3 Jul 2025 22:35:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: David Picard <david.picard@clermont.in2p3.fr>
Cc: MList-Barebox <barebox@lists.infradead.org>
Message-ID: <aGbpedWAZoPS054m@pengutronix.de>
References: <9026c709-5e5f-4545-94ca-ea78ea431082@clermont.in2p3.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9026c709-5e5f-4545-94ca-ea78ea431082@clermont.in2p3.fr>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250703_133509_627862_1D01A61B 
X-CRM114-Status: GOOD (  26.92  )
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

On Thu, Jul 03, 2025 at 04:21:52PM +0200, David Picard wrote:
> Hello,
> 
> I'm trying to port the Enclustra SA2 module. I started off the Terasic DE0
> nano Soc board, that I could run with success previously. They both have a
> Cyclone V SoC FPGA. I added some pr_debug().
> 
> My code is here, in the board-enclustra-sa2 branch:
> https://github.com/dpproto/barebox
> 
> It hangs when the execution jumps to the uncompressed Barebox image, and I'm
> really stuck.
> 
> Enclustra provides a U-Boot configuration, with handoff files. I tried to
> compare them with those I copied from a sample Quartus project they provide
> too. I couldn't notice striking differences, although it's not easy to
> compare because they used an older version of Quartus.
> 
> - The addresses and sizes in the log output below don't seem to exceed SDRAM
> boundaries, do they?
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

This looks strange. Your fdt blob is at offset 0x2320 in the binary, but
the final pointer is at 0x1ff87ae8 meaning that your binary is only 8
byte aligned in memory. I would expect a bigger alignment here. The
buffer should be allocated by read_file_2(). Could you replace the
call to calloc there with a memalign() call aligning to something like
64 bytes?

Could be a red herring though.

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
> uncompress.c: uncompressing barebox binary at 0x1ff8c800 (size 0x00056b67)
> to 0x3fe00000 (uncompressed size: 0x000778b0)
> uncompress.c: jumping to uncompressed image at 0x3fe00001
> uncompress.c: calling armv7_switch_to_hyp()...
> uncompress.c: armv7_switch_to_hyp() OK. Now jumping...

Have you tried adding some debug output to barebox_non_pbl_start()?

pr_debug and friends will only work after setup_c() is called, but you
can either use putc_ll() before that or directly write to the UART TX
register.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


