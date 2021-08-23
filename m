Delivery-date: Mon, 23 Aug 2021 16:29:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIAwy-0000zy-Du
	for lore@lore.pengutronix.de; Mon, 23 Aug 2021 16:29:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIAww-0005Pa-Nx
	for lore@pengutronix.de; Mon, 23 Aug 2021 16:29:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:MIME-Version:Message-ID:Subject:To
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NQGN87BuBZhk6ZnoDt3qKtoCj1zF00liewoSVKJomdI=; b=m5N2RX7ycHESP7
	nHNljG3zRnBmasY+w+y9eCYfRaFGjuqu1qm3RNgmoAY3RyKY9aJBzmbDq1EJWDDelFm9XViMcTB+w
	mso34GltUodlA35uJ8oHxhvySjmtTAORzPFsDsOfBDKk1tcC9ppAzR2R0Y2zsBXBQBmmqkbPKB5lI
	FI1+zCMsniQCA2FOah/u2SqFiWRnwpMC/T0rD7Q/CWlK+sjOTKaj5RJ8PY+mQcSsXMJjiXdX9CbfK
	DaOZEI4EUJqqoQ/rzRlXRe0fbB/fAAvtliihE+OUPjVz6c1DNz5DHCh9MFjYQ712LwuR4UL1BuMPw
	7BSutC/zvvTqjih6GLUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIAv9-00HF09-Vc; Mon, 23 Aug 2021 14:27:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIAv1-00HEyN-Pw
 for barebox@lists.infradead.org; Mon, 23 Aug 2021 14:27:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mIAuz-0005J8-OR; Mon, 23 Aug 2021 16:27:17 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mIAuz-0000BK-Fl; Mon, 23 Aug 2021 16:27:17 +0200
Date: Mon, 23 Aug 2021 16:27:17 +0200
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210823142717.GO24834@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 16:14:07 up 186 days, 17:38, 113 users,  load average: 0.08, 0.16,
 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_072720_071685_DD4405A5 
