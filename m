Delivery-date: Thu, 01 May 2025 14:42:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uATFK-0019PF-0v
	for lore@lore.pengutronix.de;
	Thu, 01 May 2025 14:42:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uATFJ-0006N1-CN
	for lore@pengutronix.de; Thu, 01 May 2025 14:42:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k8k3A5OZfMqVGJdDfs24vEZ5cp6zLtDE36UdfoDweLM=; b=CLybjq/SyC7YWLSnnRLQz+97d3
	S087RmdBmUD6327j1JEKvXPfpVZ5o8FzOedPeNCryOVEwORcX2EZZN7+1u4B2//6NivYGWgfIowTv
	PyaRZkZemfQdnmMuHN2aoLxfCxeF+FDmDvdnFbmInAmC2KiMCwVufvDKDWNZ+myepXPQb/KtdvRBF
	i0wd8yPQcvI8jXB0vO+P49IQ5mS5ActQkSTjaugmRW6bq3Ht9E57elev8KQcdqE5zKWUeu3LYtBuc
	t9rZbMuDAP29/wi0wB9c2FtVudLEuNwrxAVxQKQT1N6Bgoi3xsmXIVJKMl4RmSHrAuCjPOc34O9zT
	M/f+Dn+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uATEf-0000000FiYJ-1BLX;
	Thu, 01 May 2025 12:41:53 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uASqN-0000000FVjW-4Ayu
	for barebox@lists.infradead.org;
	Thu, 01 May 2025 12:16:49 +0000
Received: from InfinityCube ([95.91.232.227]) by mrelayeu.kundenserver.de
 (mreue108 [213.165.67.113]) with ESMTPSA (Nemesis) id
 1N1whr-1vC1uU3u8n-016rIC; Thu, 01 May 2025 14:16:44 +0200
Date: Thu, 1 May 2025 14:16:39 +0200
From: Johannes Roith <johannes@gnu-linux.rocks>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <aBNmGWyUGPW/okvk@InfinityCube>
References: <20250428172001.6708-1-johannes@gnu-linux.rocks>
 <aBCO-SSyT0BQnlek@pengutronix.de>
 <3761c82f-78ec-42ea-bf4a-d8ecbdced01d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3761c82f-78ec-42ea-bf4a-d8ecbdced01d@pengutronix.de>
X-Provags-ID: V03:K1:uXH4aRgnMGgIqUWV9Q9K5jQFkyAFjFPS/y2W7/CpNyfxt28Hncm
 iAwkuZfN6MUa8vl1RRRk5NdDYha/ppyIOrn10+AmwyGsIrP5Oahb9ky+zibhx6oXFxkzLdh
 c4YX+WUx1zvxBYCgthIt4Gena2vw3Uj47Kz46R+LY5kvcQ1EQAVR51+JNvKlkacabncvodd
 CDnfOSkuYa2u1hGiph+gQ==
