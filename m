Delivery-date: Mon, 05 May 2025 09:40:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBqR4-002OCs-0Y
	for lore@lore.pengutronix.de;
	Mon, 05 May 2025 09:40:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBqR3-000117-Cx
	for lore@pengutronix.de; Mon, 05 May 2025 09:40:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1ZI5W3SsENihXxRYG/lgKo/YWeIQaa0KDxtLsws7aqQ=; b=OKDPn8lwOQ/bhzUhDKa4q1c+Gw
	1NHDsOGbaVVCmvXasFlGcDBGwIvV//V9fru9WFZ3tDBfqTEz9ISdPIlMAZDB6yULYkgUqpHToeq/u
	CKNCLwWHyd9nOtjr20mATlblafw2LHeguuqFHRgTvMNqZDrRQBPvWmQQXkZMBYkcd8ZCUoY1F+wfO
	lbBUFrGTMIv/7MWnMBpq+w8ar2S4+sEnWLeVNZFxKInLoIbvxAluniw29imKZJ9XcwrNr8BGP0coA
	EezzccyDUcXhEvKkECpihvdEk08wiudn10mz7ENhq5ZNLWBgiz+mIgeE+4xIbq7Q0hn+eaTozEmx/
	gQNtX4QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBqQX-00000006fUN-0P3O;
	Mon, 05 May 2025 07:39:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBqQT-00000006fTR-2wQY
	for barebox@lists.infradead.org;
	Mon, 05 May 2025 07:39:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uBqQQ-0000t0-FR; Mon, 05 May 2025 09:39:42 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uBqQP-001Bzz-2v;
	Mon, 05 May 2025 09:39:41 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uBqQP-004WqA-2U;
	Mon, 05 May 2025 09:39:41 +0200
Date: Mon, 5 May 2025 09:39:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Johannes Roith <johannes@gnu-linux.rocks>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <aBhrPYOt9ZaJuki7@pengutronix.de>
References: <20250428172001.6708-1-johannes@gnu-linux.rocks>
 <aBCO-SSyT0BQnlek@pengutronix.de>
 <3761c82f-78ec-42ea-bf4a-d8ecbdced01d@pengutronix.de>
 <aBNmGWyUGPW/okvk@InfinityCube>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aBNmGWyUGPW/okvk@InfinityCube>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_003945_744528_F649998C 
