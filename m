Delivery-date: Mon, 21 Jun 2021 11:13:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvFzV-0000eP-4d
	for lore@lore.pengutronix.de; Mon, 21 Jun 2021 11:13:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvFzU-0005aX-1f
	for lore@pengutronix.de; Mon, 21 Jun 2021 11:13:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RmpzWrFJV3nHeHR/BW/hgCZzLXDn1NkpcBSne7KEHi4=; b=cQCAczF6ThDyf1ph70dBpNnCMa
	sGL3F1hr+ibdpbns+x9RSAmVKorRP3EvFT66LF5MJR0jG3KFR8/uzXDYJmAI2IyRcmHw9OPEKeOOo
	Q4zHRI9vuN42j4SXgMxIcjtPH3eQg0hvXe6f2+koAhPm/p66JsUMBqF4E5Gvth7vKdsvA3N/D9d7y
	diVXNLtrqjsffzsZRfVejddYHO6EbEYSE6G9zWzhWlGMY9G7mTIznLB5SW8mRLet1WJamLgS3KuUf
	gvlQJHyYrpfkaZ9TnZsldGx3OymMmTPpVtC1eZXbFZXBZV6QXW7nUDCg+4KlpIYzIXg1Tmht1fWtB
	D2eNwUHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvFy6-002q1s-DL; Mon, 21 Jun 2021 09:11:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvFy1-002q1F-RG
 for barebox@lists.infradead.org; Mon, 21 Jun 2021 09:11:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvFy0-0005Gu-8A; Mon, 21 Jun 2021 11:11:40 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lvFxz-0008OV-Va; Mon, 21 Jun 2021 11:11:39 +0200
Date: Mon, 21 Jun 2021 11:11:39 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210621091139.GR9782@pengutronix.de>
References: <20210619045055.779-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210619045055.779-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:10:48 up 123 days, 12:34, 127 users,  load average: 1.86, 0.98,
 0.55
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_021141_960917_F02AAF9E 
X-CRM114-Status: GOOD (  42.56  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/29] RISC-V: add BeagleV Beta board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Jun 19, 2021 at 06:50:26AM +0200, Ahmad Fatoum wrote:
> The changes allow barebox to run second stage (after ddrinit and second
> boot) on the BeagleV beta board. It does everything necessary to support
> Ethernet, MMC, GPIO, pinmux, pinconf, clock, reset, watchdog, HWRNG and
> DMA between CPU and the cache-incoherent DMA masters.
> 
> The current vendor kernel doesn't care much for low-level
> initialization, depending on pinmux, pinconf, clock and reset to happen
> completely in the bootloader. This makes an initial bootloader port
> much more complex, because you need not only care about the peripherals
> you use yourself, but those that Linux may want to access to.
> 
> For this reason, there is a starfive-pwrseq driver that binds against
> some nodes like the neural network accelerator, which we will probably
> never support, but at least tickles it resets and enables its clocks.
> 
> Some peripherals require writing magic values into registers, which
> this series doesn't do. If your boot hangs, consider checking out:
> 
> https://github.com/a3f/barebox/tree/beaglev
> 
> instead, which imports some vendor boot code to support more
> peripherals. This series is sufficient to have barebox boot kernels that
> do their own initialization though. Problem is there are no such kernels
> yet ^^.
> 
> Candidates for further steps:
> 
>  - Support more peripherals in starfive-pwrseq
>  - Get Designware i2c controller working, so we can use PMIC for reset
>  - Get Cadence QSPI working, so barebox can flash itself and use
>    environment on flash
>  - Figure out the ticket lottery stuff, so we can boot multi-core
>  - Replace ddrinit and secondboot with PBL, load from there opensbi
>    and then return to barebox proper
>  - Complete missing clock tree info when Documentation is available
> 
> I can use a hand impementing these, so patches are most certainly
> welcome (Antony, I am looking at you ;-).
> 
> v1 was here:
> 	https://lore.barebox.org/barebox/20210531073821.15257-1-a.fatoum@pengutronix.de/
> 
> v1 -> v2:
>   - Dropped untested PMIC and flash chip commits. i2c and qspi controller
>     drivers in tree don't yet work for BeagleV
>   - remove clocksource clutter from console
>   - import S-/M-Mode multi-image series, so we can build all images for
>     the same ISA in one go
>   - Drop barebox,provide-mac-address from OTP driver. This is now done
>     via nvmem-cells reference
>   - Replace coherent memory from SRAM allocator with non-1:1 mapping:
>     Give devices the cached <= 32 bit address, as they are
>     cache-incoherent anyway, and use the > 32 bit uncached address from
>     CPU side. Works beautifully
>   - Drop 64-bit-conversion for dw_mmc. Sascha did it for rk3568 and it
>     works for BeagleV too
>   - Check Designware ETH coherent memory allocation against mask
>   - Rebase on newest clock changes
>   - Disable clocks after resets (Sascha)
>   - Move repsonsibility of keeping reset-synchronous clocks needed
>     for normal operation enabled to drivers (Sascha, off-list)
>   - Handle fence.i trap in exception handler to support SoCs without
>     Zifencei ISA extension
>   - Add some static clock initialization to starfive-pwrseq driver
>   - Add pinctrl driver support
>   - Add GPIO driver support
>   - Add board support
> 
> 
> Ahmad Fatoum (29):
>   clocksource: RISC-V: demote probe success messages to debug level
>   RISC-V: virt: select only one timer
>   RISC-V: extend multi-image to support both S- and M-Mode
>   RISC-V: cpuinfo: return some output for non-SBI systems as well
>   RISC-V: S-Mode: propagate Hart ID
>   RISC-V: erizo: make it easier to reuse ns16550 debug_ll
>   RISC-V: socs: add Kconfig entry for StarFive JH7100
>   nvmem: add StarFive OTP support
>   RISC-V: dma: support multiple dma_alloc_coherent backends
>   RISC-V: add exception support
>   RISC-V: support incoherent I-Cache
>   drivers: soc: sifive: add basic L2 cache controller driver
>   soc: starfive: add support for JH7100 incoherent interconnect
>   soc: sifive: l2_cache: enable maximum available cache ways
>   net: designware: fix non-1:1 mapped 64-bit systems
>   net: designware: add support for IP integrated into StarFive SoC
>   mci: allocate DMA-able memory
>   mci: allocate sector_buf on demand
>   dma: allocate 32-byte aligned buffers by default
>   mci: dw_mmc: add optional reset line
>   mci: dw_mmc: match against StarFive MMC compatibles
>   clk: add initial StarFive clock support
>   reset: add StarFive reset controller driver
>   watchdog: add StarFive watchdog driver
>   hw_random: add driver for RNG on StarFive SoC
>   reset: add device_reset_all helper
>   gpio: add support for StarFive GPIO controller
>   misc: add power sequencing driver for initializing StarFive
>     peripherals
>   RISC-V: StarFive: add board support for BeagleV Starlight

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