UI-OutboundReport: notjunk:1;M01:P0:H5khvbqDvZU=;61V7YdX2eXCppxjO2jSLjPi0Tvd
 QszH6jFWb8E7y8+YFLPhbSpn79U+dwRns39NwzO5zKeMD8d0Gi/v1Dr4UIC+uEHbQN+qwKLm7
 vSHdumqlxo8uaGYvhSYAPXOEpNZTnugKm6BFFU+UtUzwpKNKZ6mKWbkfJ1yNbniwM1ph8C3Kq
 fYxYCLoJ5XSEc9ZM7sJxethpvN8rADBm0jx+pG8l/1Xcvoh+CoXGZdF+mvT9kp5rSgvh/36JD
 YNrxxgaWUvWI5oqkywRUKlCPuVoOmJ6d8yNOvr+LJJc5u/ssjtLyih5reNjmUuwFWRKBFvVPu
 7ENn2UFOHa9OuVDViN/j+gyDz9w9UXTke4HJjw2lHWLXkZ4uKsk4L5b2Jq9aLM5rz2iC9RlzB
 Hyum7PN2FPa1UF4biK3cnh/ftR9q783HWWgw8qFV5L6Xc0Mx0QFe9GmNQc1MthTBZGWgyouX0
 VQSGB8GgpL98E2q0X+cuLjh5thbbmh2a3cuRH17c6BaaGBPUA3qzouEV9PFDTA4a7L1XDh7Sv
 OqdukKKPg/2p65KT+lJ9LZoQi8O6RUFRJGgG0wmRqZUu8ALhsLpogN06nmn9hl+hjVH6Z2gXt
 w83kl3kHoQybYSo8RlWwdyC4ZSjyvoutIogbInxP4at72oP1eAmQumDMIOnSta60m4p+wY1Nt
 WEdOAp0t2SYYTJ20o2YcAki8teqPgCEX2QS1uw9Jjc/rJPe1VwmIG4Zzv5BNbt67movqb7LKw
 k40b2z3FpNb+OxCPmKEBh5/HnglJDdor1JSb3zrni3vTJnP+Dhh9TAAsXLKyBJy53GCRRRmEj
 wngUre/piBofEg79AGXb6yGTidnfp24OUdOd1gDknumgiHOL9kjhEppA/IBak2iarUNfzKDx5
 WKG2s5S7o7r8VXnPDzgjdDq5YRPw0YAMiFMVCX6zrNHN/rUPmupEJhO52If+in83Eft09A8Oa
 X7Y76VO5tw4ES3fjKORnwCKZe0NA4DrdddlMvSjHn5cjG9tkVUSwS//fPk3KxSP56DC4BhOOh
 yo8UmqJBma7trnCnns25OKCe3QchF3F9cxl0CROLeSJsqu36IJas8BlkkeIe+PLIK3gfbLwOt
 4PI9diHOvECkB3fKd/I4G0vN0vNcbbgkjk2MpUnbbNd3MtXhrsHtkV94oXzzm6LoerzhbQG+4
 YMa3Sw9ee/ay3Y520bh9iTTS40ZZycnJx+lHnUVE51tCnKlXfvENk2fgfrNiw3YnnIxdVhuvS
 MyKBtDFbgQoAcnfz0UknMRBhDa/u2Vkz1BdF0Yd58hKoB6I6CSUPNK0wPyCQkpo1Av/rdOxZ8
 QFon6BUwjKtSbPXAVpJ5e4JKF8nmdtWyODwrBpIga9ldjaJsLMU8mbn0KaF23/aaG4oSPvWsh
 TvEu4iGx6kdCzxyKPKxoyP3ZOMuNo0shA56G3FPEib5wB34UGz54As9ZJ6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250501_051648_361901_DBECF98C 
X-CRM114-Status: GOOD (  42.94  )
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
Cc: barebox@lists.infradead.org
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
Subject: Re: Porting Cora Z7 Board to barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

thanks for the fast replies.

Am Tue, Apr 29, 2025 at 11:49:40AM +0200 schrieb Ahmad Fatoum:
> Hi,
> 
> On 4/29/25 10:34, Sascha Hauer wrote:
> > In case of the Zedboard you could take start_avnet_zedboard.pbl. This
> > contains all necessary components including device tree and barebox
> > proper.
> > 
> > However, this binary is linked to 0x0 and the FSBL will likely load it
> > there. I don't know where the FSBL itself is located.

Can I change the address to which barebox is linked to? E.g. in Vitis
the application is linked to 0x10000 and the FSBL starting this
application to 0x0.

> 
> The pbl files tend to be a bit bigger, because they are meant only
> as input to objcopy. You can add to images/Makefile.zynq, e.g.
> 
>   image-$(CONFIG_MACH_ZEDBOARD) += start_avnet_zedboard.elf
> 
> And it will generate a much more compact ELF file that should
> be interchangeable (I had tested this on ZynqMP).
> 
> >> Is there a way to hard code the UART to use for the barebox
> >> console for barebox proper?
> > 
> > Why do you want to hardcode it? Setting the console via device tree is
> > just fine.
> > 
> > For debugging your early code I recommend CONFIG_DEBUG_LL. For zynq the
> > UART is hardcoded to ZYNQ_UART1_BASE_ADDR in include/mach/zynq/debug_ll.h.
> > You can change it in this file.
> > 
> > With CONFIG_DEBUG_LL enabled you can put putc_ll() in your code.
> 
> CONFIG_DEBUG_PBL is also often useful.
> 
> >> The Zynq on the Cora Z7 only embeds a single core Cortex A9 while the SoC on the
> >> Zedboard embeds a dual core Cortex A9. Does this affect the cores initialization
> >> in arch/arm/mach_zynq?
> > 
> > I don't think so. I haven't used Zynq myself though.
> 
> Cheers,
> Ahmad
> 
> > 
> > Regards,
> >   Sascha
> > 
> 
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 

