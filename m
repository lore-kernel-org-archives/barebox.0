Delivery-date: Mon, 19 Jul 2021 21:02:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m5YXX-0007v4-Ix
	for lore@lore.pengutronix.de; Mon, 19 Jul 2021 21:02:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m5YXV-0006mr-Pb
	for lore@pengutronix.de; Mon, 19 Jul 2021 21:02:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:MIME-Version:Message-ID:Subject:To
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eop7ANsnoQMTyzHNvGcYz/4jyhr5Xjws/662W3Ii2J4=; b=kGP1E4NnYPkWD8
	OktKMKkcVvXcba072i6AP8KgnqgOjFzGQpbLMyvbqvH/v2/CKfGQby6DEUT7mOmrio93klNuK3ifE
	xNH1XNQC6HAAoTba4w7YPVxYcZOE5v4wRIhkzbH/PHlj4yZbJcJ0/s5O5pTyATwcVqjMSWIIiLdBd
	EOvuTTBKjSrT+DLTm102SklbRJWZ6Nugwwi7jxVIO0GsWngYjLxs5pLEA8rrZTvdyPmEvrPMurCpz
	hszgq7BjahTfiy0d18DPanh50cfjvncNhLJZS6Dq4Wm/G6rB8K2BInTncbabP36kgyTA/icrqR00p
	4tt6AOzZ7c9aXQU/0V1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m5YVa-00B0dI-UR; Mon, 19 Jul 2021 19:00:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m5YVF-00B0Xt-Bu
 for barebox@lists.infradead.org; Mon, 19 Jul 2021 19:00:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1m5YVB-0006Y8-Ux; Mon, 19 Jul 2021 21:00:29 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1m5YVB-0002XH-Ls; Mon, 19 Jul 2021 21:00:29 +0200