X-CRM114-Status: GOOD (  25.80  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: v2021.08.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


Hi All,

I am happy to announce barebox-2021.08.0.

There are some interesting changes this time. Finally deep probe support
has landed. Deep probe is a new way of handling dependencies between
devices. With device tree support dependencies are now very well
expressed in the device tree, so this information is used to probe a
device another device depends on just when it's needed. This makes
-EPROBE_DEFER unnecessary, which was (and still is) present in barebox,
but never worked very well. Deep probe is enabled per board, so you are
encouraged to enable it for your favourite board and see if it still
works.

Other than that the Rockchip rk3568 support is now pretty much
completed. Board support for the rk3568-EVB is added, so it's ready to
be used.

For a full list of changes see below.

Have Fun!
  Sascha

----------------------------------------------------------------
Ahmad Fatoum (73):
      nvmem: bsec: remove unused, left-over, struct member
      nvmem: treat devices without nvmem_bus::write as read only
      nvmem: add support for new read-only memory (rmem) binding
      nvmem: add support for nvmem-cells binding
      sandbox: use nvmem on top of stickypage for reset reason
      power: reset: port Linux generic NVMEM reboot mode driver
      sandbox: use nvmem-reboot-mode instead of syscon-reboot-mode
      sandbox: dts: fix unit-address for state partition
      nvmem: add command to list nvmem devices
      sandbox: hostfile: move initcall to earlier postcore level
      commands: md: don't leak heap memory with unaligned accesses
      clocksource: RISC-V: demote probe success messages to debug level
      RISC-V: virt: select only one timer
      RISC-V: extend multi-image to support both S- and M-Mode
      RISC-V: cpuinfo: return some output for non-SBI systems as well
      of: of_net: sync of_get_mac_address with Linux for NVMEM support
      net: consult device tree for ethernet address in NVMEM as fall-back
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
      misc: add power sequencing driver for initializing StarFive periphera=
ls
      RISC-V: StarFive: add board support for BeagleV Starlight
      reset: stm32: remove implicit sizeof(long) =3D=3D 4 expectation
      input: virtio: poll from poller, not bthread
      bthread: add debug print for scheduler context switches
      common: move workqueue handling from poller_call() to sched()
      common: bthread: schedule only in command context
      bthread: implement basic Linux-like completion API
      Documentation: devel: background-execution: update bthread docs
      usbgadget: refactor usbgadget_register to accept array
      usbgadget: add support for USB mass storage gadget
      spi: imx: enable use for i.MX8MM and i.MX8MP
      bthread: remove thread exit codes
      bthread: replace blocking bthread_stop with nonblocking bthread_cancel
      bthread: add options to create and delete dummy bthreads
      string: implement strchrnul
      console: respect baudrate specified in device-tree stdout-path
      test: self: add tests for progress notifier
      nvmem: fix dev_dbg(unregistered_device, ...)
      driver: add CONFIG_DEBUG_PROBES
      pinctrl: stm32: support deep probe
      ARM: imx6: marsboard: simplify ar8035 PHY fixups
      ARM: imx6: marsboard: enable deep-probe
      OF: gpio: drop duplicate of_device_ensure_probed
      sandbox: ship sample environment
      sandbox: power: set $global.system.reset=3DPOR on poweroff
      sandbox: fix probe order dependency between watchdog and power
      of: partition: implement of_partition_ensure_probed
      state: support deep probe
      nvmem: support deep probe
      sandbox: turn into deep probe platform
      Revert "sandbox: hostfile: move initcall to earlier postcore level"
      ARM: at91: fix building samad2 images without sama5d3

Antony Pavlov (3):
      RISC-V: make it possible to run nmon from PBL C code
      RISC-V: boards: erizo: make it possible to use nmon
      RISC-V: boards: beaglev: make it possible to use nmon

Geert Uytterhoeven (1):
      clk: starfive-jh7100: Fix duplicate numbers

Lucas Stach (1):
      of: base: move memory init from DT to initcall

Marco Felsch (9):
      imx53: remove unused imx53_add_nand
      of: platform: remove check of already added devices
      of: platform: Keep track of populated platform devices
      of: base: move clock init from of_probe() to barebox_register_of()
      initcall: add of_populate_initcall
      common: add initial barebox deep-probe support
      ARM: i.MX: esdctl: add deep-probe support
      ARM: stm32mp: ddrctrl: add deep-probe support
      ARM: boards: mx6-sabrelite: add deep-probe support

Michael Riesch (2):
      aiodev: add driver for Rockchip SARADC
      arm: rk3568-evb1: add support for Rockchip SARADC

Michael Tretter (7):
      ARM: zynqmp: set reset source
      clk: zynqmp: do not enable already enabled clocks
      dts: zcu104: add Barebox environment
      ARM: zynqmp: add update handler
      ARM: zynqmp: zcu104: register update handler
      ARM: zynqmp: defconfig: enable more features
      Documentation: zynqmp: add some documentation

Rouven Czerwinski (5):
      usb: usb251xb: remove >=3D0 check for u32 port
      common: bbu: only add available handlers
      common: bbu: add pr_fmt
      image-sparse: remove unused define
      mci: imx-esdhc-pbl: initialize fsl_esdhc_host

Sascha Hauer (79):
      regulator: fixed: Use gpiod
      usb: storage: Improve message
      usb: ehci: Fix unitialized variable
      clk: fix of clk set defaults when dev is a clk provider
      ARM: mmu: inherit pte flags from pmd
      clk: Add clk_name_* functions
      clk: rockchip rk3568: Initialize clocks
      filetype: Add Rockchip boot image type
      ARM: Rockchip: Add rkimage tool
      ARM: Add relocate_to_adr_full()
      ARM: Rockchip: Add rk3568 dtsi files
      filetype: Add function to check if a filetype is a compressed file
      arm64: bootm: Add dryrun check
      riscv: bootm: Add dryrun check
      libfile: Add copy_fd()
      ARM: Add atf common support
      of: of_copy_node(): Copy phandles as well
      of: Add function to duplicate a device tree
      fdt: Check blob size during unflattening
      firmware: make device_node argument non const
      libbb: Add find_path function
      firmware: consolidate ifdefs
      firmware: Add search path
      firmware: Fix device_node matching
      firmware: recognize by reproducible name
      blspec: Set firmware searchpath
      overlay: Add of_overlay_apply_file()
      firmware: Load from global search path
      of: Set of_chosen and of_model earlier
      of: implement of_get_stdoutpath()
      pinctrl: Find controller node first
      common: Explicitly probe consoles earlier with deep probe
      pinctrl: Add deep probe support
      phy: Add deep probe support
      ARM: i.MX Phytec physom: convert to board driver
      ARM: i.MX Phytec physom: Add deep-probe support
      of: Add dummy driver
      of: refuse to delete root node of live tree
      of: Fix deep-probe triggering when removing nodes
      ARM: Rockchip: Add rk3568 support
      ARM: rockchip: Add bootm handler for RKNS images
      ARM: Rockchip: Add rk3568 evb board support
      Add rockchip_v8_defconfig
      clk: rockchip rk3568: Register softrst handler
      usb: ehci: Handle clocks and phys
      phy: Rockchip: Add driver for usb2phy
      phy: rockchip: Add naneng-combphy support
      ARM: Rockchip: rk3568: Add USB nodes
      ARM: Rockchip: rk3568 EVB: Add USB support
      ARM64: Implement mem*_*io()
      usb: dwc3: Use _io functions on dma coherent memory
      ARM: Rockchip: rk3568 EVB: Add eMMC pinmux
      pinctrl: rockchip: Register gpios as device
      ARM: rockchip_v8_defconfig Disable ARC_EMAC driver
      blspec: Rework firmware load
      overlay: Add filters to choose which overlays to apply
      blspec: Apply overlays from rootfs
      doc: devicetree: Refer to internal device tree also as live tree
      Documentation: Add documentation for device tree overlays
      of_firmware: Fix handling of firmware-name property
      dts: update to v5.13-rc6
      dts: update to v5.13-rc7
      Merge branch 'for-next/arm'
      Merge branch 'for-next/clk'
      Merge branch 'for-next/deep-probe'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/firmware'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/nvmem'
      Merge branch 'for-next/riscv'
      Merge branch 'for-next/rockchip'
      Merge branch 'for-next/usb'
      Merge branch 'for-next/usb-gadget'
      Merge branch 'for-next/zynqmp'
      crypto: add crypto_memneq()
      crypto: digest: use crypto_memneq()
      password: Use crypto_memneq() to compare hashes
      fit: Use digest_verify() to verify hashes
      Release v2021.08.0

Steffen Trumtrar (9):
      reset: add of_reset_control_get to header
      drivers: add fpga bridge framework
      drivers: fpga: add socfpga bridges
      firmware: socfpga: change function prefixes
      firmware: import fpga-mgr.h from linux
      of: kconfig: of_overlay uses firmwaremgr_load_file
      drivers: firmware: socfpga: remove bridges shutdown
      firmware: add support for compressed images
      firmware: socfpga: set APPLYCFG after loading bitstream

Uwe Kleine-K=F6nig (1):
      w1: Replace license and copyright boilerplate by SPDX identifiers

Yunus Bas (1):
      commands: of_property: Extend command usage on external dtb

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