X-CRM114-Status: GOOD (  51.70  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Porting Cora Z7 Board to barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, May 01, 2025 at 02:16:39PM +0200, Johannes Roith wrote:
> Hi,
> 
> thanks for the fast replies.
> 
> Am Tue, Apr 29, 2025 at 11:49:40AM +0200 schrieb Ahmad Fatoum:
> > Hi,
> > 
> > On 4/29/25 10:34, Sascha Hauer wrote:
> > > In case of the Zedboard you could take start_avnet_zedboard.pbl. This
> > > contains all necessary components including device tree and barebox
> > > proper.
> > > 
> > > However, this binary is linked to 0x0 and the FSBL will likely load it
> > > there. I don't know where the FSBL itself is located.
> 
> Can I change the address to which barebox is linked to? E.g. in Vitis
> the application is linked to 0x10000 and the FSBL starting this
> application to 0x0.

First of all the barebox binary is relocatable, you can start it at any
address.

You could change the address by adjusting ARCH_TEXT_BASE, but why would
you? From the output below it seems your binary just starts fine from
address 0x0.

> 
> 
> The good news is, I can boot barebox (PBL and proper) now and sometimes
> also can Linux. Here is the output of my barebox:
> 
> Digilent Cora Z7 PBL
> uncompress.c: memory at 0x00000000, size 0x20000000
> mmu: enabling MMU, ttb @ 0x1ffd0000
> endmem                = 0x20000000
> arm_mem_scratch       = 0x1fff8000+0x00008000
> arm_mem_stack         = 0x1ffe9000+0x0000f000
> arm_mem_ttb           = 0x1ffd0000+0x00010000
> arm_mem_barebox_image = 0x1fe00000+0x00200000
> arm_mem_early_malloc  = 0x1fde0000+0x00020000
> membase               = 0x00000000+0x20000000
> uncompress.c: uncompressing barebox binary at 0x00006270 (size 0x00029c0c) to 0x1fe00000 (uncompressed size: 0x0006c0e8)
> uncompress.c: jumping to uncompressed image at 0x1fe00000
> 
> 
> barebox 2025.04.0-00215-gdacb19ae3252-dirty #11 Wed Apr 30 22:22:15 CEST 2025
> 
> 
> Board: Digilent Cora Z7
> ERROR: could not get clock /axi/dma-controller@f8003000:apb_pclk(0)
> ERROR: could not get clock /axi/etb@f8801000:apb_pclk(0)
> ERROR: could not get clock /axi/tpiu@f8803000:apb_pclk(0)
> ERROR: could not get clock /axi/funnel@f8804000:apb_pclk(0)
> ERROR: could not get clock /axi/ptm@f889c000:apb_pclk(0)
> ERROR: could not get clock /axi/ptm@f889d000:apb_pclk(0)
> mdio_bus: miibus0: probed
> macb e000b000.ethernet@e000b000.of: Cadence GEM at 0xe000b000
> arasan-sdhci e0100000.mmc@e0100000.of: registered as mmc0
> malloc space: 0x17e00000 -> 0x1fdfffff (size 128 MiB)
> arasan-sdhci e0100000.mmc@e0100000.of: error while transferring data for command 6
> arasan-sdhci e0100000.mmc@e0100000.of: state = 0x01f70202 , interrupt = 0x00208000
> mmc0: Card's startup fails with -74
> barebox-environment chosen:environment-sd.of: probe failed: No such file or directory
> environment load /dev/env0: No such file or directory
> Maybe you have to create the partition.
> 
> 
> Do you know what to do about the "could not get clock errors"? Do I have
> to take care about them or just ignore them?

We don't have drivers for any of the devices that you fail to get a
clock for, so that is not a problem.

Anyway, the clocks are registered by the clock driver, so normally they
should be found.

Do you have BAREBOX_DEEP_PROBE_ENABLE() in your board file? If not,
please add it. It makes sure the clock driver is probed once we need a
clock.

> 
> The more critical error comes from the SD card. Every second boot I am
> getting the errors shown above, sometimes the card is started correctly.
> 
> Also when barebox can startup the mmc0, when starting the Linux Kernel
> sometimes the rootfs on /dev/mmcblk0p2 is not found and the SD Card is
> not detected. So, there seems to be something wrong with the SD Card
> interface...

You found out yourself, but yes, rootwait is needed to boot from SD/eMMC
cards.

> 
> In lowlevel.c I am setting the clock divider for the sdio0 interface to 10
> and the Source for generated clock is IO PLL. Therefore, the sdio IP
> should get a 100 MHz input clock. IS this correct? Do you know which
> clockrate the driver expects? 
> 
> Or do you have any other idea what could case the error?
> 
> In case I can fix the remaining errors I would like to bring the changes
> upstream and send a patch. Here I also have some questions:
> 
> I added the following files and folder:
> 
> 	arch/arm/boards/digilent-cora/
> 	arch/arm/dts/zynq-cora.dts
> 	dts/src/arm/xilinx/zynq-cora.dts
> 
> arch/arm/boards/digilent-cora/ is a copy of arch/arm/boards/avnet-zed/
> with my changes applied. In the Copyright, should I keep the existing
> name and just add mine as a second author?

I'd say in this case just replace the original author with your name.
You would likely have come up with the same file if you had written it
yourself.

> 
> If I understand it correctly, the files in dts/src are imported from the
> Linux kernel git repo, right?

Yes, right.

> In this case I should try to bring my
> modified device tree mainline to Linux first and then commit my changes
> to barebox? Or is there another file location I can drop my device tree
> temporarily until it is available in Linux?

We thought about creating a an extra directory for dts files which are
pending upstream, but we are not there yet.

Best practice is to separate the barebox specific dts stuff from the
about-to-be-upstreamed stuff and put both files into arch/arm/dts.
With this we can just drop the non-barebox specific file once it's in
Linux upstream without losing the barebox specific changes.

> 
> And a last question: How can I change the default boot method in barebox
> from net to mmc0?

nv boot.default="mmc0". See https://www.barebox.org/doc/latest/user/variables.html
and the output of the "magicvar" command

Regards,
  Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