Date: Mon, 19 Jul 2021 21:00:29 +0200
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210719190029.GI9782@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 06:56:08 up 151 days,  8:20, 64 users,  load average: 0.45, 0.59,
 0.51
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210719_120033_664219_74AE4FBD 
X-CRM114-Status: GOOD (  24.17  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: v2021.07.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi All,

barebox-2021.07.0 is out. This release brings us a new testing
infrastructure for barebox. It runs tests through labgrid-pytest on QEMU
targets and lays the ground work for doing continuous automated testing
barebox commits. See https://lore.pengutronix.de/barebox/20210412071651.876=
9-1-a.fatoum@pengutronix.de/
for details.
Other than that the clock framework got an overhaul. It is now much
closer to the Linux clk framework which simplifies porting Linux clk
drivers to barebox.
A lot has been done to prepare for supporting the new Rockchip RK3568
SoC. Many drivers are there already, the SoC support itself has to wait
for the next release though.

Have Fun!

Sascha

--------------------------------------8<------------------------------

Ahmad Fatoum (39):
      of: fix up /chosen node even when there are no bootargs
      of: introduce global.linux.bootargs_append
      commands: of_dump: implement -p for printing properties only
      regmap: implement regmap_init_i2c
      mfd: stpmic1: simplify using regmap_init_i2c
      common: memory: allocate all memory devices at once
      memory: fuse overlapping memory banks
      of: propagate errors inside barebox_register_{of, fdt} into initcalls
      of: warn about of_add_memory_bank errors
      ARM: <asm/memory.h>: propagate error codes from arm_add_mem_device()
      ARM: report probe error at arm_add_mem_device() callsites on failure
      video: reunite fb devices with their hardware parent
      driver: have dev_set_name() return 0 on success
      nvmem: provider: align read/write callback prototype with upstream
      nvmem: add nvmem_regmap_register helper
      nvmem: stm32-bsec: simplify using new nvmem_regmap_register
      kbuild: add install target
      kbuild: add ARCH=3D{i386, x86_64} as aliases for x86
      kbuild: add ARCH=3Dum alias for sandbox
      MIPS: qemu-malta: generate swapped image as part of multi-image build
      openrisc: set default KBUILD_IMAGE
      Documentation: boards: RISC-V: update TinyEMU support
      test: add basic barebox self-test infrastructure
      test: self: port Linux printf kselftest
      test: add labgrid-style configs for some emulated targets
      test: add first sample tests
      test: add emulate.pl, a runner for barebox on emulated targets
      test: self: run selftests as part of the pytest suite
      test: add bthread test
      net: macb: add SiFive support
      i2c: designware: fix error message formatting
      watchdog: add option to provide fall-back restart handler
      regulator: discard unused struct regulator_init_data handling
      include: <io.h>: define (read|write)[bwlq]_relaxed
      nvmem: regmap: fix use of uninitialized space with nvmem_regmap_regis=
ter
      nvmem: fix mismatch between extern and inline stub prototypes
      Documentation: devel: porting: update after clk_hw sync
      watchdog: dw_wdt: fix resource reservation error check
      fs: fix NULL pointer dereference of fsdrv->truncate for read-only FS

Antony Pavlov (1):
      drivers: drop unused usb_gadget_{map,unmap}_request()

David Jander (2):
      drivers: mci: imx-esdhc-common.c: Add missing dev_dbg define for pbl =
case
      ARM: protonic: add initial support for the Protonic PRT8MM family of =
boards

Enrico Jorns (1):
      mtd: nand: provide helpful error message when trying disabled ecc mode

Gwenhael Goavec-Merou (1):
      ARM: SoCFPGA: add Terasic DE10-Nano board support

Holger Assmann (1):
      ARM: webasto-ccbv2: Add variant with 512MB RAM

Lucas Stach (4):
      uncompress: use read_full to fill decompression buffer
      bootm: add support for booting compressed images
      ARM: imx_v8_defconfig: enable PRT8MM board
      ARM: imx_v8_defconfig: enable EHCI

Marc Kleine-Budde (1):
      habv4: habv4_get_status(): do not print HAB error event in case of kn=
own RNG self test failure

Marc Reilly (2):
      ARM: am33xx: add define for 800Mhz MPU PLL point
      ARM: beaglebone: init MPU speed to 800Mhz

Marco Felsch (3):
      common: boot: replace printf by pr_info/warn variants
      common: bootm: replace printf by pr_err/info
      common: oftree: replace printf by pr_info

Masahiro Yamada (2):
      firmware: refactor firmware/Makefile
      kconfig: update to Linux 5.13-rc1

Michael Tretter (7):
      mci: arasan: wait for data available only on read
      mci: arasan: configure data transfer only if we actually have data
      mci: mci-core: respect disable-wp property
      mci: arasan: fix most checkpatch warnings
      mci: arasan: remove duplicate stop clock
      mci: arasan: wait for XFER_COMPLETE for busy response
      ARM: zynqmp: defconfig: enable MCI_ARASAN

Oleksij Rempel (2):
      ARM: dts: protonic: define state partition
      ARM: protonic-imx6: do not expose RFID to the kernel dts

Peter Geis (1):
      clk: rockchip: fix rk3568 cpll clk gate bits

Sascha Hauer (100):
      arm: friendlyarm-tiny210: Remove dead code
      ARM: socfpga: Fix timeout tests
      i.MX FCB: Fix error checking
      clk: tegra: Fix -Wtype-limits compiler warning
      ARM: i.MX: xload-gpmi: Fix compiler warning
      mtd: cfi-flash: Fix compiler warning
      pci: mvebu: Fix wrong error check
      ARM: i.MX bbu-external-nand: Do not modify image
      ARM: layerscape: Fix wrong error check
      ARM: phytec-phycard-omap3: Fix checking of unsigned variable being ne=
gative
      scripts: zynq_mkimage: Make locally used function static
      ARM: module: Remove always false check
      aiodev: lm75: Handle unknown lm75 types
      clk: zynqmp: Fix wrong error check
      powerpc: law: use signed type to allow error checking
      dts: update to v5.13-rc3
      ARM: i.MX: Update sabresdb dcd data from U-Boot
      ARM: i.MX: sabresd: Add support for i.MX6QP board variant
      ARM: rockchip: Allow to build for multiple SoCs
      ARM: Rockchip: Merge defconfig files
      ARM: rockchip: radxa-rock: build defaultenv
      clk: clk-mux: Fix handling of CLK_MUX_HIWORD_MASK
      clk: introduce clk init op
      clk: rename clk_register() to bclk_register()
      clk: introduce struct clk_hw
      clk: introduce clk_register()
      clk: divider: Make clk_divider_ops const
      clk: divider: Add ro ops
      clk: divider: Make clk_mux_ops const
      clk: mux: Add ro ops
      clk: move fixed_factor to include/linux/clk.h
      Add rational_best_approximation()
      clk: Update fractional divider from Linux
      clk: Add lock to different clock types
      clk: Add Linux functions to register a divider
      clk: Add Linux functions to register a fixed factor clock
      clk: Add Linux functions to register a gate
      clk: Add Linux functions to register a mux
      mci: sdhci: straighten capabilities register
      mci: sdhci: Add and use SDHCI_CAPABILITIES_1 defines
      mci: sdhci: Use SDHCI_MAX_DIV_SPEC_200 define
      clk: Add CLK_GET_RATE_NOCACHE
      clk: Rename CLK_GATE_INVERTED to CLK_GATE_SET_TO_DISABLE
      clk: implement CLK_SET_RATE_UNGATE
      clk: implement set/get phase
      regmap: Add regmap_read_poll_timeout
      gpio: allow -gpio suffix for gpio property names
      net: designware: eqos: reset phy
      net: designware: eqos: set mdio bus device node
      net: eqos: Rockchip support
      clk: rockchip: Update to current Linux
      clk: Rockchip: Add rk3568 clk support
      clk: clk-mux: implement setting rate by reparenting
      clk: clk-composite: implement setting rate by reparenting
      clk: bail out early when rate is already desired one
      pinctrl: Rockchip: rename mux_offset to grf_mux_offset
      pinctrl: Rockchip: print resource_size_t with %pa
      partitions: Increase MAX_PARTITION to 128
      partitions: efi: Fix MAX_PARTITION check
      dts: update to v5.13-rc4
      dts: update to v5.13-rc5
      mci: sdhci: Use Linux defines for SDHCI_HOST_CONTROL register
      mci: sdhci: Use Linux defines for SDHCI_CLOCK_CONTROL register
      mci: sdhci: port over some common functions from Linux
      mci: sdhci: imx: Use sdhci_setup_host()
      mci: sdhci: arasan: Use sdhci_setup_host()
      mci: sdhci: arasan: Use sdhci_set_bus_width()
      mci: sdhci: arasan: Use sdhci_set_clock()
      clk: implement clk_bulk_get_optional()
      watchdog: dw_wdt: Write counter restart register
      watchdog: dw_wdt: Detect if running initially
      watchdog: dw_wdt: set maximum timeout
      watchdog: dw_wdt: denote message to debug level
      mci: sdhci: Get rid of many register ops
      mci: sdhci: Add DMA transfer helpers
      mci: Add support for Rockchip variant of the dwcmshc
      mci: imx-esdhc: Use common DMA helpers
      mci: dw_mmc: set dma mask to work correctly on 64bit platforms
      clk: sifive: Fix missing conversion to struct clk_hw
      pinctrl: Rockchip: Update from Linux
      pinctrl: Rockchip: implement drive strength setting
      pinctrl: Rockchip: Add RK3568 support
      pinctrl: Rockchip: Move to core_initcall level
      Add clk_round_rate command
      Merge branch 'for-next/arm'
      Merge branch 'for-next/clk'
      Merge branch 'for-next/compiler-warnings'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/i2c'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/kconfig'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mmc'
      Merge branch 'for-next/net'
      Merge branch 'for-next/overlapping-memory-banks'
      Merge branch 'for-next/pinctrl'
      Merge branch 'for-next/rockchip'
      Merge branch 'for-next/testing'
      Merge branch 'for-next/wdt'
      Release v2021.07.0

Trent Piepho (5):
      mtd: nand: Add help text for i.MX NAND controllers
      of: base: constify some property pointers
      lib/math/rational.c: Fix divide by zero
      net: phy: micrel: Add led-mode support
      drivers: base: Check all compatible strings for modalias match

Uwe Kleine-K=F6nig (3):
      arm: imx: Replace license and copyright boilerplate by SPDX identifie=
rs
      usb: i.MX: warn if vbus regulator isn't available
      fs: nfs: Start earlier to resend requests

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

