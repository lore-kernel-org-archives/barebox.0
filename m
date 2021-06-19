Delivery-date: Sat, 19 Jun 2021 06:52:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luSyQ-0004Tu-Gb
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 06:52:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luSyN-0000ad-LX
	for lore@pengutronix.de; Sat, 19 Jun 2021 06:52:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VZ+D3EKFC55qFUMnp+erQa/+WEq99bUDRrWmX+40/bo=; b=2Zm7MQegADRqBO
	3biMgLphduCZYkp14/pTQsxPoq5blIl2M5RzMh1GBIvYtQhP/Ov3IfmTN/E37iUSI0puJ1aJSTqku
	GSXoj3QUReBhRMie3lE0Foxoo8YCwF9QcxpDEx8riuQL2BGjW2XFiJg1jXRfAbwwlvBlV3wdIxg54
	TxKVebUEizQQLJ6vEXN71BnCpbbO8tUidY7minjpgA3HWjKCKu6h4e5dNvL5kXmZbvTJphgyK2Qie
	vECRvyl6fDB1Q+z4Qb77Xc3RYvmzcDeki6S/ACpE7222JUaF/GF7atpDNvFIytdcdpoQzvaAyJhC0
	sWJ3gs1PqqeMNnP3FcSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luSwr-00GHjO-Bv; Sat, 19 Jun 2021 04:51:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luSwe-00GHej-Ka
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 04:51:03 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwc-0008Lw-SX; Sat, 19 Jun 2021 06:50:58 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1luSwa-0001KS-L2; Sat, 19 Jun 2021 06:50:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sat, 19 Jun 2021 06:50:26 +0200
Message-Id: <20210619045055.779-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_215101_046944_6EA05AD8 
X-CRM114-Status: GOOD (  26.24  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 00/29] RISC-V: add BeagleV Beta board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The changes allow barebox to run second stage (after ddrinit and second
boot) on the BeagleV beta board. It does everything necessary to support
Ethernet, MMC, GPIO, pinmux, pinconf, clock, reset, watchdog, HWRNG and
DMA between CPU and the cache-incoherent DMA masters.

The current vendor kernel doesn't care much for low-level
initialization, depending on pinmux, pinconf, clock and reset to happen
completely in the bootloader. This makes an initial bootloader port
much more complex, because you need not only care about the peripherals
you use yourself, but those that Linux may want to access to.

For this reason, there is a starfive-pwrseq driver that binds against
some nodes like the neural network accelerator, which we will probably
never support, but at least tickles it resets and enables its clocks.

Some peripherals require writing magic values into registers, which
this series doesn't do. If your boot hangs, consider checking out:

https://github.com/a3f/barebox/tree/beaglev

instead, which imports some vendor boot code to support more
peripherals. This series is sufficient to have barebox boot kernels that
do their own initialization though. Problem is there are no such kernels
yet ^^.

Candidates for further steps:

 - Support more peripherals in starfive-pwrseq
 - Get Designware i2c controller working, so we can use PMIC for reset
 - Get Cadence QSPI working, so barebox can flash itself and use
   environment on flash
 - Figure out the ticket lottery stuff, so we can boot multi-core
 - Replace ddrinit and secondboot with PBL, load from there opensbi
   and then return to barebox proper
 - Complete missing clock tree info when Documentation is available

I can use a hand impementing these, so patches are most certainly
welcome (Antony, I am looking at you ;-).

v1 was here:
	https://lore.barebox.org/barebox/20210531073821.15257-1-a.fatoum@pengutronix.de/