The good news is, I can boot barebox (PBL and proper) now and sometimes
also can Linux. Here is the output of my barebox:

Digilent Cora Z7 PBL
uncompress.c: memory at 0x00000000, size 0x20000000
mmu: enabling MMU, ttb @ 0x1ffd0000
endmem                = 0x20000000
arm_mem_scratch       = 0x1fff8000+0x00008000
arm_mem_stack         = 0x1ffe9000+0x0000f000
arm_mem_ttb           = 0x1ffd0000+0x00010000
arm_mem_barebox_image = 0x1fe00000+0x00200000
arm_mem_early_malloc  = 0x1fde0000+0x00020000
membase               = 0x00000000+0x20000000
uncompress.c: uncompressing barebox binary at 0x00006270 (size 0x00029c0c) to 0x1fe00000 (uncompressed size: 0x0006c0e8)
uncompress.c: jumping to uncompressed image at 0x1fe00000


barebox 2025.04.0-00215-gdacb19ae3252-dirty #11 Wed Apr 30 22:22:15 CEST 2025


Board: Digilent Cora Z7
ERROR: could not get clock /axi/dma-controller@f8003000:apb_pclk(0)
ERROR: could not get clock /axi/etb@f8801000:apb_pclk(0)
ERROR: could not get clock /axi/tpiu@f8803000:apb_pclk(0)
ERROR: could not get clock /axi/funnel@f8804000:apb_pclk(0)
ERROR: could not get clock /axi/ptm@f889c000:apb_pclk(0)
ERROR: could not get clock /axi/ptm@f889d000:apb_pclk(0)
mdio_bus: miibus0: probed
macb e000b000.ethernet@e000b000.of: Cadence GEM at 0xe000b000
arasan-sdhci e0100000.mmc@e0100000.of: registered as mmc0
malloc space: 0x17e00000 -> 0x1fdfffff (size 128 MiB)
arasan-sdhci e0100000.mmc@e0100000.of: error while transferring data for command 6
arasan-sdhci e0100000.mmc@e0100000.of: state = 0x01f70202 , interrupt = 0x00208000
mmc0: Card's startup fails with -74
barebox-environment chosen:environment-sd.of: probe failed: No such file or directory
environment load /dev/env0: No such file or directory
Maybe you have to create the partition.


Do you know what to do about the "could not get clock errors"? Do I have
to take care about them or just ignore them?

The more critical error comes from the SD card. Every second boot I am
getting the errors shown above, sometimes the card is started correctly.

Also when barebox can startup the mmc0, when starting the Linux Kernel
sometimes the rootfs on /dev/mmcblk0p2 is not found and the SD Card is
not detected. So, there seems to be something wrong with the SD Card
interface...

In lowlevel.c I am setting the clock divider for the sdio0 interface to 10
and the Source for generated clock is IO PLL. Therefore, the sdio IP
should get a 100 MHz input clock. IS this correct? Do you know which
clockrate the driver expects? 

Or do you have any other idea what could case the error?

In case I can fix the remaining errors I would like to bring the changes
upstream and send a patch. Here I also have some questions:

I added the following files and folder:

	arch/arm/boards/digilent-cora/
	arch/arm/dts/zynq-cora.dts
	dts/src/arm/xilinx/zynq-cora.dts

arch/arm/boards/digilent-cora/ is a copy of arch/arm/boards/avnet-zed/
with my changes applied. In the Copyright, should I keep the existing
name and just add mine as a second author?

If I understand it correctly, the files in dts/src are imported from the
Linux kernel git repo, right? In this case I should try to bring my
modified device tree mainline to Linux first and then commit my changes
to barebox? Or is there another file location I can drop my device tree
temporarily until it is available in Linux?

And a last question: How can I change the default boot method in barebox
from net to mmc0?

Thanks and best regards,
Johannes