v1 -> v2:
  - Dropped untested PMIC and flash chip commits. i2c and qspi controller
    drivers in tree don't yet work for BeagleV
  - remove clocksource clutter from console
  - import S-/M-Mode multi-image series, so we can build all images for
    the same ISA in one go
  - Drop barebox,provide-mac-address from OTP driver. This is now done
    via nvmem-cells reference
  - Replace coherent memory from SRAM allocator with non-1:1 mapping:
    Give devices the cached <= 32 bit address, as they are
    cache-incoherent anyway, and use the > 32 bit uncached address from
    CPU side. Works beautifully
  - Drop 64-bit-conversion for dw_mmc. Sascha did it for rk3568 and it
    works for BeagleV too
  - Check Designware ETH coherent memory allocation against mask
  - Rebase on newest clock changes
  - Disable clocks after resets (Sascha)
  - Move repsonsibility of keeping reset-synchronous clocks needed
    for normal operation enabled to drivers (Sascha, off-list)
  - Handle fence.i trap in exception handler to support SoCs without
    Zifencei ISA extension
  - Add some static clock initialization to starfive-pwrseq driver
  - Add pinctrl driver support
  - Add GPIO driver support
  - Add board support


Ahmad Fatoum (29):
  clocksource: RISC-V: demote probe success messages to debug level
  RISC-V: virt: select only one timer
  RISC-V: extend multi-image to support both S- and M-Mode
  RISC-V: cpuinfo: return some output for non-SBI systems as well
  RISC-V: S-Mode: propagate Hart ID
  RISC-V: erizo: make it easier to reuse ns16550 debug_ll
  RISC-V: socs: add Kconfig entry for StarFive JH7100
  nvmem: add StarFive OTP support
  RISC-V: dma: support multiple dma_alloc_coherent backends
  RISC-V: add exception support
  RISC-V: support incoherent I-Cache
  drivers: soc: sifive: add basic L2 cache controller driver
  soc: starfive: add support for JH7100 incoherent interconnect
  soc: sifive: l2_cache: enable maximum available cache ways
  net: designware: fix non-1:1 mapped 64-bit systems
  net: designware: add support for IP integrated into StarFive SoC
  mci: allocate DMA-able memory
  mci: allocate sector_buf on demand
  dma: allocate 32-byte aligned buffers by default
  mci: dw_mmc: add optional reset line
  mci: dw_mmc: match against StarFive MMC compatibles
  clk: add initial StarFive clock support
  reset: add StarFive reset controller driver
  watchdog: add StarFive watchdog driver
  hw_random: add driver for RNG on StarFive SoC
  reset: add device_reset_all helper
  gpio: add support for StarFive GPIO controller
  misc: add power sequencing driver for initializing StarFive
    peripherals
  RISC-V: StarFive: add board support for BeagleV Starlight

 Documentation/boards/riscv.rst                |  37 +
 arch/riscv/Kconfig                            |  19 +-
 arch/riscv/Kconfig.socs                       |  56 +-
 arch/riscv/boards/Makefile                    |   1 +
 arch/riscv/boards/beaglev/Makefile            |   5 +
 arch/riscv/boards/beaglev/board.c             |  30 +
 .../beaglev/defaultenv-beaglev/boot/buildroot |  13 +
 .../beaglev/defaultenv-beaglev/boot/fedora    |  16 +
 .../defaultenv-beaglev/nv/boot.default        |   1 +
 arch/riscv/boards/beaglev/lowlevel.c          |  18 +
 arch/riscv/boards/erizo/lowlevel.c            |   6 +-
 arch/riscv/boards/hifive/lowlevel.c           |  17 +-
 arch/riscv/boot/board-dt-2nd.c                |   4 +-
 arch/riscv/boot/entry.c                       |   5 +-
 arch/riscv/boot/entry.h                       |   6 +-
 arch/riscv/boot/start.c                       |  15 +-
 arch/riscv/boot/uncompress.c                  |  11 +-
 arch/riscv/configs/starfive_defconfig         | 131 +++
 arch/riscv/cpu/Makefile                       |   4 +
 arch/riscv/cpu/core.c                         |  40 +-
 arch/riscv/cpu/dma.c                          |  74 ++
 arch/riscv/cpu/interrupts.c                   | 139 +++
 arch/riscv/cpu/mtrap.S                        |  30 +
 arch/riscv/cpu/strap.S                        |  30 +
 arch/riscv/dts/Makefile                       |   1 +
 arch/riscv/dts/jh7100-beaglev-starlight.dts   |  54 ++
 arch/riscv/dts/jh7100-beaglev-starlight.dtsi  | 369 ++++++++
 arch/riscv/dts/jh7100.dtsi                    | 798 ++++++++++++++++++
 arch/riscv/include/asm/asm-offsets.h          |   1 +
 arch/riscv/include/asm/barebox-riscv.h        |  14 +-
 arch/riscv/include/asm/barrier.h              |  27 +
 arch/riscv/include/asm/cacheflush.h           |  16 +
 arch/riscv/include/asm/debug_ll.h             |  10 +-
 arch/riscv/include/asm/dma.h                  |  48 +-
 arch/riscv/include/asm/io.h                   |  10 +
 arch/riscv/include/asm/irq.h                  | 107 +++
 arch/riscv/include/asm/ptrace.h               | 143 ++++
 arch/riscv/include/asm/sbi.h                  |   8 +-
 arch/riscv/include/asm/system.h               |  61 ++
 arch/riscv/include/asm/unwind.h               |   9 +
 arch/riscv/lib/asm-offsets.c                  |  46 +
 arch/riscv/lib/bootm.c                        |   4 +-
 arch/riscv/lib/cpuinfo.c                      |  56 +-
 arch/riscv/lib/reloc.c                        |   8 +
 arch/riscv/lib/sbi.c                          |   4 +
 arch/riscv/lib/setupc.S                       |   2 +
 commands/Kconfig                              |   4 +-
 common/Kconfig                                |  11 +
 common/globalvar.c                            |  21 +
 common/oftree.c                               |  19 +-
 drivers/Makefile                              |   2 +-
 drivers/clk/Makefile                          |   1 +
 drivers/clk/starfive/Makefile                 |   3 +
 drivers/clk/starfive/clk.h                    |  64 ++
 drivers/clk/starfive/jh7100-clkgen.c          | 363 ++++++++
 drivers/clocksource/timer-clint.c             |   7 +-
 drivers/clocksource/timer-riscv.c             |   5 +-
 drivers/gpio/Kconfig                          |   8 +
 drivers/gpio/Makefile                         |   1 +
 drivers/gpio/gpio-starfive-vic.c              | 177 ++++
 drivers/hw_random/Kconfig                     |   7 +
 drivers/hw_random/Makefile                    |   1 +
 drivers/hw_random/starfive-vic-rng.c          | 208 +++++
 drivers/mci/dw_mmc.c                          |  23 +-
 drivers/mci/mci-core.c                        |  15 +-
 drivers/misc/Kconfig                          |  10 +
 drivers/misc/Makefile                         |   1 +
 drivers/misc/starfive-pwrseq.c                |  92 ++
 drivers/net/Kconfig                           |   8 +
 drivers/net/Makefile                          |   1 +
 drivers/net/designware.c                      |  64 +-
 drivers/net/designware.h                      |  29 +-
 drivers/net/designware_starfive.c             | 110 +++
 drivers/nvmem/Kconfig                         |   8 +
 drivers/nvmem/Makefile                        |   2 +
 drivers/nvmem/starfive-otp.c                  | 201 +++++
 drivers/pinctrl/pinctrl-single.c              |   4 +-
 drivers/reset/Kconfig                         |   6 +
 drivers/reset/Makefile                        |   1 +
 drivers/reset/core.c                          |  78 +-
 drivers/reset/reset-starfive-vic.c            | 234 +++++
 drivers/soc/Makefile                          |   5 +
 drivers/soc/sifive/Makefile                   |   1 +
 drivers/soc/sifive/sifive_l2_cache.c          | 136 +++
 drivers/soc/starfive/Makefile                 |   1 +
 drivers/soc/starfive/jh7100_dma.c             |  55 ++
 drivers/watchdog/Kconfig                      |   7 +
 drivers/watchdog/Makefile                     |   1 +
 drivers/watchdog/starfive_wdt.c               | 106 +++
 images/Makefile.riscv                         |   4 +
 include/dma.h                                 |   7 +-
 include/dt-bindings/clock/starfive-jh7100.h   | 203 +++++
 .../reset-controller/starfive-jh7100.h        | 126 +++
 include/globalvar.h                           |   8 +
 include/linux/reset.h                         |   7 +
 include/pinctrl.h                             |   6 +
 include/soc/sifive/l2_cache.h                 |  10 +
 include/soc/starfive/rstgen.h                 |  41 +
 include/soc/starfive/sysmain.h                |  15 +
 99 files changed, 4878 insertions(+), 154 deletions(-)
 create mode 100644 arch/riscv/boards/beaglev/Makefile
 create mode 100644 arch/riscv/boards/beaglev/board.c
 create mode 100755 arch/riscv/boards/beaglev/defaultenv-beaglev/boot/buildroot
 create mode 100755 arch/riscv/boards/beaglev/defaultenv-beaglev/boot/fedora
 create mode 100644 arch/riscv/boards/beaglev/defaultenv-beaglev/nv/boot.default
 create mode 100644 arch/riscv/boards/beaglev/lowlevel.c
 create mode 100644 arch/riscv/configs/starfive_defconfig
 create mode 100644 arch/riscv/cpu/dma.c
 create mode 100644 arch/riscv/cpu/interrupts.c
 create mode 100644 arch/riscv/cpu/mtrap.S
 create mode 100644 arch/riscv/cpu/strap.S
 create mode 100644 arch/riscv/dts/jh7100-beaglev-starlight.dts
 create mode 100644 arch/riscv/dts/jh7100-beaglev-starlight.dtsi
 create mode 100644 arch/riscv/dts/jh7100.dtsi
 create mode 100644 arch/riscv/include/asm/asm-offsets.h
 create mode 100644 arch/riscv/include/asm/barrier.h
 create mode 100644 arch/riscv/include/asm/cacheflush.h
 create mode 100644 arch/riscv/include/asm/irq.h
 create mode 100644 arch/riscv/include/asm/ptrace.h
 create mode 100644 arch/riscv/include/asm/system.h
 create mode 100644 arch/riscv/include/asm/unwind.h
 create mode 100644 drivers/clk/starfive/Makefile
 create mode 100644 drivers/clk/starfive/clk.h
 create mode 100644 drivers/clk/starfive/jh7100-clkgen.c
 create mode 100644 drivers/gpio/gpio-starfive-vic.c
 create mode 100644 drivers/hw_random/starfive-vic-rng.c
 create mode 100644 drivers/misc/starfive-pwrseq.c
 create mode 100644 drivers/net/designware_starfive.c
 create mode 100644 drivers/nvmem/starfive-otp.c
 create mode 100644 drivers/reset/reset-starfive-vic.c
 create mode 100644 drivers/soc/Makefile
 create mode 100644 drivers/soc/sifive/Makefile
 create mode 100644 drivers/soc/sifive/sifive_l2_cache.c
 create mode 100644 drivers/soc/starfive/Makefile
 create mode 100644 drivers/soc/starfive/jh7100_dma.c
 create mode 100644 drivers/watchdog/starfive_wdt.c
 create mode 100644 include/dt-bindings/clock/starfive-jh7100.h
 create mode 100644 include/dt-bindings/reset-controller/starfive-jh7100.h
 create mode 100644 include/soc/sifive/l2_cache.h
 create mode 100644 include/soc/starfive/rstgen.h
 create mode 100644 include/soc/starfive/sysmain.h

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

